class Log < ActiveRecord::Base
  belongs_to :user


    def self.import(file)
	    spreadsheet = open_spreadsheet(file)
	    header = spreadsheet.row(1)
	   (2..spreadsheet.last_row).each do |i|
	    row = Hash[[header, spreadsheet.row(i)].transpose]
	    log = find_by_id(row["id"]) || new
	    log.attributes = row.to_hash.slice(*Log.attribute_names())
	    log.save!
	  end
    end

	

    def self.open_spreadsheet(file)
	  case File.extname(file.original_filename)
	  when ".csv" then Roo::CSV.new(file.path)
	  when ".xls" then Roo::Excel.new(file.path)
	  when ".xlsx" then Roo::Excelx.new(file.path)
	  else raise "Unknown file type: #{file.original_filename}"
	  end
	end

=begin
	
    def self.accessible_attributes
	 [:open, :close, :price, :pairs, :lot, :sl, :tp, :direction, :exit, :risk_reward, :win_loss, :loss, :profit, :loss_percent, :profit_percent, :balance, :strategy, :notes, :user_id]
	end
	
=end
	

end

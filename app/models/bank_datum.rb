class BankDatum < ActiveRecord::Base
  self.table_name = 'bank_data'
  
  belongs_to :account 
	
  

end

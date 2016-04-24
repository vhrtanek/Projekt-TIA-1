class Account < ActiveRecord::Base
  
  has_many :bank_datum
  belongs_to :user
  
  self.table_name = 'accounts'



end

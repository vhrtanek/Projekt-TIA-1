class AccountToBankDatum < ActiveRecord::Migration
  def change
	add_reference :bank_data, :account, index: true, foreign_key: true
  end
end

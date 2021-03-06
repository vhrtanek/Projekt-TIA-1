module BankDataHelper
def debug_print
	print "\n\n\nxxx\n\n\n"
end

def from_txt1(filename, account_id)
print "\n\n\n\n\n\n\nxxxx\n\n\n\n\n\n\n"
  File.open(filename, 'r') do |file|
     #current = {:accounted_at => "", :amount => "", :currency => "", :balance => "", :variable_symbol => "", :specific_symbol => "", :constant_symbol => "", :transaction_type => "", :account_of_counterParty => "", :name_of_counterParty => "", :bank_of_counterParty => "", :information_for_recipient => "", :information => ""}
	current = BankDatum.new
     print current
print "debug\n\n"
     file.each_line do |line| 		  	
	if line.match(/^dátum zaúčtovania: /)
	  current[:accounted_at] = line[19..-1].strip
	elsif line.match(/^suma: /)
	  current[:amount] = line[6..-1].strip
	elsif line.match(/^mena: /)
	  current[:currency] = line[6..-1].strip
	elsif line.match(/^zostatok: /)
	  current[:balance] = line[9..-1].strip
	elsif line.match(/^referencia platiteľa: /)
	symbols = []
	symbols = user_ref(line[26..-1])
	  current[:variable_symbol] = symbols[0]
	  current[:specific_symbol] = symbols[1]
          current[:constant_symbol] = symbols[2]
	elsif line.match(/^typ transakcie: /)
	  current[:transaction_type] = line[16..-1].strip
	elsif line.match(/^názov protistrany:/)
	  current[:account_of_counterParty] = line[24..-1].strip
	elsif line.match(/^informácia pre príjemcu:/)
	  current[:name_of_counterParty] = line[19..-1].strip
	elsif line.match(/^informácia pre príjemcu:/)
	  current[:bank_of_counterParty] = line[19..-1].strip
	elsif line.match(/^informácia pre príjemcu:/)
	  current[:information_for_recipient] = line[25..-1].strip
	elsif line.match(/^doplňujúce údaje:/) do
          current[:information] = line[18..-1].strip
		current[:account_id]=account_id
		current = save
		current = BankDatum.new
		end	  
#sections.push(current)
	  #current = {:accounted_at => "", :amount => "", :currency => "", :balance => "", :variable_symbol => "", :specific_symbol => "", :constant_symbol => "", :transaction_type => "", :account_of_counterParty => "", :name_of_counterParty => "", :bank_of_counterParty => "", :information_for_recipient => "", :information => ""}
	end
     end
   end
	return "x"
end

def user_ref(line)
  ref = line.split('/')
  result = []
  ref.each do |r|
    result.push(r[2..-1])
  end
  result[2] = result[2][0..-3] unless result[2].nil?
  print result
  return result
end
end

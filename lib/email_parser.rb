require "pry"

class EmailParser
  attr_accessor :email
  def initialize(email)
    @email = email
  end

	def parse
  	addresses = @email.split
    	result = addresses.map do |address|
        address.delete(",")
      end
  	result.uniq
	end
end

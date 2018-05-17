require 'pry'

# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

    attr_accessor :email

    def initialize (email)
      @email = email
    end

    def parse
        @email.split(/[\s,]+/).map{|address| address.strip}.flatten.uniq
    end

end

# def parse
#     email_array = @email.split(/[\s,]+/)
#
#     final_array = email_array.map! do |address|
#         address.strip
#     end
#     final_array.flatten.uniq
# end

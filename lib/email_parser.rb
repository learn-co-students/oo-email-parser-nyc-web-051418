# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailParser

  attr_accessor :email_adds

  def initialize(email_adds)
    @email_adds = email_adds
  end

  def parse
    email_string = "" #creating a new string without commas
    @email_adds.each_char { |char| email_string << char if char != "," } #iteraring over each letter of the initial string, adding to the new string, exluding commas
    email_string.split(" ").uniq #splitting the new comma-less string into an array, and putsing the uniq array elements
  end

end

# email = EmailParser.new("sdkscd, cskjchskdcs")
# binding.pry
# true

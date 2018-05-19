# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def parse
    clean_email = self.name.split.map do |email|
      email.split(',')
    end
    clean_email.flatten.uniq
  end

end

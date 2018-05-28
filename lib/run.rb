require 'pry'
require_relative 'email_parser'

emails = "john@doe.com, person@somewhere.org"
parser = EmailParser.new(emails)

try = parser.parse
#  => ["john@doe.com", "person@somewhere.org"]


pry.Start

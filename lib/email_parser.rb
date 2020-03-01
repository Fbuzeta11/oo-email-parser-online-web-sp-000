class EmailParser
  
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
		@emails = @emails.gsub(/[\s,]/ ," ").split
		# @email is an array now
		@emails.uniq
	end
  
end
  
  emails = "john@doe.com, person@somewhere.org"
  parser = EmailParser.new(emails)
  parser.parse = ["@john@doe.com", "person@somewhere.org"]
 

  
  # Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

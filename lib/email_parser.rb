# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email

    def initialize(emails)
        @email = emails
    end

    def parse
        emailsArray = @email.split(/[\s,]/).uniq
        emailsArray.each do |elements|
            if elements == ""
                emailsArray.delete(elements)
            end
        end
    end
end
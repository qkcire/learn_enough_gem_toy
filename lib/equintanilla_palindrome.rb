require "equintanilla_palindrome/version"

module EquintanillaPalindrome
  class Error < StandardError; end
    # Returns true for a palindrome, false otherwise
    def palindrome?
      processed_content == processed_content.reverse
    end
  
    private
  
      # Returns content for palindrome testing.
      def processed_content
        self.to_s.scan(/[a-z\d]/i).join.downcase
      end
end


class String
  include EquintanillaPalindrome
end

class Integer
  include EquintanillaPalindrome
end
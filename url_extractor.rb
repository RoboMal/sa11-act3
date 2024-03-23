'''
Name: Malcolm King
Class: COMP3081-001

GOALS:
•	Write a Ruby script that takes a string as input and outputs each URL found within the string on a new line.
•	The script should correctly identify URLs within the text, including those that have paths, query parameters, or fragments.
•	Use regular expressions to identify the URLs within the text.
•	Ensure that your regex pattern comprehensively matches different types of URLs, including those with and without www, and with any top-level domain (e.g., .com, .org, .net).
'''


def extract_urls(text)
  urls = text.scan(/(?:https?|ftp):\/\/[\S]+/i)
  puts urls #Could also use: urls.each {|url| puts url}.
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex.
                Don’t forget to ftp our resources at ftp://example.com/resources."

extract_urls(sample_text)

'''
RESULT(S):
  http://www.example.org
  https://example.com/search?q=ruby+regex.
  ftp://example.com/resources.
'''

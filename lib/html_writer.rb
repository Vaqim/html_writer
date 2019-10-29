require 'sanitize'
require 'nokogiri'

class HtmlWriter
  class Error < ::StandardError
  end

  class InvalidHTMLError < Error
  end

  class << self
    undef new
  end

  def self.write(content, filename: 'index', bypass_html: false)
    content = ::Sanitize.clean(content) unless bypass_html
    content = "
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="UTF-8">
        <title>Pet stats</title>
        <link rel="stylesheet" href="style.css">
      </head>
      <body>
        #{content}
      </body>
    </html>
    "
    raise InvalidHTMLError, 'Content isn\'t valid html' if Nokogiri::HTML(content, &:strict).errors.any?

    File.write("#{filename}.html", content)
  end
end

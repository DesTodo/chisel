class ReadFile



markdown_file = ARGV[0]
markdown      = markdown_file

html          = html_file
html_file     = ARGV[1]


  def read(text)
    markdown_input = File.read(ARGV[0]) # and parses to
  end

end


class WriteHTML

  def write(html)
    html_output = File.write(ARGV[1])
  end

end

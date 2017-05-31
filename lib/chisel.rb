# $ ruby ./lib/chisel.rb my_input.markdown my_output.html
# chisel.rb takes my_input_markdown and makes my_output_html
# my_code = ./lib/chisel.rb

require './lib/chisel_files'
#require './lib/my_input.markdown'
require 'pry'


class Chisel
  #attr_reader :text

  def initialize(markdown)
    @text = FileRead.new(read)
  end

  def markdown_to_html
    make_lines
    make_chunks
    chunk_to_html

  end


  def make_lines(markdown)
    markdown_lines = text.split("\n")]
  end

  def make_chunks(markdown_lines)
    markdown_chunks = text_lines.chomp
  end

  def chunk_to_html(markdown_chunks)
    # remove empty lines
    # translate  header"#" --> ""<h1>" ## == "<h2>" "###" == "<h3>"
  end

  # html_output = my_output.html
chunk = Parser.new("./my_input.markdown")
end

binding.pry
p chunks
p chunk

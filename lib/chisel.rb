# $ ruby ./lib/chisel.rb my_input.markdown my_output.html
# chisel.rb takes my_input_markdown and makes my_output_html
# my_code = ./lib/chisel.rb

require './lib/chisel_files'
#require './lib/my_input.markdown'
require 'pry'


class Chisel
  #attr_reader :text

  def initialize(markdown)
    @markdown = markdown
  end

  def markdown_to_html
    html_chunks =
    markdown_chunks.map do |chunk|
      chunk_to_html(chunk)
    end

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
    if header?
      chunk_to_html_header
    else
      chunk_to_html_paragraph
    end
    # translate  header"#" --> ""<h1>" ## == "<h2>" "###" == "<h3>"
  end

  def header?
    chunk[0] == "#"
  end

  def chunk_to_html_header(markdown_chunk)
    if markdown_chunk[0] == "#"
      markdown_chunk[0] = "<h1>"
    elsif markdown_chunk[0] == "##"
      markdown_chunk[0] = "<h2>"
    elsif markdown_chunk[0] == "###"
      markdown_chunk[0] = "<h3>"
    else
      chunk_to_html_paragraph
    end
    html_header = markdown_chunk
  end

  def chunk_to_html_paragraph(markdown_chunk)

  end


  # html_output = my_output.html
end

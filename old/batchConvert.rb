#!/usr/bin/env ruby
# Credit: https://gist.githubusercontent.com/craigeley/bf189da1de3c70753cea/raw/efb1fbce28cfb872146770de23a03d9b1ca08d76/batch_pandoc.rb

# Change the file extensions below with what you are converting from and to
extFrom = '.html'
extTo = '.md'

files = Dir.glob('**/**/**/**/*.html')
name = ''
base = ''
files.each do |file|
	if File.exist?(file.strip)
		file = File.open(file.strip, encoding: 'UTF-8')
		name = File.basename(file)
		base = File.basename(file).gsub(/#{extFrom}/, '')
		command = "pandoc " + "#{name}" + " --to markdown_github -c github-pandoc.css --standalone -o " + "#{base}" + "#{extTo}"
		%x{#{command}}
	end
end

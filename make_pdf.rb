require 'pdfkit'

PDFKit.configure do |config|
	config.default_options = {
		'disable-javascript': nil
	}
	config.verbose = true
end

puts "Generating PDF..."
kit = PDFKit.new(File.new('./_site/index.html'), :page_size => 'Letter')
file = kit.to_file('./_site/cv/cv.pdf')
puts "Generated PDF is here: #{file.path}"
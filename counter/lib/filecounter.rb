class FileCounter
	def initialize(file)
		@file = file
	end

	def read_file
	end

	def count_words
	end
end
post "/count_words" do
	tempfile = params[:file][:tempfile].read
	@tmp = FileCounter.new(tempfile)
	erb :upload_file
end
# tempfile.split(" ").count  

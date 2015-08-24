class MyPhrases
	def initialize
		@phrases = [
			"This is phrase one.",
			"This is phrase two.",
			"This is phrase three."
		]
	end
	def get_phrase
		@phrases.sample
	end
end


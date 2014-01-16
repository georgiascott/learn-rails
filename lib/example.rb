class Example < Object
   # This is a comment.
	attr_accessor :honorific 
	attr_accessor :name 
	attr_accessor :date
	
	def to_s 
		@name
	end

	def initialize(name,date)
		@name = name
		@date = date.nil? ? Date.today : date
	end

	def titled_name
		@honorific ||= 'Esteemed'
		titled_name = "#{@honorific} #{@name}"
	end

	def december_birthdays born_in_december = [ ] 
		famous_birthdays.each do |name, date|
			if date.month == 12 
				born_in_december << name
		end 
	end
     born_in_december
end

private

	def famous_birthdays 
		birthdays = {
			'Ludwig van Beethoven' => Date.new(1770,12,16), 
			'Dave Brubeck' => Date.new(1920,12,6),
			'Buddy Holly' => Date.new(1936,9,7),
			'Keith Richards' => Date.new(1943,12,18)
}
	end 
end
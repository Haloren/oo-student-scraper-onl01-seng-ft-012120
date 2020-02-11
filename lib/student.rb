class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    #send method 
    @@all << self  
  end

  def self.create_from_collection(students_array)
    #Student.create_from_collection
    #Scraper.scrape_index_pag
  end

  def add_student_attributes(attributes_hash)
    #student.add_student_attributes
    #Scraper.scrape_profile_page
    
  end

  def self.all
    @@all 
  end
end


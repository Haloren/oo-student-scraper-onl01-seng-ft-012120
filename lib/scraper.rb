require 'open-uri'
require 'pry'
require 'nokogiri' 

#https://learn-co-curriculum.github.io/student-scraper-test-page/index.html

class Scraper

  def self.scrape_index_page(index_url)
    
    scraped_students = [] 
    
    doc = Nokogiri::HTML(open(index_url)) #doc = Nokogiri::HTML(open(url provided))
      hash_array = doc.css{'a.card-text-container'}
    
    
      doc.css(".student_card").each do |student_card| #doc.css(".post").each do |post|
      
      hash_array ={ #hash_array = iterate through the student cards id 
      
      name: student_card.css("a.card-text-container h4.student-name").text, 
      #<a href=" ..."card-text-container"> <h4 class="student-name">{Student Name}</h4>
      
      location: student_card.css("a.card-text-container p.student-location").text, 
      #<a href=" ..."card-text-container"> <p class="student-location">{City, State}</p>
      
      profile_url: student_card.css("a").attribute("href").value 
      #use ().attribute().value <a href="{link}"> 
    } 
    scraped_students << hash_array
    #binding.pry 
    end 
    scraped_students #return the students 
  end

  def self.scrape_profile_page(profile_url)
    
    
  end

end


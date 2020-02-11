require 'open-uri'
require 'pry'
require 'nokogiri' 

#https://learn-co-curriculum.github.io/student-scraper-test-page/index.html

class Scraper

  def self.scrape_index_page(index_url)
    
    scraped_students = [] 
    
  html = Nokogiri::HTML(open(index_url)) 
  #doc = Nokogiri::HTML(open("#https://learn-co-curriculum.github.io/student-scraper-test-page/"))
  
  hashes_array = {} #iterate through the student cards id
  
  html.css(".student-card").each do |student-card|
  #doc.css(".post").each do |post|
    
    :name <a href="students/{first_name-last_name}.html"> #course = Course.new
  
      #course.title = post.css("h2").text
  
    :location <p class="student-location">{City, State}</p>
      #course.schedule = post.css(".date").text
  
    #click to view profile(scrape_profile_page) to get profile_urls <h3 class="view-profile-text">View Profile</h3>
      #course.description = post.css("p").text
    
    end 
    scraped_students << hashes_array #return the array hash 
  end

  def self.scrape_profile_page(profile_url)
    #:profile_url <div class="social-icon-container"> 
    #                <a href="{Twitter link and/or LinkedIn link and/or GitHub link}">
  end

end


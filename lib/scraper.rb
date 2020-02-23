require 'open-uri'
require 'pry'
require 'nokogiri' 

class Scraper

  def self.scrape_index_page(index_url)

    doc = Nokogiri::HTML(open(index_url))
    students = []
    doc.css("div.student-card").each do |card|
        
      end
    end
  end
  
  def self.scrape_profile_page(profile_url)
    
  end   

end

#https://learn-co-curriculum.github.io/student-scraper-test-page/

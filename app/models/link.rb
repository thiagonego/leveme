class Link < ActiveRecord::Base
	has_one :url
	has_many :visitas
	
	
  def self.short_link(href)
  
    url = Url.find_by_href(href)
  	if url
  		url.link
  	else
  	  url = Url.create(:href => href)
	  
      link = Link.new(:atalho => url.id.to_s(36))
      link.url = url
      link.save
	  
  	  url.link = link
  	  url.save
	  
  	  url.link
  	end

  end	
  
end

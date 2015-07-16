class MainController < ApplicationController
  def index
  	doc = Nokogiri::XML(File.open("#{Rails.root}/public/videos.xml")) 
  	sectionsHash = Hash.from_xml(doc.to_s)
  	@sections = sectionsHash["sections"]["section"]
  	@video_link_id = "131077537"
  end

  def lock_video
    respond_to do |format|
      format.html
      format.js
    end
  end
end

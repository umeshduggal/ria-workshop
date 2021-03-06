class MainController < ApplicationController
  def index
  	doc = Nokogiri::XML(File.open("#{Rails.root}/public/videos.xml")) 
  	sectionsHash = Hash.from_xml(doc.to_s)
  	@sections = sectionsHash["sections"]["section"]
  	@video_link_id = "133981100"
  end

  def lock_video
    respond_to do |format|
      format.html
      format.js
    end
  end

  def user_info
    Rails.logger.info "******"
    Rails.logger.info params.inspect
    Rails.logger.info "******"
    render nothing: true
  end
end

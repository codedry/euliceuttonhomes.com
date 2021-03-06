class PagesController < ApplicationController

  GALLERY_DIR = Rails.root.join("app/assets/images/gallery_photos")

  def aboutus; end
  def services; end
  def testimonials; end
  def faq; end
  def dissertation; end

  def contactus
    redirect_to new_contact_path
  end

  def gallery
    @gallery_photos = Dir.entries(GALLERY_DIR).keep_if { |filename| filename =~ /.*\.jpg/i }
  end

end

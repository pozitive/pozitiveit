class SitemapController < ApplicationController
  layout nil

  def index
    headers['Content-Type'] = 'application/xml'
    @locales =I18n.available_locales.each
    @blogs = Hash.new
    @static_pages = Hash.new
    @locales.each do |locale|
      @blogs[locale] = Blog.with_translations(locale)
      @static_pages[locale] = ['portfolio', 'pages/our-proccess', 'about_us', 'contact_us', 'message/new']
    end
    respond_to do |format|
      format.xml 
    end
  end
end

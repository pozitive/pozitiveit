class SitemapController < ApplicationController
  layout nil

  def index
    headers['Content-Type'] = 'application/xml'
    @blogs = Blog.with_translations('en')
    respond_to do |format|
      format.xml { @pages = Page.all } # sitemap is a named scope
    end
  end
end

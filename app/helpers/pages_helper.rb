module PagesHelper

  def services_item(name)
    page = Page.find_by_permalink(name)
    raw <<-HTML
      <a href="#{page_path(page)}" class="">
        #{image_tag(name + '.svg')}
        <h3>#{page.name}</h3>
        <p>#{truncate(page.content, length: 250)}</p>
      </a>
    HTML
  end

  def content_item(name)
    page = Page.find_by_permalink(name)
    raw <<-HTML
        <h3>#{page.name}</h3>
        <p>#{page.content}</p>
    HTML
  end


end

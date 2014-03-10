module MessagesHelper
  
  def flash_message
    flash.map do |key, msg|
      content_tag :div, msg, :id => key, :class => 'alert-box success radius'
    end.join
  end

end

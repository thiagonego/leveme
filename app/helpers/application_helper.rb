# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def flash_message
      messages = ""
      [:notice, :info, :warning, :error, :alert].each {|type|
          if flash[type]
              messages += "<p class=\"#{type} flash \">#{flash[type]}</p>"
          end
      }
      messages
  end  
end

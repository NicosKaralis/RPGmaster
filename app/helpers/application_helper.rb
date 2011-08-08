module ApplicationHelper
  
  def title
    base = "RPGmaster"
    if @title.nil?
      base
    else
      "#{@title} - #{base}"
    end
  end
  
end

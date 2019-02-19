module ApplicationHelper
  def full_title page_title= ""
    base_title = t "layouts.basetitle"
    if page_title.blank?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end

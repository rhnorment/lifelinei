module ApplicationHelper

  # return a title on a per-page basis:
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "LifeLine Incorporated"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def get_controller_klass(controller)
    if controller == @current_controller
      "current_page_item"
    else
      ""
    end
  end

  # default form builder:
  def labeled_form_for(object, options = {}, &block)
    options[:builder] = LabeledFormBuilder
    form_for(object, options, &block)
  end

end

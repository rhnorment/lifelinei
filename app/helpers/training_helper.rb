module TrainingHelper

  def get_action_klass(action)
    if action == @current_action
      "current_page_item"
    else
      ""
    end
  end

end

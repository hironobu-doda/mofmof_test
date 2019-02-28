module PropertiesHelper
  def choose_new_or_edit
    if action_name == 'new'
      properties_path
    elsif action_name == 'edit'
      property_path
    end
  end
end

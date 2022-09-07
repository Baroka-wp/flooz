module ApplicationHelper
  def ressource_link(current_path)
    r = { name: '', link: '' }
    if current_path == new_user_registration_path
      r[:name] = 'login'
      r[:link] = new_user_session_path
    elsif current_path == new_user_session_path
      r[:name] = 'Sign up'
      r[:link] = new_user_registration_path
    end
  end
end

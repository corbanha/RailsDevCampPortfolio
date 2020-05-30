module ApplicationHelper

  def login_helper
    if current_user.is_a?(User)
      (link_to 'Log Out', destroy_user_session_path, method: :delete) + '<br />'.html_safe +
      (link_to 'Edit Account', edit_user_registration_path)
    else
      (link_to 'Create a Free Account!', new_user_registration_path) + '<br />'.html_safe +
      (link_to 'Log in', new_user_session_path)
    end
  end
end

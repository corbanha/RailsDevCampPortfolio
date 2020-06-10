module ApplicationHelper

  def login_helper(registerClass='nav-link', loginClass='nav-link', currentUserClass='nav-link', logoutClass='nav-link')
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path, class: registerClass) +
      (link_to 'Log In', new_user_session_path, class: loginClass)
    else
      (link_to current_user.first_name.titleize, edit_user_registration_path, class: currentUserClass) +
      (link_to 'Log Out', destroy_user_session_path, method: :delete, class: logoutClass)
    end
  end

  def welcome_from_source(layout_name)
    if session[:source].present?
      case layout_name
      when 'application'
        greeting = "Thanks for visiting me from #{session[:source]}!"
      when 'blog'
        greeting = "Write something cool here about #{session[:source]}!"
      else
        greeting = "Oooh what were you doing on #{session[:source]}!?"
      end

      content_tag(:p, greeting, class: 'source-greeting')
    end
  end

  def copyright_generator
    CorbanhaViewTool::Renderer.copyright('Corban Anderson', 'All rights reserved')
  end
end

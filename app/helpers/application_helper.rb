module ApplicationHelper

  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to 'Create a Free Account!', new_user_registration_path) + '<br />'.html_safe +
      (link_to 'Log in', new_user_session_path)
    else
      (link_to 'Log Out', destroy_user_session_path, method: :delete) + '<br />'.html_safe +
      (link_to 'Edit Account', edit_user_registration_path)
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

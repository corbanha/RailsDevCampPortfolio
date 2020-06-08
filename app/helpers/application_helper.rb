module ApplicationHelper

  def login_helper(klass='nav-link')
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path, class: klass, style: 'color: #3498db') +
      (link_to 'Log in', new_user_session_path, class: klass, style: 'color: #3498db')
    else
      (link_to current_user.first_name.titleize, edit_user_registration_path, class: klass, style: 'color: #f1c40f') +
      (link_to 'Log Out', destroy_user_session_path, method: :delete, class: klass)
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

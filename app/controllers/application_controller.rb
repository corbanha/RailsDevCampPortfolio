class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include UserSourceSession
end

class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include UserSourceSession
  include CurrentUserConcern
end

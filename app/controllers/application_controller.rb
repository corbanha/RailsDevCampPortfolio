class ApplicationController < ActionController::Base
  include DeviseWhitelistConcern
  include UserSourceSessionConcern
  include CurrentUserConcern
  include SetPageDefaultsConcern
end

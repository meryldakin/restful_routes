class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def wrong_page
    render "/wrong_page"
  end
end

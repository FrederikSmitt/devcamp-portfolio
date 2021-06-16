class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource

  def current_user
    super || OpenStruct.new(name: "Guest user", first_name: "Guest", last_name: "user", email: "guest@ex.com")
  end

end

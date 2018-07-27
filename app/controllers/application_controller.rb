class ApplicationController < ActionController::Base
  render html: "hello,world"
  protect_from_forgery with: :exception
end

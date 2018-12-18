class ApplicationController < ActionController::Base
  before_action :authenticate_customer!
  def hello
  render html: "hello, world!"
  end
end

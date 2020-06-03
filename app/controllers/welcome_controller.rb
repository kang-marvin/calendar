class WelcomeController < ApplicationController
  def index
    @hello ||= 'Welcome {UserName}'
  end
end

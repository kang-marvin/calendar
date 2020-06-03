class WelcomeController < ApplicationController
  def index
    @hello ||= 'Welcome {UserName}'
    @words ||= ''
  end
end

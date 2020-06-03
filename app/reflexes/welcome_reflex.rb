# frozen_string_literal: true

class WelcomeReflex < ApplicationReflex
  def greetings
    @hello = "Welcome Marvin"
  end

  def word
    @words = element[:value]
  end
end

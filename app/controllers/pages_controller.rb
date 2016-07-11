class PagesController < ApplicationController
  def index
    @phone_number = PhoneForm.new
  end
end

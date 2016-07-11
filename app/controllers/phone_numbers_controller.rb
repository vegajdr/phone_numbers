class PhoneNumbersController < ApplicationController

  def new

  end

  def create
    @phone_number = PhoneForm.new phone_params
    if @phone_number.save
      redirect_to root_path, notice: "Phone numbers saved"
    else
      redirect_to root_path, notice: "Something went wrong"
    end
  end

  def edit

  end

  def update

  end

  private

    def phone_params
      params.require(:phone_form).permit(:username, phone_numbers:[])
    end
end

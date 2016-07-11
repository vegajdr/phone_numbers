class PhoneForm
  include ActiveModel::Model

  attr_accessor :username, :phone_numbers

  def save
    user = User.where(username: username).first
    phone_numbers.each do | phone |
      user.phone_numbers.create! number: phone
    end
  end
end

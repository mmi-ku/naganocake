class Customer < ApplicationRecord
  after_initialize :set_default_values
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  

  private

  def set_default_values
    self.is_active ||= true
  end
  
end

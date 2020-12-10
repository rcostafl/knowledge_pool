class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :categories

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname,    presence: true, uniqueness: true
  validates :first_name,  presence: true
  validates :last_name,   presence: true

  # Downcase all text data, except the nickname, to wich the case can be used to style

  before_validation :lower_text_fields

  # Transfor text to lower case
  def lower_text_fields
    self.email.downcase!
    self.first_name.downcase!
    self.last_name.downcase!
  end
end

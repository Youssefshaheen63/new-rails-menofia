class User < ApplicationRecord
  validates :name, presence: true
  validates :dob, presence: true
  validates :phone, presence: true
  validates :address, presence: true

  validates :email,
            presence: true,
            uniqueness: true,
             format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
            # format: {
            #   with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
            #   message: "must be a valid email address"
            # }
end

class User < ApplicationRecord
   validates :name, length: { maximum: 255 },presence: true
   validates :password, length: { maximum: 255 },presence: true
   validates :email, length: { maximum: 255 },presence: true
end

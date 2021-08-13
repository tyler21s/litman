class User < ApplicationRecord
   validates :name, length: { maximum: 255 },presence: true
   validates :password, length: { maximum: 255 },presence: true
   validates :email, length: { maximum: 255 },presence: true
   validates :status, format: { with: /^[0|1]*$/,message: "only allows letters" ,:multiline => true}
end

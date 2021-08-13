class User < ApplicationRecord
   validates :name, length: { maximum: 255 },presence: true
   validates :password, length: { maximum: 255 },presence: true
   validates :email, length: { maximum: 255 },presence: true
   # validates :status, format: { with: /^[0|1]*$/,message: "only allows letters" ,:multiline => true}
   enum status: [ :active, :inactive ]
   validates :status, inclusion: { in: %w(active inactive),
    message: "%{value} is not a valid size" }
    has_many :article
end

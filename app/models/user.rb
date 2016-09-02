class User < ApplicationRecord
  validates :email, :admin, presence: true
  validates :email, uniqueness: true
end

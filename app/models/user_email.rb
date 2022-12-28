class UserEmail < ApplicationRecord
  belongs_to :user
  belongs_to :email
end

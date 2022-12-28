class Email < ApplicationRecord

	has_many :users
	has_rich_text :body
end

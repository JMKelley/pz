class Post < ActiveRecord::Base
	belongs_to :user
	is_impressionable

	extend FriendlyId
	friendly_id :title, use: :slugged
end

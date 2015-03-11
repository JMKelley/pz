class Post < ActiveRecord::Base
	belongs_to :user
	is_impressionable

	acts_as_taggable_on :tags

	extend FriendlyId
	friendly_id :title, use: :slugged

	mount_uploader :video, VideoUploader
end

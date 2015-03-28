class Post < ActiveRecord::Base
	has_and_belongs_to_many :categories
	belongs_to :user
	is_impressionable

	acts_as_taggable_on :tags

	extend FriendlyId
	friendly_id :title, use: :slugged

	mount_uploader :video, VideoUploader
	mount_uploader :image, ImageUploader
	mount_uploader :featuredone, FeaturedoneUploader
	mount_uploader :featuredtwo, FeaturedtwoUploader

	scope :featured, -> { where(:featured => true) }

end

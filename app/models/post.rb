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

	scope :recent, -> { order(created_at: :desc) }
	scope :hot,    -> { order(impressionist_count: :desc) }
	scope :longest, -> { order(duration: :desc) }


	def self.sort_by(sort_param)
	  case sort_param
	  when 'recent'
	    recent
	  when 'hot'
	    hot
	  when 'longest'
	    longest
	  else
	    all
	  end
	end

end

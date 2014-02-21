class Article < ActiveRecord::Base
	# relationships
	belongs_to :category

	# validations
	validates_presence_of :title, :content

	# scopes
	scope :alphabetical, order('title')
	scope :active, where('active = ?', true)
end

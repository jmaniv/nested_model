class Section < ActiveRecord::Base
  attr_accessible :name, :content_ids
  
  belongs_to :document
  has_many :paragraphs, :dependent => :destroy
  has_many :contents, :through => :paragraphs
  validates :name, :presence =>  { :message => "Must be filled" }
end

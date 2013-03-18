class Document < ActiveRecord::Base
  attr_accessible :name, :sections_attributes
  has_many :sections
  validates :name, :presence =>  { :message => "Must be filled" }
  accepts_nested_attributes_for :sections, :allow_destroy => :true#, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
 
end

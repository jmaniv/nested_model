class Paragraph < ActiveRecord::Base
  attr_accessible :user_id, :section_id, :content_id
  
  belongs_to :section
  belongs_to :content
  
  validates :user_id, :section, :content, :presence =>  { :message => "Must be filled" }
end

module Projectm
  class Photo < ActiveRecord::Base
    attr_accessible :document, :imageable_id, :imageable_type
    belongs_to :imageable, polymorphic: true
    mount_uploader :document, DocumentUploader
  end
end

module Projectm
  class Picture < ActiveRecord::Base
    attr_accessible :attachment, :project_id, :resource_id, :resource_type
    belongs_to :resource, polymorphic: true
    mount_uploader :attachment, AttachmentUploader
  end
end

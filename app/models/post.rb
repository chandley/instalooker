class Post < ActiveRecord::Base
  has_attached_file :picture,
    :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :storage => :s3,
    s3_credentials: {
      bucket: ENV['S3_BUCKET_NAME'],
      access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      secret_access_key: ENV['WS_SECRET_ACCESS_KEY']
    }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\z/
  
end

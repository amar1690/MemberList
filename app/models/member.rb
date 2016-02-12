class Member < ActiveRecord::Base
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png", :storage => :s3, :bucket => ENV["s3_bucket_name"]
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end

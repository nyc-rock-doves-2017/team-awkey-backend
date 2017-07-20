class Photo < ApplicationRecord
  has_many :comments
  has_many :likes
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png", :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/


  def s3_credentials
    {:bucket => ENV['AWS_PROJECT'], :access_key_id => ENV['AWS_KEY'], :secret_access_key => ENV['AWS_SECRET'], :s3_region => ENV['AWS_REGION']}
  end
end

class Event
  include Mongoid::Document
  include Mongoid::Paperclip
  field :title, type: String
  field :date, type: Date
  field :time, type: Time
  field :url, type: String
  field :imageurl, type: String
  field :category, type: String
  field :description, type: String
  field :venue, type: String
  field :address, type: String
  field :neighborhood, type: String
  has_mongoid_attached_file :image,
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :url =>':s3_domain_url',
    :path => "/:id.:extension",
    :bucket => 'freelaphotos'
  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_presence_of :title, :date, :time, :url, :category, :venue, :address, :neighborhood

  def s3_credentials
    {:bucket => "freelaphotos", :access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET']}
  end
end

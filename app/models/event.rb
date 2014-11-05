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
  has_mongoid_attached_file :image
  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_presence_of :title, :date, :time, :url, :category, :venue, :address, :neighborhood
end

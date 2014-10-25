class FeatEvent
  include Mongoid::Document
  field :title, type: String
  field :date, type: Date
  field :time, type: Time
  field :url, type: String
  field :imageurl, type: String
  field :type, type: String
  field :description, type: String
  field :venue, type: String
  field :address, type: String
  field :neighborhood, type: String
end

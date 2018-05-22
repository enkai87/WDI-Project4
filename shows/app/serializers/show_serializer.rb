class ShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary, :img, :genre, :network, :air_day, :air_time, :url, :rating, :status

  has_many :episodes

end

class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :title, :show_title, :season, :number, :airdate, :airtime, :airstamp, :runtime, :img, :url, :summary, :show_id
  belongs_to :show
end

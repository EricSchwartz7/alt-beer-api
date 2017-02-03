class StyleSerializer < ActiveModel::Serializer
  attributes :name, :beers

  def beers
    object.beers
  end
end

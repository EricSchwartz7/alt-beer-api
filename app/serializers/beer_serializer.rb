class BeerSerializer < ActiveModel::Serializer
  attributes :id, :name, :style, :ibu, :alcohol

  def style
    object.style
  end
end

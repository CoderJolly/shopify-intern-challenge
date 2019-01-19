Types::ProductType = GraphQL::ObjectType.define do
  # this type is named `Link`
  name 'Product'  
  field :id, types.ID
  field :name, types.String
  field :price, types.Float
  field :inventory_count, types.Int
  field :slug, types.String
end
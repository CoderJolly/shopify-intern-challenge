Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.
  field :allProducts, !types[Types::ProductType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Product.all }
  end

  field :singleProduct, Types::ProductType do
  	argument :id, !types.ID
    resolve -> (obj, args, ctx) { Product.find(args[:id]) }
  end
end

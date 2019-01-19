class Resolvers::UpdateProduct < GraphQL::Function
  # arguments passed as "args"
  argument :id, !types.ID
  argument :name, !types.String
  argument :slug, !types.String
  argument :price, !types.Float
  argument :inventory_count, !types.Int

  # return type from the mutation
  type Types::ProductType

  def call(_obj, args, _ctx)
	product = Product.find(args[:id])
    product.update(
      name: args[:name],
      slug: args[:slug],
      price: args[:price],
      inventory_count: args[:inventory_count]
    ) 
    product 
  end
end
class Resolvers::CreateProduct < GraphQL::Function
  # arguments passed as "args"
  argument :name, !types.String
  argument :slug, !types.String
  argument :price, !types.Float
  argument :inventory_count, !types.Int

  # return type from the mutation
  type Types::ProductType

  def call(_obj, args, _ctx)
    Product.create!(
      name: args[:name],
      slug: args[:slug],
      price: args[:price],
      inventory_count: args[:inventory_count]
    )
  end
end
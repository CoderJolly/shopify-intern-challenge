class Resolvers::DeleteProduct < GraphQL::Function
  # arguments passed as "args"
  argument :id, !types.ID

  # return type from the mutation
  type Types::ProductType

  def call(_obj, args, _ctx)
    product = Product.find(args[:id])
    product.destroy if product.present?
  end
end
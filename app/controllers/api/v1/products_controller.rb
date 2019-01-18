module Api
  module V1
    class ProductsController < ApiController
      before_action :authenticate_user!
      before_action :set_product, only: [:update, :destroy]

      def index
        begin
          @products = Product.where(nil)
          @products = @products.available if params[:available] == "true"
          render_success(data: @products)
        rescue StandardError => e 
          # Performing Logging and Crashlytics here.
          throw_internal_server_error
          puts e
        end
      end

      def create
        begin
          @product = Product.create(product_params)
          render_success(data: @product)
        rescue StandardError => e
          # Performing Logging and Crashlytics here.
          throw_internal_server_error
          puts e
        end
      end

      def update
        begin
          if @product.update(product_params)
            render_success(data: @product)
          else
            throw_unprocessable()
          end
        rescue StandardError => e
          # Performing Logging and Crashlytics here.
          throw_internal_server_error
          puts e
        end
      end

      def destroy
        begin
          if @product
            @product.destroy
            render_success()
          else
            throw_unprocessable()
          end
        rescue
          # Performing Logging and Crashlytics here.
          throw_internal_server_error
          puts e
        end
      end

      private
        def set_product
          @product = Product.find(params[:id])
        end

        def product_params
          params.require(:product).permit(:name, :price, :inventory_count, :slug)
        end
    end
  end
end
class ShopsController < ApplicationController


	def index

		@shops = Shop.paginate(page: params[:page], per_page: 8)
		
		# @shops = Shop.all
	end

	def new
		@shop = Shop.new
	end

	def show
		@shop = Shop.find(params[:id])
	end

	def create
		@shop = Shop.new(shop_params)
		if @shop.save
			flash[:success] = "shop was created"
			redirect_to "/shops"
		else
			render :new
		end
	end

	def edit
		@shop = Shop.find(params[:id])
	end

	def update
		@shop = Shop.find(params[:id])
		@shop.update(shop_params)
		flash[:warning] = "shop updated"
		redirect_to "/shops"
	end

	def destroy
		@shop = Shop.find(params[:id])
		@shop.destroy
		flash[:danger] = "shop was deleted"
		redirect_to "/shops"
	end

	def toggle_status
		@shop = Shop.find(params[:id])

		if @shop.draft?
			@shop.published!
		else
			@shop.published?
			@shop.draft!
		end
		redirect_to '/shops'
	end

	private

	def shop_params
		params.require(:shop).permit(:product_name,:weight,:price, :supplier_id, images: [])

	end
end
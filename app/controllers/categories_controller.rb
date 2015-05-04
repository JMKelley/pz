class CategoriesController < ApplicationController
	def show
		@category = Category.friendly.find(params[:id])
    @posts = @category.posts.all.paginate(page: params[:page], per_page: 40)
	end
end

class CategoriesController < ApplicationController
	def index

	end

	def index

	end

	def index

	end

	def index

	end

	def index

	end
	# @category = category.new(category_params);

	private
	def category_params
		params.require(:categories).permit(:name)
end

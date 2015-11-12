class QueriesController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy, :list, :new]

	def create
		@user = current_user
		@query = @user.queries.build(query_params)

		if @query.save
			flash[:success] = "Nueva consulta creada con éxito"
			redirect_to queries_path
		else
	  		render 'new'
	  	end
	end

	def destroy	
	end

	def new
	  	@query = Query.new
	 end

	def list
		@user = current_user
		@queries = @user.queries
	end

	private

	  def query_params
	  	params.require(:query).permit(:description)
	  end

end

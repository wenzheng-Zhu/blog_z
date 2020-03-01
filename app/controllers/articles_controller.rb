class ArticlesController < ApplicationController

	before_action :set_article, only: [:show, :edit, :update, :destroy]

	def new
		@article = Article.new
	end


	def index
		@articles = Article.all
	end


	def create
		#render plain: params[:article].inspect
		@article = Article.new(article_params)
		if @article.save
			flash[:success] = "Article was successfully created"
			redirect_to article_path(@article)
		else
			render 'new'
		end

	end


	def show
		#@article = Article.find_by(id: params[:id])
	end


	def edit
		#@article = Article.find_by(id: params[:id])
	end


	def update
		#@article = Article.find_by(id: params[:id])
		if @article.update(article_params)
			flash[:success] = "Article was successfully edited"
			redirect_to article_path(@article)
		else
			render 'edit'
		end
	end


	def destroy
		#@article = Article.find_by(id: params[:id])
		@article.destroy
		flash[:success] = "Article was successfully destroyed!!!"
		redirect_to articles_path
	end







	private

	def set_article
		@article = Article.find_by(id: params[:id])
	end

	def article_params
		params.require(:article).permit(:title, :description)
	end


end

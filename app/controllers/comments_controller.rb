class CommentsController < ApplicationController
  def index
  	@comments = Comment.find(:all, :order => "created_at DESC")
  end

  def create
  	if valid_email? params[:email]
  		@comment = Comment.create(:name => params[:name], :email => params[:email], :message => params[:message])
  		flash[:notice] = "Commentaire publi&eacute;"
  	else
  		flash[:error] = "Veuillez entrer un email valide"
  	end
  	redirect_to comments_path
  end

end

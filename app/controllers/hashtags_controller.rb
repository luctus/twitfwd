class HashtagsController < InheritedResources::Base

	def create
    @hashtag = Hashtag.new(params[:hashtag])
    @hashtag.user = current_user
    respond_to do |format|
      if @hashtag.save
        format.html { redirect_to @hashtag, notice: 'Hashtag was successfully created.' }
        format.json { render json: @hashtag, status: :created, location: @hashtag }
      else
        format.html { render action: "new" }
        format.json { render json: @hashtag.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @hashtags = Hashtag.where(:user_id => current_user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hashtags }
    end
  end

end

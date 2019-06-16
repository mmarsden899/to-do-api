class CompletesController < OpenReadController
  before_action :set_complete, only: [:show, :update, :destroy]

  # GET /completes
  def index
    @completes = Complete.all

    render json: @completes
  end

  # GET /completes/1
  def show
    @complete = Complete.find(params[:id])
    render json: @complete
  end

  # POST /completes
  def create
    @complete = current_user.completes.build(complete_params)

    if @complete.save
      render json: @complete, status: :created, location: @complete
    else
      render json: @complete.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /completes/1
  def update
    if @complete.update(complete_params)
      render json: @complete
    else
      render json: @complete.errors, status: :unprocessable_entity
    end
  end

  # DELETE /completes/1
  def destroy
    @complete.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complete
      @complete = Complete.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def complete_params
      params.require(:complete).permit(:user_id, :blue, :pink, :purple, :task)
    end
end

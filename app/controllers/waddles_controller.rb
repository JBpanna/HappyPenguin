class WaddlesController < ApplicationController
  before_action :write_before, only: [:worthless]
  after_action :write_after, only: [:worthless]
  around_action :write_around, only: [:worthless]
  before_action :set_waddle, only: [:show, :edit, :update, :destroy]
  
  # GET /waddles
  # GET /waddles.json

  def index
    @waddles = Waddle.all
  end

  def worthless
    @waddles = Waddle.all
  end

  # GET /waddles/1
  # GET /waddles/1.json
  def show
  end

  # GET /waddles/new 
  def new
    @waddle = Waddle.new
  end

  # GET /waddles/1/edit

  def edit
  end

  # POST /waddles
  # POST /waddles.json
  def create
    @waddle = Waddle.new(waddle_params)

    respond_to do |format|
      if @waddle.save
        format.html { redirect_to @waddle, notice: 'Waddle was successfully created.' }
        format.json { render :show, status: :created, location: @waddle }
      else
        format.html { render :new }
        format.json { render json: @waddle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waddles/1
  # PATCH/PUT /waddles/1.json
  def update
    respond_to do |format|
      if @waddle.update(waddle_params)
        format.html { redirect_to @waddle, notice: 'Waddle was successfully updated.' }
        format.json { render :show, status: :ok, location: @waddle }
      else
        format.html { render :edit }
        format.json { render json: @waddle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waddles/1
  # DELETE /waddles/1.json
  def destroy
    @waddle.destroy
    respond_to do |format|
      format.html { redirect_to waddles_url, notice: 'Waddle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_waddle
      @waddle = Waddle.find(params[:id])
    end

    def write_before
      p "before"
    end

    def write_after
      p "after"
    end

    def write_around
      p "one"
      begin
        yield
      end
      p "two"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waddle_params
      params.require(:waddle).permit(:name, :birthday, :height, :dance_type)
    end
end

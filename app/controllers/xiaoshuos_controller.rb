class XiaoshuosController < ApplicationController
  before_action :set_xiaoshuo, only: [:show, :edit, :update, :destroy]

  # GET /xiaoshuos
  # GET /xiaoshuos.json
  def index
    @xiaoshuos = Xiaoshuo.all
  end

  # GET /xiaoshuos/1
  # GET /xiaoshuos/1.json
  def show
  end

  # GET /xiaoshuos/new
  def new
    @xiaoshuo = Xiaoshuo.new
  end

  # GET /xiaoshuos/1/edit
  def edit
  end

  # POST /xiaoshuos
  # POST /xiaoshuos.json
  def create
    @xiaoshuo = Xiaoshuo.new(xiaoshuo_params)

    respond_to do |format|
      if @xiaoshuo.save
        format.html { redirect_to @xiaoshuo, notice: 'Xiaoshuo was successfully created.' }
        format.json { render :show, status: :created, location: @xiaoshuo }
      else
        format.html { render :new }
        format.json { render json: @xiaoshuo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xiaoshuos/1
  # PATCH/PUT /xiaoshuos/1.json
  def update
    respond_to do |format|
      if @xiaoshuo.update(xiaoshuo_params)
        format.html { redirect_to @xiaoshuo, notice: 'Xiaoshuo was successfully updated.' }
        format.json { render :show, status: :ok, location: @xiaoshuo }
      else
        format.html { render :edit }
        format.json { render json: @xiaoshuo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xiaoshuos/1
  # DELETE /xiaoshuos/1.json
  def destroy
    @xiaoshuo.destroy
    respond_to do |format|
      format.html { redirect_to xiaoshuos_url, notice: 'Xiaoshuo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xiaoshuo
      @xiaoshuo = Xiaoshuo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xiaoshuo_params
      params.require(:xiaoshuo).permit(:title, :content, :user_id)
    end
end

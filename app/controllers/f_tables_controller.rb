class FTablesController < ApplicationController
  before_action :set_f_table, only: [:show, :edit, :update, :destroy]

  # GET /f_tables
  # GET /f_tables.json
  def index
    @f_tables = FTable.all
  end

  # GET /f_tables/1
  # GET /f_tables/1.json
  def show
  end

  # GET /f_tables/new
  def new
    @f_table = FTable.new
  end

  # GET /f_tables/1/edit
  def edit
  end

  # POST /f_tables
  # POST /f_tables.json
  def create
    @f_table = FTable.new(f_table_params)

    respond_to do |format|
      if @f_table.save
        format.html { redirect_to @f_table, notice: 'F table was successfully created.' }
        format.json { render :show, status: :created, location: @f_table }
      else
        format.html { render :new }
        format.json { render json: @f_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_tables/1
  # PATCH/PUT /f_tables/1.json
  def update
    respond_to do |format|
      if @f_table.update(f_table_params)
        format.html { redirect_to @f_table, notice: 'F table was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_table }
      else
        format.html { render :edit }
        format.json { render json: @f_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_tables/1
  # DELETE /f_tables/1.json
  def destroy
    @f_table.destroy
    respond_to do |format|
      format.html { redirect_to f_tables_url, notice: 'F table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_table
      @f_table = FTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def f_table_params
      params.require(:f_table).permit(:df1, :df2, :value)
    end
end

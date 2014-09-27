class AgaEmployeesController < ApplicationController
  before_action :set_aga_employee, only: [:show, :edit, :update, :destroy]

  # GET /aga_employees
  # GET /aga_employees.json
  def index
    @aga_employees = AgaEmployee.all
  end

  # GET /aga_employees/1
  # GET /aga_employees/1.json
  def show
  end

  # GET /aga_employees/new
  def new
    @aga_employee = AgaEmployee.new
  end

  # GET /aga_employees/1/edit
  def edit
  end

  # POST /aga_employees
  # POST /aga_employees.json
  def create
    @aga_employee = AgaEmployee.new(aga_employee_params)

    respond_to do |format|
      if @aga_employee.save
        format.html { redirect_to @aga_employee, notice: 'Aga employee was successfully created.' }
        format.json { render :show, status: :created, location: @aga_employee }
      else
        format.html { render :new }
        format.json { render json: @aga_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aga_employees/1
  # PATCH/PUT /aga_employees/1.json
  def update
    respond_to do |format|
      if @aga_employee.update(aga_employee_params)
        format.html { redirect_to @aga_employee, notice: 'Aga employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @aga_employee }
      else
        format.html { render :edit }
        format.json { render json: @aga_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aga_employees/1
  # DELETE /aga_employees/1.json
  def destroy
    @aga_employee.destroy
    respond_to do |format|
      format.html { redirect_to aga_employees_url, notice: 'Aga employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aga_employee
      @aga_employee = AgaEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aga_employee_params
      params.require(:aga_employee).permit(:name, :content)
    end
end

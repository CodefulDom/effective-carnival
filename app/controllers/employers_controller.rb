class EmployersController < ApplicationController
  def index
    @employer = Employer.all
  end

  def new
    @employer = Employer.new
  end

  def create
    @employer = Employer.new(params.require(:employer)
     .permit(:title, :subtitle, :body))

    respond_to do |format|
      if @employer.save
        format.html { redirect_to employers_path, notice: 'Your post is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @employer = Employer.find(params[:id])
  end

  def update
    @employer = Employer.find(params[:id])

    respond_to do |format|
      if @employer.update(params.require(:employer).permit(:title, :subtitle, :body))
        format.html { redirect_to employers_path, notice: 'Updated Successfully!' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @employer = Employer.find(params[:id])
  end

  def destroy
    @employer = Employer.find(params[:id])

    @employer.destroy
    respond_to do |format|
      format.html { redirect_to employers_url, notice: ' Item was successfully destroyed.' }
    end
  end
end

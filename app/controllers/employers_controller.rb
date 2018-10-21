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
end

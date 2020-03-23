class LeadsController < ApplicationController
  def index
  end

  def new
    @lead = Lead.new #generate data blank to create new form
  end

  def create
    @lead = Lead.new(lead_params)
    #render json: @lead #test when submit button form
    if @lead.save
      flash[:notice] = "We received your request! "
      redirect_to :index
    else
      flash[:notice] = "Request not succesfull."
      redirect_to action:"new"
    end
  end

  def edit
  end
  #for get params when click submit form
  
  private
  def lead_params
    #params.require(name model)
    params.require(:lead).permit(:full_name,:company_name,:email,:phone,:project_name,:project_desc,:department,:message,:attached_file)
  end
end
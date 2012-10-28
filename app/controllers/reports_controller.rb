class ReportsController < ApplicationController

  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
  end

  def create
    puts params
    @report = Report.create(:content => params[:xml_content]) if params[:xml_content].present?

    if @report
      render :text => "OK"
    else
      render :text => "WRONG"
    end
  end

  def destroy
    @report = Report.find(params[:id])
    begin
      @report.destroy
    end
    redirect_to root_path
  end

end

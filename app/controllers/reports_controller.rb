class ReportsController < ApplicationController

  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
  end

  def create
    @report = Report.create(:content => request.body.read) if params[:xml_content].present?

    if @report
      render :text => "OK"
    else
      render :text => "WRONG"
    end
  end

  def destroy
    @report = Report.find_by_id(params[:id])
    @report.destroy if @report.present?
    redirect_to root_path
  end

end

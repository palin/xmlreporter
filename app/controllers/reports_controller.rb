class ReportsController < ApplicationController

  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
  end

  def create
    @report = Report.create(:content => params[:content])
    if @report
      render :text => "OK"
    else
      render :text => "WRONG"
    end
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy
  end

end

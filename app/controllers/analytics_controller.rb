class AnalyticsController < ApplicationController
  def index
    @complaints = Complaint.all
    if !params[:start_date].nil? && !params[:stop_date].nil?
      @start_date = params[:start_date].to_datetime
      @stop_date = params[:stop_date].to_datetime
    else
      @start_date = Time.now.beginning_of_month
      @stop_date = Time.now
    end
    @filtercomplaints = @complaints.where(call_date: @start_date..@stop_date)
  end
end

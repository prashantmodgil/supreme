class AnalyticsController < ApplicationController
  def index
    @mechenics = Mechenic.all.pluck("mec_name")
    @complaints = Complaint.all
    # @total_complaints = Complaint.where(created_at: (Time.now.midnight - 30.day)..Time.now.midnight).count
    if params[:dealer_search]
      @result = Complaint.where(created_at: params[:start_date]..params[:stop_date]).where(dealer: params[:dealer]).count
    end
  end
end

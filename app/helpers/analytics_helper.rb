module AnalyticsHelper
  def total_complaints
    @complaints.count
  end 
  def total_complaints_this_month
    @complaints.where(call_date: (Time.now.beginning_of_month..Time.now )).count
  end
  def resolved_complaints
     @complaints.where(complaint_status: ["resolved","ok"] ).count
  end
  def resolved_complaints_this_month
     @complaints.where(complaint_status: ["resolved","ok"] ).where(call_date: (Time.now.beginning_of_month..Time.now )).count
  end
  def pending_complaints
    @complaints.where(complaint_status: ["part_pending","pending"] ).count
  end
  def pending_complaints_this_month
    @complaints.where(complaint_status: ["part_pending","pending"] ).where(call_date: (Time.now.beginning_of_month..Time.now )).count
  end
  def cancelled_complaints
    @complaints.where(complaint_status: ["unsolved_closed","cancelled"] ).count
  end
  def cancelled_complaints_this_month
    @complaints.where(complaint_status: ["unsolved_closed","cancelled"] ).where(call_date: (Time.now.beginning_of_month..Time.now )).count
  end
  def mec_30 name
    @complaints.where("mechenic = ?", name ).where(call_date: (Time.now.beginning_of_month..Time.now )).count
  end
  def mec_solved_30 name
    @complaints.where("mechenic = ?", name ).where(complaint_status: ["resolved","ok"] ).where(call_date: (Time.now.beginning_of_month..Time.now )).count
  end
  def name_pending_30 name
    @complaints.where("mechenic = ?", name ).where(complaint_status: ["part_pending","pending"] ).where(call_date: (Time.now.beginning_of_month..Time.now )).count
  end
  def name_cancelled_30 name
    @complaints.where("mechenic = ?", name ).where(complaint_status: ["unsolved_closed","cancelled"] ).where(call_date: (Time.now.beginning_of_month..Time.now )).count
  end
  def all_mechname
    Mechenic.all.pluck("mec_name")
  end
end

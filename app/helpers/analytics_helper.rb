module AnalyticsHelper
  def total_complaints
    @complaints.count
  end 
  def resolved_complaints
     @complaints.where(complaint_status: ["resolved","ok"] ).count
  end
  def pending_complaints
    @complaints.where.not(complaint_status: ["resolved","ok"] ).count
  end
  def mec_30 name
    @complaints.where("mechenic = ?", name ).count
  end
  def mec_solved_30 name
    @complaints.where("mechenic = ?", name ).where(complaint_status: ["resolved","ok"] ).count
  end
  def name_pending_total name
    @complaints.where("mechenic = ?", name ).where.not(complaint_status: ["resolved","ok"] ).count
  end
  def all_mechname
    Mechenic.all.pluck("mec_name")
  end
end

module AnalyticsHelper
  def total_complaints
    Complaint.count
  end
  def resolved_complaints
     Complaint.where(complaint_status: ["resolved","ok"] ).count
  end
  def pending_complaints
    Complaint.where.not(complaint_status: ["resolved","ok"] ).count
  end
  def mec_30 name
    Complaint.where("mechenic = ?", name ).count
  end
  def mec_solved_30 name
    Complaint.where("mechenic = ?", name ).where(complaint_status: ["resolved","ok"] ).count
  end
  def name_pending_total name
    Complaint.where("mechenic = ?", name ).where.not(complaint_status: ["resolved","ok"] ).count
  end
  def all_mechname
    Mechenic.all.pluck("mec_name")
  end
end

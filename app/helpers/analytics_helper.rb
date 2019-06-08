module AnalyticsHelper
  def total_complaints
    Complaint.where(created_at: (Time.now.midnight - 30.day)..Time.now.midnight).count
  end
  def resolved_complaints
    Complaint.where(created_at: (Time.now.midnight - 30.day)..Time.now.midnight).where("complaint_status = ?", "resolved"||"ok" ).count
  end
  def pending_complaints
    Complaint.where("complaint_status != ?", "resolved"||"ok" ).count
  end
  def mec_30 name
    Complaint.where(created_at: (Time.now.midnight - 30.day)..Time.now.midnight).where("mechenic = ?", name ).count
  end
  def mec_solved_30 name
    Complaint.where(created_at: (Time.now.midnight - 30.day)..Time.now.midnight).where("mechenic = ?", name ).where("complaint_status = ?", "resolved"||"ok" ).count
  end
  def name_pending_total name
    Complaint.where("mechenic = ?", name ).where("complaint_status != ?", "resolved"||"ok" ).count
  end
  def all_mechname
    Mechenic.all.pluck("mec_name")
  end
end

module AnalyticsHelper
  def total_complaints
    @complaints.count
  end 
  def total_complaints_this_month
    @filtercomplaints.count
  end
  def resolved_complaints
     @complaints.where(complaint_status: ["resolved","ok"] ).count
  end
  def resolved_complaints_this_month
     @filtercomplaints.where(complaint_status: ["resolved","ok"] ).count
  end
  def pending_complaints
    @complaints.where(complaint_status: ["part_pending","pending"] ).count
  end
  def pending_complaints_this_month
    @filtercomplaints.where(complaint_status: ["part_pending","pending"] ).count
  end
  def cancelled_complaints
    @complaints.where(complaint_status: ["unsolved_closed","cancelled"] ).count
  end
  def cancelled_complaints_this_month
    @filtercomplaints.where(complaint_status: ["unsolved_closed","cancelled"] ).count
  end
  def mec_30 name
    @filtercomplaints.where("mechenic = ?", name ).count
  end
  def mec_solved_30 name
    @filtercomplaints.where("mechenic = ?", name ).where(complaint_status: ["resolved","ok"] ).count
  end
  def name_pending_30 name
    @filtercomplaints.where("mechenic = ?", name ).where(complaint_status: ["part_pending","pending"] ).count
  end
  def name_cancelled_30 name
    @filtercomplaints.where("mechenic = ?", name ).where(complaint_status: ["unsolved_closed","cancelled"] ).count
  end
  def all_mechname
    Mechenic.all.pluck("mec_name")
  end
end

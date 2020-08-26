class PageView < Impression
  # TODO:
  # 1. Define scope for page ranks by count
  # 2. Define scope for page ranks by uniq count
  
  scope :for_type,           -> (type) { where(impressionable_type: type) }
  scope :for_date_range,     -> (start_date, end_date) { where(created_at: start_date.beginning_of_day..end_date.end_of_day) }
  scope :count_by_date,      -> () { group('date(created_at)').count }
  scope :uniq_count_by_date, -> () { PageView.select(:ip_address).distinct.group('date(created_at)').count }
end
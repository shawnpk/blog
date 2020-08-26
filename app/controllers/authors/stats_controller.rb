module Authors
  class StatsController < AuthorsController
    def index
      @count_by_date        = PageView.count_by_date(6.days.ago, Date.today).to_h
      @unique_count_by_date = PageView.uniq_count_by_date(6.days.ago, Date.today).to_h
    end
  end
end

class TrendsDatatable
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Trend.count,
      iTotalDisplayRecords: trends.total_entries,
      aaData: data
    }
  end

private

  def data
    trends.map do |trend|
      [
        link_to(trend.name, trend),
      ]
    end
  end

  def trends
    @trends ||= fetch_trends
  end

  def fetch_trends
    trends = Trend.order("#{sort_column} #{sort_direction}")
    trends = trends.page(page).per_page(per_page)
    if params[:sSearch].present?
      trends = trends.where("name like :search ", search: "%#{params[:sSearch]}%")
    end
    trends
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[name]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end

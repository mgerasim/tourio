class ToursDatatable
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Product.count,
      iTotalDisplayRecords: tours.total_entries,
      aaData: data
    }
  end

private

  def data
    tours.map do |tour|
      [
        link_to(tour.registr, tour),
        h(tour.client),
        h(tour.date_of_departure.strftime("%B %e, %Y")),
        number_to_currency(tour.price)
      ]
    end
  end

  def tours
    @tours ||= fetch_tours
  end

  def fetch_tours
    tours = Tour.order("#{sort_column} #{sort_direction}")
    tours = tours.page(page).per_page(per_page)
    if params[:sSearch].present?
      tours = tours.where("name like :search or category like :search", search: "%#{params[:sSearch]}%")
    end
    tours
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[name category released_on price]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end

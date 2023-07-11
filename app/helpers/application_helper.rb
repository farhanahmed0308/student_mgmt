module ApplicationHelper
    def formated_date(date)
        date.strftime('%A, %b %d %Y') if date.present?
    end
end

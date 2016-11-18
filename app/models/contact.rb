class Contact < ApplicationRecord

  def pretty_time
    return created_at.strftime("%b %e, %l:%M %p")
  end

end

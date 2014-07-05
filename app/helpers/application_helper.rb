module ApplicationHelper
<<<<<<< HEAD
    # Returns the full title on a per-page basis.
=======

  # Returns the full title on a per-page basis.
>>>>>>> 9db73cf6116c96f90b8233240989e0dd73442a0e
  def full_title(page_title)
    base_title = "Talleres Syrat"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
<<<<<<< HEAD
    
=======
>>>>>>> 9db73cf6116c96f90b8233240989e0dd73442a0e
end

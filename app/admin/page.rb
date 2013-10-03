ActiveAdmin.register Page do
  form do |f|
    f.inputs do
      f.input :name
      f.input :body, as: :ckeditor
    end
    f.buttons
  end

end

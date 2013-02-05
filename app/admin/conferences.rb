# -*- coding: utf-8 -*-
ActiveAdmin.register Conference do
  

  form do |f|
    f.inputs "Создать Conference" do
      f.input :title
      f.input :date_conference, :as => :datepicker
      f.input :content, as: :html_editor
      f.input :image
      f.input :anounce
    end
    f.actions
  end

end

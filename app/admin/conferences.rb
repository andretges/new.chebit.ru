# -*- coding: utf-8 -*-
ActiveAdmin.register Conference do
  

  form do |f|
    f.inputs "Создать Conference" do
      f.input :title
      f.input :date_conference, :as => :datepicker
      f.input :description, as: :html_editor
      f.input :photo_content
      f.input :image
      f.input :anounce
    end
    f.actions
  end

  index do
    column :image do |conference|
      image_tag conference.image.thumb.url
    end
    column :title
    column :date_conference
    column :passed?
    column :presentations do |conference|
      link_to conference.presentations.count, admin_presentations_path(:q=>{:conference_id_eq => conference.id})
    end

    default_actions
  end

end

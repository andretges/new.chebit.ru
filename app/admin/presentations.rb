# -*- coding: utf-8 -*-
ActiveAdmin.register Presentation do

  index do
    column :conference
    column :image do |p|
      image_tag p.image.thumb.url
    end
    column :title
    column :author
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :conference
      f.input :image
      f.input :title
      f.input :content, as: :html_editor
      f.input :author
      f.input :video_embed
      f.input :file_name
      f.input :file
    end
    f.actions
  end
end

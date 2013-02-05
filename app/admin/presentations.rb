# -*- coding: utf-8 -*-
ActiveAdmin.register Presentation do

  form do |f|
    f.inputs do
      f.input :conference
      f.input :image
      f.input :title
      f.input :context, as: :html_editor
      f.input :autor
      f.input :video_embed
      f.input :file_name
      f.input :file
    end
    f.actions
  end
end

ActiveAdmin.register Article do
  permit_params :title, :content, images_attributes: [:id, :name, :status, :_destroy]

  form do |f|
    f.inputs do
      f.input :title
      f.input :content
    end

    f.inputs do
      f.has_many :images, heading: 'Top Image', allow_destroy: true, new_record: true do |nest_f|
        nest_f.input :name
        nest_f.input :status, input_html: { value: :top }, as: :hidden
      end
    end

    f.actions
  end
end

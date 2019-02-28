ActiveAdmin.register Book do
  permit_params :author_id, :title, :publish_date

  form do |f|
    f.inputs do
      f.input :author, prompt: " - - - "
      f.input :title, placeholder: "タイトル"
      f.input :publish_date, as: :datepicker, placeholder: "出版日の入力 (例: 2019-01-01)"
    end
    f.actions
  end
end

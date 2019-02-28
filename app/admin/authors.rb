ActiveAdmin.register Author do
  permit_params :name

  show do |author|
    attributes_table(*author.class.columns.collect { |column| column.name.to_sym })
    panel "書籍一覧" do
      table_for author.books do
        column :title
        column :publish_date
      end
    end
    active_admin_comments
  end
end

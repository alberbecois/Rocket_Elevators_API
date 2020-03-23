ActiveAdmin.register Elevator do
    belongs_to :column
    permit_params :serial_number, :model, :elevator_type, :status, :date_commision, :date_last_inspect, :certificate_inspect, :info, :notes, :column_id

    index do
        selectable_column
        id_column
        # column :customer_create_date
        column :serial_number
        column :model
        column :elevator_type
        column :status
        column :date_commision
        column :date_last_inspect
        column :certificate_inspect
        column :info
        column :notes
        column :column_id
        actions
    end
  
    # filter :company_name
    filter :model
    filter :elevator_type
    filter :status
    filter :column_id

    form do |f|
        f.inputs do
            # f.input :customer_create_date
            f.input :serial_number
            f.input :model
            f.input :elevator_type
            f.input :status
            f.input :date_commision
            f.input :date_last_inspect
            f.input :certificate_inspect
            f.input :info
            f.input :notes
            f.input :column_id
        end
        f.actions
    end
end
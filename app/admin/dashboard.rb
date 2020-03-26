ActiveAdmin.register_page "Dashboard" do
   menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

   content title: proc { I18n.t("active_admin.dashboard") } do

<<<<<<< HEAD
    panel "google map" do
      render 'map'
    end
    panel "contact requests" do
      column_chart Lead.group_by_month(:created_at).count
    end
    panel "bid solicitations" do
      column_chart Quote.group_by_month(:created_at).count
    end
    panel "elevators per customer" do
    #   column_chart Elevator.group()
    end
=======
#     panel "contact requests" do
#  #     column_chart Lead.group_by_month(:created_at).count
#     end
#     panel "bid solicitations" do
#   #    column_chart Quote.group_by_month(:created_at).count
#     end
#     panel "elevators per customer" do
#     #   column_chart Elevator.group()
#     end
>>>>>>> 2dc4822effcf09a3e6d877168cd922b638e4b403

   end # content
 end

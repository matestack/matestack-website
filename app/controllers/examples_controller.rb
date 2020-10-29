class ExamplesController < ApplicationController


  def some_rails_route_action
    render json: {}, status: 200
  end

  def some_form_submit_action
    submitted_attribute = example_form_submit_params[:some_attribute]

    if submitted_attribute.blank?
      render json: {
        errors: {
          some_attribute: ["server validation: please fill in some value"]
        },
        message: "server message: data was not saved, please check form!"
      }, status: 422
    else
      if session[:created_instances].nil?
        session[:created_instances] = []
      end
      session[:created_instances].unshift(submitted_attribute)

      # only used on cable component demo
      ActionCable.server.broadcast("matestack_ui_core", {
        event: "new_element_created",
        data: matestack_component(:li, text: submitted_attribute)
      })

      render json: { message: "server message: created successfully" }, status: 200
    end
  end

  protected

  def example_form_submit_params
    params.require(:mocked_active_record_instance).permit(:some_attribute)
  end


end

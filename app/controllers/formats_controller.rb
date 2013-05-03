class FormatsController < ApplicationController
   before_filter :admin_user, only: [:new, :create, :edit, :update, :destroy, :index, :show]

  # GET /formats
  def index
    @formats = Format.all
  end

  # GET /formats/1
  def show
    @format = Format.find(params[:id])
  end

  # GET /formats/new
  def new
    @format = Format.new
  end

  # GET /formats/1/edit
  def edit
    @format = Format.find(params[:id])
  end

  # POST /formats
  def create
    @format = Format.new(permitted_params.format)

    if @format.save
      redirect_to @format, notice: 'Format was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /formats/1
  # PUT /formats/1.json
  def update
    @format = Format.find(params[:id])

    if @format.update_attributes(permitted_params.format)
      redirect_to @format, notice: 'Format was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /formats/1
  # DELETE /formats/1.json
  def destroy
    @format = Format.find(params[:id])
    @format.destroy

    redirect_to formats_url
  end
end

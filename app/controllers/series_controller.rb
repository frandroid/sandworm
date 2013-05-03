class SeriesController < ApplicationController
   before_filter :admin_user, only: [:new, :create, :edit, :update, :destroy]
  # GET /series
  # GET /series.json
  def index
    @series = Series.all
    end
  end

  # GET /series/1
  # GET /series/1.json
  def show
    @series = Series.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @series }
    end
  end

  # GET /series/new
  # GET /series/new.json
  def new
    @series = Series.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @series }
    end
  end

  # GET /series/1/edit
  def edit
    @series = Series.find(params[:id])
  end

  # POST /series
  # POST /series.json
  def create
    @series = Series.new(permitted_params.series)
    if @series.save
      redirect_to @series, notice: 'Series was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /series/1
  # PUT /series/1.json
  def update
    @series = Series.find(params[:id])

    if @series.update_attributes(permitted_params.series)
      redirect_to @series, notice: 'Series was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /series/1
  # DELETE /series/1.json
  def destroy
    @series = Series.find(params[:id])
    @series.destroy

    redirect_to series_index_url
  end
end

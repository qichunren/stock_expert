class DayRecordsController < ApplicationController
  # GET /day_records
  # GET /day_records.xml
  def index
    @day_records = DayRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @day_records }
    end
  end

  # GET /day_records/1
  # GET /day_records/1.xml
  def show
    @day_record = DayRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @day_record }
    end
  end

  # GET /day_records/new
  # GET /day_records/new.xml
  def new
    @day_record = DayRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @day_record }
    end
  end

  # GET /day_records/1/edit
  def edit
    @day_record = DayRecord.find(params[:id])
  end

  # POST /day_records
  # POST /day_records.xml
  def create
    @day_record = DayRecord.new(params[:day_record])

    respond_to do |format|
      if @day_record.save
        format.html { redirect_to(@day_record, :notice => 'Day record was successfully created.') }
        format.xml  { render :xml => @day_record, :status => :created, :location => @day_record }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @day_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /day_records/1
  # PUT /day_records/1.xml
  def update
    @day_record = DayRecord.find(params[:id])

    respond_to do |format|
      if @day_record.update_attributes(params[:day_record])
        format.html { redirect_to(@day_record, :notice => 'Day record was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @day_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /day_records/1
  # DELETE /day_records/1.xml
  def destroy
    @day_record = DayRecord.find(params[:id])
    @day_record.destroy

    respond_to do |format|
      format.html { redirect_to(day_records_url) }
      format.xml  { head :ok }
    end
  end
end

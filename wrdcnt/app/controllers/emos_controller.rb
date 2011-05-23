class EmosController < ApplicationController
  # GET /emos
  # GET /emos.xml
  def index
    @emos = Emo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @emos }
    end
  end

  # GET /emos/1
  # GET /emos/1.xml
  def show
    @emo = Emo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @emo }
    end
  end

  # GET /emos/new
  # GET /emos/new.xml
  def new
    @emo = Emo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @emo }
    end
  end

  # GET /emos/1/edit
  def edit
    @emo = Emo.find(params[:id])
  end

  # POST /emos
  # POST /emos.xml
  def create
    @emo = Emo.new(params[:emo])

    respond_to do |format|
      if @emo.save
        format.html { redirect_to(@emo, :notice => 'Emo was successfully created.') }
        format.xml  { render :xml => @emo, :status => :created, :location => @emo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @emo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /emos/1
  # PUT /emos/1.xml
  def update
    @emo = Emo.find(params[:id])

    respond_to do |format|
      if @emo.update_attributes(params[:emo])
        format.html { redirect_to(@emo, :notice => 'Emo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @emo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /emos/1
  # DELETE /emos/1.xml
  def destroy
    @emo = Emo.find(params[:id])
    @emo.destroy

    respond_to do |format|
      format.html { redirect_to(emos_url) }
      format.xml  { head :ok }
    end
  end
end

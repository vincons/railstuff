class Tst1sController < ApplicationController
  # GET /tst1s
  # GET /tst1s.xml
  def index
    @tst1s = Tst1.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tst1s }
    end
  end

  # GET /tst1s/1
  # GET /tst1s/1.xml
  def show
    @tst1 = Tst1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tst1 }
    end
  end

  # GET /tst1s/new
  # GET /tst1s/new.xml
  def new
    @tst1 = Tst1.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tst1 }
    end
  end

  # GET /tst1s/1/edit
  def edit
    @tst1 = Tst1.find(params[:id])
  end

  # POST /tst1s
  # POST /tst1s.xml
  def create
    @tst1 = Tst1.new(params[:tst1])

    respond_to do |format|
      if @tst1.save
        format.html { redirect_to(@tst1, :notice => 'Tst1 was successfully created.') }
        format.xml  { render :xml => @tst1, :status => :created, :location => @tst1 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tst1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tst1s/1
  # PUT /tst1s/1.xml
  def update
    @tst1 = Tst1.find(params[:id])

    respond_to do |format|
      if @tst1.update_attributes(params[:tst1])
        format.html { redirect_to(@tst1, :notice => 'Tst1 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tst1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tst1s/1
  # DELETE /tst1s/1.xml
  def destroy
    @tst1 = Tst1.find(params[:id])
    @tst1.destroy

    respond_to do |format|
      format.html { redirect_to(tst1s_url) }
      format.xml  { head :ok }
    end
  end
end

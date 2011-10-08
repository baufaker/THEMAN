class ProgramasController < ApplicationController
  # GET /programas
  # GET /programas.json
  @choice
  def index
    @programas = Programa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @programas }
    end
  end
  
  def questions

  end

  def search
        @programas = Programa.find(:all, :conditions => ['title LIKE ?', "%#{params[:search]}%"])
  end
  

  def result
    @choice = params[:my_choice]
    @programas = Programa.find(:all, :conditions => ['categoria LIKE LOWER ?', "%#{params[:my_choice].downcase}%"])
  end

  def result2
    @programas = Programa.find(:all, :conditions => ["categoria=? and categoria2=?", "#{params[:my_choice]}", "#{params[:my_choice2]}"])
  end
  
  # GET /programas/1
  # GET /programas/1.json
  def show
    @programa = Programa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @programa }
    end
  end

  # GET /programas/new
  # GET /programas/new.json
  def new
    @programa = Programa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @programa }
    end
  end

  # GET /programas/1/edit
  def edit
    @programa = Programa.find(params[:id])
  end

  # POST /programas
  # POST /programas.json
  def create
    @programa = Programa.new(params[:programa])

    respond_to do |format|
      if @programa.save
        format.html { redirect_to @programa, :notice => 'Programa was successfully created.' }
        format.json { render :json => @programa, :status => :created, :location => @programa }
      else
        format.html { render :action => "new" }
        format.json { render :json => @programa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /programas/1
  # PUT /programas/1.json
  def update
    @programa = Programa.find(params[:id])

    respond_to do |format|
      if @programa.update_attributes(params[:programa])
        format.html { redirect_to @programa, :notice => 'Programa was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @programa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /programas/1
  # DELETE /programas/1.json
  def destroy
    @programa = Programa.find(params[:id])
    @programa.destroy

    respond_to do |format|
      format.html { redirect_to programas_url }
      format.json { head :ok }
    end
  end
end

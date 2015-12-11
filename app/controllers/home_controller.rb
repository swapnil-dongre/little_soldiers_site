class HomeController < ApplicationController
	layout 'application', :except => [:index]
def index
	@notices = Notice.all	
	render layout: false
	
end

def about
	
end

def contact
end
	def show
@home = Home.find(params[:id])
respond_to do |format|
format.html # show.html.erb
format.json { render json: @home }
end
end
# GET /events/new
# GET /events/new.json
def new
@home = Home.new
respond_to do |format|
format.html # new.html.erb
format.json { render json: @home }
end
end
# GET /events/1/edit
def edit
@home = Home.find(params[:id])
end
# POST /events
# POST /events.json
def create
@home = Home.new(params[:home])
respond_to do |format|
if @home.save
format.html { redirect_to @home, notice: 'Event was successfully created.' }
format.json { render json: @home, status: :created, location: @home }
else
format.html { render action: "new" }
format.json { render json: @home.errors, status: :unprocessable_entity }
end
end
end
# PUT /events/1
# PUT /events/1.json
def update
@home = Home.find(params[:id])
respond_to do |format|
if @home.update_attributes(params[:home])
format.html { redirect_to @home, notice: 'News was successfully updated.' }
format.json { head :no_content }
else
format.html { render action: "edit" }
format.json { render json: @home.errors, status: :unprocessable_entity }
end
end
end
# DELETE /events/1
# DELETE /events/1.json
def destroy
@home = Home.find(params[:id])
@home.destroy
respond_to do |format|
format.html { redirect_to homes_url }
format.json { head :no_content }
end
end
end

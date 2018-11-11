class BookAbsolutionsController < ApplicationController
  before_action :set_book_absolution, only: [:show, :edit, :update, :destroy]

  # GET /book_absolutions
  # GET /book_absolutions.json
  def index
    @book_absolutions = BookAbsolution.all
  end

  # GET /book_absolutions/1
  # GET /book_absolutions/1.json
  def show
  end

  # GET /book_absolutions/new
  def new
    @book_absolution = BookAbsolution.new
  end

  # GET /book_absolutions/1/edit
  def edit
  end

  # POST /book_absolutions
  # POST /book_absolutions.json
  def create
    @book_absolution = BookAbsolution.new(book_absolution_params)

    respond_to do |format|
      if @book_absolution.save
        format.html { redirect_to @book_absolution, notice: 'Book absolution was successfully created.' }
        format.json { render :show, status: :created, location: @book_absolution }
      else
        format.html { render :new }
        format.json { render json: @book_absolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_absolutions/1
  # PATCH/PUT /book_absolutions/1.json
  def update
    respond_to do |format|
      if @book_absolution.update(book_absolution_params)
        format.html { redirect_to @book_absolution, notice: 'Book absolution was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_absolution }
      else
        format.html { render :edit }
        format.json { render json: @book_absolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_absolutions/1
  # DELETE /book_absolutions/1.json
  def destroy
    @book_absolution.destroy
    respond_to do |format|
      format.html { redirect_to book_absolutions_url, notice: 'Book absolution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_absolution
      @book_absolution = BookAbsolution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_absolution_params
      params.fetch(:book_absolution, {})
    end
end

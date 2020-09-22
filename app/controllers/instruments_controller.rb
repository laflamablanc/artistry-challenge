class InstrumentsController < ApplicationController

  def index
    @instruments = Instrument.all
  end

  def create
    @instrument = Instrument.create
  end

  def new
    @instrument = Instrument.new
  end

  def show
  end

  def edit
  end

  def update
  end
end

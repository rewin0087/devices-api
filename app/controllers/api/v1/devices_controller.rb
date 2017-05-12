class Api::V1::DevicesController < ApplicationController
  before_action :set_device, only: [:show, :update, :destroy]

  def index
    render json: Device.all
  end

  def show
    render json: @device
  end

  def create
    @device = Device.new(params.require(:device).permit(device_params))
    if @device.save
      render json: @device
    else
      render json: { error: @device.errors.full_messages.join(', ') }
    end
  end

  def update
    @device.assign_attributes(params.require(:device).permit(device_params))
    if @device.save
      render json: @device
    else
      render json: { error: @device.errors.full_messages.join(', ') }
    end
  end

  def destroy
    @device.destroy
    render json: @device
  end

  private

  def set_device
    @device = Device.find(params[:id])
  end

  def device_params
    [
      :device_mac,
      :serial_no,
      :color,
      :name,
      :description,
      :building,
      :level,
      :device_threshold
    ]
  end
end

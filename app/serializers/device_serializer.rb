class DeviceSerializer < ActiveModel::Serializer
  attributes :id, :device_mac, :serial_no, :color, :name, :description, :building, :level, :device_threshold
end

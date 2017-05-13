require 'rails_helper'

RSpec.describe Device, :type => :model do
  let!(:device) { create(:device) }

  context 'methods' do
    context 'attributes' do
      it { expect(device).to respond_to(:device_mac) }
      it { expect(device).to respond_to(:serial_no) }
      it { expect(device).to respond_to(:color) }
      it { expect(device).to respond_to(:name) }
      it { expect(device).to respond_to(:description) }
      it { expect(device).to respond_to(:building) }
      it { expect(device).to respond_to(:level) }
      it { expect(device).to respond_to(:device_threshold) }
    end


    context '#create' do
      context 'attributes data type' do
        it { expect(device.device_mac).to be_a(String) }
        it { expect(device.serial_no).to be_a(String) }
        it { expect(device.color).to be_a(String) }
        it { expect(device.name).to be_a(String) }
        it { expect(device.description).to be_a(String) }
        it { expect(device.building).to be_a(String) }
        it { expect(device.level).to be_a(String) }
        it { expect(device.device_threshold).to be_a(Fixnum) }
      end

      context 'when all attributes has values' do
        it { expect(device.device_mac).not_to be_nil }
        it { expect(device.serial_no).not_to be_nil }
        it { expect(device.color).not_to be_nil }
        it { expect(device.name).not_to be_nil }
        it { expect(device.description).not_to be_nil }
        it { expect(device.building).not_to be_nil }
        it { expect(device.level).not_to be_nil }
        it { expect(device.device_threshold).not_to be_nil }
        it { expect(device.errors.empty?).to eql(true) }
      end

      context 'when device_mac is blank' do
        let!(:new_device) { create(:device, device_mac: nil) }

        it { expect(new_device.device_mac).to be_nil }
        it { expect(new_device.serial_no).not_to be_nil }
        it { expect(new_device.color).not_to be_nil }
        it { expect(new_device.name).not_to be_nil }
        it { expect(new_device.description).not_to be_nil }
        it { expect(new_device.building).not_to be_nil }
        it { expect(new_device.level).not_to be_nil }
        it { expect(new_device.device_threshold).not_to be_nil }
      end

      context 'when serial_no is blank' do
        let!(:new_device) { create(:device, serial_no: nil) }

        it { expect(new_device.device_mac).not_to be_nil }
        it { expect(new_device.serial_no).to be_nil }
        it { expect(new_device.color).not_to be_nil }
        it { expect(new_device.name).not_to be_nil }
        it { expect(new_device.description).not_to be_nil }
        it { expect(new_device.building).not_to be_nil }
        it { expect(new_device.level).not_to be_nil }
        it { expect(new_device.device_threshold).not_to be_nil }
      end

      context 'when color is blank' do
        let!(:new_device) { create(:device, color: nil) }

        it { expect(new_device.device_mac).not_to be_nil }
        it { expect(new_device.serial_no).not_to be_nil }
        it { expect(new_device.color).to be_nil }
        it { expect(new_device.name).not_to be_nil }
        it { expect(new_device.description).not_to be_nil }
        it { expect(new_device.building).not_to be_nil }
        it { expect(new_device.level).not_to be_nil }
        it { expect(new_device.device_threshold).not_to be_nil }
      end

      context 'when name is blank' do
        let!(:new_device) { create(:device, name: nil) }

        it { expect(new_device.device_mac).not_to be_nil }
        it { expect(new_device.serial_no).not_to be_nil }
        it { expect(new_device.color).not_to be_nil }
        it { expect(new_device.name).to be_nil }
        it { expect(new_device.description).not_to be_nil }
        it { expect(new_device.building).not_to be_nil }
        it { expect(new_device.level).not_to be_nil }
        it { expect(new_device.device_threshold).not_to be_nil }
      end

      context 'when description is blank' do
        let!(:new_device) { create(:device, description: nil) }

        it { expect(new_device.device_mac).not_to be_nil }
        it { expect(new_device.serial_no).not_to be_nil }
        it { expect(new_device.color).not_to be_nil }
        it { expect(new_device.name).not_to be_nil }
        it { expect(new_device.description).to be_nil }
        it { expect(new_device.building).not_to be_nil }
        it { expect(new_device.level).not_to be_nil }
        it { expect(new_device.device_threshold).not_to be_nil }
      end

      context 'when building is blank' do
        let!(:new_device) { create(:device, building: nil) }

        it { expect(new_device.device_mac).not_to be_nil }
        it { expect(new_device.serial_no).not_to be_nil }
        it { expect(new_device.color).not_to be_nil }
        it { expect(new_device.name).not_to be_nil }
        it { expect(new_device.description).not_to be_nil }
        it { expect(new_device.building).to be_nil }
        it { expect(new_device.level).not_to be_nil }
        it { expect(new_device.device_threshold).not_to be_nil }
      end

      context 'when level is blank' do
        let!(:new_device) { create(:device, level: nil) }

        it { expect(new_device.device_mac).not_to be_nil }
        it { expect(new_device.serial_no).not_to be_nil }
        it { expect(new_device.color).not_to be_nil }
        it { expect(new_device.name).not_to be_nil }
        it { expect(new_device.description).not_to be_nil }
        it { expect(new_device.building).not_to be_nil }
        it { expect(new_device.level).to be_nil }
        it { expect(new_device.device_threshold).not_to be_nil }
      end

      context 'when device_threshold is blank' do
        let!(:new_device) { create(:device, device_threshold: nil) }

        it { expect(new_device.device_mac).not_to be_nil }
        it { expect(new_device.serial_no).not_to be_nil }
        it { expect(new_device.color).not_to be_nil }
        it { expect(new_device.name).not_to be_nil }
        it { expect(new_device.description).not_to be_nil }
        it { expect(new_device.building).not_to be_nil }
        it { expect(new_device.level).not_to be_nil }
        it { expect(new_device.device_threshold).to be_nil }
      end
    end

    context '#update' do
      context 'when device_mac has changed' do
        before do
          device.device_mac = 'device mac'
          device.save
        end

        it { expect(device.device_mac).to eql('device mac') }
      end

      context 'when serial_no has changed' do
        before do
          device.serial_no = 'serial no'
          device.save
        end

        it { expect(device.serial_no).to eql('serial no') }
      end


      context 'when color has changed' do
        before do
          device.color = 'color'
          device.save
        end

        it { expect(device.color).to eql('color') }
      end


      context 'when name has changed' do
        before do
          device.name = 'name'
          device.save
        end

        it { expect(device.name).to eql('name') }
      end


      context 'when description has changed' do
        before do
          device.description = 'description'
          device.save
        end

        it { expect(device.description).to eql('description') }
      end

      context 'when building has changed' do
        before do
          device.building = 'building'
          device.save
        end

        it { expect(device.building).to eql('building') }
      end

      context 'when level has changed' do
        before do
          device.level = 'level'
          device.save
        end

        it { expect(device.level).to eql('level') }
      end

      context 'when device_threshold has changed' do
        before do
          device.device_threshold = 1
          device.save
        end

        it { expect(device.device_threshold).to eql(1) }
      end
    end

    context '#destroy' do
      let!(:new_device) { create(:device) }
      before { new_device.destroy }

      it { expect(new_device.destroyed?).to eql(true) }
    end
  end
end

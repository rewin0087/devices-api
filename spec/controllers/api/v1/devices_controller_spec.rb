require 'rails_helper'

RSpec.describe Api::V1::DevicesController, type: :controller do

  describe 'GET index' do
    before do
      create(:device)
      get :index
    end

    let(:devices) { Device.all }

    it { expect(response).to have_http_status 200 }
    it { expect(JSON.parse(response.body)['devices']).to be_a(Array) }
    it { expect(JSON.parse(response.body)['devices'].size).to eql(1) }
  end

  describe 'POST create' do
    let(:device_params) do
      {
        device_mac: 'device mac',
        serial_no: 'serial no',
        color: 'color',
        name: 'name',
        description: 'description',
        building: 'building',
        level: 'level',
        device_threshold: 1
      }
    end

    context 'when all fields has values' do
      before do
        post :create, device: device_params
      end

      it { expect(response).to have_http_status 200 }
      it { expect(response.body).not_to be_nil }
      it { expect(JSON.parse(response.body)).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['device_mac']).to eql('device mac') }
      it { expect(JSON.parse(response.body)['device']['serial_no']).to eql('serial no') }
      it { expect(JSON.parse(response.body)['device']['color']).to eql('color') }
      it { expect(JSON.parse(response.body)['device']['name']).to eql('name') }
      it { expect(JSON.parse(response.body)['device']['description']).to eql('description') }
      it { expect(JSON.parse(response.body)['device']['building']).to eql('building') }
      it { expect(JSON.parse(response.body)['device']['level']).to eql('level') }
      it { expect(JSON.parse(response.body)['device']['device_threshold']).to eql(1) }
      it { expect(JSON.parse(response.body)['device']['id']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['id']).to be_a(Fixnum) }
    end

    context 'when all device_mac has no values' do
      before do
        device_params['device_mac'] = nil
        post :create, device: device_params
      end

      it { expect(response).to have_http_status 200 }
      it { expect(response.body).not_to be_nil }
      it { expect(JSON.parse(response.body)).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['device_mac']).to be_nil }
      it { expect(JSON.parse(response.body)['device']['serial_no']).to eql('serial no') }
      it { expect(JSON.parse(response.body)['device']['color']).to eql('color') }
      it { expect(JSON.parse(response.body)['device']['name']).to eql('name') }
      it { expect(JSON.parse(response.body)['device']['description']).to eql('description') }
      it { expect(JSON.parse(response.body)['device']['building']).to eql('building') }
      it { expect(JSON.parse(response.body)['device']['level']).to eql('level') }
      it { expect(JSON.parse(response.body)['device']['device_threshold']).to eql(1) }
      it { expect(JSON.parse(response.body)['device']['id']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['id']).to be_a(Fixnum) }
    end

    context 'when all serial_no has no values' do
      before do
        device_params['serial_no'] = ''
        post :create, device: device_params
      end

      it { expect(response).to have_http_status 200 }
      it { expect(response.body).not_to be_nil }
      it { expect(JSON.parse(response.body)).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['device_mac']).to eql('device mac') }
      it { expect(JSON.parse(response.body)['device']['serial_no']).to eql('') }
      it { expect(JSON.parse(response.body)['device']['color']).to eql('color') }
      it { expect(JSON.parse(response.body)['device']['name']).to eql('name') }
      it { expect(JSON.parse(response.body)['device']['description']).to eql('description') }
      it { expect(JSON.parse(response.body)['device']['building']).to eql('building') }
      it { expect(JSON.parse(response.body)['device']['level']).to eql('level') }
      it { expect(JSON.parse(response.body)['device']['device_threshold']).to eql(1) }
      it { expect(JSON.parse(response.body)['device']['id']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['id']).to be_a(Fixnum) }
    end

    context 'when all color has no values' do
      before do
        device_params['color'] = ''
        post :create, device: device_params
      end

      it { expect(response).to have_http_status 200 }
      it { expect(response.body).not_to be_nil }
      it { expect(JSON.parse(response.body)).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['device_mac']).to eql('device mac') }
      it { expect(JSON.parse(response.body)['device']['serial_no']).to eql('serial no') }
      it { expect(JSON.parse(response.body)['device']['color']).to eql('') }
      it { expect(JSON.parse(response.body)['device']['name']).to eql('name') }
      it { expect(JSON.parse(response.body)['device']['description']).to eql('description') }
      it { expect(JSON.parse(response.body)['device']['building']).to eql('building') }
      it { expect(JSON.parse(response.body)['device']['level']).to eql('level') }
      it { expect(JSON.parse(response.body)['device']['device_threshold']).to eql(1) }
      it { expect(JSON.parse(response.body)['device']['id']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['id']).to be_a(Fixnum) }
    end

    context 'when all name has no values' do
      before do
        device_params['name'] = ''
        post :create, device: device_params
      end

      it { expect(response).to have_http_status 200 }
      it { expect(response.body).not_to be_nil }
      it { expect(JSON.parse(response.body)).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['device_mac']).to eql('device mac') }
      it { expect(JSON.parse(response.body)['device']['serial_no']).to eql('serial no') }
      it { expect(JSON.parse(response.body)['device']['color']).to eql('color') }
      it { expect(JSON.parse(response.body)['device']['name']).to eql('') }
      it { expect(JSON.parse(response.body)['device']['description']).to eql('description') }
      it { expect(JSON.parse(response.body)['device']['building']).to eql('building') }
      it { expect(JSON.parse(response.body)['device']['level']).to eql('level') }
      it { expect(JSON.parse(response.body)['device']['device_threshold']).to eql(1) }
      it { expect(JSON.parse(response.body)['device']['id']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['id']).to be_a(Fixnum) }
    end

    context 'when all description has no values' do
      before do
        device_params['description'] = ''
        post :create, device: device_params
      end

      it { expect(response).to have_http_status 200 }
      it { expect(response.body).not_to be_nil }
      it { expect(JSON.parse(response.body)).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['device_mac']).to eql('device mac') }
      it { expect(JSON.parse(response.body)['device']['serial_no']).to eql('serial no') }
      it { expect(JSON.parse(response.body)['device']['color']).to eql('color') }
      it { expect(JSON.parse(response.body)['device']['name']).to eql('name') }
      it { expect(JSON.parse(response.body)['device']['description']).to eql('') }
      it { expect(JSON.parse(response.body)['device']['building']).to eql('building') }
      it { expect(JSON.parse(response.body)['device']['level']).to eql('level') }
      it { expect(JSON.parse(response.body)['device']['device_threshold']).to eql(1) }
      it { expect(JSON.parse(response.body)['device']['id']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['id']).to be_a(Fixnum) }
    end

    context 'when all building has no values' do
      before do
        device_params['building'] = ''
        post :create, device: device_params
      end

      it { expect(response).to have_http_status 200 }
      it { expect(response.body).not_to be_nil }
      it { expect(JSON.parse(response.body)).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['device_mac']).to eql('device mac') }
      it { expect(JSON.parse(response.body)['device']['serial_no']).to eql('serial no') }
      it { expect(JSON.parse(response.body)['device']['color']).to eql('color') }
      it { expect(JSON.parse(response.body)['device']['name']).to eql('name') }
      it { expect(JSON.parse(response.body)['device']['description']).to eql('description') }
      it { expect(JSON.parse(response.body)['device']['building']).to eql('') }
      it { expect(JSON.parse(response.body)['device']['level']).to eql('level') }
      it { expect(JSON.parse(response.body)['device']['device_threshold']).to eql(1) }
      it { expect(JSON.parse(response.body)['device']['id']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['id']).to be_a(Fixnum) }
    end

    context 'when all level has no values' do
      before do
        device_params['level'] = ''
        post :create, device: device_params
      end

      it { expect(response).to have_http_status 200 }
      it { expect(response.body).not_to be_nil }
      it { expect(JSON.parse(response.body)).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['device_mac']).to eql('device mac') }
      it { expect(JSON.parse(response.body)['device']['serial_no']).to eql('serial no') }
      it { expect(JSON.parse(response.body)['device']['color']).to eql('color') }
      it { expect(JSON.parse(response.body)['device']['name']).to eql('name') }
      it { expect(JSON.parse(response.body)['device']['description']).to eql('description') }
      it { expect(JSON.parse(response.body)['device']['building']).to eql('building') }
      it { expect(JSON.parse(response.body)['device']['level']).to eql('') }
      it { expect(JSON.parse(response.body)['device']['device_threshold']).to eql(1) }
      it { expect(JSON.parse(response.body)['device']['id']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['id']).to be_a(Fixnum) }
    end

    context 'when all device_threshold has no values' do
      before do
        device_params['device_threshold'] = ''
        post :create, device: device_params
      end

      it { expect(response).to have_http_status 200 }
      it { expect(response.body).not_to be_nil }
      it { expect(JSON.parse(response.body)).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['device_mac']).to eql('device mac') }
      it { expect(JSON.parse(response.body)['device']['serial_no']).to eql('serial no') }
      it { expect(JSON.parse(response.body)['device']['color']).to eql('color') }
      it { expect(JSON.parse(response.body)['device']['name']).to eql('name') }
      it { expect(JSON.parse(response.body)['device']['description']).to eql('description') }
      it { expect(JSON.parse(response.body)['device']['building']).to eql('building') }
      it { expect(JSON.parse(response.body)['device']['level']).to eql('level') }
      it { expect(JSON.parse(response.body)['device']['device_threshold']).to be_nil }
      it { expect(JSON.parse(response.body)['device']['id']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['id']).to be_a(Fixnum) }
    end
  end

  describe 'PUT update' do
    let(:device_params) do
      {
        device_mac: 'device mac',
        serial_no: 'serial no',
        color: 'color',
        name: 'name',
        description: 'description',
        building: 'building',
        level: 'level',
        device_threshold: 1
      }
    end

    let!(:device) { create(:device) }

    context 'when all fields has been updated' do
      before do
        put :update, id: device.id, device: device_params
      end

      it { expect(response).to have_http_status 200 }
      it { expect(response.body).not_to be_nil }
      it { expect(JSON.parse(response.body)).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['device_mac']).to eql('device mac') }
      it { expect(JSON.parse(response.body)['device']['serial_no']).to eql('serial no') }
      it { expect(JSON.parse(response.body)['device']['color']).to eql('color') }
      it { expect(JSON.parse(response.body)['device']['name']).to eql('name') }
      it { expect(JSON.parse(response.body)['device']['description']).to eql('description') }
      it { expect(JSON.parse(response.body)['device']['building']).to eql('building') }
      it { expect(JSON.parse(response.body)['device']['level']).to eql('level') }
      it { expect(JSON.parse(response.body)['device']['device_threshold']).to eql(1) }
      it { expect(JSON.parse(response.body)['device']['id']).not_to be_nil }
      it { expect(JSON.parse(response.body)['device']['id']).to eql(device.id) }
      it { expect(JSON.parse(response.body)['device']['id']).to be_a(Fixnum) }
    end
  end

  describe 'DELETE destroy' do
    let!(:device) { create(:device) }
    before do
      delete :destroy, id: device.id
    end

    it { expect(response).to have_http_status 200 }
    it { expect(assigns(:device).destroyed?).to eql(true) }
    it { expect(JSON.parse(response.body)).not_to be_nil }
    it { expect(JSON.parse(response.body)['device']).not_to be_nil }
    it { expect(JSON.parse(response.body)['device']['device_mac']).not_to be_nil }
    it { expect(JSON.parse(response.body)['device']['serial_no']).not_to be_nil }
    it { expect(JSON.parse(response.body)['device']['color']).not_to be_nil }
    it { expect(JSON.parse(response.body)['device']['name']).not_to be_nil }
    it { expect(JSON.parse(response.body)['device']['description']).not_to be_nil }
    it { expect(JSON.parse(response.body)['device']['building']).not_to be_nil }
    it { expect(JSON.parse(response.body)['device']['level']).not_to be_nil }
    it { expect(JSON.parse(response.body)['device']['device_threshold']).not_to be_nil }
    it { expect(JSON.parse(response.body)['device']['id']).not_to be_nil }
    it { expect(JSON.parse(response.body)['device']['id']).to eql(device.id) }
  end
end

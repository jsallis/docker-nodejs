require "serverspec"
require "docker"
require_relative "spec_helper"

describe "Dockerfile" do
  before(:all) do
    @image = Docker::Image.build_from_dir(File.expand_path("../..", __FILE__))

    set :os, family: :debian
    set :backend, :docker
    set :docker_image, @image.id
  end

  it "has build-essential package installed" do
    expect(package("build-essential")).to be_installed
  end

  it "has node version #{NODE_VERSION} installed" do
    expect(command("node --version").stdout).to match(/v#{NODE_VERSION}/)
  end
end

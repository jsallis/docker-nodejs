require "serverspec"
require "docker"

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

  it "has node installed" do
    expect(command("node --version").stdout).to match(/v0.12/)
  end
end

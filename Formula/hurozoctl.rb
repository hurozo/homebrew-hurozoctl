class Hurozoctl < Formula
  desc "Administrative CLI for Hurozo Deployment Centers"
  homepage "https://github.com/hurozo/hurozoctl"
  version "0.1.62"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.62/hurozoctl_0.1.62_darwin_arm64.tar.gz"
      sha256 "a6835eb4d8dc44727f2c3e2ce5b160a18388a374b9315656fce1b78e1a47d7b3"
    else
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.62/hurozoctl_0.1.62_darwin_amd64.tar.gz"
      sha256 "3dd642d68adb9485f6eec6b3dac61e9f221cebd20a45db8628ef343c7a6818d0"
    end
  end

  def install
    bin.install "hurozoctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hurozoctl version")
  end
end

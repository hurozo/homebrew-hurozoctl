class Hurozoctl < Formula
  desc "Administrative CLI for Hurozo Deployment Centers"
  homepage "https://github.com/hurozo/hurozoctl"
  version "0.1.58"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.58/hurozoctl_0.1.58_darwin_arm64.tar.gz"
      sha256 "78defde25649a653e37aa5a4a5054cb4e9affddcbbd3ecfea372b5459dc04118"
    else
      url "https://github.com/hurozo/hurozoctl/releases/download/v0.1.58/hurozoctl_0.1.58_darwin_amd64.tar.gz"
      sha256 "2d48587903220cc87d6f4903aea107d58bf2d8e3386e4aa7c0548303310a4cc8"
    end
  end

  def install
    bin.install "hurozoctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hurozoctl version")
  end
end

class Tuivir < Formula
  desc "Inspect and operate local virtualization and container providers"
  homepage "https://github.com/saif97/Tuivir"
  version "0.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/saif97/Tuivir/releases/download/v0.1.0/tuivir-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "5dd9421a93507c020ac41ea82e0a4cd1746014ef6b071c84a974db8a00a8a0d0"
    end

    on_intel do
      url "https://github.com/saif97/Tuivir/releases/download/v0.1.0/tuivir-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "04b96e18ceb2264ebb0dad091738b13d441b9abe5bbb2309b0884f2b66e6ca82"
    end
  end

  def install
    bin.install "tuivir"
  end

  test do
    assert_equal "0.1.0\n", shell_output("#{bin}/tuivir --version")
  end
end

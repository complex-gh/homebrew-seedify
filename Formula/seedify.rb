class Seedify < Formula
  desc "CLI tool for seeding databases and generating test data"
  homepage "https://github.com/complex-gh/seedify"
  url "https://github.com/complex-gh/seedify/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  sha256 "a16a07ed3eb450dca11f403023c4437ad0575cc2d0355d09d83e637f1914efca"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/seedify"
  end

  test do
    system bin/"seedify", "--help"
  end
end

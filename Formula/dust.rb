class Dust < Formula
  desc "More intuitive version of du in rust. Similar to ncdu"
  homepage "https://github.com/bootandy/dust/"
  url "https://github.com/bootandy/dust/archive/v0.3.0.tar.gz"
  sha256 "85e649f986a0f275bc02f8c10a3c04bf08547c5c3ecbd31b480ecf651f72c79c"
  head "https://github.com/bootandy/dust.git"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/dust"
  end

  test do
    system "#{bin}/dust"
  end
end

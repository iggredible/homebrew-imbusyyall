class Imbusyyall < Formula
  desc "Generate realistic fake server logs"
  homepage "https://github.com/iggredible/imbusyyall"
  url "https://github.com/iggredible/imbusyyall/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ef7c43bbedcb10aa8091a13b05ef50c4b96490de39ed813a9b8e02efee8ff451"
  license "MIT"

  def install
    bin.install "imbusyyall.rb" => "imbusyyall"
  end

  test do
    assert_match(/Started GET/, shell_output("#{bin}/imbusyyall -l 1"))
  end
end

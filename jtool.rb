class Jtool < Formula
  desc "otool, atos, dyldinfo, nm, segedit, pagestuff, strings, and more."
  homepage "http://newosxbook.com/tools/jtool.html"
  url "http://www.newosxbook.com/files/jtool.tar"
  version "1-ε"
  sha256 "c66f3661787d335b249dc35ba8124a94e0b77f42746a114eee8849c7eeb80a21"

  def install
    bin.install "jtool"
    man1.install "jtool.1"
  end

  test do
    system "#{bin}/jtool", "-arch", "x86_64", "-h", "#{bin}/jtool"
  end
end

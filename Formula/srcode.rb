# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Srcode < Formula
  desc "Tool that help developers to manage their codebase in an effective & productive way."
  homepage ""
  version "0.3.0"
  license "GPL-3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/creekorful/srcode/releases/download/v0.3.0/srcode_0.3.0_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "bb059dda20d9b2fb571a2e054f367ddb7902ae13d68591749813bba46c7a6c70"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/creekorful/srcode/releases/download/v0.3.0/srcode_0.3.0_linux_amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "9da3dca44c465fa8a6b087f551e91ad01f04bc07112ead93523260ec7684d0e7"
  end

  depends_on "git"

  def install
    bin.install "srcode"
  end

  test do
    system "#{bin}/srcode --version"
  end
end

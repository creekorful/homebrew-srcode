# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Srcode < Formula
  desc "Tool that help developers to manage their codebase in an effective & productive way."
  homepage ""
  version "0.7.2"
  license "GPL-3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/creekorful/srcode/releases/download/v0.7.2/srcode_0.7.2_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "79693ef99cdbc51e06723e6b47bd6293743ee731e8c3181165db3fb47f90594f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/creekorful/srcode/releases/download/v0.7.2/srcode_0.7.2_linux_amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "e8f50001cf8bd64fe497f4699a59f718385f919f039afc53d69231b4b595d165"
  end

  depends_on "git"

  def install
    bin.install "srcode"
  end

  test do
    system "#{bin}/srcode --version"
  end
end

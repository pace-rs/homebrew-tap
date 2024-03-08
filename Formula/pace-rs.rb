class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  version "0.14.0"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.14.0/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "ed3c84ca29fb199982d25cd73097db3c6a7da7d53691d27e1ca62b285e8c0a54"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.14.0/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "e827300c1b01fde8068532eb98bf68fed996a6c7f6393377543e51376b5f2269"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.14.0/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "b2d5ad95f9a549e367367a84d8554a506bc208429ef5b6446c6727a293e646fe"
    end
  end
  license "AGPL-3.0-or-later"

  def install
    on_macos do
      on_arm do
        bin.install "pace"
      end
    end
    on_macos do
      on_intel do
        bin.install "pace"
      end
    end
    on_linux do
      on_intel do
        bin.install "pace"
      end
    end

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end

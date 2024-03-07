class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  version "0.13.0"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.13.0/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "b02ea2523cfb2b311c4976058367e263bd662ff844804ef2c688313a4dfcdef6"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.13.0/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "d7185f8988b60e45d680ba1859a24844e911335d89c5decb3e49688567df7724"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.13.0/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "36e3f941ac62e084074f446da0b67dc4e8591e06be33de223e14a199aaa06e74"
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

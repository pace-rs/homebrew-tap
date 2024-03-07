class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  version "0.13.1"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.13.1/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "bea174d05591ea913c5c32fa81ef48d7e9a7127eaacdbb69fb1dd9103ed6a1d5"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.13.1/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "55e3539d4fb74294da807f2493b730e343bb4b1e57f6e2c8713d4ea2d8f6ea45"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.13.1/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "9e11031f07de15f20cb94ad3171f8b2fb42c3b9da10dba4bcb7ba08cc69df026"
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

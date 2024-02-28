class PaceRs < Formula
  desc "pace - Mindful Time Tracking: Simplify Your Focus and Boost Productivity Effortlessly."
  version "0.9.0"
  on_macos do
    on_arm do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.9.0/pace-rs-aarch64-apple-darwin.tar.xz"
      sha256 "9798b2d3b42f0e9fb2745c8e27f0df67f42bcc042fe3449db1836ab1c136045a"
    end
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.9.0/pace-rs-x86_64-apple-darwin.tar.xz"
      sha256 "b3766946660ae94baa4dcc6ae55fee54d619e2d86553e27a6233c6c242d36bd0"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pace-rs/pace/releases/download/pace-rs-v0.9.0/pace-rs-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "c0969505e67496a101a009073ddfc6e4ab090998a469d967f24539dfc07de733"
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

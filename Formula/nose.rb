class Nose < Formula
  desc "Intona Ethernet Debugger CLI tool and userspace driver"
  head "https://github.com/intona/ethernet-debugger.git"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "libusb"

  def install
    mkdir "build" do
      system "meson", *std_meson_args, ".."
      system "ninja", "install"
    end
  end
end


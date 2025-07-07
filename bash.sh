# 克隆最新 OpenWRT 源码（master 分支）
git clone https://github.com/openwrt/openwrt.git
cd openwrt

# 更新 feeds（包含内核、驱动等依赖）
./scripts/feeds update -a
./scripts/feeds install -a
# 创建 qualcommax 目录
mkdir -p target/linux/qualcommax

# 从官方仓库复制平台基础文件（以 OpenWRT 22.03 分支为例）
wget -O - https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob_plain;f=target/linux/qualcommax/config-5.10 > target/linux/qualcommax/config-5.10
wget -O - https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob_plain;f=target/linux/qualcommax/image/Makefile > target/linux/qualcommax/image/Makefile
wget -O - https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob_plain;f=target/linux/qualcommax/Makefile > target/linux/qualcommax/Makefile
wget -O - https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob_plain;f=target/linux/qualcommax/target.mk > target/linux/qualcommax/target.mk




mkdir -p target/linux/qualcommax/dts
mkdir -p target/linux/qualcommax/dts/include/dt-bindings/{clock,gpio,usb,reset}

# 复制你的设备树文件
cp ../target/linux/qualcommax/dts/qcom-ipq5332-jdcloud-be6500.dts target/linux/qualcommax/dts/

# 复制头文件（确保路径正确）
cp ../target/linux/qualcommax/dts/qcom,gcc-ipq5332.h target/linux/qualcommax/dts/include/dt-bindings/clock/
cp ../target/linux/qualcommax/dts/include/dt-bindings/gpio/gpio.h target/linux/qualcommax/dts/include/dt-bindings/gpio/
cp ../target/linux/qualcommax/dts/include/dt-bindings/otg/otg.h target/linux/qualcommax/dts/include/dt-bindings/usb/
cp ../target/linux/qualcommax/dts/include/dt-bindings/reset/reset.h target/linux/qualcommax/dts/include/dt-bindings/reset/

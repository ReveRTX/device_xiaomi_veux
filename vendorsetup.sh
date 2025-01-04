echo "Removing old stuff..."

echo "Removing existing kernel..."
rm -rf kernel/xiaomi/sm6375
echo "Removing existing veux-firmware..."
rm -rf vendor/xiaomi/veux-firmware
echo "Removing existing vendor..."
rm -rf vendor/xiaomi/veux 
echo "Removing existing hw/xiaomi..."
rm -rf hardware/xiaomi
echo "Removing existing veux miuicamera..."
rm -rf vendor/xiaomi/miuicamera-veux
echo "Removing existing miuicamera..."
rm -rf vendor/xiaomi/miuicamera

echo "Cloning Audio Configs...."

# Clone own audio config tree
rm -rf hardware/qcom-caf/sm8350/audio/configs/holi && git clone https://github.com/Amrito-Projects/hardware_qcom-caf_sm8350_audio_configs_holi.git -b 14 hardware/qcom-caf/sm8350/audio/configs/holi --depth=1

echo "Cloning vendor..."
# Clone Vendor
git clone https://gitea.com/amritokun/vendor_xiaomi_veux.git -b 14 vendor/xiaomi/veux

echo "Cloning hardware related stuff..."
# Hardware
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi

echo "Cloning Kernel"
# Kernel
git clone https://github.com/PaimonLab/kernel_xiaomi_veux.git kernel/xiaomi/veux

echo "Cloning MIUI Camera..."
# MIUI Camera
git clone https://github.com/Amrito-Projects/vendor_xiaomi_miuicamera-veux.git vendor/xiaomi/miuicamera-veux
git clone https://github.com/Amrito-Projects/vendor_xiaomi_miuicamera.git vendor/xiaomi/miuicamera

rm -rf hardware/xiaomi/megvii

echo "Completed, proceeding to lunch"

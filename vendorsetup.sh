export CAF_REVISION_TAG=$(grep "default  revision" ".repo/manifests/default.xml" | awk -F '/' '{print $3}' | awk -F '"' '{print $1}')

# Welcome Msg
echo -e ==========================================
echo 	 xd. xdroidOS Build Environtment
echo -e ==========================================
echo -e "xd. Revision: rev1.8.redwhite"
echo -e "CAF Revision: $CAF_REVISION_TAG"

# SDClang Environment Variables
export SDCLANG_CONFIG=$(pwd)/vendor/xdroid/sdclang/sdclang.json

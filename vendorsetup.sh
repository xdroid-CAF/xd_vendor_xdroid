export SDCLANG_CONFIG=$(pwd)/vendor/xdroid/sdclang/sdclang.json
export SDCLANG_LTO_DEFS="vendor/xdroid/sdclang/sdllvm-lto-defs.mk"
#export GLOBAL_THINLTO=true
export SDCLANG=false

export CAF_REVISION_TAG=$(grep "default  revision" ".repo/manifests/default.xml" | awk -F '/' '{print $3}' | awk -F '"' '{print $1}')

# Welcome Msg
echo -e ==========================================
echo 	 xd. xdroidOS Build Environtment
echo -e ==========================================
echo -e "CAF Revision: $CAF_REVISION_TAG"
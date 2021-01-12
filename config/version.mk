#
# Copyright (C) 2020 The ConquerOS Project
#				2021 a xdroid Prjkt
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

XDROID_HOST_TIME := $(shell date +"%Y%m%d-%H%M")

ifndef XDROID_BUILD_TYPE
   XDROID_BUILD_TYPE := UNOFFICIAL
endif

XDROID_VERSION := X11
XDROID_BUILD_VERSION := xdroid$(XDROID_VERSION)-$(XDROID_BUILD)-$(XDROID_HOST_TIME)-$(XDROID_BUILD_TYPE)
XDROID_BUILD_NUMBER := xd.$(XDROID_VERSION).$(XDROID_HOST_TIME)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
   ro.xdroid.version=$(XDROID_VERSION) \
   ro.xdroid.build.version=$(XDROID_BUILD_VERSION) \
   ro.xdroid.build.number=$(XDROID_BUILD_NUMBER) \
   ro.xdroid.build.type=$(XDROID_BUILD_TYPE) \
   ro.caf.revision.tag=$(CAF_REVISION_TAG)

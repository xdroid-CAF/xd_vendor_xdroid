# Copyright (C) 2017 AospExtended ROM
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

#Extended Versioning
EXTENDED_VERSION = v4.5

ifndef EXTENDED_BUILD_TYPE
    EXTENDED_BUILD_TYPE := UNOFFICIAL
    PLATFORM_VERSION_CODENAME := UNOFFICIAL
endif

EXTENDED_MOD_VERSION := AospExtended-$(EXTENDED_VERSION)-$(shell date -u +%Y%m%d-%H%M)-$(EXTENDED_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.extended.version=$(EXTENDED_VERSION) \
  ro.extended.releasetype=$(EXTENDED_BUILD_TYPE) \
  ro.modversion=$(EXTENDED_MOD_VERSION)
  
EXTENDED_DISPLAY_VERSION := AospExtended-$(EXTENDED_VERSION)-$(EXTENDED_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.extended.display.version=$(EXTENDED_DISPLAY_VERSION)
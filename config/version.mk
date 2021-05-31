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

CAFEX_VERSION = v2.0

CAFEX_BUILD_TYPE = OFFICIAL

TARGET_PRODUCT_SHORT := $(subst cafex_,,$(CAFEX_BUILD))

CAFEX_DATE_YEAR := $(shell date +%Y)
CAFEX_DATE_MONTH := $(shell date +%m)
CAFEX_DATE_DAY := $(shell date +%d)
CAFEX_DATE_HOUR := $(shell date +%H)
CAFEX_DATE_MINUTE := $(shell date +%M)
#CAFEX_BUILD_DATE_UTC := $(shell date -d '$(CAFEX_DATE_YEAR)-$(CAFEX_DATE_MONTH)-$(CAFEX_DATE_DAY) $(CAFEX_DATE_HOUR):$(CAFEX_DATE_MINUTE) UTC' +%s)
CAFEX_BUILD_DATE := $(CAFEX_DATE_YEAR)$(CAFEX_DATE_MONTH)$(CAFEX_DATE_DAY)-$(CAFEX_DATE_HOUR)$(CAFEX_DATE_MINUTE)
CAFEX_MOD_VERSION := CAFExtended-$(CAFEX_VERSION)-$(CAFEX_BUILD_DATE)-$(CAFEX_BUILD_TYPE)
CAFEX_FINGERPRINT := CAFExtended/$(CAFEX_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(CAFEX_BUILD_DATE)



CAFEX_DISPLAY_VERSION := CAFExtended-$(CAFEX_VERSION)-$(CAFEX_BUILD_TYPE)


PRODUCT_GENERIC_PROPERTIES += \
  ro.cafex.display.version=$(CAFEX_DISPLAY_VERSION) \
  ro.cafex.fingerprint=$(CAFEX_FINGERPRINT) \
  ro.cafex.build_date_utc=$(CAFEX_BUILD_DATE_UTC)


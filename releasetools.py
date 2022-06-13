#
# Copyright (C) 2022 The LineageOS Project
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

import common
import re

def FullOTA_InstallEnd(info):
  OTA_InstallEnd(info)
  return

def IncrementalOTA_InstallEnd(info):
  OTA_InstallEnd(info)
  return

def AddImage(info, dir, basename, dest):
  name = basename
  data = info.input_zip.read(dir + "/" + basename)
  common.ZipWriteStr(info.output_zip, name, data)
  info.script.AppendExtra('package_extract_file("%s", "%s");' % (name, dest))

def FullOTA_InstallBegin(info):
  AddImage(info, "RADIO", "super_dummy.img", "/tmp/super_dummy.img");
  info.script.AppendExtra('package_extract_file("install/bin/flash_super_dummy.sh", "/tmp/flash_super_dummy.sh");')
  info.script.AppendExtra('set_metadata("/tmp/flash_super_dummy.sh", "uid", 0, "gid", 0, "mode", 0755);')
  info.script.AppendExtra('run_program("/tmp/flash_super_dummy.sh");')
  return

def OTA_InstallEnd(info):
  info.script.Print("Patching firmware images...")
  AddImage(info, "IMAGES", "vbmeta.img", "/dev/block/by-name/vbmeta")
  AddImage(info, "IMAGES", "dtbo.img", "/dev/block/by-name/dtbo")
  return

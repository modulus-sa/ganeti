{-# LANGUAGE TemplateHaskell #-}
{-| LVM data types

This module holds the definition of the data types describing the status of the
disks according to LVM (and particularly the lvs tool).

-}
{-

Copyright (C) 2013 Google Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

-}
module Ganeti.Storage.Lvm.Types
  ( LVInfo(..)
  ) where

import Ganeti.THH


-- | This is the format of the report produced by each data collector.
$(buildObject "LVInfo" "lvi"
  [ simpleField "uuid"              [t| String |]
  , simpleField "name"              [t| String |]
  , simpleField "attr"              [t| String |]
  , simpleField "major"             [t| Int |]
  , simpleField "minor"             [t| Int |]
  , simpleField "kernel_major"      [t| Int |]
  , simpleField "kernel_minor"      [t| Int |]
  , simpleField "size"              [t| Int |]
  , simpleField "seg_count"         [t| Int |]
  , simpleField "tags"              [t| String |]
  , simpleField "modules"           [t| String |]
  , simpleField "vg_uuid"           [t| String |]
  , simpleField "vg_name"           [t| String |]
  , simpleField "segtype"           [t| String |]
  , simpleField "seg_start"         [t| Int |]
  , simpleField "seg_start_pe"      [t| Int |]
  , simpleField "seg_size"          [t| Int |]
  , simpleField "seg_tags"          [t| String |]
  , simpleField "seg_pe_ranges"     [t| String |]
  , simpleField "devices"           [t| String |]
  , optionalNullSerField $
    simpleField "instance"          [t| String |]
  ])

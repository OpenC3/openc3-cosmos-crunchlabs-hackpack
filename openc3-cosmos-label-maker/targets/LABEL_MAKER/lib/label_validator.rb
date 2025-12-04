# encoding: ascii-8bit

# Copyright 2025 OpenC3, Inc.
# All Rights Reserved.
#
# This program is free software; you can modify and/or redistribute it
# under the terms of the GNU Affero General Public License
# as published by the Free Software Foundation; version 3 with
# attribution addendums as found in the LICENSE.txt
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.

# This file may also be used under the terms of a commercial license
# if purchased from OpenC3, Inc.

require 'openc3/packets/command_validator'

class LabelValidator < OpenC3::CommandValidator
  def pre_check(command)
    if command.packet_name == 'DRAW'
      label = command.read("LABEL")
      if label.length > 8
        return [false, 'LABEL too long, please try a shorter label to write']
      end
    end

    return [true, nil]
  end

  def post_check(command)
      return [true, nil]
  end
end

# SPDX-License-Identifier: Apache-2.0

# Ajustando para o STM32H723VGT6
board_runner_args(dfu-util "--pid=0483:df11" "--alt=0" "--dfuse")
board_runner_args(jlink "--device=STM32H723VGT6" "--speed=4000")

# Incluindo os scripts de runner para dfu-util e JLink
include(${ZEPHYR_BASE}/boards/common/dfu-util.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)

################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/console/console.c \
../Libraries/console/consoleCommands.c \
../Libraries/console/consoleIo.c 

OBJS += \
./Libraries/console/console.o \
./Libraries/console/consoleCommands.o \
./Libraries/console/consoleIo.o 

C_DEPS += \
./Libraries/console/console.d \
./Libraries/console/consoleCommands.d \
./Libraries/console/consoleIo.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/console/%.o Libraries/console/%.su Libraries/console/%.cyclo: ../Libraries/console/%.c Libraries/console/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Libraries/console -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Libraries-2f-console

clean-Libraries-2f-console:
	-$(RM) ./Libraries/console/console.cyclo ./Libraries/console/console.d ./Libraries/console/console.o ./Libraries/console/console.su ./Libraries/console/consoleCommands.cyclo ./Libraries/console/consoleCommands.d ./Libraries/console/consoleCommands.o ./Libraries/console/consoleCommands.su ./Libraries/console/consoleIo.cyclo ./Libraries/console/consoleIo.d ./Libraries/console/consoleIo.o ./Libraries/console/consoleIo.su

.PHONY: clean-Libraries-2f-console


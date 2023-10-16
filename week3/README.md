
LED1: LD1_Pin blinks by a timer14  interrupt.
LED2: LD2_Pin can be turned on/off using external interrupts.

Debounce procedure:
  - The interrupt handler occurs by rising enge on Button_B1_Pin. The button flag is set and the interrupt for this pin is disabled
  - In the main loop we check the button flag, turn on the LED2, and re-enable pin interrupt. 


What are the hardware registers that cause the LED to turn on and off? (From the processor manual, don’t worry about initialization.)
LEDs:
PORTB Register address: (AHB1PERIPH_BASE + 0x0400UL)
LD1_Pin: GPIO_PIN_0                 ((uint16_t)0x0001U)
LD2_Pin: GPIO_PIN_7                 ((uint16_t)0x0080U) 

What are the registers that you read in order to find out the state of the button?
Button:
PORTC: ((GPIO_TypeDef *) GPIOC_BASE)
GPIO_PIN_13: GPIO_PIN_13                ((uint16_t)0x2000U)

Can you read the register directly and see the button change in a debugger or by printing out these value of the memory at the register’s address?
- yes, To do thin need to put the register into debug watch list. 

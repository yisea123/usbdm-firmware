/* MemoryMap.ld
 *
 * Memory map for devices without SRAM_U allocation for bit-band/bme
 */
 
/* ---- <<< Use Configuration Wizard in Context Menu >>> ---- */

/* <o> Stack Size
   <i> Required amount of stack space
   <i> In CMSIS this will determine the ISR stack size
   <0x0-0x1000> 
*/
__stack_size = 0x400;

/* <o> Minimum Heap Size 
   <i> Actual heap may be larger as it fills all unused RAM up to STACK
   <0x0-0x1000> 
*/
__heap_size  = 0x400;
  
/*
 * Memory Map generated by USBDM New Project Wizard for FRDM_KL05Z
 */
MEMORY
{
  aips           (rw)  : ORIGIN = 0x40000000, LENGTH = 0x00080000
  gpio           (rw)  : ORIGIN = 0x400FF000, LENGTH = 0x00001000
  bme            (rw)  : ORIGIN = 0x44000000, LENGTH = 0x1C000000
  peripherals    (rw)  : ORIGIN = 0xE0000000, LENGTH = 0x00100000
  mtb            (rw)  : ORIGIN = 0xF0000000, LENGTH = 0x00001000
  mtbdwt         (rw)  : ORIGIN = 0xF0001000, LENGTH = 0x00001000
  romTable       (rw)  : ORIGIN = 0xF0002000, LENGTH = 0x00001000
  mcm            (rw)  : ORIGIN = 0xF0003000, LENGTH = 0x00001000
  fgpio          (rw)  : ORIGIN = 0xF8000000, LENGTH = 0x08000000
/*
 *  <o>  FLASH  address <constant>
 *  <o1> FLASH  size    <constant>
 */
  flash          (rx)  : ORIGIN = 0x00000000, LENGTH = 0x00008000
/*
 *  <o>  RAM    address <constant>
 *  <o1> RAM    size    <constant>
 */
  ram            (rwx) : ORIGIN = 0x1FFFFC00, LENGTH = 0x00001000
  /* Guard region above stack for GDB */
  gdbGuard       (r)   : ORIGIN = 0x20000C00, LENGTH = 0x00000020
};



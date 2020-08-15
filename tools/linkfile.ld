/*
Based on PSPSDK:

Copyright (c) 2005  adresd
Copyright (c) 2005  Marcus R. Brown
Copyright (c) 2005  James Forshaw
Copyright (c) 2005  John Kelley
Copyright (c) 2005  Jesper Svennevid
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:
1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. The names of the authors may not be used to endorse or promote products
   derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE AUTHORS ``AS IS'' AND ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

ENTRY(module_start)
SECTIONS
{
   .text 0 : { *(.text .text.*) }
   /* PSP library stub functions. */
   .sceStub.text : { *(.sceStub.text) *(SORT(.sceStub.text.*)) }

   /* PSP library entry table and library stub table. */
   .lib.ent.top    : { *(.lib.ent.top) }
   .lib.ent        : { *(.lib.ent) }
   .lib.ent.btm    : { *(.lib.ent.btm) }
   .lib.stub.top   : { *(.lib.stub.top) }
   .lib.stub       : { *(.lib.stub) }
   .lib.stub.btm   : { *(.lib.stub.btm) }

   /* PSP read-only data for module info, NIDs, and Vstubs.  The
    .rodata.sceModuleInfo section must appear before the .rodata section
     otherwise it would get absorbed into .rodata and the PSP bootloader
     would be unable to locate the module info structure. */
   .rodata.sceModuleInfo    : { *(.rodata.sceModuleInfo) }
   .rodata.sceResident      : { *(.rodata.sceResident) }
   .rodata.sceNid           : { *(.rodata.sceNid) *(SORT(.rodata.sceNid.*)) }
   .rodata.sceVstub         : { *(.rodata.sceVstub) *(SORT(.rodata.sceVstub.*)) }

   /*Debug Data*/
   /* Stabs debugging sections.  */
   .stab          0 : { *(.stab) }
   .stabstr       0 : { *(.stabstr) }
   .stab.excl     0 : { *(.stab.excl) }
   .stab.exclstr  0 : { *(.stab.exclstr) }
   .stab.index    0 : { *(.stab.index) }
   .stab.indexstr 0 : { *(.stab.indexstr) }
   .comment       0 : { *(.comment) }

   /* DWARF debug sections.
     Symbols in the DWARF debugging sections are relative to the beginning
     of the section so we begin them at 0.  */
   /* DWARF 5 section */
   .debug_info 0 : { *(.debug_info) }
   .debug_pubnames 0 : { *(.debug_pubnames) }
   .debug_pubtypes 0 : { *(.debug_pubtypes) }
   .debug_frame 0 : { *(.debug_frame) }
   .debug_line 0 : { *(.debug_line) }
   .debug_loc 0 : { *(.debug_loc) }
   .debug_aranges 0 : { *(.debug_aranges) }
   .debug_ranges 0 : { *(.debug_ranges) }

   /DISCARD/ : { *(.comment) *(.pdr) }
}
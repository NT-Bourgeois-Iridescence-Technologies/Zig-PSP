const macro = @import("pspmacros.zig");

comptime {
    asm (macro.import_module_start("sceRtc", "0x40010000", "40"));
    asm (macro.import_function("sceRtc", "0xC41C2853", "sceRtcGetTickResolution"));
    asm (macro.import_function("sceRtc", "0x3F7AD767", "sceRtcGetCurrentTick"));
    asm (macro.import_function("sceRtc", "0x029CA3B3", "sceRtc_029CA3B3"));
    asm (macro.import_function("sceRtc", "0x4CFA57B0", "sceRtcGetCurrentClock"));
    asm (macro.import_function("sceRtc", "0xE7C27D1B", "sceRtcGetCurrentClockLocalTime"));
    asm (macro.import_function("sceRtc", "0x34885E0D", "sceRtcConvertUtcToLocalTime"));
    asm (macro.import_function("sceRtc", "0x779242A2", "sceRtcConvertLocalTimeToUTC"));
    asm (macro.import_function("sceRtc", "0x42307A17", "sceRtcIsLeapYear"));
    asm (macro.import_function("sceRtc", "0x05EF322C", "sceRtcGetDaysInMonth"));
    asm (macro.import_function("sceRtc", "0x57726BC1", "sceRtcGetDayOfWeek"));
    asm (macro.import_function("sceRtc", "0x4B1B5E82", "sceRtcCheckValid"));
    asm (macro.import_function("sceRtc", "0x3A807CC8", "sceRtcSetTime_t"));
    asm (macro.import_function("sceRtc", "0x27C4594C", "sceRtcGetTime_t"));
    asm (macro.import_function("sceRtc", "0xF006F264", "sceRtcSetDosTime"));
    asm (macro.import_function("sceRtc", "0x36075567", "sceRtcGetDosTime"));
    asm (macro.import_function("sceRtc", "0x7ACE4C04", "sceRtcSetWin32FileTime"));
    asm (macro.import_function("sceRtc", "0xCF561893", "sceRtcGetWin32FileTime"));
    asm (macro.import_function("sceRtc", "0x7ED29E40", "sceRtcSetTick"));
    asm (macro.import_function("sceRtc", "0x6FF40ACC", "sceRtcGetTick"));
    asm (macro.import_function("sceRtc", "0x9ED0AE87", "sceRtcCompareTick"));
    asm (macro.import_function("sceRtc", "0x44F45E05", "sceRtcTickAddTicks"));
    asm (macro.import_function("sceRtc", "0x26D25A5D", "sceRtcTickAddMicroseconds"));
    asm (macro.import_function("sceRtc", "0xF2A4AFE5", "sceRtcTickAddSeconds"));
    asm (macro.import_function("sceRtc", "0xE6605BCA", "sceRtcTickAddMinutes"));
    asm (macro.import_function("sceRtc", "0x26D7A24A", "sceRtcTickAddHours"));
    asm (macro.import_function("sceRtc", "0xE51B4B7A", "sceRtcTickAddDays"));
    asm (macro.import_function("sceRtc", "0xCF3A2CA8", "sceRtcTickAddWeeks"));
    asm (macro.import_function("sceRtc", "0xDBF74F1B", "sceRtcTickAddMonths"));
    asm (macro.import_function("sceRtc", "0x42842C77", "sceRtcTickAddYears"));
    asm (macro.import_function("sceRtc", "0xC663B3B9", "sceRtcFormatRFC2822"));
    asm (macro.import_function("sceRtc", "0x7DE6711B", "sceRtcFormatRFC2822LocalTime"));
    asm (macro.import_function("sceRtc", "0x0498FB3C", "sceRtcFormatRFC3339"));
    asm (macro.import_function("sceRtc", "0x27F98543", "sceRtcFormatRFC3339LocalTime"));
    asm (macro.import_function("sceRtc", "0xDFBC5F16", "sceRtcParseDateTime"));
    asm (macro.import_function("sceRtc", "0x28E1E988", "sceRtcParseRFC3339"));
    asm (macro.import_function("sceRtc", "0x011F03C1", "sceRtcGetAccumulativeTime"));
    asm (macro.import_function("sceRtc", "0x1909C99B", "sceRtcSetTime64_t"));
    asm (macro.import_function("sceRtc", "0x203CEB0D", "sceRtcGetLastReincarnatedTime"));
    asm (macro.import_function("sceRtc", "0x62685E98", "sceRtcGetLastAdjustedTime"));
    asm (macro.import_function("sceRtc", "0xE1C93E47", "sceRtcGetTime64_t"));
}

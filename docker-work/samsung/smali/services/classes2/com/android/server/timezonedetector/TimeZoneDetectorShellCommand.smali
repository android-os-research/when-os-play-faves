.class public Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;
.super Landroid/os/ShellCommand;
.source "TimeZoneDetectorShellCommand.java"


# instance fields
.field public final mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;


# direct methods
.method public static synthetic $r8$lambda$20ZEm-lZa7GqpYt7qgp3p8rapBA(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->lambda$runSuggestGeolocationTimeZone$0()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qIXH6NNIDJRN5MQZQSU3cV8Ojp0(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->lambda$runSuggestManualTimeZone$1()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xXcivJCp-LWM1Btqa4LmpLz3LFg(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->lambda$runSuggestTelephonyTimeZone$2()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    return-void
.end method

.method private synthetic lambda$runSuggestGeolocationTimeZone$0()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .registers 1

    .line 148
    invoke-static {p0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$runSuggestManualTimeZone$1()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .registers 1

    .line 154
    invoke-static {p0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$runSuggestTelephonyTimeZone$2()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 1

    .line 160
    invoke-static {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 62
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const/4 v0, -0x1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_d6

    goto/16 :goto_97

    :sswitch_11
    const-string/jumbo v1, "set_auto_detection_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_97

    :cond_1c
    const/16 v0, 0xa

    goto/16 :goto_97

    :sswitch_20
    const-string v1, "is_geo_detection_supported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto/16 :goto_97

    :cond_2a
    const/16 v0, 0x9

    goto/16 :goto_97

    :sswitch_2e
    const-string v1, "enable_telephony_fallback"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto/16 :goto_97

    :cond_38
    const/16 v0, 0x8

    goto/16 :goto_97

    :sswitch_3c
    const-string/jumbo v1, "suggest_geo_location_time_zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_97

    :cond_46
    const/4 v0, 0x7

    goto :goto_97

    :sswitch_48
    const-string/jumbo v1, "suggest_telephony_time_zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    goto :goto_97

    :cond_52
    const/4 v0, 0x6

    goto :goto_97

    :sswitch_54
    const-string v1, "is_geo_detection_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    goto :goto_97

    :cond_5d
    const/4 v0, 0x5

    goto :goto_97

    :sswitch_5f
    const-string/jumbo v1, "set_geo_detection_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    goto :goto_97

    :cond_69
    const/4 v0, 0x4

    goto :goto_97

    :sswitch_6b
    const-string v1, "dump_metrics"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    goto :goto_97

    :cond_74
    const/4 v0, 0x3

    goto :goto_97

    :sswitch_76
    const-string v1, "is_auto_detection_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    goto :goto_97

    :cond_7f
    const/4 v0, 0x2

    goto :goto_97

    :sswitch_81
    const-string/jumbo v1, "suggest_manual_time_zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    goto :goto_97

    :cond_8b
    const/4 v0, 0x1

    goto :goto_97

    :sswitch_8d
    const-string v1, "is_telephony_detection_supported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    goto :goto_97

    :cond_96
    const/4 v0, 0x0

    :goto_97
    packed-switch v0, :pswitch_data_104

    .line 89
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 69
    :pswitch_9f
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSetAutoDetectionEnabled()I

    move-result p0

    return p0

    .line 73
    :pswitch_a4
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsGeoDetectionSupported()I

    move-result p0

    return p0

    .line 85
    :pswitch_a9
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runEnableTelephonyFallback()I

    move-result p0

    return p0

    .line 79
    :pswitch_ae
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestGeolocationTimeZone()I

    move-result p0

    return p0

    .line 83
    :pswitch_b3
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTelephonyTimeZone()I

    move-result p0

    return p0

    .line 75
    :pswitch_b8
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsGeoDetectionEnabled()I

    move-result p0

    return p0

    .line 77
    :pswitch_bd
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSetGeoDetectionEnabled()I

    move-result p0

    return p0

    .line 87
    :pswitch_c2
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runDumpMetrics()I

    move-result p0

    return p0

    .line 67
    :pswitch_c7
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsAutoDetectionEnabled()I

    move-result p0

    return p0

    .line 81
    :pswitch_cc
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestManualTimeZone()I

    move-result p0

    return p0

    .line 71
    :pswitch_d1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsTelephonyDetectionSupported()I

    move-result p0

    return p0

    :sswitch_data_d6
    .sparse-switch
        -0x71c6eb88 -> :sswitch_8d
        -0x5f15f000 -> :sswitch_81
        -0x4e7e5c54 -> :sswitch_76
        -0x4b579288 -> :sswitch_6b
        -0x26840a04 -> :sswitch_5f
        0x1d9e00c4 -> :sswitch_54
        0x2390c53c -> :sswitch_48
        0x26a0e49d -> :sswitch_3c
        0x4394f365 -> :sswitch_2e
        0x5298f571 -> :sswitch_20
        0x71625574 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_cc
        :pswitch_c7
        :pswitch_c2
        :pswitch_bd
        :pswitch_b8
        :pswitch_b3
        :pswitch_ae
        :pswitch_a9
        :pswitch_a4
        :pswitch_9f
    .end packed-switch
.end method

.method public onHelp()V
    .registers 7

    .line 196
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "time_zone_detector"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Time Zone Detector (%s) commands:\n"

    .line 197
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "  help\n"

    .line 198
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "    Print this help text.\n"

    .line 199
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "is_auto_detection_enabled"

    aput-object v2, v1, v3

    const-string v2, "  %s\n"

    .line 200
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "    Prints true/false according to the automatic time zone detection setting\n"

    .line 201
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "set_auto_detection_enabled"

    aput-object v4, v1, v3

    const-string v4, "  %s true|false\n"

    .line 202
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "    Sets the automatic time zone detection setting.\n"

    .line 203
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "is_telephony_detection_supported"

    aput-object v5, v1, v3

    .line 204
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "    Prints true/false according to whether telephony time zone detection is supported on this device.\n"

    .line 205
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "is_geo_detection_supported"

    aput-object v5, v1, v3

    .line 207
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "    Prints true/false according to whether geolocation time zone detection is supported on this device.\n"

    .line 208
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "is_geo_detection_enabled"

    aput-object v5, v1, v3

    .line 210
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "    Prints true/false according to the geolocation time zone detection setting.\n"

    .line 211
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v5, "set_geo_detection_enabled"

    aput-object v5, v1, v3

    .line 213
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "    Sets the geolocation time zone detection enabled setting.\n"

    .line 214
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "enable_telephony_fallback"

    aput-object v4, v1, v3

    .line 215
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "    Signals that telephony time zone detection fall back can be used if geolocation detection is supported and enabled. This is a temporary state until geolocation detection becomes \"certain\". To have an effect this requires that the telephony fallback feature is supported on the device, see below for for device_config flags.\n"

    .line 216
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 221
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v5, "suggest_geo_location_time_zone"

    aput-object v5, v1, v3

    const-string v5, "  %s <geolocation suggestion opts>\n"

    .line 222
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v5, "suggest_manual_time_zone"

    aput-object v5, v1, v3

    const-string v5, "  %s <manual suggestion opts>\n"

    .line 224
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v5, "suggest_telephony_time_zone"

    aput-object v5, v1, v3

    const-string v5, "  %s <telephony suggestion opts>\n"

    .line 225
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "dump_metrics"

    aput-object v5, v1, v3

    .line 226
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "    Dumps the service metrics to stdout for inspection.\n"

    .line 227
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 228
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 229
    invoke-static {p0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 230
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 231
    invoke-static {p0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 232
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 233
    invoke-static {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 234
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v5, "system_time"

    aput-object v5, v1, v3

    const-string v5, "This service is also affected by the following device_config flags in the %s namespace:\n"

    .line 235
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "location_time_zone_detection_feature_supported"

    aput-object v5, v1, v3

    .line 237
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "    Only observed if the geolocation time zone detection feature is enabled in config.\n"

    .line 238
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "    Set this to false to disable the feature.\n"

    .line 240
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "location_time_zone_detection_run_in_background_enabled"

    aput-object v5, v1, v3

    .line 241
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "    Runs geolocation time zone detection even when it not enabled by the user. The result is not used to set the device\'s time zone [*]\n"

    .line 242
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "location_time_zone_detection_setting_enabled_default"

    aput-object v5, v1, v3

    .line 244
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "    Only used if the device does not have an explicit \'geolocation time zone detection enabled\' setting stored [*].\n"

    .line 245
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "    The default is when unset is false.\n"

    .line 247
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "location_time_zone_detection_setting_enabled_override"

    aput-object v5, v1, v3

    .line 248
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "    Used to override the device\'s \'geolocation time zone detection enabled\' setting [*].\n"

    .line 249
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v5, "time_zone_detector_telephony_fallback_supported"

    aput-object v5, v1, v3

    .line 251
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v4, "    Used to enable / disable support for telephony detection fallback. Also see the %s command.\n"

    .line 252
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "enhanced_metrics_collection_enabled"

    aput-object v4, v1, v3

    .line 254
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "    Used to increase the detail of metrics collected / reported.\n"

    .line 255
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 256
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "[*] To be enabled, the user must still have location = on / auto time zone detection = on.\n"

    .line 257
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 259
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    .line 260
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 261
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "location_time_zone_manager"

    aput-object v1, v0, v3

    const-string v1, "Also see \"adb shell cmd %s help\" for lower-level location time zone commands / settings.\n"

    .line 262
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 264
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runDumpMetrics()I
    .registers 3

    .line 187
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 188
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object p0

    const-string v1, "MetricsTimeZoneDetectorState:"

    .line 189
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runEnableTelephonyFallback()I
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enableTelephonyFallback()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runIsAutoDetectionEnabled()I
    .registers 3

    .line 95
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 97
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result p0

    .line 100
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runIsGeoDetectionEnabled()I
    .registers 3

    .line 119
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 121
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result p0

    .line 124
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runIsGeoDetectionSupported()I
    .registers 2

    .line 112
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 113
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->isGeoTimeZoneDetectionSupported()Z

    move-result p0

    .line 114
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runIsTelephonyDetectionSupported()I
    .registers 2

    .line 105
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 106
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->isTelephonyTimeZoneDetectionSupported()Z

    move-result p0

    .line 107
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetAutoDetectionEnabled()I
    .registers 3

    .line 129
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 131
    new-instance v1, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v1}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 132
    invoke-virtual {v1, v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v0

    .line 134
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final runSetGeoDetectionEnabled()I
    .registers 3

    .line 138
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 140
    new-instance v1, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v1}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 141
    invoke-virtual {v1, v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v0

    .line 143
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final runSuggestGeolocationTimeZone()I
    .registers 4

    .line 147
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 149
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 147
    invoke-virtual {p0, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTimeZone(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result p0

    return p0
.end method

.method public final runSuggestManualTimeZone()I
    .registers 4

    .line 153
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 155
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 153
    invoke-virtual {p0, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTimeZone(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result p0

    return p0
.end method

.method public final runSuggestTelephonyTimeZone()I
    .registers 4

    .line 159
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 161
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 159
    invoke-virtual {p0, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTimeZone(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result p0

    return p0
.end method

.method public final runSuggestTimeZone(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)I"
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const/4 v0, 0x1

    .line 167
    :try_start_5
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_11

    const-string p1, "Error: suggestion not specified"

    .line 169
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 172
    :cond_11
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suggestion "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " injected."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_2d} :catch_2f

    const/4 p0, 0x0

    return p0

    :catch_2f
    move-exception p1

    .line 176
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v0
.end method

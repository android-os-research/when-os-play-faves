.class public Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "LocationTimeZoneManagerShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    return-void
.end method

.method public static convertControllerStateToProtoEnum(Ljava/lang/String;)I
    .registers 10

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_6c

    goto :goto_60

    :sswitch_10
    const-string v0, "FAILED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v4

    goto :goto_61

    :sswitch_1a
    const-string v0, "INITIALIZING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v7

    goto :goto_61

    :sswitch_24
    const-string v0, "CERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v5

    goto :goto_61

    :sswitch_2e
    const-string v0, "UNCERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v6

    goto :goto_61

    :sswitch_38
    const-string v0, "DESTROYED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v3

    goto :goto_61

    :sswitch_42
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v2

    goto :goto_61

    :sswitch_4c
    const-string v0, "PROVIDERS_INITIALIZING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v1

    goto :goto_61

    :sswitch_56
    const-string v0, "STOPPED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    move p0, v8

    goto :goto_61

    :cond_60
    :goto_60
    const/4 p0, -0x1

    :goto_61
    packed-switch p0, :pswitch_data_8e

    return v1

    :pswitch_65
    return v2

    :pswitch_66
    return v3

    :pswitch_67
    return v4

    :pswitch_68
    return v5

    :pswitch_69
    return v6

    :pswitch_6a
    return v7

    :pswitch_6b
    return v8

    :sswitch_data_6c
    .sparse-switch
        -0x4584e253 -> :sswitch_56
        -0x1be9cf16 -> :sswitch_4c
        0x19d1382a -> :sswitch_42
        0x1c83a5f9 -> :sswitch_38
        0x33ff1fc9 -> :sswitch_2e
        0x52aa9882 -> :sswitch_24
        0x72462c4d -> :sswitch_1a
        0x7b29883d -> :sswitch_10
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch
.end method

.method public static convertProviderStateEnumToProtoEnum(I)I
    .registers 4

    packed-switch p0, :pswitch_data_28

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stateEnum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    const/4 p0, 0x6

    return p0

    :pswitch_1c
    const/4 p0, 0x5

    return p0

    :pswitch_1e
    const/4 p0, 0x4

    return p0

    :pswitch_20
    const/4 p0, 0x3

    return p0

    :pswitch_22
    const/4 p0, 0x2

    return p0

    :pswitch_24
    const/4 p0, 0x1

    return p0

    :pswitch_26
    const/4 p0, 0x0

    return p0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_26
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
        :pswitch_1a
    .end packed-switch
.end method

.method public static parseProviderPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "@null"

    .line 341
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method public static writeControllerStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/dump/DualDumpOutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v1, 0x20e00000004L

    .line 274
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->convertControllerStateToProtoEnum(Ljava/lang/String;)I

    move-result v0

    const-string v3, "controller_states"

    .line 272
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_4

    :cond_1f
    return-void
.end method

.method public static writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/dump/DualDumpOutputStream;",
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 303
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 304
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide v3, 0x10e00000001L

    .line 305
    iget v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 306
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->convertProviderStateEnumToProtoEnum(I)I

    move-result v0

    const-string/jumbo v5, "state"

    .line 305
    invoke-virtual {p0, v5, v3, v4, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 307
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    goto :goto_4

    :cond_29
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 85
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const/4 v0, -0x1

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6a

    goto :goto_49

    :sswitch_10
    const-string v1, "dump_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_49

    :cond_19
    const/4 v0, 0x4

    goto :goto_49

    :sswitch_1b
    const-string v1, "clear_recorded_provider_states"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_49

    :cond_24
    const/4 v0, 0x3

    goto :goto_49

    :sswitch_26
    const-string/jumbo v1, "start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_49

    :cond_30
    const/4 v0, 0x2

    goto :goto_49

    :sswitch_32
    const-string/jumbo v1, "stop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_49

    :cond_3c
    const/4 v0, 0x1

    goto :goto_49

    :sswitch_3e
    const-string/jumbo v1, "start_with_test_providers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    packed-switch v0, :pswitch_data_80

    .line 105
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 102
    :pswitch_51
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runDumpControllerState()I

    move-result p0

    return p0

    .line 99
    :pswitch_56
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runClearRecordedProviderStates()I

    move-result p0

    return p0

    .line 90
    :pswitch_5b
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runStart()I

    move-result p0

    return p0

    .line 96
    :pswitch_60
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runStop()I

    move-result p0

    return p0

    .line 93
    :pswitch_65
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runStartWithTestProviders()I

    move-result p0

    return p0

    :sswitch_data_6a
    .sparse-switch
        -0x16f5718f -> :sswitch_3e
        0x360802 -> :sswitch_32
        0x68ac462 -> :sswitch_26
        0xec9a033 -> :sswitch_1b
        0x38381a86 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_65
        :pswitch_60
        :pswitch_5b
        :pswitch_56
        :pswitch_51
    .end packed-switch
.end method

.method public onHelp()V
    .registers 12

    .line 112
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "location_time_zone_manager"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Location Time Zone Manager (%s) commands for tests:\n"

    .line 113
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "  help\n"

    .line 114
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "    Print this help text.\n"

    .line 115
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "start"

    aput-object v2, v1, v3

    const-string v4, "  %s\n"

    .line 116
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "    Starts the service, creating location time zone providers.\n"

    .line 117
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const-string/jumbo v6, "start_with_test_providers"

    aput-object v6, v5, v3

    const-string v7, "@null"

    aput-object v7, v5, v0

    const-string v7, "  %s <primary package name|%2$s> <secondary package name|%2$s> <record states>\n"

    .line 118
    invoke-virtual {p0, v7, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v7, "    Starts the service with test provider packages configured / provider permission checks disabled.\n"

    .line 121
    invoke-virtual {p0, v7, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v7, "    <record states> - true|false, determines whether state recording is enabled.\n"

    .line 123
    invoke-virtual {p0, v7, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v7, "dump_state"

    aput-object v7, v5, v3

    const-string v8, "clear_recorded_provider_states"

    aput-object v8, v5, v0

    const-string v9, "    See %s and %s.\n"

    .line 125
    invoke-virtual {p0, v9, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v0, [Ljava/lang/Object;

    const-string/jumbo v9, "stop"

    aput-object v9, v5, v3

    .line 127
    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v10, "    Stops the service, destroying location time zone providers.\n"

    .line 128
    invoke-virtual {p0, v10, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v8, v5, v3

    .line 129
    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v6, v5, v3

    aput-object v7, v5, v0

    const-string v6, "    Clears recorded provider state. See also %s and %s.\n"

    .line 130
    invoke-virtual {p0, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "    Note: This is only intended for use during testing.\n"

    .line 132
    invoke-virtual {p0, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v7, v5, v3

    const-string v6, "--proto"

    aput-object v6, v5, v0

    const-string v6, "  %s [%s]\n"

    .line 133
    invoke-virtual {p0, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "    Dumps service state for tests as text or binary proto form.\n"

    .line 134
    invoke-virtual {p0, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "    See the LocationTimeZoneManagerServiceStateProto definition for details.\n"

    .line 135
    invoke-virtual {p0, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 136
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-array v5, v0, [Ljava/lang/Object;

    const-string/jumbo v6, "system_time"

    aput-object v6, v5, v3

    const-string v6, "This service is also affected by the following device_config flags in the %s namespace:\n"

    .line 137
    invoke-virtual {p0, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v0, [Ljava/lang/Object;

    const-string/jumbo v6, "primary_location_time_zone_provider_mode_override"

    aput-object v6, v5, v3

    .line 139
    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "disabled"

    aput-object v6, v5, v3

    const-string v7, "enabled"

    aput-object v7, v5, v0

    const-string v8, "    Overrides the mode of the primary provider. Values=%s|%s\n"

    .line 140
    invoke-virtual {p0, v8, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v0, [Ljava/lang/Object;

    const-string/jumbo v8, "secondary_location_time_zone_provider_mode_override"

    aput-object v8, v5, v3

    .line 142
    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v6, v5, v3

    aput-object v7, v5, v0

    const-string v6, "    Overrides the mode of the secondary provider. Values=%s|%s\n"

    .line 143
    invoke-virtual {p0, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "location_time_zone_detection_uncertainty_delay_millis"

    aput-object v6, v5, v3

    .line 145
    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "    Sets the amount of time the service waits when uncertain before making an \'uncertain\' suggestion to the time zone detector.\n"

    .line 146
    invoke-virtual {p0, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "ltzp_init_timeout_millis"

    aput-object v6, v5, v3

    .line 148
    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "    Sets the initialization time passed to the providers.\n"

    .line 149
    invoke-virtual {p0, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "ltzp_init_timeout_fuzz_millis"

    aput-object v6, v5, v3

    .line 150
    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "    Sets the amount of extra time added to the providers\' initialization time.\n"

    .line 151
    invoke-virtual {p0, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "ltzp_event_filtering_age_threshold_millis"

    aput-object v6, v5, v3

    .line 153
    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "    Sets the amount of time that must pass between equivalent LTZP events before they will be reported to the system server.\n"

    .line 154
    invoke-virtual {p0, v5, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 156
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v9, v1, v3

    aput-object v2, v1, v0

    const-string v2, "Typically, use \'%s\' to stop the service before setting individual flags and \'%s\' after to restart it.\n"

    .line 157
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 160
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    .line 161
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 162
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "time_zone_detector"

    aput-object v1, v0, v3

    const-string v1, "Also see \"adb shell cmd %s help\" for higher-level location time zone commands / settings.\n"

    .line 163
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 165
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final reportError(Ljava/lang/Throwable;)V
    .registers 3

    .line 334
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: "

    .line 335
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final runClearRecordedProviderStates()I
    .registers 2

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->clearRecordedProviderStates()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x0

    return p0

    :catch_7
    move-exception v0

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 p0, 0x2

    return p0
.end method

.method public final runDumpControllerState()I
    .registers 11

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_b5

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 234
    :cond_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const-string v3, "--proto"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 236
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 237
    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_35

    .line 239
    :cond_25
    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Landroid/util/IndentingPrintWriter;

    .line 240
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v4, "  "

    invoke-direct {v3, p0, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 242
    :goto_35
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getLastSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object p0

    if-eqz p0, :cond_8c

    .line 243
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getLastSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object p0

    const-wide v3, 0x10b00000001L

    const-string v5, "last_suggestion"

    .line 244
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 246
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getZoneIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_52
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v7, 0x20900000001L

    const-string/jumbo v9, "zone_ids"

    .line 247
    invoke-virtual {v2, v9, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_52

    .line 250
    :cond_6a
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getDebugInfo()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_72
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-wide v6, 0x20900000002L

    const-string v8, "debug_info"

    .line 251
    invoke-virtual {v2, v8, v6, v7, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_72

    .line 254
    :cond_89
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 257
    :cond_8c
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getControllerStates()Ljava/util/List;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeControllerStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;)V

    .line 258
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getPrimaryProviderStates()Ljava/util/List;

    move-result-object p0

    const-wide v3, 0x20b00000002L

    const-string/jumbo v5, "primary_provider_states"

    invoke-static {v2, p0, v5, v3, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V

    .line 261
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getSecondaryProviderStates()Ljava/util/List;

    move-result-object p0

    const-wide v3, 0x20b00000003L

    const-string/jumbo v0, "secondary_provider_states"

    invoke-static {v2, p0, v0, v3, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V

    .line 264
    invoke-virtual {v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    return v1

    :catch_b5
    move-exception v0

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runStart()I
    .registers 2

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->start()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_10

    .line 175
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Service started"

    .line 176
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catch_10
    move-exception v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runStartWithTestProviders()I
    .registers 5

    .line 181
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->parseProviderPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->parseProviderPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 186
    :try_start_18
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startWithTestProviders(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1d} :catch_28

    .line 192
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Service started (test mode)"

    .line 193
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catch_28
    move-exception v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runStop()I
    .registers 2

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stop()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_10

    .line 204
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Service stopped"

    .line 205
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catch_10
    move-exception v0

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

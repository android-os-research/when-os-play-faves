.class public Lcom/android/server/NetworkTimeUpdateServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "NetworkTimeUpdateServiceShellCommand.java"


# static fields
.field public static final SET_SERVER_CONFIG_HOSTNAME_ARG:Ljava/lang/String; = "--hostname"

.field public static final SET_SERVER_CONFIG_PORT_ARG:Ljava/lang/String; = "--port"

.field public static final SET_SERVER_CONFIG_TIMEOUT_ARG:Ljava/lang/String; = "--timeout_millis"

.field public static final SHELL_COMMAND_CLEAR_TIME:Ljava/lang/String; = "clear_time"

.field public static final SHELL_COMMAND_FORCE_REFRESH:Ljava/lang/String; = "force_refresh"

.field public static final SHELL_COMMAND_SERVICE_NAME:Ljava/lang/String; = "network_time_update_service"

.field public static final SHELL_COMMAND_SET_SERVER_CONFIG:Ljava/lang/String; = "set_server_config"


# instance fields
.field public final mNetworkTimeUpdateService:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/NetworkTimeUpdateService;

    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/NetworkTimeUpdateService;

    return-void
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

    sparse-switch v1, :sswitch_data_48

    goto :goto_31

    :sswitch_10
    const-string v1, "force_refresh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_31

    :cond_19
    const/4 v0, 0x2

    goto :goto_31

    :sswitch_1b
    const-string/jumbo v1, "set_server_config"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_31

    :cond_25
    const/4 v0, 0x1

    goto :goto_31

    :sswitch_27
    const-string v1, "clear_time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    packed-switch v0, :pswitch_data_56

    .line 73
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 69
    :pswitch_39
    invoke-virtual {p0}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->runForceRefresh()I

    move-result p0

    return p0

    .line 71
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->runSetServerConfig()I

    move-result p0

    return p0

    .line 67
    :pswitch_43
    invoke-virtual {p0}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->runClearTime()I

    move-result p0

    return p0

    :sswitch_data_48
    .sparse-switch
        -0x2badc281 -> :sswitch_27
        -0x14d1955f -> :sswitch_1b
        0x70bba987 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
    .end packed-switch
.end method

.method public onHelp()V
    .registers 6

    .line 119
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "network_time_update_service"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Network Time Update Service (%s) commands:\n"

    .line 120
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "  help\n"

    .line 121
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "    Print this help text.\n"

    .line 122
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "clear_time"

    aput-object v2, v1, v3

    const-string v2, "  %s\n"

    .line 123
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "    Clears the latest time.\n"

    .line 124
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "force_refresh"

    aput-object v4, v1, v3

    .line 125
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "    Refreshes the latest time. Prints whether it was successful.\n"

    .line 126
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "set_server_config"

    aput-object v4, v1, v3

    .line 127
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "    Sets the NTP server config for tests. The config is not persisted.\n"

    .line 128
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "--hostname"

    aput-object v2, v1, v3

    const-string v2, "--port"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "--timeout_millis"

    aput-object v2, v1, v0

    const-string v0, "      Options: [%s <hostname>] [%s <port>] [%s <millis>]\n"

    .line 129
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "      Each key/value is optional and must be specified to override the\n"

    .line 132
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "      normal value, not specifying a key causes it to reset to the original.\n"

    .line 133
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 134
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runClearTime()I
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p0}, Lcom/android/server/NetworkTimeUpdateService;->clearTimeForTests()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runForceRefresh()I
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v0}, Lcom/android/server/NetworkTimeUpdateService;->forceRefreshForTests()Z

    move-result v0

    .line 85
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetServerConfig()I
    .registers 8

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 94
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6d

    const/4 v5, -0x1

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_74

    :goto_12
    move v4, v5

    goto :goto_33

    :sswitch_14
    const-string v4, "--port"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v4, 0x2

    goto :goto_33

    :sswitch_1f
    const-string v4, "--hostname"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_12

    :cond_28
    const/4 v4, 0x1

    goto :goto_33

    :sswitch_2a
    const-string v6, "--timeout_millis"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    goto :goto_12

    :cond_33
    :goto_33
    packed-switch v4, :pswitch_data_82

    .line 109
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :pswitch_4d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    .line 97
    :pswitch_5a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 105
    :pswitch_5f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    goto :goto_3

    .line 113
    :cond_6d
    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/NetworkTimeUpdateService;->setServerConfigForTests(Ljava/lang/String;Ljava/lang/Integer;Ljava/time/Duration;)V

    return v4

    nop

    :sswitch_data_74
    .sparse-switch
        -0x3a1da77c -> :sswitch_2a
        -0x10ee3e2d -> :sswitch_1f
        0x4f78ce21 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5a
        :pswitch_4d
    .end packed-switch
.end method

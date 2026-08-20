.class public Lcom/android/server/power/PowerManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PowerManagerShellCommand.java"


# static fields
.field public static final LOW_POWER_MODE_ON:I = 0x1


# instance fields
.field public final mService:Lcom/android/server/power/PowerManagerService$BinderService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService$BinderService;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 9

    if-nez p1, :cond_7

    .line 39
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 42
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 44
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_8e

    goto :goto_4f

    :sswitch_18
    const-string/jumbo v2, "set-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    move v2, v6

    goto :goto_50

    :sswitch_23
    const-string/jumbo v2, "set-fixed-performance-mode-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    move v2, v5

    goto :goto_50

    :sswitch_2e
    const-string/jumbo v2, "suppress-ambient-display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    move v2, v4

    goto :goto_50

    :sswitch_39
    const-string/jumbo v2, "list-ambient-display-suppression-tokens"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    move v2, v3

    goto :goto_50

    :sswitch_44
    const-string/jumbo v2, "set-adaptive-power-saver-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x0

    goto :goto_50

    :cond_4f
    :goto_4f
    move v2, v1

    :goto_50
    if-eqz v2, :cond_73

    if-eq v2, v6, :cond_6e

    if-eq v2, v5, :cond_69

    if-eq v2, v4, :cond_64

    if-eq v2, v3, :cond_5f

    .line 56
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 54
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runListAmbientDisplaySuppressionTokens()I

    move-result p0

    return p0

    .line 52
    :cond_64
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSuppressAmbientDisplay()I

    move-result p0

    return p0

    .line 50
    :cond_69
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetFixedPerformanceModeEnabled()I

    move-result p0

    return p0

    .line 48
    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetMode()I

    move-result p0

    return p0

    .line 46
    :cond_73
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetAdaptiveEnabled()I

    move-result p0
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_77} :catch_78

    return p0

    :catch_78
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :sswitch_data_8e
    .sparse-switch
        -0x1fb0eb0b -> :sswitch_44
        0x22dac243 -> :sswitch_39
        0x2e2d7375 -> :sswitch_2e
        0x3d8ace98 -> :sswitch_23
        0x519c0c2e -> :sswitch_18
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 3

    .line 122
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Power manager (power) commands:"

    .line 123
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 124
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 126
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-adaptive-power-saver-enabled [true|false]"

    .line 127
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    enables or disables adaptive power saver."

    .line 128
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-mode MODE"

    .line 129
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    sets the power mode of the device to MODE."

    .line 130
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    1 turns low power mode on and 0 turns low power mode off."

    .line 131
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-fixed-performance-mode-enabled [true|false]"

    .line 132
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    enables or disables fixed performance mode"

    .line 133
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    note: this will affect system performance and should only be used"

    .line 134
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "          during development"

    .line 135
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  suppress-ambient-display <token> [true|false]"

    .line 136
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    suppresses the current ambient display configuration and disables"

    .line 137
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    ambient display"

    .line 138
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  list-ambient-display-suppression-tokens"

    .line 139
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    prints the tokens used to suppress ambient display"

    .line 140
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 142
    invoke-static {p0, v0}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final runListAmbientDisplaySuppressionTokens()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 111
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$BinderService;->getAmbientDisplaySuppressionTokens()Ljava/util/List;

    move-result-object p0

    .line 112
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    const-string/jumbo p0, "none"

    .line 113
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2c

    :cond_18
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, ", "

    .line 115
    invoke-static {v3, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "[%s]"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2c
    return v2
.end method

.method public final runSetAdaptiveEnabled()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/power/PowerManagerService$BinderService;->setAdaptivePowerSaveEnabled(Z)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetFixedPerformanceModeEnabled()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 85
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/PowerManagerService$BinderService;->setPowerModeChecked(IZ)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Failed to set FIXED_PERFORMANCE mode"

    .line 88
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "This is likely because Power HAL AIDL is not implemented on this device"

    .line 89
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f
    if-eqz v0, :cond_23

    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    const/4 p0, -0x1

    :goto_24
    return p0
.end method

.method public final runSetMode()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 73
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_c} :catch_18

    .line 78
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->setPowerSaveModeEnabled(Z)Z

    return v1

    :catch_18
    move-exception p0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runSuppressAmbientDisplay()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 98
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 100
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->suppressAmbientDisplay(Ljava/lang/String;Z)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_15} :catch_17

    const/4 p0, 0x0

    return p0

    :catch_17
    move-exception p0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

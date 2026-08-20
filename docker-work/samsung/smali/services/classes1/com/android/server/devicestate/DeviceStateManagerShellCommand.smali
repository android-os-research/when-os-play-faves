.class public Lcom/android/server/devicestate/DeviceStateManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "DeviceStateManagerShellCommand.java"


# static fields
.field public static sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;


# instance fields
.field public final mClient:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mService:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 48
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    return-void
.end method

.method public static toString(Ljava/util/Optional;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceState;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_11
    const-string p0, "(none)"

    :goto_13
    return-object p0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 54
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 56
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_60

    goto :goto_43

    :sswitch_14
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_43

    :cond_1e
    const/4 v1, 0x3

    goto :goto_43

    :sswitch_20
    const-string/jumbo v2, "print-states-simple"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_43

    :cond_2a
    const/4 v1, 0x2

    goto :goto_43

    :sswitch_2c
    const-string/jumbo v2, "print-states"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_43

    :cond_36
    const/4 v1, 0x1

    goto :goto_43

    :sswitch_38
    const-string/jumbo v2, "print-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    packed-switch v1, :pswitch_data_72

    .line 68
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 60
    :pswitch_4b
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runState(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 66
    :pswitch_50
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runPrintStatesSimple(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 64
    :pswitch_55
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runPrintStates(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 62
    :pswitch_5a
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runPrintState(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    nop

    :sswitch_data_60
    .sparse-switch
        -0x54c2ea8f -> :sswitch_38
        -0x439a66de -> :sswitch_2c
        -0x119b2743 -> :sswitch_20
        0x68ac491 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_55
        :pswitch_50
        :pswitch_4b
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 160
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Device state manager (device_state) commands:"

    .line 161
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 162
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 163
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  state [reset|OVERRIDE_DEVICE_STATE]"

    .line 164
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Return or override device state."

    .line 165
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  print-state"

    .line 166
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Return the current device state."

    .line 167
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  print-states"

    .line 168
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Return list of currently supported device states."

    .line 169
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  print-states-simple"

    .line 170
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Return the currently supported device states in comma separated format."

    .line 171
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printAllStates(Ljava/io/PrintWriter;)V
    .registers 6

    .line 73
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getCommittedState()Ljava/util/Optional;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getBaseState()Ljava/util/Optional;

    move-result-object v1

    .line 75
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getOverrideState()Ljava/util/Optional;

    move-result-object p0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Committed state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->toString(Ljava/util/Optional;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "----------------------"

    .line 79
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->toString(Ljava/util/Optional;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_65
    return-void
.end method

.method public final runPrintState(Ljava/io/PrintWriter;)I
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getCommittedState()Ljava/util/Optional;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 133
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0

    .line 136
    :cond_1b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: device state not available."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runPrintStates(Ljava/io/PrintWriter;)I
    .registers 6

    .line 141
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStates()[Lcom/android/server/devicestate/DeviceState;

    move-result-object p0

    const-string v0, "Supported states: [\n"

    .line 142
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 143
    :goto_d
    array-length v2, p0

    if-ge v1, v2, :cond_2e

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2e
    const-string p0, "]"

    .line 146
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final runPrintStatesSimple(Ljava/io/PrintWriter;)I
    .registers 3

    .line 151
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStates()[Lcom/android/server/devicestate/DeviceState;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;-><init>()V

    .line 152
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda1;-><init>()V

    .line 153
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    .line 154
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 151
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runState(Ljava/io/PrintWriter;)I
    .registers 9

    const-string v0, ""

    .line 86
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->printAllStates(Ljava/io/PrintWriter;)V

    return v2

    .line 92
    :cond_d
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "android.permission.CONTROL_DEVICE_STATE"

    const-string v4, "Permission required to request device state."

    .line 93
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 p1, -0x1

    :try_start_1f
    const-string/jumbo v5, "reset"

    .line 98
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_35

    .line 99
    sget-object v1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    if-eqz v1, :cond_48

    .line 100
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateManager;->cancelStateRequest()V

    .line 101
    sput-object v6, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    goto :goto_48

    .line 104
    :cond_35
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 105
    invoke-static {v1}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object v1

    .line 107
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v5, v1, v6, v6}, Landroid/hardware/devicestate/DeviceStateManager;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    .line 109
    sput-object v1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_48} :catch_a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_48} :catch_4e
    .catchall {:try_start_1f .. :try_end_48} :catchall_4c

    .line 124
    :cond_48
    :goto_48
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_4c
    move-exception p0

    goto :goto_af

    :catch_4e
    move-exception v1

    .line 115
    :try_start_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "-------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Run:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "    print-states"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "to get the list of currently supported device states"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_4f .. :try_end_9e} :catchall_4c

    .line 124
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 112
    :catch_a2
    :try_start_a2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: requested state should be an integer"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_4c

    .line 124
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_af
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    throw p0
.end method

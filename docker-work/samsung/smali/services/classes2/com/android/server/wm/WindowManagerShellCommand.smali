.class public Lcom/android/server/wm/WindowManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "WindowManagerShellCommand.java"


# instance fields
.field public final mInterface:Landroid/view/IWindowManager;

.field public final mInternal:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$UI9AyiTdAe3lWmoefcSEmi4xyso(ILjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/WindowManagerShellCommand;->lambda$runDumpVisibleWindowViews$0(ILjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    .line 71
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public static synthetic lambda$runDumpVisibleWindowViews$0(ILjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 7

    .line 548
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getUid()I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    .line 549
    :goto_9
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p0, :cond_34

    :cond_11
    const/4 p0, 0x0

    .line 552
    :try_start_12
    new-instance v0, Lcom/android/internal/os/ByteTransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/ByteTransferPipe;-><init>()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_2f

    .line 553
    :try_start_17
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const-string v2, "DUMP_ENCODED"

    .line 554
    invoke-virtual {v0}, Lcom/android/internal/os/ByteTransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 553
    invoke-interface {v1, v2, p0, v3}, Landroid/view/IWindow;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 555
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2d} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-object p0, v0

    :catch_2f
    if-eqz p0, :cond_34

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/os/ByteTransferPipe;->kill()V

    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public final getDisplayId(Ljava/lang/String;)I
    .registers 4

    const-string v0, "-d"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_51

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 160
    :try_start_15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1d} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_52

    :catch_1e
    move-exception p1

    .line 164
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_51

    :catch_38
    move-exception p1

    .line 162
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_51
    :goto_51
    const/4 p0, 0x0

    :goto_52
    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    .line 77
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 79
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 81
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_1de

    goto/16 :goto_f2

    :sswitch_16
    const-string/jumbo v2, "scaling"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/4 v2, 0x3

    goto/16 :goto_f3

    :sswitch_22
    const-string v2, "fixed-to-user-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/16 v2, 0x8

    goto/16 :goto_f3

    :sswitch_2e
    const-string v2, "density"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/4 v2, 0x1

    goto/16 :goto_f3

    :sswitch_39
    const-string/jumbo v2, "reset-multi-window-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/16 v2, 0xe

    goto/16 :goto_f3

    :sswitch_46
    const-string v2, "last-grip-cmd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/16 v2, 0x11

    goto/16 :goto_f3

    :sswitch_52
    const-string v2, "logging"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/4 v2, 0x6

    goto/16 :goto_f3

    :sswitch_5d
    const-string/jumbo v2, "size-density"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/16 v2, 0x12

    goto/16 :goto_f3

    :sswitch_6a
    const-string/jumbo v2, "user-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/4 v2, 0x7

    goto/16 :goto_f3

    :sswitch_76
    const-string/jumbo v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/16 v2, 0xf

    goto/16 :goto_f3

    :sswitch_83
    const-string/jumbo v2, "set-multi-window-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/16 v2, 0xc

    goto/16 :goto_f3

    :sswitch_90
    const-string/jumbo v2, "size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    move v2, v3

    goto :goto_f3

    :sswitch_9b
    const-string v2, "dismiss-keyguard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/4 v2, 0x4

    goto :goto_f3

    :sswitch_a5
    const-string v2, "folded-area"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/4 v2, 0x2

    goto :goto_f3

    :sswitch_af
    const-string v2, "dump-visible-window-views"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/16 v2, 0xb

    goto :goto_f3

    :sswitch_ba
    const-string v2, "disable-blur"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/16 v2, 0x10

    goto :goto_f3

    :sswitch_c5
    const-string/jumbo v2, "tracing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/4 v2, 0x5

    goto :goto_f3

    :sswitch_d0
    const-string/jumbo v2, "set-ignore-orientation-request"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/16 v2, 0x9

    goto :goto_f3

    :sswitch_dc
    const-string v2, "get-ignore-orientation-request"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/16 v2, 0xa

    goto :goto_f3

    :sswitch_e7
    const-string v2, "get-multi-window-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/16 v2, 0xd

    goto :goto_f3

    :cond_f2
    :goto_f2
    move v2, v1

    :goto_f3
    packed-switch v2, :pswitch_data_22c

    .line 147
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_1c7

    .line 142
    :pswitch_fc
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplaySizeDensity(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 135
    :pswitch_101
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz p1, :cond_1dd

    .line 136
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->printLastGripCmd()V

    return v3

    .line 132
    :pswitch_10f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBlurDisabled(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 130
    :pswitch_114
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runReset(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 128
    :pswitch_119
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetMultiWindowConfig()I

    move-result p0

    return p0

    .line 126
    :pswitch_11e
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetMultiWindowConfig(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 124
    :pswitch_123
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetMultiWindowConfig()I

    move-result p0

    return p0

    .line 122
    :pswitch_128
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDumpVisibleWindowViews(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 120
    :pswitch_12d
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 118
    :pswitch_132
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 116
    :pswitch_137
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runFixedToUserRotation(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 114
    :pswitch_13c
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayUserRotation(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 98
    :pswitch_141
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl;->onShellCommand(Landroid/os/ShellCommand;)I

    move-result v2
    :try_end_14d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14d} :catch_1c8

    if-eqz v2, :cond_1a5

    .line 103
    :try_start_14f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_157} :catch_18c
    .catch Landroid/os/RemoteException; {:try_start_14f .. :try_end_157} :catch_1c8

    .line 104
    :try_start_157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not handled, calling status bar with args: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-class v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 107
    invoke-interface {v3, p1, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->handleWindowManagerLoggingCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_17a
    .catchall {:try_start_157 .. :try_end_17a} :catchall_180

    if-eqz p0, :cond_1a5

    .line 108
    :try_start_17c
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17f
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_17f} :catch_18c
    .catch Landroid/os/RemoteException; {:try_start_17c .. :try_end_17f} :catch_1c8

    goto :goto_1a5

    :catchall_180
    move-exception p1

    if-eqz p0, :cond_18b

    .line 102
    :try_start_183
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_186
    .catchall {:try_start_183 .. :try_end_186} :catchall_187

    goto :goto_18b

    :catchall_187
    move-exception p0

    :try_start_188
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18b
    :goto_18b
    throw p1
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18c} :catch_18c
    .catch Landroid/os/RemoteException; {:try_start_188 .. :try_end_18c} :catch_1c8

    :catch_18c
    move-exception p0

    .line 109
    :try_start_18d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to handle logging command: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1a5
    :goto_1a5
    return v2

    .line 96
    :pswitch_1a6
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowTracing;->onShellCommand(Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 91
    :pswitch_1af
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDismissKeyguard(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 89
    :pswitch_1b4
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayScaling(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 87
    :pswitch_1b9
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayFoldedArea(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 85
    :pswitch_1be
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayDensity(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 83
    :pswitch_1c3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplaySize(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_1c7
    .catch Landroid/os/RemoteException; {:try_start_18d .. :try_end_1c7} :catch_1c8

    :goto_1c7
    return p0

    :catch_1c8
    move-exception p0

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1dd
    return v1

    :sswitch_data_1de
    .sparse-switch
        -0x74c7d6cc -> :sswitch_e7
        -0x6d06f812 -> :sswitch_dc
        -0x64eeec9e -> :sswitch_d0
        -0x3f9f2f3e -> :sswitch_c5
        -0x3d8c3fd4 -> :sswitch_ba
        -0x3c7b3dfb -> :sswitch_af
        -0x14126e26 -> :sswitch_a5
        -0xdad5077 -> :sswitch_9b
        0x35e001 -> :sswitch_90
        0x58b5840 -> :sswitch_83
        0x6761d4f -> :sswitch_76
        0xb3ebb40 -> :sswitch_6a
        0xfbbc71c -> :sswitch_5d
        0x1466cb5f -> :sswitch_52
        0x412e0196 -> :sswitch_46
        0x4fab00ad -> :sswitch_39
        0x5c8c94e8 -> :sswitch_2e
        0x5e693ca7 -> :sswitch_22
        0x71e5fb87 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_1c3
        :pswitch_1be
        :pswitch_1b9
        :pswitch_1b4
        :pswitch_1af
        :pswitch_1a6
        :pswitch_141
        :pswitch_13c
        :pswitch_137
        :pswitch_132
        :pswitch_12d
        :pswitch_128
        :pswitch_123
        :pswitch_11e
        :pswitch_119
        :pswitch_114
        :pswitch_10f
        :pswitch_101
        :pswitch_fc
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 762
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Window manager (window) commands:"

    .line 763
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    .line 764
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      Print this help text."

    .line 765
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  size [reset|WxH|WdpxHdp] [-d DISPLAY_ID]"

    .line 766
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Return or override display size."

    .line 767
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    width and height in pixels unless suffixed with \'dp\'."

    .line 768
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  density [reset|DENSITY] [-d DISPLAY_ID]"

    .line 769
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Return or override display density."

    .line 770
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  folded-area [reset|LEFT,TOP,RIGHT,BOTTOM]"

    .line 771
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Return or override folded area."

    .line 772
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  scaling [off|auto] [-d DISPLAY_ID]"

    .line 773
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Set display scaling mode."

    .line 774
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  dismiss-keyguard"

    .line 775
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Dismiss the keyguard, prompting user for auth if\u00a0necessary."

    .line 776
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  disable-blur [true|1|false|0]"

    .line 777
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  user-rotation [-d DISPLAY_ID] [free|lock] [rotation]"

    .line 778
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print or set user rotation mode and user rotation."

    .line 779
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  dump-visible-window-views"

    .line 780
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Dumps the encoded view hierarchies of visible windows"

    .line 781
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  fixed-to-user-rotation [-d DISPLAY_ID] [enabled|disabled|default]"

    .line 782
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print or set rotating display for app requested orientation."

    .line 783
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-ignore-orientation-request [-d DISPLAY_ID] [true|1|false|0]"

    .line 784
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get-ignore-orientation-request [-d DISPLAY_ID] "

    .line 785
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    If app requested orientation should be ignored."

    .line 786
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->printMultiWindowConfigHelp(Ljava/io/PrintWriter;)V

    const-string p0, "  reset [-d DISPLAY_ID]"

    .line 790
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Reset all override settings."

    .line 791
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    sget-boolean p0, Landroid/os/Build;->IS_USER:Z

    if-nez p0, :cond_a1

    const-string p0, "  tracing (start | stop)"

    .line 793
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Start or stop window tracing."

    .line 794
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  logging (start | stop | enable | disable | enable-text | disable-text)"

    .line 795
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Logging settings."

    .line 796
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a1
    const-string p0, "  size-density [reset|WxH|WdpxHdp] [reset|DENSITY]"

    .line 800
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Return or override display size & density at once."

    .line 801
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final parseDimension(Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string/jumbo v0, "px"

    .line 366
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_19
    const-string v0, "dp"

    .line 369
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v0, 0xa0

    .line 372
    :try_start_23
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, p2}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result p0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_29} :catch_2a

    goto :goto_2b

    :catch_2a
    move p0, v0

    .line 376
    :goto_2b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/2addr p1, p0

    div-int/2addr p1, v0

    return p1

    .line 379
    :cond_3c
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final printDisplayUserRotation(Ljava/io/PrintWriter;I)I
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerService;->getDisplayUserRotation(I)I

    move-result v0

    if-gez v0, :cond_13

    .line 424
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: check logcat for more details."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 427
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->isDisplayRotationFrozen(I)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_22

    const-string p0, "free"

    .line 428
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p2

    :cond_22
    const-string p0, "lock "

    .line 431
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return p2
.end method

.method public final printFixedToUserRotation(Ljava/io/PrintWriter;I)I
    .registers 5

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerService;->getFixedToUserRotation(I)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_26

    const/4 v1, 0x1

    if-eq p2, v1, :cond_20

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1a

    .line 487
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: check logcat for more details."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1a
    const-string p0, "enabled"

    .line 484
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_20
    const-string p0, "disabled"

    .line 481
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_26
    const-string p0, "default"

    .line 478
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final printFoldedArea(Ljava/io/PrintWriter;)V
    .registers 5

    .line 312
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "Folded area: none"

    .line 314
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_42

    .line 316
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Folded area: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_42
    return-void
.end method

.method public final printInitialDisplayDensity(Ljava/io/PrintWriter;I)V
    .registers 5

    .line 259
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DYNAMIC_RESOLUTION_CONTROL:Z

    if-eqz v0, :cond_7

    .line 260
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    goto :goto_d

    .line 262
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v0, p2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0

    .line 263
    :goto_d
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, p2}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result p0

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Physical density: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eq v0, p0, :cond_53

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Override density: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_53

    :catch_3e
    move-exception p0

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remote exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_53
    :goto_53
    return-void
.end method

.method public final printInitialDisplaySize(Ljava/io/PrintWriter;I)V
    .registers 7

    const-string/jumbo v0, "x"

    .line 171
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 172
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 175
    :try_start_d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v3, p2, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 176
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, p2, v2}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Physical size: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Override size: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_59} :catch_5a

    goto :goto_6f

    :catch_5a
    move-exception p0

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remote exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public final printMultiWindowConfigHelp(Ljava/io/PrintWriter;)V
    .registers 2

    const-string p0, "  set-multi-window-config"

    .line 807
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Sets options to determine if activity should be shown in multi window:"

    .line 808
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      --supportsNonResizable [configValue]"

    .line 809
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        Whether the device supports non-resizable activity in multi window."

    .line 810
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        -1: The device doesn\'t support non-resizable in multi window."

    .line 811
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "         0: The device supports non-resizable in multi window only if"

    .line 812
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "            this is a large screen device."

    .line 813
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "         1: The device always supports non-resizable in multi window."

    .line 814
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      --respectsActivityMinWidthHeight [configValue]"

    .line 815
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        Whether the device checks the activity min width/height to determine "

    .line 816
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        if it can be shown in multi window."

    .line 817
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        -1: The device ignores the activity min width/height when determining"

    .line 818
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "            if it can be shown in multi window."

    .line 819
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "         0: If this is a small screen, the device compares the activity min"

    .line 820
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "            width/height with the min multi window modes dimensions"

    .line 821
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "            the device supports to determine if the activity can be shown in"

    .line 822
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "            multi window."

    .line 823
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "         1: The device always compare the activity min width/height with the"

    .line 824
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "            min multi window dimensions the device supports to determine if"

    .line 825
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "            the activity can be shown in multi window."

    .line 826
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  get-multi-window-config"

    .line 827
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Prints values of the multi window config options."

    .line 828
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  reset-multi-window-config"

    .line 829
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Resets overrides to default values of the multi window config options."

    .line 830
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runDismissKeyguard(Ljava/io/PrintWriter;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p1}, Landroid/view/IWindowManager;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runDisplayDensity(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 281
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(Ljava/io/PrintWriter;I)V

    return v2

    :cond_f
    const-string v3, "-d"

    .line 283
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 284
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(Ljava/io/PrintWriter;I)V

    return v2

    :cond_1b
    const-string/jumbo p1, "reset"

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_26

    goto :goto_39

    .line 290
    :cond_26
    :try_start_26
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2a} :catch_48

    const/16 v0, 0x48

    if-ge p1, v0, :cond_38

    .line 296
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: density must be >= 72"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_38
    move v3, p1

    :goto_39
    const/4 p1, -0x2

    if-lez v3, :cond_42

    .line 302
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v1, v3, p1}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V

    goto :goto_47

    .line 305
    :cond_42
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v1, p1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V

    :goto_47
    return v2

    :catch_48
    move-exception p1

    .line 292
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public final runDisplayFoldedArea(Ljava/io/PrintWriter;)I
    .registers 8

    .line 322
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 323
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printFoldedArea(Ljava/io/PrintWriter;)V

    return v2

    :cond_10
    const-string/jumbo p1, "reset"

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 328
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_5f

    :cond_1d
    const-string p1, "(-?\\d+),(-?\\d+),(-?\\d+),(-?\\d+)"

    .line 330
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 332
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_38

    .line 334
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: area should be LEFT,TOP,RIGHT,BOTTOM"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_38
    const/4 v0, 0x1

    .line 337
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    .line 338
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 337
    invoke-virtual {v1, v0, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 341
    :goto_5f
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    return v2
.end method

.method public final runDisplayScaling(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    const-string v0, "auto"

    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0, v1}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    goto :goto_29

    :cond_17
    const-string v0, "off"

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    :goto_29
    return v1

    .line 354
    :cond_2a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: scaling must be \'auto\' or \'off\'"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runDisplaySize(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 193
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(Ljava/io/PrintWriter;I)V

    return v2

    :cond_f
    const-string v3, "-d"

    .line 195
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 196
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(Ljava/io/PrintWriter;I)V

    return v2

    :cond_1b
    const-string/jumbo p1, "reset"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_27

    move p1, v3

    goto :goto_4c

    :cond_27
    const/16 p1, 0x78

    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_76

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt p1, v4, :cond_38

    goto :goto_76

    .line 206
    :cond_38
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 p1, p1, 0x1

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 209
    :try_start_42
    invoke-virtual {p0, v4, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;I)I

    move-result v0

    .line 210
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;I)I

    move-result v3
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_4a} :catch_5c

    move p1, v3

    move v3, v0

    :goto_4c
    if-ltz v3, :cond_56

    if-ltz p1, :cond_56

    .line 218
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v1, v3, p1}, Landroid/view/IWindowManager;->setForcedDisplaySize(III)V

    goto :goto_5b

    .line 220
    :cond_56
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v1}, Landroid/view/IWindowManager;->clearForcedDisplaySize(I)V

    :goto_5b
    return v2

    :catch_5c
    move-exception p1

    .line 212
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 203
    :cond_76
    :goto_76
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad size "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public final runDisplaySizeDensity(Ljava/io/PrintWriter;)I
    .registers 12

    .line 689
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Error: bad number "

    const-string/jumbo v3, "reset"

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v0, :cond_15

    .line 693
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(Ljava/io/PrintWriter;I)V

    goto :goto_20

    :cond_15
    const-string v6, "-d"

    .line 694
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 695
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(Ljava/io/PrintWriter;I)V

    :goto_20
    move v6, v5

    :goto_21
    move v7, v6

    goto :goto_4f

    .line 696
    :cond_23
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    move v6, v4

    goto :goto_21

    :cond_2b
    const/16 v6, 0x78

    .line 699
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_e6

    .line 700
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_3d

    goto/16 :goto_e6

    .line 704
    :cond_3d
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 705
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 707
    :try_start_47
    invoke-virtual {p0, v7, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;I)I

    move-result v7

    .line 708
    invoke-virtual {p0, v6, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;I)I

    move-result v6
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_4f} :catch_ce

    .line 715
    :goto_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_60

    .line 717
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_60

    .line 718
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(Ljava/io/PrintWriter;I)V

    move p1, v5

    goto :goto_94

    .line 719
    :cond_60
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_93

    if-nez v8, :cond_69

    goto :goto_93

    .line 723
    :cond_69
    :try_start_69
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_6d} :catch_7b

    const/16 v2, 0x48

    if-ge p1, v2, :cond_94

    .line 729
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: density must be >= 72"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :catch_7b
    move-exception p1

    .line 725
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_93
    :goto_93
    move p1, v4

    :cond_94
    :goto_94
    if-eqz v0, :cond_cd

    if-nez v8, :cond_9f

    .line 734
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto :goto_cd

    :cond_9f
    if-ltz v7, :cond_c8

    if-ltz v6, :cond_c8

    if-lez p1, :cond_c8

    .line 740
    :try_start_a5
    new-instance v0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    invoke-direct {v0, v5}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;-><init>(I)V

    .line 742
    invoke-virtual {v0, v7}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setWidth(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v0

    .line 743
    invoke-virtual {v0, v6}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setHeight(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v0

    .line 744
    invoke-virtual {v0, p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setDensity(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object p1

    .line 745
    invoke-virtual {p1, v5}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setSaveToSettings(Z)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object p1

    .line 747
    invoke-virtual {p1, v4}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setForcedHideCutout(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object p1

    .line 749
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->build()Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;

    move-result-object p1

    .line 750
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensityWithInfo(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V

    goto :goto_cd

    .line 752
    :cond_c8
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v1}, Landroid/view/IWindowManager;->clearForcedDisplaySizeDensity(I)V
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_cd} :catch_cd

    :catch_cd
    :cond_cd
    :goto_cd
    return v5

    :catch_ce
    move-exception p1

    .line 710
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 701
    :cond_e6
    :goto_e6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: bad size "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runDisplayUserRotation(Ljava/io/PrintWriter;)I
    .registers 7

    .line 384
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 386
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printDisplayUserRotation(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    :cond_c
    const-string v2, "-d"

    .line 389
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 390
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 391
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move v2, v0

    move-object v0, v4

    goto :goto_25

    :cond_24
    move v2, v1

    :goto_25
    if-nez v0, :cond_2c

    .line 396
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->printDisplayUserRotation(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    :cond_2c
    const-string p1, "free"

    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 400
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(I)V

    return v1

    :cond_3a
    const-string p1, "lock"

    .line 404
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_4d

    .line 405
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: argument needs to be either -d, free or lock."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 409
    :cond_4d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 412
    :try_start_53
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_5b

    :catch_58
    move-exception p1

    goto :goto_61

    :cond_5a
    move p1, v0

    .line 413
    :goto_5b
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/WindowManagerService;->freezeDisplayRotation(II)V
    :try_end_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53 .. :try_end_60} :catch_58

    return v1

    .line 416
    :goto_61
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final runDumpVisibleWindowViews(Ljava/io/PrintWriter;)I
    .registers 8

    .line 534
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "runDumpVisibleWindowViews()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/4 v0, 0x0

    .line 539
    :try_start_e
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_80

    .line 540
    :try_start_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 541
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_76

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 542
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 544
    invoke-virtual {v4}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result v4

    goto :goto_34

    :cond_33
    const/4 v4, -0x1

    .line 547
    :goto_34
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4, v2}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v5, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 564
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_21 .. :try_end_41} :catchall_70

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 565
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_48
    :goto_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_76

    .line 568
    :try_start_54
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/ByteTransferPipe;

    invoke-virtual {v3}, Lcom/android/internal/os/ByteTransferPipe;->get()[B

    move-result-object v3
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5c} :catch_48
    .catchall {:try_start_54 .. :try_end_5c} :catchall_76

    .line 573
    :try_start_5c
    new-instance v4, Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 574
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_6b
    .catchall {:try_start_5c .. :try_end_6b} :catchall_76

    goto :goto_48

    .line 576
    :cond_6c
    :try_start_6c
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_80

    goto :goto_99

    :catchall_70
    move-exception p0

    .line 564
    :try_start_71
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    :try_start_72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception p0

    .line 539
    :try_start_77
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_7f

    :catchall_7b
    move-exception v1

    :try_start_7c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7f
    throw p0
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_80} :catch_80

    :catch_80
    move-exception p0

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error fetching dump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_99
    return v0

    .line 536
    :cond_9a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires DUMP permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final runFixedToUserRotation(Ljava/io/PrintWriter;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 440
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printFixedToUserRotation(Ljava/io/PrintWriter;I)I

    return v1

    :cond_b
    const-string v2, "-d"

    .line 444
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 445
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 446
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    if-nez v0, :cond_2b

    .line 450
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/WindowManagerShellCommand;->printFixedToUserRotation(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 454
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch p1, :sswitch_data_7c

    :goto_35
    move p1, v5

    goto :goto_57

    :sswitch_37
    const-string p1, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_35

    :cond_40
    move p1, v3

    goto :goto_57

    :sswitch_42
    const-string p1, "disabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_35

    :cond_4b
    move p1, v4

    goto :goto_57

    :sswitch_4d
    const-string p1, "enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_35

    :cond_56
    move p1, v1

    :goto_57
    packed-switch p1, :pswitch_data_8a

    .line 465
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: expecting enabled, disabled or default, but we get "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_73
    move v3, v1

    goto :goto_76

    :pswitch_75
    move v3, v4

    .line 470
    :goto_76
    :pswitch_76
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v2, v3}, Landroid/view/IWindowManager;->setFixedToUserRotation(II)V

    return v1

    :sswitch_data_7c
    .sparse-switch
        -0x5ff074bf -> :sswitch_4d
        0x10263a7c -> :sswitch_42
        0x5c13d641 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_76
        :pswitch_75
        :pswitch_73
    .end packed-switch
.end method

.method public final runGetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-d"

    .line 523
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 524
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_17

    :cond_16
    move v0, v1

    .line 527
    :goto_17
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->getIgnoreOrientationRequest(I)Z

    move-result p0

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoreOrientationRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " for displayId="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final runGetMultiWindowConfig(Ljava/io/PrintWriter;)I
    .registers 5

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supports non-resizable in multi window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Respects activity min width/height in multi window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_44
    move-exception p0

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runReset(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 660
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->clearForcedDisplaySize(I)V

    .line 663
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 v2, -0x2

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V

    .line 666
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 669
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    .line 672
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(I)V

    .line 675
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->setFixedToUserRotation(II)V

    .line 678
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->setIgnoreOrientationRequest(IZ)V

    .line 681
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetMultiWindowConfig()I

    .line 683
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset all settings for displayId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final runResetMultiWindowConfig()I
    .registers 4

    .line 644
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 646
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 648
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 649
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 650
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    .line 652
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runSetBlurDisabled(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3a

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blur supported on device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blur enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mBlurController:Lcom/android/server/wm/BlurController;

    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->getBlurEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 234
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch p1, :sswitch_data_9c

    :goto_43
    move p1, v3

    goto :goto_71

    :sswitch_45
    const-string p1, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto :goto_43

    :cond_4e
    const/4 p1, 0x3

    goto :goto_71

    :sswitch_50
    const-string/jumbo p1, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    goto :goto_43

    :cond_5a
    const/4 p1, 0x2

    goto :goto_71

    :sswitch_5c
    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    goto :goto_43

    :cond_65
    move p1, v2

    goto :goto_71

    :sswitch_67
    const-string p1, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    goto :goto_43

    :cond_70
    move p1, v1

    :goto_71
    packed-switch p1, :pswitch_data_ae

    .line 244
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: expected true, 1, false, 0, but got "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_8d
    move v2, v1

    .line 248
    :pswitch_8e
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "disable_window_blurs"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    :sswitch_data_9c
    .sparse-switch
        0x30 -> :sswitch_67
        0x31 -> :sswitch_5c
        0x36758e -> :sswitch_50
        0x5cb1923 -> :sswitch_45
    .end sparse-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_8e
        :pswitch_8e
        :pswitch_8d
    .end packed-switch
.end method

.method public final runSetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-d"

    .line 495
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 496
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 497
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move v0, p1

    move-object p1, v5

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 501
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_7c

    :goto_2a
    move v2, v4

    goto :goto_58

    :sswitch_2c
    const-string v2, "false"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_2a

    :cond_35
    const/4 v2, 0x3

    goto :goto_58

    :sswitch_37
    const-string/jumbo v2, "true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_2a

    :cond_41
    const/4 v2, 0x2

    goto :goto_58

    :sswitch_43
    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_2a

    :cond_4c
    move v2, v3

    goto :goto_58

    :sswitch_4e
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    goto :goto_2a

    :cond_57
    move v2, v1

    :goto_58
    packed-switch v2, :pswitch_data_8e

    .line 511
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: expecting true, 1, false, 0, but we get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :pswitch_74
    move v3, v1

    .line 516
    :pswitch_75
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {p0, v0, v3}, Landroid/view/IWindowManager;->setIgnoreOrientationRequest(IZ)V

    return v1

    nop

    :sswitch_data_7c
    .sparse-switch
        0x30 -> :sswitch_4e
        0x31 -> :sswitch_43
        0x36758e -> :sswitch_37
        0x5cb1923 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_74
        :pswitch_75
        :pswitch_75
        :pswitch_74
    .end packed-switch
.end method

.method public final runSetMultiWindowConfig()I
    .registers 6

    .line 583
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 584
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: No arguments provided."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    move v1, v0

    .line 587
    :goto_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_53

    .line 588
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v4, "--supportsNonResizable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    const-string v4, "--respectsActivityMinWidthHeight"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 597
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unrecognized multi window option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 594
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetRespectsActivityMinWidthHeightMultiWindow()I

    move-result v2

    goto :goto_51

    .line 591
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetSupportsNonResizableMultiWindow()I

    move-result v2

    :goto_51
    add-int/2addr v1, v2

    goto :goto_11

    :cond_53
    if-nez v1, :cond_56

    goto :goto_57

    :cond_56
    move v0, v3

    :goto_57
    return v0
.end method

.method public final runSetRespectsActivityMinWidthHeightMultiWindow()I
    .registers 3

    .line 620
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    .line 621
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 622
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: a config value of [-1, 0, 1] must be provided as an argument for respectsActivityMinWidthHeightMultiWindow"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 626
    :cond_27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 627
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 628
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    .line 629
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_41
    move-exception p0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runSetSupportsNonResizableMultiWindow()I
    .registers 3

    .line 606
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 608
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: a config value of [-1, 0, 1] must be provided as an argument for supportsNonResizableMultiWindow"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 612
    :cond_27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 613
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 614
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 615
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_41
    move-exception p0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

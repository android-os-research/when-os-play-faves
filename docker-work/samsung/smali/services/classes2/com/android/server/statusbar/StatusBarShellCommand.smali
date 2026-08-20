.class public Lcom/android/server/statusbar/StatusBarShellCommand;
.super Landroid/os/ShellCommand;
.source "StatusBarShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;
    }
.end annotation


# static fields
.field public static final sToken:Landroid/os/IBinder;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInterface:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;-><init>(Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken-IA;)V

    sput-object v0, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/content/Context;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 43
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_7

    .line 49
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->onHelp()V

    return v0

    :cond_7
    const/4 v1, -0x1

    .line 53
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_12a

    goto/16 :goto_b7

    :sswitch_12
    const-string v2, "expand-settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    goto/16 :goto_b8

    :sswitch_1c
    const-string v0, "expand-notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    move v0, v3

    goto/16 :goto_b8

    :sswitch_27
    const-string v0, "check-support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/4 v0, 0x6

    goto/16 :goto_b8

    :sswitch_32
    const-string v0, "disable-for-setup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/16 v0, 0x8

    goto/16 :goto_b8

    :sswitch_3e
    const-string v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/16 v0, 0xd

    goto/16 :goto_b8

    :sswitch_4a
    const-string v0, "dump"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/16 v0, 0xe

    goto :goto_b8

    :sswitch_55
    const-string v0, "-h"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/16 v0, 0xc

    goto :goto_b8

    :sswitch_60
    const-string/jumbo v0, "remove-tile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/4 v0, 0x4

    goto :goto_b8

    :sswitch_6b
    const-string v0, "collapse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/4 v0, 0x2

    goto :goto_b8

    :sswitch_75
    const-string v0, "click-tile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/4 v0, 0x5

    goto :goto_b8

    :sswitch_7f
    const-string/jumbo v0, "run-gc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/16 v0, 0xb

    goto :goto_b8

    :sswitch_8b
    const-string/jumbo v0, "send-disable-flag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/16 v0, 0x9

    goto :goto_b8

    :sswitch_97
    const-string/jumbo v0, "tracing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/16 v0, 0xa

    goto :goto_b8

    :sswitch_a3
    const-string v0, "get-status-icons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/4 v0, 0x7

    goto :goto_b8

    :sswitch_ad
    const-string v0, "add-tile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const/4 v0, 0x3

    goto :goto_b8

    :cond_b7
    :goto_b7
    move v0, v1

    :goto_b8
    packed-switch v0, :pswitch_data_168

    .line 89
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runPassArgsToStatusBar()I

    move-result p0

    goto :goto_10f

    .line 87
    :pswitch_c0
    invoke-super {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 84
    :pswitch_c5
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->onHelp()V

    return v3

    .line 79
    :pswitch_c9
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runGc()I

    move-result p0

    return p0

    .line 77
    :pswitch_ce
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runTracing()I

    move-result p0

    return p0

    .line 75
    :pswitch_d3
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runSendDisableFlag()I

    move-result p0

    return p0

    .line 73
    :pswitch_d8
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runDisableForSetup()I

    move-result p0

    return p0

    .line 71
    :pswitch_dd
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runGetStatusIcons()I

    move-result p0

    return p0

    .line 67
    :pswitch_e2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 68
    invoke-static {}, Landroid/service/quicksettings/TileService;->isQuickSettingsSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 65
    :pswitch_f2
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runClickTile()I

    move-result p0

    return p0

    .line 63
    :pswitch_f7
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runRemoveTile()I

    move-result p0

    return p0

    .line 61
    :pswitch_fc
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runAddTile()I

    move-result p0

    return p0

    .line 59
    :pswitch_101
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runCollapse()I

    move-result p0

    return p0

    .line 57
    :pswitch_106
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandSettings()I

    move-result p0

    return p0

    .line 55
    :pswitch_10b
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandNotifications()I

    move-result p0
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10f} :catch_110

    :goto_10f
    return p0

    :catch_110
    move-exception p1

    .line 92
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :sswitch_data_12a
    .sparse-switch
        -0x4c69c7a6 -> :sswitch_ad
        -0x49dc556a -> :sswitch_a3
        -0x3f9f2f3e -> :sswitch_97
        -0x3ebc9eaa -> :sswitch_8b
        -0x36d414a2 -> :sswitch_7f
        -0x310f1c2d -> :sswitch_75
        -0x25acdc53 -> :sswitch_6b
        -0x143fd1a9 -> :sswitch_60
        0x5db -> :sswitch_55
        0x2f39f4 -> :sswitch_4a
        0x30cf41 -> :sswitch_3e
        0x35c1e3d4 -> :sswitch_32
        0x6019c00a -> :sswitch_27
        0x611d4ef5 -> :sswitch_1c
        0x63a92df6 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_10b
        :pswitch_106
        :pswitch_101
        :pswitch_fc
        :pswitch_f7
        :pswitch_f2
        :pswitch_e2
        :pswitch_dd
        :pswitch_d8
        :pswitch_d3
        :pswitch_ce
        :pswitch_c9
        :pswitch_c5
        :pswitch_c5
        :pswitch_c0
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 225
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Status bar commands:"

    .line 226
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    .line 227
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    .line 228
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    .line 229
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  expand-notifications"

    .line 230
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Open the notifications panel."

    .line 231
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  expand-settings"

    .line 233
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Open the notifications panel and expand quick settings if present."

    .line 234
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  collapse"

    .line 236
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Collapse the notifications and settings panel."

    .line 237
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  add-tile COMPONENT"

    .line 239
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Add a TileService of the specified component"

    .line 240
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  remove-tile COMPONENT"

    .line 242
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Remove a TileService of the specified component"

    .line 243
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  click-tile COMPONENT"

    .line 245
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Click on a TileService of the specified component"

    .line 246
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  check-support"

    .line 248
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Check if this device supports QS + APIs"

    .line 249
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get-status-icons"

    .line 251
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Print the list of status bar icons and the order they appear in"

    .line 252
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  disable-for-setup DISABLE"

    .line 254
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    If true, disable status bar components unsuitable for device setup"

    .line 255
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  send-disable-flag FLAG..."

    .line 257
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Send zero or more disable flags (parsed individually) to StatusBarManager"

    .line 258
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Valid options:"

    .line 259
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        <blank>             - equivalent to \"none\""

    .line 260
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        none                - re-enables all components"

    .line 261
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        search              - disable search"

    .line 262
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        home                - disable naviagation home"

    .line 263
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        recents             - disable recents/overview"

    .line 264
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        notification-peek   - disable notification peeking"

    .line 265
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        statusbar-expansion - disable status bar expansion"

    .line 266
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        system-icons        - disable system icons appearing in status bar"

    .line 267
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        clock               - disable clock appearing in status bar"

    .line 268
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        notification-icons  - disable notification icons from status bar"

    .line 269
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  tracing (start | stop)"

    .line 271
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Start or stop SystemUI tracing"

    .line 272
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  NOTE: any command not listed here will be passed through to IStatusBar"

    .line 274
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Commands implemented in SystemUI:"

    .line 276
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 279
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService;->passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public final runAddTile()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService;->addTile(Landroid/content/ComponentName;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runClickTile()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService;->clickTile(Landroid/content/ComponentName;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runCollapse()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->collapsePanels()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runDisableForSetup()I
    .registers 6

    .line 137
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 142
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/high16 v3, 0x3a50000

    sget-object v4, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0, v2, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_2c

    .line 145
    :cond_20
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    sget-object v3, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    :goto_2c
    return v2
.end method

.method public final runExpandNotifications()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->expandNotificationsPanel()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runExpandSettings()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->expandSettingsPanel(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGc()I
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->runGcForTest()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGetStatusIcons()I
    .registers 6

    .line 129
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 130
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->getStatusBarIcons()[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_17

    aget-object v4, p0, v3

    .line 131
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_17
    return v2
.end method

.method public final runPassArgsToStatusBar()I
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService;->passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runRemoveTile()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService;->remTile(Landroid/content/ComponentName;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSendDisableFlag()I
    .registers 8

    .line 153
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Landroid/app/StatusBarManager$DisableInfo;

    invoke-direct {v1}, Landroid/app/StatusBarManager$DisableInfo;-><init>()V

    .line 159
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    :goto_f
    const/4 v3, 0x0

    if-eqz v2, :cond_a1

    const/4 v4, -0x1

    .line 161
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_c2

    :goto_1b
    move v3, v4

    goto/16 :goto_78

    :sswitch_1e
    const-string v3, "notification-icons"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_1b

    :cond_27
    const/4 v3, 0x7

    goto :goto_78

    :sswitch_29
    const-string/jumbo v3, "recents"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_1b

    :cond_33
    const/4 v3, 0x6

    goto :goto_78

    :sswitch_35
    const-string/jumbo v3, "statusbar-expansion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_1b

    :cond_3f
    const/4 v3, 0x5

    goto :goto_78

    :sswitch_41
    const-string v3, "clock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_1b

    :cond_4a
    const/4 v3, 0x4

    goto :goto_78

    :sswitch_4c
    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    goto :goto_1b

    :cond_55
    const/4 v3, 0x3

    goto :goto_78

    :sswitch_57
    const-string v3, "notification-alerts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    goto :goto_1b

    :cond_60
    const/4 v3, 0x2

    goto :goto_78

    :sswitch_62
    const-string/jumbo v3, "search"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    goto :goto_1b

    :cond_6c
    move v3, v6

    goto :goto_78

    :sswitch_6e
    const-string/jumbo v5, "system-icons"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    goto :goto_1b

    :cond_78
    :goto_78
    packed-switch v3, :pswitch_data_e4

    goto :goto_9b

    .line 184
    :pswitch_7c
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setNotificationIconsDisabled(Z)V

    goto :goto_9b

    .line 169
    :pswitch_80
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setRecentsDisabled(Z)V

    goto :goto_9b

    .line 175
    :pswitch_84
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setStatusBarExpansionDisabled(Z)V

    goto :goto_9b

    .line 181
    :pswitch_88
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setClockDisabled(Z)V

    goto :goto_9b

    .line 166
    :pswitch_8c
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setNagivationHomeDisabled(Z)V

    goto :goto_9b

    .line 172
    :pswitch_90
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setNotificationPeekingDisabled(Z)V

    goto :goto_9b

    .line 163
    :pswitch_94
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setSearchDisabled(Z)V

    goto :goto_9b

    .line 178
    :pswitch_98
    invoke-virtual {v1, v6}, Landroid/app/StatusBarManager$DisableInfo;->setSystemIconsDisabled(Z)V

    .line 190
    :goto_9b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f

    .line 193
    :cond_a1
    invoke-virtual {v1}, Landroid/app/StatusBarManager$DisableInfo;->toFlags()Landroid/util/Pair;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v5, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    return v3

    :sswitch_data_c2
    .sparse-switch
        -0x6a7bc604 -> :sswitch_6e
        -0x36059a58 -> :sswitch_62
        -0x2d0f4a47 -> :sswitch_57
        0x30f4df -> :sswitch_4c
        0x5a5dc0e -> :sswitch_41
        0x3c4c98d3 -> :sswitch_35
        0x40828578 -> :sswitch_29
        0x518d53b8 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_80
        :pswitch_7c
    .end packed-switch
.end method

.method public final runTracing()I
    .registers 3

    .line 207
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_25

    .line 209
    :cond_1a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->startTracing()V

    goto :goto_25

    .line 212
    :cond_20
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->stopTracing()V

    :goto_25
    const/4 p0, 0x0

    return p0
.end method

.class public Lcom/android/server/app/GameManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "GameManagerShellCommand.java"


# static fields
.field public static final DOWNSCALE_CHANGE_IDS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 56
    new-instance v0, Landroid/util/ArraySet;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Long;

    const-wide/32 v2, 0xa09e1d7

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-wide/32 v2, 0xae57a6b

    .line 58
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-wide/32 v2, 0xb52b546

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-wide/32 v2, 0xa8bb021

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-wide/32 v2, 0xb52b573

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-wide/32 v2, 0xa8bb06d

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-wide/32 v2, 0xb52b550

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-wide/32 v2, 0xa8bb033

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-wide/32 v2, 0xb52b674

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-wide/32 v2, 0xa8bb015

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-wide/32 v2, 0xb52b576

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-wide/32 v2, 0xb52b676

    .line 68
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-wide/32 v2, 0xb52b555

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-wide/32 v2, 0xb52b678

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/app/GameManagerShellCommand;->DOWNSCALE_CHANGE_IDS:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 8

    if-nez p1, :cond_7

    .line 76
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 78
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 80
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_7c

    goto :goto_43

    :sswitch_17
    const-string/jumbo v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    move v2, v5

    goto :goto_44

    :sswitch_22
    const-string/jumbo v2, "mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    move v2, v4

    goto :goto_44

    :sswitch_2d
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    move v2, v3

    goto :goto_44

    :sswitch_38
    const-string/jumbo v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    move v2, v1

    :goto_44
    if-eqz v2, :cond_60

    if-eq v2, v5, :cond_5b

    if-eq v2, v4, :cond_56

    if-eq v2, v3, :cond_51

    .line 103
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 100
    :cond_51
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runGameList(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 97
    :cond_56
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runGameMode(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 85
    :cond_5b
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runResetGameMode(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 82
    :cond_60
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runSetGameMode(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_64} :catch_65

    return p0

    :catch_65
    move-exception p0

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_7c
    .sparse-switch
        0x1bc62 -> :sswitch_38
        0x32b09e -> :sswitch_2d
        0x3339a3 -> :sswitch_22
        0x6761d4f -> :sswitch_17
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 4

    .line 355
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Game manager (game) commands:"

    .line 356
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 357
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Print this help text."

    .line 358
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  downscale"

    .line 359
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Deprecated. Please use `set` command."

    .line 360
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mode [--user <USER_ID>] [1|2|3|standard|performance|battery] <PACKAGE_NAME>"

    .line 361
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Set app to run in the specified game mode, if supported."

    .line 362
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --user <USER_ID>: apply for the given user,"

    .line 363
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "                        the current user is used when unspecified."

    .line 364
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set --mode [2|3|performance|battery] [intervention configs] <PACKAGE_NAME>"

    .line 365
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      Set app to run at given game mode with configs, if supported."

    .line 366
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      Intervention configs consists of:"

    .line 367
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --downscale [0.3|0.35|0.4|0.45|0.5|0.55|0.6|0.65"

    .line 368
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "                  |0.7|0.75|0.8|0.85|0.9|disable]"

    .line 369
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      Set app to run at the specified scaling ratio."

    .line 370
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --fps [30|45|60|90|120|disable]"

    .line 371
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      Set app to run at the specified fps, if supported."

    .line 372
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  reset [--mode [2|3|performance|battery] --user <USER_ID>] <PACKAGE_NAME>"

    .line 373
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      Resets the game mode of the app to device configuration."

    .line 374
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --mode [2|3|performance|battery]: apply for the given mode,"

    .line 375
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "                                        resets all modes when unspecified."

    .line 376
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runGameList(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string v0, "game"

    .line 115
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerService;

    .line 117
    invoke-virtual {v0, p0}, Lcom/android/server/app/GameManagerService;->getInterventionList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No interventions found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3e

    .line 122
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " interventions: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3e
    const/4 p0, 0x0

    return p0
.end method

.method public final runGameMode(Ljava/io/PrintWriter;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "--user"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 131
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 134
    :goto_14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string v2, "game"

    .line 137
    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 136
    invoke-static {v2}, Landroid/app/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameManagerService;

    move-result-object v2

    .line 140
    invoke-interface {v2, p0}, Landroid/app/IGameManagerService;->getAvailableGameModes(Ljava/lang/String;)[I

    move-result-object v3

    .line 141
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_2f
    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v6, v4, :cond_40

    aget v12, v3, v6

    if-ne v12, v10, :cond_3a

    move v8, v11

    goto :goto_3d

    :cond_3a
    if-ne v12, v9, :cond_3d

    move v7, v11

    :cond_3d
    :goto_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_40
    if-eqz v0, :cond_47

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_4b

    .line 149
    :cond_47
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 150
    :goto_4b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v6, -0x1

    sparse-switch v4, :sswitch_data_fe

    :goto_5a
    move v3, v6

    goto :goto_9f

    :sswitch_5c
    const-string/jumbo v4, "standard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    goto :goto_5a

    :cond_66
    const/4 v3, 0x5

    goto :goto_9f

    :sswitch_68
    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    goto :goto_5a

    :cond_71
    const/4 v3, 0x4

    goto :goto_9f

    :sswitch_73
    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    goto :goto_5a

    :cond_7c
    move v3, v9

    goto :goto_9f

    :sswitch_7e
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    goto :goto_5a

    :cond_87
    move v3, v10

    goto :goto_9f

    :sswitch_89
    const-string v4, "battery"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_92

    goto :goto_5a

    :cond_92
    move v3, v11

    goto :goto_9f

    :sswitch_94
    const-string/jumbo v4, "performance"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    goto :goto_5a

    :cond_9e
    move v3, v5

    :goto_9f
    const-string v4, " not supported by "

    const-string v12, "Game mode: "

    packed-switch v3, :pswitch_data_118

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid game mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    .line 155
    :pswitch_bb
    invoke-interface {v2, p0, v11, v0}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V

    goto :goto_e3

    :pswitch_bf
    if-eqz v7, :cond_c5

    .line 171
    invoke-interface {v2, p0, v9, v0}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V

    goto :goto_e3

    .line 174
    :cond_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :pswitch_de
    if-eqz v8, :cond_e4

    .line 160
    invoke-interface {v2, p0, v10, v0}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V

    :goto_e3
    return v5

    .line 163
    :cond_e4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    nop

    :sswitch_data_fe
    .sparse-switch
        -0x583cefd0 -> :sswitch_94
        -0x13be51f3 -> :sswitch_89
        0x31 -> :sswitch_7e
        0x32 -> :sswitch_73
        0x33 -> :sswitch_68
        0x4e3d1ebd -> :sswitch_5c
    .end sparse-switch

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_de
        :pswitch_bf
        :pswitch_bb
        :pswitch_de
        :pswitch_bf
        :pswitch_bb
    .end packed-switch
.end method

.method public final runResetGameMode(Ljava/io/PrintWriter;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 298
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_6f

    const-string v4, "--mode"

    .line 299
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Duplicate option \'"

    const-string v6, "\'"

    if-nez v4, :cond_52

    const-string v4, "--user"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 317
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid option \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_35
    if-nez v0, :cond_3c

    .line 302
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 304
    :cond_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_52
    if-nez v1, :cond_59

    .line 310
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 312
    :cond_59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 322
    :cond_6f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string v2, "game"

    .line 325
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService;

    if-eqz v0, :cond_82

    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_86

    .line 328
    :cond_82
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    :goto_86
    const/4 v4, 0x0

    if-nez v1, :cond_8d

    .line 331
    invoke-virtual {v2, p0, v0, v3}, Lcom/android/server/app/GameManagerService;->resetGameModeConfigOverride(Ljava/lang/String;II)V

    return v4

    .line 335
    :cond_8d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    sparse-switch v6, :sswitch_data_f0

    :goto_a1
    move v5, v3

    goto :goto_cf

    :sswitch_a3
    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ac

    goto :goto_a1

    :cond_ac
    move v5, v7

    goto :goto_cf

    :sswitch_ae
    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b7

    goto :goto_a1

    :cond_b7
    move v5, v8

    goto :goto_cf

    :sswitch_b9
    const-string v6, "battery"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c2

    goto :goto_a1

    :cond_c2
    const/4 v5, 0x1

    goto :goto_cf

    :sswitch_c4
    const-string/jumbo v6, "performance"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ce

    goto :goto_a1

    :cond_ce
    move v5, v4

    :goto_cf
    packed-switch v5, :pswitch_data_102

    .line 347
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid game mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 343
    :pswitch_e7
    invoke-virtual {v2, p0, v0, v7}, Lcom/android/server/app/GameManagerService;->resetGameModeConfigOverride(Ljava/lang/String;II)V

    goto :goto_ee

    .line 338
    :pswitch_eb
    invoke-virtual {v2, p0, v0, v8}, Lcom/android/server/app/GameManagerService;->resetGameModeConfigOverride(Ljava/lang/String;II)V

    :goto_ee
    return v4

    nop

    :sswitch_data_f0
    .sparse-switch
        -0x583cefd0 -> :sswitch_c4
        -0x13be51f3 -> :sswitch_b9
        0x32 -> :sswitch_ae
        0x33 -> :sswitch_a3
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_e7
        :pswitch_eb
        :pswitch_e7
    .end packed-switch
.end method

.method public final runSetGameMode(Ljava/io/PrintWriter;)I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string v2, "--mode"

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Invalid option \'"

    const-string v4, "\'"

    const/4 v5, -0x1

    if-nez v2, :cond_29

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    .line 193
    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v10, v2

    move-object v11, v10

    .line 202
    :goto_30
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    if-eqz v6, :cond_120

    .line 203
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1ee

    :goto_3e
    move v7, v5

    goto :goto_5e

    :sswitch_40
    const-string v8, "--downscale"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5e

    goto :goto_3e

    :sswitch_49
    const-string v7, "--user"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_52

    goto :goto_3e

    :cond_52
    const/4 v7, 0x1

    goto :goto_5e

    :sswitch_54
    const-string v7, "--fps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d

    goto :goto_3e

    :cond_5d
    const/4 v7, 0x0

    :cond_5e
    :goto_5e
    const-string v8, "Duplicate option \'"

    packed-switch v7, :pswitch_data_1fc

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_79
    if-nez v11, :cond_ad

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_ab

    .line 216
    invoke-static {v6}, Lcom/android/server/app/GameManagerService;->getCompatChangeId(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmp-long v7, v7, v11

    if-nez v7, :cond_ab

    const-string v7, "disable"

    .line 217
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ab

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scaling ratio \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_ab
    move-object v11, v6

    goto :goto_30

    .line 222
    :cond_ad
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_c3
    if-nez v2, :cond_cb

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_30

    .line 208
    :cond_cb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_e1
    if-nez v10, :cond_10a

    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_107

    .line 229
    invoke-static {v6}, Lcom/android/server/app/GameManagerService;->getFpsInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_107

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid frame rate \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_107
    move-object v10, v6

    goto/16 :goto_30

    .line 234
    :cond_10a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    .line 244
    :cond_120
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_12b

    .line 246
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_12f

    .line 247
    :cond_12b
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    :goto_12f
    const-string v4, "game"

    .line 250
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/app/GameManagerService;

    .line 254
    invoke-virtual {v6, v3}, Lcom/android/server/app/GameManagerService;->getAvailableGameModes(Ljava/lang/String;)[I

    move-result-object v4

    .line 256
    array-length v9, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_140
    const/4 v8, 0x3

    if-ge v13, v9, :cond_14f

    aget v12, v4, v13

    if-ne v12, v7, :cond_149

    const/4 v15, 0x1

    goto :goto_14c

    :cond_149
    if-ne v12, v8, :cond_14c

    const/4 v14, 0x1

    :cond_14c
    :goto_14c
    add-int/lit8 v13, v13, 0x1

    goto :goto_140

    .line 264
    :cond_14f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_206

    :goto_161
    move v7, v5

    goto :goto_18d

    :sswitch_163
    const-string v7, "3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16c

    goto :goto_161

    :cond_16c
    move v7, v8

    goto :goto_18d

    :sswitch_16e
    const-string v8, "2"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18d

    goto :goto_161

    :sswitch_177
    const-string v7, "battery"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_180

    goto :goto_161

    :cond_180
    const/4 v7, 0x1

    goto :goto_18d

    :sswitch_182
    const-string/jumbo v7, "performance"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18c

    goto :goto_161

    :cond_18c
    const/4 v7, 0x0

    :cond_18d
    :goto_18d
    const-string v4, " not supported by "

    const-string v8, "Game mode: "

    packed-switch v7, :pswitch_data_218

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid game mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_1a9
    if-eqz v14, :cond_1b2

    const/4 v9, 0x3

    move-object v7, v3

    move v8, v2

    .line 279
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/app/GameManagerService;->setGameModeConfigOverride(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1d3

    .line 282
    :cond_1b2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_1cb
    if-eqz v15, :cond_1d5

    const/4 v9, 0x2

    move-object v7, v3

    move v8, v2

    .line 268
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/app/GameManagerService;->setGameModeConfigOverride(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :goto_1d3
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_1d5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :sswitch_data_1ee
    .sparse-switch
        0x2902349 -> :sswitch_54
        0x4f7b216b -> :sswitch_49
        0x6bb7c848 -> :sswitch_40
    .end sparse-switch

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_e1
        :pswitch_c3
        :pswitch_79
    .end packed-switch

    :sswitch_data_206
    .sparse-switch
        -0x583cefd0 -> :sswitch_182
        -0x13be51f3 -> :sswitch_177
        0x32 -> :sswitch_16e
        0x33 -> :sswitch_163
    .end sparse-switch

    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_1cb
        :pswitch_1a9
        :pswitch_1cb
        :pswitch_1a9
    .end packed-switch
.end method

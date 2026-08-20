.class public Lcom/android/server/aod/AODManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "AODManagerShellCommand.java"


# static fields
.field public static final AOD_ACTION:Ljava/lang/String; = "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

.field public static final AOD_DOUBLE_TAP:I = 0xb

.field public static final AOD_EXTRA_INFO:Ljava/lang/String; = "info"

.field public static final AOD_EXTRA_LOCATION:Ljava/lang/String; = "location"

.field public static final AOD_LONG_PRESS:I = 0xa

.field public static final AOD_PERMISSION:Ljava/lang/String; = "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

.field public static final AOD_PRESS:I = 0x9

.field public static final AOD_TAP_TO_SHOW:I = 0x8

.field public static final COMMAND_HELP:Ljava/lang/String; = "help"

.field public static final COMMAND_TSP:Ljava/lang/String; = "tsp"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/aod/AODManagerShellCommand;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final infoToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_16

    const-string p0, ""

    goto :goto_14

    :pswitch_6
    const-string p0, "double tap(11)"

    goto :goto_14

    :pswitch_9
    const-string/jumbo p0, "long pres(10)"

    goto :goto_14

    :pswitch_d
    const-string/jumbo p0, "press(9)"

    goto :goto_14

    :pswitch_11
    const-string/jumbo p0, "tap to show(8)"

    :goto_14
    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x8
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    .line 38
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const/4 v0, -0x1

    .line 41
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1c1d1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_24

    const v2, 0x30cf41

    if-eq v1, v2, :cond_19

    goto :goto_2f

    :cond_19
    const-string/jumbo v1, "help"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    move v1, v4

    goto :goto_30

    :cond_24
    const-string/jumbo v1, "tsp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    move v1, v3

    goto :goto_30

    :cond_2f
    :goto_2f
    move v1, v0

    :goto_30
    if-eqz v1, :cond_51

    if-eq v1, v4, :cond_4d

    .line 49
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_54

    .line 46
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->onHelp()V

    goto :goto_54

    .line 43
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->runTspEvent()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_54} :catch_55

    :goto_54
    return v3

    :catch_55
    move-exception v1

    .line 54
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while executing command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    return v0
.end method

.method public onHelp()V
    .registers 3

    const-string v0, ""

    .line 62
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    :try_start_6
    const-string v1, "aod service commands:"

    .line 63
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "NOTE: when aod is shown, the command should should be executed, and -user USER_ID is optional argument."

    .line 65
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    .line 66
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Prints this help text."

    .line 67
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  tsp [ACTION_INFO] [-x X_POSITION] [-y Y_POSITION] [-user USER_ID]"

    .line 70
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Send tsp event with the below arguments."

    .line 71
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      ACTION_INFO"

    .line 72
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "          8  : tap to show"

    .line 73
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "          9  : press"

    .line 74
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "          10 : long press"

    .line 75
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "          11 : double tap"

    .line 76
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      X_POSITION : x position with integer value"

    .line 77
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      Y_POSITION : x position with integer value"

    .line 78
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      USER_ID : user id (optional argument"

    .line 79
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_59

    .line 82
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_59
    move-exception v0

    if-eqz p0, :cond_64

    .line 62
    :try_start_5c
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    throw v0
.end method

.method public final runTspEvent()V
    .registers 9

    .line 110
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 111
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    packed-switch v0, :pswitch_data_ee

    .line 120
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ACTION_INFO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_2b
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 125
    :goto_2e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8b

    const-string v6, "-x"

    .line 126
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 127
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2e

    :cond_45
    const-string v6, "-y"

    .line 128
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 129
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2e

    :cond_56
    const-string v1, "-user"

    .line 130
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 131
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 132
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, v5

    goto :goto_2e

    .line 134
    :cond_6d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 139
    :cond_8b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aod service commands: runTspEvent : info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/aod/AODManagerShellCommand;->infoToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , x: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , y: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "info"

    .line 143
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float v3, v3

    aput v3, v0, v2

    const/4 v2, 0x1

    int-to-float v3, v4

    aput v3, v0, v2

    const-string/jumbo v2, "location"

    .line 144
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 145
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    iget-object p0, p0, Lcom/android/server/aod/AODManagerShellCommand;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-virtual {p0, v5, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_ee
    .packed-switch 0x8
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

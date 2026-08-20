.class public Lcom/android/server/media/MediaShellCommand;
.super Landroid/os/ShellCommand;
.source "MediaShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaShellCommand$ControllerMonitor;,
        Lcom/android/server/media/MediaShellCommand$ControllerCallback;
    }
.end annotation


# static fields
.field public static sMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public static sThread:Landroid/app/ActivityThread;


# instance fields
.field public mErrorWriter:Ljava/io/PrintWriter;

.field public mInput:Ljava/io/InputStream;

.field public final mPackageName:Ljava/lang/String;

.field public mSessionService:Landroid/media/session/ISessionManager;

.field public mWriter:Ljava/io/PrintWriter;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInput(Lcom/android/server/media/MediaShellCommand;)Ljava/io/InputStream;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mInput:Ljava/io/InputStream;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/media/MediaShellCommand;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 200
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    .line 65
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 66
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    .line 67
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mInput:Ljava/io/InputStream;

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 70
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 72
    :cond_1d
    sget-object v0, Lcom/android/server/media/MediaShellCommand;->sThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "media_session"

    if-nez v0, :cond_39

    .line 73
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 74
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaShellCommand;->sThread:Landroid/app/ActivityThread;

    .line 75
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    sput-object v0, Lcom/android/server/media/MediaShellCommand;->sMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 79
    :cond_39
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mSessionService:Landroid/media/session/ISessionManager;

    if-eqz v0, :cond_9d

    const/4 v0, -0x1

    :try_start_46
    const-string v1, "dispatch"

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 88
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->runDispatch()V

    goto :goto_78

    :cond_52
    const-string/jumbo v1, "list-sessions"

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 90
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->runListSessions()V

    goto :goto_78

    :cond_5f
    const-string/jumbo v1, "monitor"

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 92
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->runMonitor()V

    goto :goto_78

    :cond_6c
    const-string/jumbo v1, "volume"

    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 94
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->runVolume()V

    :goto_78
    const/4 p0, 0x0

    return p0

    .line 96
    :cond_7a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_93} :catch_94

    return v0

    :catch_94
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    return v0

    .line 82
    :cond_9d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t connect to media session service; is the system running?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onHelp()V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "usage: media_session [subcommand] [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "       media_session dispatch KEY"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "       media_session list-sessions"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "       media_session monitor <tag>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "       media_session volume [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 114
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "media_session dispatch: dispatch a media key to the system."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "                KEY may be: play, pause, play-pause, mute, headsethook,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "                stop, next, previous, rewind, record, fast-forward."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "media_session list-sessions: print a list of the current sessions."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "media_session monitor: monitor updates to the specified session."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "                       Use the tag from list-sessions."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media_session volume:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/media/VolumeCtrl;->USAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runDispatch()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "play"

    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v1, 0x7e

    goto/16 :goto_89

    :cond_13
    const-string/jumbo v2, "pause"

    .line 168
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v1, 0x7f

    goto :goto_89

    :cond_1f
    const-string/jumbo v2, "play-pause"

    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v1, 0x55

    goto :goto_89

    :cond_2b
    const-string/jumbo v2, "mute"

    .line 172
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/16 v1, 0x5b

    goto :goto_89

    :cond_37
    const-string/jumbo v2, "headsethook"

    .line 174
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/16 v1, 0x4f

    goto :goto_89

    :cond_43
    const-string/jumbo v2, "stop"

    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/16 v1, 0x56

    goto :goto_89

    :cond_4f
    const-string/jumbo v2, "next"

    .line 178
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/16 v1, 0x57

    goto :goto_89

    :cond_5b
    const-string/jumbo v2, "previous"

    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const/16 v1, 0x58

    goto :goto_89

    :cond_67
    const-string/jumbo v2, "rewind"

    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const/16 v1, 0x59

    goto :goto_89

    :cond_73
    const-string/jumbo v2, "record"

    .line 184
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const/16 v1, 0x82

    goto :goto_89

    :cond_7f
    const-string v2, "fast-forward"

    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    const/16 v1, 0x5a

    .line 192
    :goto_89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 193
    new-instance v14, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x101

    move-object v2, v14

    move-wide v3, v15

    move-wide v5, v15

    move v8, v1

    move/from16 v18, v1

    move-object v1, v14

    move/from16 v14, v17

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->sendMediaKey(Landroid/view/KeyEvent;)V

    .line 195
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    const/16 v14, 0x101

    move-object v2, v1

    move/from16 v8, v18

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->sendMediaKey(Landroid/view/KeyEvent;)V

    return-void

    .line 189
    :cond_b5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown dispatch code \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public final runListSessions()V
    .registers 6

    .line 347
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Sessions:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    :try_start_7
    sget-object v0, Lcom/android/server/media/MediaShellCommand;->sMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 350
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_12
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_47

    if-eqz v1, :cond_12

    .line 353
    :try_start_20
    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_46} :catch_12
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_46} :catch_47

    goto :goto_12

    .line 361
    :catch_47
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    const-string v0, "***Error listing sessions***"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4e
    return-void
.end method

.method public final runMonitor()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "Error: must include a session id"

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v1, 0x0

    .line 141
    :try_start_d
    sget-object v2, Lcom/android/server/media/MediaShellCommand;->sMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    .line 142
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_18
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_3a

    if-eqz v3, :cond_18

    .line 144
    :try_start_26
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 145
    new-instance v4, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    invoke-direct {v4, p0, v3}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;-><init>(Lcom/android/server/media/MediaShellCommand;Landroid/media/session/MediaController;)V

    .line 147
    invoke-virtual {v4}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->run()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_38} :catch_18
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_38} :catch_3a

    const/4 v1, 0x1

    goto :goto_55

    :catch_3a
    move-exception v2

    .line 156
    iget-object v3, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***Error monitoring session*** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_55
    :goto_55
    if-nez v1, :cond_6d

    .line 159
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No session found with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6d
    return-void
.end method

.method public final runVolume()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 368
    invoke-static {p0}, Lcom/android/server/media/VolumeCtrl;->run(Lcom/android/server/media/MediaShellCommand;)V

    return-void
.end method

.method public final sendMediaKey(Landroid/view/KeyEvent;)V
    .registers 4

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mSessionService:Landroid/media/session/ISessionManager;

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p1, v1}, Landroid/media/session/ISessionManager;->dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .registers 2

    .line 204
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->onHelp()V

    .line 205
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

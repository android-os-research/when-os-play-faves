.class public final Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "VoiceInteractionManagerServiceShellCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VoiceInteractionManager"

.field public static final TIMEOUT_MS:J = 0x1388L


# instance fields
.field public final mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    return-void
.end method

.method public static handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I
    .registers 5

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error calling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceInteractionManager"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p2, "Error calling %s: %s\n"

    .line 180
    invoke-virtual {p0, p2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return p1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 47
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 49
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_6e

    goto :goto_4d

    :sswitch_14
    const-string/jumbo v2, "restart-detection"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_4d

    :cond_1e
    const/4 v1, 0x4

    goto :goto_4d

    :sswitch_20
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_4d

    :cond_29
    const/4 v1, 0x3

    goto :goto_4d

    :sswitch_2b
    const-string/jumbo v2, "show"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_4d

    :cond_35
    const/4 v1, 0x2

    goto :goto_4d

    :sswitch_37
    const-string v2, "hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_4d

    :cond_40
    const/4 v1, 0x1

    goto :goto_4d

    :sswitch_42
    const-string/jumbo v2, "set-debug-hotword-logging"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    packed-switch v1, :pswitch_data_84

    .line 62
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 58
    :pswitch_55
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->requestRestartDetection(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 56
    :pswitch_5a
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->requestDisable(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 52
    :pswitch_5f
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->requestShow(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :pswitch_64
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->requestHide(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 60
    :pswitch_69
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->setDebugHotwordLogging(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :sswitch_data_6e
    .sparse-switch
        -0x4163e63c -> :sswitch_42
        0x30dd42 -> :sswitch_37
        0x35dafd -> :sswitch_2b
        0x639e22e8 -> :sswitch_20
        0x66744447 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    const-string v0, ""

    .line 68
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    :try_start_6
    const-string v1, "VoiceInteraction Service (voiceinteraction) commands:"

    .line 69
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    .line 70
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Prints this help text."

    .line 71
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  show"

    .line 73
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Shows a session for the active service"

    .line 74
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  hide"

    .line 76
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Hides the current session"

    .line 77
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  disable [true|false]"

    .line 79
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Temporarily disable (when true) service"

    .line 80
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  restart-detection"

    .line 82
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Force a restart of a hotword detection service"

    .line 83
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-debug-hotword-logging [true|false]"

    .line 85
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Temporarily enable or disable debug logging for hotword result."

    .line 86
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    The debug logging will be reset after one hour from last enable."

    .line 87
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_6 .. :try_end_5e} :catchall_62

    .line 89
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_62
    move-exception v0

    if-eqz p0, :cond_6d

    .line 68
    :try_start_65
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6d
    :goto_6d
    throw v0
.end method

.method public final requestDisable(Ljava/io/PrintWriter;)I
    .registers 5

    .line 147
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDisable(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceInteractionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setDisabled(Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_26

    const/4 p0, 0x0

    return p0

    :catch_26
    move-exception p0

    const-string/jumbo v0, "requestDisable()"

    .line 152
    invoke-static {p1, v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I

    move-result p0

    return p0
.end method

.method public final requestHide(Ljava/io/PrintWriter;)I
    .registers 4

    const-string v0, "VoiceInteractionManager"

    const-string/jumbo v1, "requestHide()"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_8
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->hideCurrentSession()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    const/4 p0, 0x0

    return p0

    :catch_f
    move-exception p0

    .line 141
    invoke-static {p1, v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I

    move-result p0

    return p0
.end method

.method public final requestRestartDetection(Ljava/io/PrintWriter;)I
    .registers 4

    const-string v0, "VoiceInteractionManager"

    const-string/jumbo v1, "requestRestartDetection()"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :try_start_8
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->forceRestartHotwordDetector()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    const/4 p0, 0x0

    return p0

    :catch_f
    move-exception p0

    .line 162
    invoke-static {p1, v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I

    move-result p0

    return p0
.end method

.method public final requestShow(Ljava/io/PrintWriter;)I
    .registers 8

    const-string v0, "VoiceInteractionManager"

    const-string/jumbo v1, "requestShow()"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 95
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 97
    new-instance v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;

    invoke-direct {v3, p0, p1, v2, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 116
    :try_start_18
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 117
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5, v3, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p0

    if-nez p0, :cond_2e

    const-string/jumbo p0, "showSessionForActiveService() returned false"

    .line 121
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 125
    :cond_2e
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_46

    const-string p0, "Callback not called in %d ms\n"

    new-array v0, v1, [Ljava/lang/Object;

    .line 126
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {p1, p0, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_45} :catch_47

    return v1

    :cond_46
    return v5

    :catch_47
    move-exception p0

    const-string/jumbo v0, "showSessionForActiveService()"

    .line 130
    invoke-static {p1, v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I

    move-result p0

    return p0
.end method

.method public final setDebugHotwordLogging(Ljava/io/PrintWriter;)I
    .registers 5

    .line 168
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDebugHotwordLogging(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceInteractionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setDebugHotwordLogging(Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_26

    const/4 p0, 0x0

    return p0

    :catch_26
    move-exception p0

    const-string/jumbo v0, "setDebugHotwordLogging()"

    .line 173
    invoke-static {p1, v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I

    move-result p0

    return p0
.end method

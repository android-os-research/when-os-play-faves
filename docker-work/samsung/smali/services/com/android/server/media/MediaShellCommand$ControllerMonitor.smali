.class public Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
.super Ljava/lang/Object;
.source "MediaShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControllerMonitor"
.end annotation


# instance fields
.field public final mController:Landroid/media/session/MediaController;

.field public final mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

.field public final synthetic this$0:Lcom/android/server/media/MediaShellCommand;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmController(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)Landroid/media/session/MediaController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmControllerCallback(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)Lcom/android/server/media/MediaShellCommand$ControllerCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/media/MediaShellCommand;Landroid/media/session/MediaController;)V
    .registers 3

    .line 257
    iput-object p1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    .line 259
    new-instance p2, Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-direct {p2, p1}, Lcom/android/server/media/MediaShellCommand$ControllerCallback;-><init>(Lcom/android/server/media/MediaShellCommand;)V

    iput-object p2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    return-void
.end method


# virtual methods
.method public final dispatchKeyCode(I)V
    .registers 20

    move-object/from16 v0, p0

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 333
    new-instance v13, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x101

    move-object v1, v13

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p1

    move-object/from16 v17, v13

    move/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 335
    new-instance v13, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object v1, v13

    move-object v14, v13

    move/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 338
    :try_start_26
    iget-object v1, v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 339
    iget-object v1, v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {v1, v14}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_32} :catch_33

    goto :goto_4f

    .line 341
    :catch_33
    iget-object v0, v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to dispatch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4f
    return-void
.end method

.method public printUsageMessage()V
    .registers 4

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V2Monitoring session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "...  available commands: play, pause, next, previous"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_31

    .line 267
    :catch_26
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error trying to monitor session!"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    :goto_31
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {p0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "(q)uit: finish monitoring"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->printUsageMessage()V

    .line 274
    new-instance v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;

    const-string v1, "MediaCb"

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;-><init>(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 287
    :try_start_d
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v2}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmInput(Lcom/android/server/media/MediaShellCommand;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 288
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 292
    :goto_1d
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v1}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 293
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v1}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 294
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    goto/16 :goto_c0

    :cond_37
    const/4 v3, 0x1

    .line 296
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_40

    const/4 v3, 0x0

    goto :goto_a9

    :cond_40
    const-string/jumbo v4, "q"

    .line 298
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c0

    const-string/jumbo v4, "quit"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    goto :goto_c0

    :cond_53
    const-string/jumbo v4, "play"

    .line 300
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    const/16 v1, 0x7e

    .line 301
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_a9

    :cond_62
    const-string/jumbo v4, "pause"

    .line 302
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v1, 0x7f

    .line 303
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_a9

    :cond_71
    const-string/jumbo v4, "next"

    .line 304
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    const/16 v1, 0x57

    .line 305
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_a9

    :cond_80
    const-string/jumbo v4, "previous"

    .line 306
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    const/16 v1, 0x58

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_a9

    .line 309
    :cond_8f
    iget-object v4, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v4}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    :goto_a9
    monitor-enter p0
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_aa} :catch_d1
    .catchall {:try_start_d .. :try_end_aa} :catchall_cf

    if-eqz v3, :cond_b7

    .line 314
    :try_start_ac
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v1}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    :cond_b7
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->printUsageMessage()V

    .line 317
    monitor-exit p0

    goto/16 :goto_1d

    :catchall_bd
    move-exception v1

    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_ac .. :try_end_bf} :catchall_bd

    :try_start_bf
    throw v1
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c0} :catch_d1
    .catchall {:try_start_bf .. :try_end_c0} :catchall_cf

    .line 322
    :cond_c0
    :goto_c0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 324
    :try_start_c7
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    :goto_c9
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ce} :catch_df

    goto :goto_df

    :catchall_cf
    move-exception v1

    goto :goto_e0

    :catch_d1
    move-exception v1

    .line 320
    :try_start_d2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_cf

    .line 322
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 324
    :try_start_dc
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_de} :catch_df

    goto :goto_c9

    :catch_df
    :goto_df
    return-void

    .line 322
    :goto_e0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 324
    :try_start_e7
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ee} :catch_ee

    .line 328
    :catch_ee
    throw v1
.end method

.class public Lcom/android/server/power/ShutdownDialog$SoundThread;
.super Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.source "ShutdownDialog.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundThread"
.end annotation


# instance fields
.field public final completeSignal:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 3

    .line 769
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$RunningCheckable-IA;)V

    .line 770
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const-string p1, "ShutdownDialog"

    const-string v0, "!@onCompletion(MediaPlayer arg0) called !!"

    .line 804
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public run()V
    .registers 8

    .line 775
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmp(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ShutdownDialog"

    if-nez v0, :cond_13

    const-string v0, "MediaPlayer is null"

    .line 776
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->running:Z

    return-void

    .line 780
    :cond_13
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmp(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const-string v0, "Start play sound file"

    .line 781
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :try_start_21
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmp(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_2a} :catch_32
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_38

    :catch_2b
    const-string/jumbo v0, "sound thread exception"

    .line 787
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_32
    const-string/jumbo v0, "sound thread IllegalStateException"

    .line 785
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :goto_38
    :try_start_38
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmp(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const-string v0, "Set sound complete audioParam"

    .line 791
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "g_shutdown_suspend=suspend"

    .line 792
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const-string v0, "H/W workaround. wait a sec before power off"

    .line 794
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    .line 795
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_61} :catch_62

    goto :goto_68

    :catch_62
    move-exception v0

    const-string v3, "Wait fail"

    .line 797
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    :goto_68
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->running:Z

    const-string p0, "Shutdown sound done"

    .line 800
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

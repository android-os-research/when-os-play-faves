.class public Lcom/android/server/wm/BoundsCompatStatusLoggingService$IdleLoggingThread;
.super Ljava/lang/Thread;
.source "BoundsCompatStatusLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsCompatStatusLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleLoggingThread"
.end annotation


# instance fields
.field public final mParams:Landroid/app/job/JobParameters;

.field public final synthetic this$0:Lcom/android/server/wm/BoundsCompatStatusLoggingService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BoundsCompatStatusLoggingService;Landroid/app/job/JobParameters;)V
    .registers 4

    .line 108
    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatStatusLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/wm/BoundsCompatStatusLoggingService;

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_IdleLoggingJob"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 110
    iput-object p2, p0, Lcom/android/server/wm/BoundsCompatStatusLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 115
    invoke-static {}, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 116
    sget-object v0, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->TAG:Ljava/lang/String;

    const-string v1, "Starting IdleLoggingJob run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_d
    invoke-static {}, Lcom/android/server/wm/BoundsCompatStatusLogger;->get()Lcom/android/server/wm/BoundsCompatStatusLogger;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatStatusLogger;->logBoundsCompatStatus()V

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatStatusLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/wm/BoundsCompatStatusLoggingService;

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatStatusLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 123
    invoke-static {}, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_29

    .line 124
    sget-object p0, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->TAG:Ljava/lang/String;

    const-string v0, "Finished IdleLoggingJob run"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

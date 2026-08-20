.class public final Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;
.super Landroid/os/Handler;
.source "UnifiedMemoryReclaimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnifiedMemoryReclaimerHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1029
    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1035
    :try_start_0
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    goto :goto_10

    .line 1041
    :cond_9
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->resetCameraLaunch()V

    goto :goto_10

    .line 1038
    :cond_d
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->enableReclaimers()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    .line 1046
    :catch_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to handleMessage "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UMR"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

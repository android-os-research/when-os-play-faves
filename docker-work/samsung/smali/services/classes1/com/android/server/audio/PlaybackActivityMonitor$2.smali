.class public Lcom/android/server/audio/PlaybackActivityMonitor$2;
.super Lcom/samsung/android/server/audio/FrequentWorker;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/server/audio/FrequentWorker<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/PlaybackActivityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/PlaybackActivityMonitor;)V
    .registers 2

    .line 1395
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$2;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-direct {p0}, Lcom/samsung/android/server/audio/FrequentWorker;-><init>()V

    const/16 p1, 0x1388

    .line 1397
    iput p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    const/4 p1, 0x0

    .line 1398
    iput-object p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic func()Ljava/lang/Object;
    .registers 1

    .line 1395
    invoke-virtual {p0}, Lcom/android/server/audio/PlaybackActivityMonitor$2;->func()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public func()Ljava/lang/Void;
    .registers 6

    .line 1403
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$2;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/PlaybackActivityMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    const-string p0, "AudioService.PlaybackActivityMonitor"

    const-string v0, "There is no audio handler"

    .line 1404
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1408
    :cond_11
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$2;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/PlaybackActivityMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$2;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {p0}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/PlaybackActivityMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 v2, 0x2fc

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1409
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1408
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v1
.end method

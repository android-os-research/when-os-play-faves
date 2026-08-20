.class public Lcom/android/server/media/MediaRouterService$1;
.super Ljava/lang/Object;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final WAIT_MS:J = 0x1f4L


# instance fields
.field public final mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance p1, Lcom/android/server/media/MediaRouterService$1$1;

    invoke-direct {p1, p0}, Lcom/android/server/media/MediaRouterService$1$1;-><init>(Lcom/android/server/media/MediaRouterService$1;)V

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAudioPlayerActiveStateChanged(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 9

    const/4 v0, 0x1

    if-nez p2, :cond_b

    .line 154
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p2

    if-eqz p2, :cond_b

    move p2, v0

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 155
    :goto_c
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v1

    .line 156
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    .line 158
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_32

    .line 161
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    .line 162
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerUidMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    :cond_32
    const/4 v1, -0x1

    if-eqz p2, :cond_4d

    .line 167
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 168
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerUidMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    move v1, v2

    goto :goto_6e

    .line 170
    :cond_4d
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerUidMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p1

    if-lez p1, :cond_6e

    .line 171
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerUidMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v1}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerUidMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 171
    invoke-virtual {p1, v1}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 175
    :cond_6e
    :goto_6e
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$1;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p1, ", active="

    const-string/jumbo v0, "onAudioPlayerActiveStateChanged: uid="

    const-string v3, "MediaRouterService"

    if-ltz v1, :cond_ae

    .line 177
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouterService;->restoreRoute(I)V

    .line 178
    invoke-static {}, Lcom/android/server/media/MediaRouterService;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_de

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", restoreUid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    .line 183
    :cond_ae
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v1}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$1;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    invoke-static {}, Lcom/android/server/media/MediaRouterService;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_de

    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", delaying"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    :goto_de
    return-void
.end method

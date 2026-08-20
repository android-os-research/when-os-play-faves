.class public Lcom/android/server/audio/AudioService$AsdProxy;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsdProxy"
.end annotation


# instance fields
.field public final mAsd:Landroid/media/IAudioServerStateDispatcher;

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/IAudioServerStateDispatcher;)V
    .registers 3

    .line 12746
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AsdProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12747
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AsdProxy;->mAsd:Landroid/media/IAudioServerStateDispatcher;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 12751
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AsdProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioServerStateListeners(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 12752
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AsdProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioServerStateListeners(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AsdProxy;->mAsd:Landroid/media/IAudioServerStateDispatcher;

    invoke-interface {p0}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12753
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public callback()Landroid/media/IAudioServerStateDispatcher;
    .registers 1

    .line 12757
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AsdProxy;->mAsd:Landroid/media/IAudioServerStateDispatcher;

    return-object p0
.end method

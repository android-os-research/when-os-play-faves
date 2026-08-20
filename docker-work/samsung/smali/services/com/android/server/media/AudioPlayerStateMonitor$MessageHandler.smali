.class public final Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;
.super Landroid/os/Handler;
.source "AudioPlayerStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/AudioPlayerStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageHandler"
.end annotation


# static fields
.field public static final MSG_AUDIO_PLAYER_ACTIVE_STATE_CHANGED:I = 0x1


# instance fields
.field public final mListener:Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    iput-object p2, p0, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;->mListener:Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_15

    .line 80
    :cond_6
    iget-object p0, p0, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;->mListener:Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-interface {p0, v0, v1}, Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;->onAudioPlayerActiveStateChanged(Landroid/media/AudioPlaybackConfiguration;Z)V

    :goto_15
    return-void
.end method

.method public sendAudioPlayerActiveStateChangedMessage(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 88
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

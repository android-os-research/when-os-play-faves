.class public abstract Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VolumeShaperEvent"
.end annotation


# instance fields
.field public final mClientPid:I

.field public final mClientUid:I

.field public final mPlayerIId:I

.field public final mSkipRamp:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 4

    .line 1180
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 1181
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mPlayerIId:I

    .line 1182
    iput-boolean p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mSkipRamp:Z

    .line 1183
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result p2

    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mClientUid:I

    .line 1184
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mClientPid:I

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 3

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->getVSAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " player piid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mPlayerIId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid/pid:"

    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mClientUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mClientPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " skip ramp:"

    .line 1191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mSkipRamp:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getVSAction()Ljava/lang/String;
.end method

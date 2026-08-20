.class public final Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayerEvent"
.end annotation


# instance fields
.field public final mDeviceId:I

.field public final mPlayerIId:I

.field public final mState:I

.field public mUid:I


# direct methods
.method public constructor <init>(III)V
    .registers 5

    .line 1095
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    const/4 v0, 0x0

    .line 1102
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mUid:I

    .line 1096
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mPlayerIId:I

    .line 1097
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mState:I

    .line 1098
    iput p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mDeviceId:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 1105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;-><init>(III)V

    .line 1106
    iput p4, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mUid:I

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 3

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "player piid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mPlayerIId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mState:I

    .line 1114
    invoke-static {v1}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DeviceId:"

    .line 1115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RecordingActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecordingState"
.end annotation


# instance fields
.field public mConfig:Landroid/media/AudioRecordingConfiguration;

.field public final mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

.field public mIsActive:Z

.field public final mRiid:I


# direct methods
.method public constructor <init>(ILcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;)V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mRiid:I

    .line 82
    iput-object p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioRecordingConfiguration;)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mRiid:I

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    .line 88
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "riid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mRiid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; active? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    if-eqz p0, :cond_29

    .line 134
    invoke-virtual {p0, p1}, Landroid/media/AudioRecordingConfiguration;->dump(Ljava/io/PrintWriter;)V

    goto :goto_2e

    :cond_29
    const-string p0, "  no config"

    .line 136
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method public getConfig()Landroid/media/AudioRecordingConfiguration;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    return-object p0
.end method

.method public getPortId()I
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/media/AudioRecordingConfiguration;->getClientPortId()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public getRiid()I
    .registers 1

    .line 92
    iget p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mRiid:I

    return p0
.end method

.method public hasDeathHandler()Z
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isActiveConfiguration()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public release()V
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    if-eqz p0, :cond_7

    .line 113
    invoke-virtual {p0}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->release()V

    :cond_7
    return-void
.end method

.method public setActive(Z)Z
    .registers 4

    .line 119
    iget-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    return v1

    .line 120
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    .line 121
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    if-eqz p0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public setConfig(Landroid/media/AudioRecordingConfiguration;)Z
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {p1, v0}, Landroid/media/AudioRecordingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 127
    :cond_a
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 128
    iget-boolean p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    return p0
.end method

.class public final Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "RecordingActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RecordingActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecordingEvent"
.end annotation


# instance fields
.field public final mClientUid:I

.field public final mPackName:Ljava/lang/String;

.field public final mRIId:I

.field public final mRecEvent:I

.field public final mSession:I

.field public final mSilenced:Z

.field public final mSource:I


# direct methods
.method public constructor <init>(IILandroid/media/AudioRecordingConfiguration;)V
    .registers 4

    .line 624
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 625
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRecEvent:I

    .line 626
    iput p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRIId:I

    if-eqz p3, :cond_28

    .line 628
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mClientUid:I

    .line 629
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSessionId()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSession:I

    .line 630
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSource()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSource:I

    .line 631
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    .line 632
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSilenced:Z

    goto :goto_35

    :cond_28
    const/4 p1, -0x1

    .line 634
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mClientUid:I

    .line 635
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSession:I

    .line 636
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSource:I

    const/4 p1, 0x0

    .line 637
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 638
    iput-boolean p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSilenced:Z

    :goto_35
    return-void
.end method

.method public static recordEventToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_27

    const/4 v0, 0x3

    if-eq p0, v0, :cond_23

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const-string/jumbo p0, "release"

    return-object p0

    :cond_27
    const-string/jumbo p0, "update"

    return-object p0

    :cond_2b
    const-string/jumbo p0, "stop"

    return-object p0

    :cond_2f
    const-string/jumbo p0, "start"

    return-object p0
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 4

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rec "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRecEvent:I

    invoke-static {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->recordEventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " riid:"

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRIId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mClientUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " session:"

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " src:"

    .line 663
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSource:I

    invoke-static {v1}, Landroid/media/MediaRecorder;->toLogFriendlyAudioSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget-boolean v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSilenced:Z

    if-eqz v1, :cond_44

    const-string v1, " silenced"

    goto :goto_46

    :cond_44
    const-string v1, " not silenced"

    :goto_46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    if-nez v1, :cond_50

    const-string p0, ""

    goto :goto_63

    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

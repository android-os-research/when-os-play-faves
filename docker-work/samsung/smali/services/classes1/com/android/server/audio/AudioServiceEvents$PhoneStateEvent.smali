.class public final Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioServiceEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioServiceEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneStateEvent"
.end annotation


# static fields
.field public static final MODE_IN_COMMUNICATION_TIMEOUT:I = 0x1

.field public static final MODE_SET:I = 0x0

.field public static final mMetricsId:Ljava/lang/String; = "audio.mode"


# instance fields
.field public final mActualMode:I

.field public final mOp:I

.field public final mOwnerPid:I

.field public final mPackage:Ljava/lang/String;

.field public final mRequestedMode:I

.field public final mRequesterPid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 53
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    .line 55
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequesterPid:I

    .line 58
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    .line 59
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    .line 60
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->logMetricEvent()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 7

    .line 42
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    .line 44
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequesterPid:I

    .line 46
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    .line 47
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    .line 48
    iput p5, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    .line 49
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->logMetricEvent()V

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 4

    .line 65
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    const-string v1, " pid="

    if-eqz v0, :cond_39

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FIXME invalid op:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mode IN COMMUNICATION timeout"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " for package="

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setMode("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    .line 68
    invoke-static {v2}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") from package="

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequesterPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " selected mode="

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    .line 72
    invoke-static {v1}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by pid="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final logMetricEvent()V
    .registers 4

    .line 88
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    const-string v1, "audio.mode"

    if-eqz v0, :cond_24

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    return-void

    .line 99
    :cond_a
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "inCommunicationTimeout"

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    .line 90
    :cond_24
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "set"

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->REQUESTED_MODE:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    .line 93
    invoke-static {v2}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->MODE:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    .line 94
    invoke-static {v2}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

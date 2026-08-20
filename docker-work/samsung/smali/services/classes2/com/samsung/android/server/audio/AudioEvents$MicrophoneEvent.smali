.class public final Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/AudioEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MicrophoneEvent"
.end annotation


# instance fields
.field public final mIsEnableMute:Z

.field public final mPackage:Ljava/lang/String;

.field public final mRequesterPid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 45
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mPackage:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mRequesterPid:I

    .line 48
    iput-boolean p3, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mIsEnableMute:Z

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMicrophoneMute("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ") from package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mRequesterPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isisEnableMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mIsEnableMute:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

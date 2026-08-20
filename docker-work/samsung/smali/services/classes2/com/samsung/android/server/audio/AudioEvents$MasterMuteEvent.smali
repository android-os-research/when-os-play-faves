.class public final Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/AudioEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MasterMuteEvent"
.end annotation


# instance fields
.field public final mCaller:Ljava/lang/String;

.field public final mFlags:I

.field public final mIsMute:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 66
    iput p1, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mIsMute:I

    .line 67
    iput p2, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mFlags:I

    .line 68
    iput-object p3, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mCaller:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMasterMute(mute:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mIsMute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags:0x"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") from "

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

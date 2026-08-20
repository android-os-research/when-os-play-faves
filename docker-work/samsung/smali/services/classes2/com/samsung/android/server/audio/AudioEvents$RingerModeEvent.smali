.class public final Lcom/samsung/android/server/audio/AudioEvents$RingerModeEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/AudioEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RingerModeEvent"
.end annotation


# instance fields
.field public mCaller:Ljava/lang/String;

.field public mExternal:Z

.field public mRingerMode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    .line 27
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 28
    iput p1, p0, Lcom/samsung/android/server/audio/AudioEvents$RingerModeEvent;->mRingerMode:I

    .line 29
    iput-object p2, p0, Lcom/samsung/android/server/audio/AudioEvents$RingerModeEvent;->mCaller:Ljava/lang/String;

    .line 30
    iput-boolean p3, p0, Lcom/samsung/android/server/audio/AudioEvents$RingerModeEvent;->mExternal:Z

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setRingerMode(mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/server/audio/AudioEvents$RingerModeEvent;->mRingerMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " external:"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/AudioEvents$RingerModeEvent;->mExternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioEvents$RingerModeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

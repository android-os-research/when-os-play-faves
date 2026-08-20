.class public final Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommunicationClientInfo"
.end annotation


# instance fields
.field public final mCb:Landroid/os/IBinder;

.field public final mDevice:Landroid/media/AudioDeviceAttributes;

.field public final mEventSource:Ljava/lang/String;

.field public final mPid:I

.field public final mScoAudioMode:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .registers 6

    .line 1139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mCb:Landroid/os/IBinder;

    .line 1141
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mPid:I

    .line 1142
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 1143
    iput p4, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mScoAudioMode:I

    .line 1144
    iput-object p5, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mEventSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 1156
    :cond_8
    instance-of v2, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    if-nez v2, :cond_d

    return v0

    .line 1160
    :cond_d
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mCb:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mPid:I

    iget p1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mPid:I

    if-ne p0, p1, :cond_20

    move v0, v1

    :cond_20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommunicationClientInfo mCb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mCb:Landroid/os/IBinder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 1168
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mScoAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mScoAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mEventSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mEventSource:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

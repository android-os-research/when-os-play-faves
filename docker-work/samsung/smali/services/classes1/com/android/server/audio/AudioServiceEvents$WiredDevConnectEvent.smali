.class public final Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioServiceEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioServiceEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WiredDevConnectEvent"
.end annotation


# instance fields
.field public final mState:Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V
    .registers 2

    .line 112
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;->mState:Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setWiredDeviceConnectionState("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " type:"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;->mState:Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 120
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;->mState:Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    iget v1, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    invoke-static {v1}, Landroid/media/AudioSystem;->deviceStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " addr:"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;->mState:Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;->mState:Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") from "

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;->mState:Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

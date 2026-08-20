.class public final Lcom/android/server/display/VolumeController;
.super Ljava/lang/Object;
.source "VolumeController.java"


# static fields
.field public static final MAX_VOLUME:I = 0x64

.field public static final MIN_VOLUME:I = 0x0

.field public static final TAG:Ljava/lang/String; = "VolumeController"

.field public static final VOLUME_KEY_DOWN:I = -0x1

.field public static final VOLUME_KEY_UP:I = 0x1

.field public static final VOLUME_MUTE:I = 0x2

.field public static final VOLUME_UNMUTE:I = 0x3


# instance fields
.field public mDisplayController:Lcom/android/server/display/WifiDisplayController;

.field public mDlnaController:Lcom/android/server/display/DlnaController;

.field public final mHandler:Landroid/os/Handler;

.field public mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxVolume:I

.field public mMinVolume:I

.field public mMuted:Z

.field public mVolume:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/VolumeController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMuted(Lcom/android/server/display/VolumeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolume(Lcom/android/server/display/VolumeController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/VolumeController;->mVolume:I

    return p0
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/DlnaController;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p2, p0, Lcom/android/server/display/VolumeController;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    .line 53
    iput-object p3, p0, Lcom/android/server/display/VolumeController;->mDlnaController:Lcom/android/server/display/DlnaController;

    .line 54
    new-instance p1, Lcom/android/server/display/VolumeController$1;

    invoke-direct {p1, p0}, Lcom/android/server/display/VolumeController$1;-><init>(Lcom/android/server/display/VolumeController;)V

    iput-object p1, p0, Lcom/android/server/display/VolumeController;->mKeyMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getMaxVolume()I
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/server/display/VolumeController;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x64

    goto :goto_d

    :cond_b
    iget p0, p0, Lcom/android/server/display/VolumeController;->mMaxVolume:I

    :goto_d
    return p0
.end method

.method public getMinVolume()I
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/server/display/VolumeController;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    goto :goto_c

    :cond_a
    iget p0, p0, Lcom/android/server/display/VolumeController;->mMinVolume:I

    :goto_c
    return p0
.end method

.method public isVolumeMuted()Z
    .registers 1

    .line 95
    iget-boolean p0, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    return p0
.end method

.method public keyEventToString(I)Ljava/lang/String;
    .registers 2

    const/4 p0, -0x1

    if-ne p1, p0, :cond_6

    const-string p0, "VOLUME_KEY_DOWN"

    return-object p0

    :cond_6
    const/4 p0, 0x1

    if-ne p1, p0, :cond_c

    const-string p0, "VOLUME_KEY_UP"

    return-object p0

    :cond_c
    const/4 p0, 0x2

    if-ne p1, p0, :cond_12

    const-string p0, "VOLUME_MUTE"

    return-object p0

    :cond_12
    const/4 p0, 0x3

    if-ne p1, p0, :cond_18

    const-string p0, "VOLUME_UNMUTE"

    return-object p0

    :cond_18
    const-string p0, ""

    return-object p0
.end method

.method public notifyDisplayVolumeEvnet(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "minVol"

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/VolumeController;->mMinVolume:I

    const-string/jumbo v0, "maxVol"

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/VolumeController;->mMaxVolume:I

    const-string v0, "curVol"

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/VolumeController;->mVolume:I

    const-string/jumbo v0, "isMute"

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyDisplayVolumeEvnet: max="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/VolumeController;->mMaxVolume:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", min="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/VolumeController;->mMinVolume:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", vol="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/VolumeController;->mVolume:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", muted="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VolumeController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendVolumeChangedEvent()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/VolumeController$3;

    invoke-direct {v1, p0}, Lcom/android/server/display/VolumeController$3;-><init>(Lcom/android/server/display/VolumeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendVolumeKeyEvent(I)V
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/VolumeController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/VolumeController$2;-><init>(Lcom/android/server/display/VolumeController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVolume(I)V
    .registers 4

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVolume : volume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/VolumeController;->mVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput p1, p0, Lcom/android/server/display/VolumeController;->mVolume:I

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    .line 66
    invoke-virtual {p0}, Lcom/android/server/display/VolumeController;->sendVolumeChangedEvent()V

    return-void
.end method

.method public setVolumeKeyEvent(I)V
    .registers 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDeviceVolumeKeyEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/display/VolumeController;->keyEventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3e

    .line 71
    iget-object v0, p0, Lcom/android/server/display/VolumeController;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 72
    iget-object v0, p0, Lcom/android/server/display/VolumeController;->mKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/VolumeController;->sendVolumeKeyEvent(I)V

    goto :goto_7b

    .line 73
    :cond_3e
    iget-object v0, p0, Lcom/android/server/display/VolumeController;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string/jumbo v0, "vkev"

    const/4 v1, -0x1

    if-ne p1, v1, :cond_56

    .line 75
    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7b

    :cond_56
    const/4 v1, 0x1

    if-ne p1, v1, :cond_63

    .line 77
    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7b

    :cond_63
    const/4 v0, 0x2

    const-string/jumbo v1, "mkev"

    if-ne p1, v0, :cond_71

    .line 79
    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7b

    :cond_71
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7b

    .line 81
    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method public setVolumeMuted(Z)V
    .registers 4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVolumeMuted :  muted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", volume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/VolumeController;->mVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-boolean p1, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/server/display/VolumeController;->sendVolumeChangedEvent()V

    return-void
.end method

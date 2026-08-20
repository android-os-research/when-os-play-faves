.class public Lcom/samsung/android/server/audio/BluetoothHelper;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"


# static fields
.field public static final NAME_STATE_CONNECTED_IMPLICIT:Ljava/lang/String; = "STATE_CONNECTED_IMPLICIT"

.field public static final STATE_CONNECTED_IMPLICIT:I = 0x63

.field public static final TAG:Ljava/lang/String; = "AS.BluetoothHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBtVolumeMonitor deviceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BluetoothHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2b

    const-string p0, "l_bt_type_headset=true"

    .line 54
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_30

    :cond_2b
    const-string p0, "l_bt_type_headset=false"

    .line 57
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method public static setBtVolumeMonitor(Z)V
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBtVolumeMonitor state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BluetoothHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1f

    const-string p0, "l_bt_type_headset=true"

    .line 39
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_24

    :cond_1f
    const-string p0, "l_bt_type_headset=false"

    .line 42
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_24
    return-void
.end method

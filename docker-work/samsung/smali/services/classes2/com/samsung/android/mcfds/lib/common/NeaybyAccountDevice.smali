.class public Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;
.super Ljava/lang/Object;
.source "NeaybyAccountDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice$DeviceType;
    }
.end annotation


# static fields
.field public static final DEVICE_ADDED:I = 0x0

.field public static final DEVICE_REMOVED:I = 0x1

.field public static final DEVICE_UPDATED:I = 0x2

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "DeviceId"

.field public static final KEY_DEVICE_NAME:Ljava/lang/String; = "DeviceName"

.field public static final KEY_DEVICE_SUBTYPE:Ljava/lang/String; = "DeviceSubType"

.field public static final KEY_DEVICE_TYPE:Ljava/lang/String; = "DeviceType"

.field public static final TAG:Ljava/lang/String; = "[MCF_DS_LIB]_MyAccountDevice"


# instance fields
.field public mDeviceId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mDeviceName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mDeviceSubType:I

.field public mDeviceType:I


# direct methods
.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1    # Landroid/os/PersistableBundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceType:I

    const/16 v1, 0xb

    .line 26
    iput v1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceSubType:I

    if-nez p1, :cond_d

    return-void

    :cond_d
    const-string v2, "DeviceId"

    const/4 v3, 0x0

    .line 55
    invoke-virtual {p1, v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    const-string v2, "DeviceName"

    .line 56
    invoke-virtual {p1, v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceName:Ljava/lang/String;

    const-string v2, "DeviceType"

    .line 57
    invoke-virtual {p1, v2, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceType:I

    const-string v0, "DeviceSubType"

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceSubType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceName:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceType:I

    .line 41
    iput p4, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceSubType:I

    return-void
.end method

.method public static createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;
    .registers 2
    .param p0    # Landroid/os/PersistableBundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_8

    .line 71
    new-instance v0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_1c

    .line 136
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    if-eqz p0, :cond_1c

    .line 137
    check-cast p1, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;

    invoke-virtual {p1}, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_1c
    :goto_1c
    return v0
.end method

.method public getBundle()Landroid/os/PersistableBundle;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 84
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    if-nez v1, :cond_b

    const/4 p0, 0x0

    return-object p0

    :cond_b
    const-string v2, "DeviceId"

    .line 89
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_19

    const-string v2, "DeviceName"

    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_19
    iget v1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceType:I

    const-string v2, "DeviceType"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 94
    iget p0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceSubType:I

    const-string v1, "DeviceSubType"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 100
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceSubType()I
    .registers 1

    .line 113
    iget p0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceSubType:I

    return p0
.end method

.method public getDeviceType()I
    .registers 1

    .line 109
    iget p0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceType:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    .line 127
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

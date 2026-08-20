.class public Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;
.super Ljava/lang/Object;
.source "BluetoothDeviceDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceProperty"
.end annotation


# instance fields
.field public final mAddress:Ljava/lang/String;

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mAddress:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_1c

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 91
    :cond_11
    check-cast p1, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 92
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mAddress:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.class public final Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCustomTxPower:I

.field private mInterval:I

.field private mIsConnectable:Z

.field private mTimeout:I

.field private mTxPowerLevel:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mInterval:I

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mTxPowerLevel:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mIsConnectable:Z

    const/16 v0, 0x7530

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mTimeout:I

    const/16 v0, -0x33

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mCustomTxPower:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;
    .registers 9

    new-instance v7, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mInterval:I

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mTxPowerLevel:I

    iget-boolean v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mIsConnectable:Z

    iget v4, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mTimeout:I

    iget v5, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mCustomTxPower:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;-><init>(IIZIILcom/samsung/android/mcf/ble/BleAdvertiseSettings$a;)V

    return-object v7
.end method

.method public setAdvertiseInterval(I)Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
    .registers 5

    if-ltz p1, :cond_8

    const/4 v0, 0x2

    if-gt p1, v0, :cond_8

    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mInterval:I

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConnectable(Z)Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mIsConnectable:Z

    return-object p0
.end method

.method public setCustomTxPower(I)Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
    .registers 5

    const/16 v0, -0x32

    if-lt p1, v0, :cond_b

    const/16 v0, 0xc

    if-gt p1, v0, :cond_b

    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mCustomTxPower:I

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tx power value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimeout(I)Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
    .registers 3

    if-ltz p1, :cond_a

    const v0, 0x5265c00

    if-gt p1, v0, :cond_a

    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mTimeout:I

    return-object p0

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeout is out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTxPowerLevel(I)Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
    .registers 5

    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;->mTxPowerLevel:I

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tx power level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

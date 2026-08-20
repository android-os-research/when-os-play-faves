.class public final Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/BleScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mPhy:I

.field public mScanFilterRssiValue:I

.field public mScanMode:I

.field public mTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanMode:I

    const/16 v0, -0x80

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanFilterRssiValue:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mTimeout:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/ble/BleScanSettings;
    .registers 8

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanMode:I

    if-lez v1, :cond_17

    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mTimeout:I

    if-eqz v0, :cond_e

    const v2, 0x36ee80

    if-gt v0, v2, :cond_e

    goto :goto_17

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "scanMode is too strong to perform a long timeout set scan"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_17
    new-instance v6, Lcom/samsung/android/mcf/ble/BleScanSettings;

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanFilterRssiValue:I

    iget v3, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mTimeout:I

    iget v4, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mPhy:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mcf/ble/BleScanSettings;-><init>(IIIILcom/samsung/android/mcf/ble/BleScanSettings$a;)V

    return-object v6
.end method

.method public setPhy(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/16 v0, 0xff

    if-ne p1, v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid phy value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mPhy:I

    return-object p0
.end method

.method public setScanFilterRssiThreshold(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .registers 4

    const/16 v0, -0x80

    if-lt p1, v0, :cond_b

    const/16 v0, 0x14

    if-gt p1, v0, :cond_b

    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanFilterRssiValue:I

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parameter is out of range of spec, rssi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScanMode(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .registers 4

    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanMode:I

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parameter is out of range of spec, scanMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTimeout(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .registers 3

    if-ltz p1, :cond_a

    const v0, 0x36ee80

    if-gt p1, v0, :cond_a

    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mTimeout:I

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "timeout is out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

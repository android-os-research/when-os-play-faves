.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;
.super Ljava/lang/Object;
.source "IWifiChip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CoexUnsafeChannel"
.end annotation


# instance fields
.field public band:I

.field public channel:I

.field public powerCapDbm:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 362
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->band:I

    .line 366
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->channel:I

    .line 372
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->powerCapDbm:I

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;",
            ">;"
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 427
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 430
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0xc

    int-to-long v5, v3

    .line 432
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 431
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 435
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 437
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;-><init>()V

    mul-int/lit8 v5, v3, 0xc

    int-to-long v5, v5

    .line 438
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 439
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;",
            ">;)V"
        }
    .end annotation

    .line 461
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 463
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 464
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 465
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 466
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0xc

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 468
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;

    mul-int/lit8 v5, v4, 0xc

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 470
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 473
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 382
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;

    if-eq v2, v3, :cond_11

    return v1

    .line 385
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;

    .line 386
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->band:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->band:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 389
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->channel:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->channel:I

    if-eq v2, v3, :cond_21

    return v1

    .line 392
    :cond_21
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->powerCapDbm:I

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->powerCapDbm:I

    if-eq p0, p1, :cond_28

    return v1

    :cond_28
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 400
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->band:I

    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->channel:I

    .line 402
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->powerCapDbm:I

    .line 403
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 400
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 448
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->band:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 449
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->channel:I

    const-wide/16 v0, 0x8

    add-long/2addr p3, v0

    .line 450
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->powerCapDbm:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xc

    .line 421
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 422
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".band = "

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->band:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/WifiBand;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .channel = "

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .powerCapDbm = "

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->powerCapDbm:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 416
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 478
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->band:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 479
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->channel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr p2, v0

    .line 480
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->powerCapDbm:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 454
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 455
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 456
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

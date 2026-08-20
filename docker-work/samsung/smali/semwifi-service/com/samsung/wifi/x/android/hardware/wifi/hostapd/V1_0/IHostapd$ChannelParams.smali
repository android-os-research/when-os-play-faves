.class public final Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;
.super Ljava/lang/Object;
.source "IHostapd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelParams"
.end annotation


# instance fields
.field public acsShouldExcludeDfs:Z

.field public band:I

.field public channel:I

.field public enableAcs:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 353
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    .line 358
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->acsShouldExcludeDfs:Z

    .line 363
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->channel:I

    .line 367
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 428
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 431
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0xc

    int-to-long v5, v3

    .line 433
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 432
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 436
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 438
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;-><init>()V

    mul-int/lit8 v5, v3, 0xc

    int-to-long v5, v5

    .line 439
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 440
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;",
            ">;)V"
        }
    .end annotation

    .line 463
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 465
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 466
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 467
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 468
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0xc

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 470
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    mul-int/lit8 v5, v4, 0xc

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 472
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 475
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

    .line 377
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    if-eq v2, v3, :cond_11

    return v1

    .line 380
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    .line 381
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    if-eq v2, v3, :cond_1a

    return v1

    .line 384
    :cond_1a
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->acsShouldExcludeDfs:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->acsShouldExcludeDfs:Z

    if-eq v2, v3, :cond_21

    return v1

    .line 387
    :cond_21
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->channel:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->channel:I

    if-eq v2, v3, :cond_28

    return v1

    .line 390
    :cond_28
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    if-eq p0, p1, :cond_2f

    return v1

    :cond_2f
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 398
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    .line 399
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->acsShouldExcludeDfs:Z

    .line 400
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->channel:I

    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    .line 402
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 398
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 449
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    .line 450
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->acsShouldExcludeDfs:Z

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 451
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->channel:I

    const-wide/16 v0, 0x8

    add-long/2addr p3, v0

    .line 452
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xc

    .line 422
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 423
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".enableAcs = "

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .acsShouldExcludeDfs = "

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->acsShouldExcludeDfs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .channel = "

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .band = "

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$Band;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 417
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 480
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    .line 481
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->acsShouldExcludeDfs:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 482
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->channel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr p2, v0

    .line 483
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 456
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 457
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 458
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

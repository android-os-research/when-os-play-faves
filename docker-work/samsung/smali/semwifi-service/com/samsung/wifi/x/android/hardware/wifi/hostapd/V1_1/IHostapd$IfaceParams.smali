.class public final Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;
.super Ljava/lang/Object;
.source "IHostapd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IfaceParams"
.end annotation


# instance fields
.field public V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

.field public channelParams:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    .line 344
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->channelParams:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 393
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 396
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 398
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 397
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 401
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 403
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;-><init>()V

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    .line 404
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 405
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;",
            ">;)V"
        }
    .end annotation

    .line 426
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 428
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 429
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 430
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 431
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 433
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;

    mul-int/lit8 v5, v4, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 435
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 438
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

    .line 354
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;

    if-eq v2, v3, :cond_11

    return v1

    .line 357
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;

    .line 358
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 361
    :cond_1e
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->channelParams:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->channelParams:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    return v1

    :cond_29
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 369
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    .line 370
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->channelParams:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;

    .line 371
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 369
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    .line 414
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 415
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->channelParams:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;

    const-wide/16 v0, 0x20

    add-long/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x30

    .line 387
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 388
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".V1_0 = "

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .channelParams = "

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->channelParams:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 382
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 443
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 444
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->channelParams:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;

    const-wide/16 v0, 0x20

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 419
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 420
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 421
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

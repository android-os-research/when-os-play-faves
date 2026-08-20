.class public final Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;
.super Ljava/lang/Object;
.source "IHostapd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelParams"
.end annotation


# instance fields
.field public acsChannelRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$AcsChannelRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->acsChannelRanges:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 259
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 262
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 264
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 263
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 267
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 269
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;-><init>()V

    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    .line 270
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 271
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;",
            ">;)V"
        }
    .end annotation

    .line 303
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 305
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 306
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 307
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 308
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 310
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;

    mul-int/lit8 v5, v4, 0x10

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 312
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 315
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

    .line 226
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;

    if-eq v2, v3, :cond_11

    return v1

    .line 229
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;

    .line 230
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->acsChannelRanges:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->acsChannelRanges:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v1

    :cond_1e
    return v0
.end method

.method public final hashCode()I
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 238
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->acsChannelRanges:Ljava/util/ArrayList;

    .line 239
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 238
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 20

    move-object v0, p0

    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    const-wide/16 v5, 0x8

    add-long/2addr v5, v3

    move-object/from16 v7, p2

    .line 281
    invoke-virtual {v7, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    mul-int/lit8 v6, v5, 0x8

    int-to-long v8, v6

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v3, v1

    const/4 v14, 0x1

    move-object/from16 v7, p1

    .line 282
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 286
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->acsChannelRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v5, :cond_3b

    .line 288
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$AcsChannelRange;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$AcsChannelRange;-><init>()V

    mul-int/lit8 v4, v2, 0x8

    int-to-long v6, v4

    move-object/from16 v4, p1

    .line 289
    invoke-virtual {v3, v4, v1, v6, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$AcsChannelRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 290
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->acsChannelRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_3b
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x10

    .line 253
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 254
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".acsChannelRanges = "

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->acsChannelRanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    .line 321
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->acsChannelRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    add-long/2addr p2, v1

    const-wide/16 v3, 0x8

    add-long/2addr v3, p2

    .line 322
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 323
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 324
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x8

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v5, v0, :cond_30

    .line 326
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->acsChannelRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$AcsChannelRange;

    mul-int/lit8 v6, v5, 0x8

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$AcsChannelRange;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_30
    add-long/2addr p2, v1

    .line 328
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 296
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 297
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$ChannelParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 298
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

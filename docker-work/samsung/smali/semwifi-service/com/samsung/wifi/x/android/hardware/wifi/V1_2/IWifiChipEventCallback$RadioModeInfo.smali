.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;
.super Ljava/lang/Object;
.source "IWifiChipEventCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RadioModeInfo"
.end annotation


# instance fields
.field public bandInfo:I

.field public ifaceInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public radioId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->radioId:I

    .line 230
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 289
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 292
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 294
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 293
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 297
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 299
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;-><init>()V

    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    .line 300
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 301
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;",
            ">;)V"
        }
    .end annotation

    .line 335
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 337
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 338
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 339
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 340
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 342
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;

    mul-int/lit8 v5, v4, 0x18

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 344
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 347
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

    .line 244
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;

    if-eq v2, v3, :cond_11

    return v1

    .line 247
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;

    .line 248
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->radioId:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->radioId:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 251
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    if-eq v2, v3, :cond_21

    return v1

    .line 254
    :cond_21
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    return v1

    :cond_2c
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 262
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->radioId:I

    .line 263
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    .line 264
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    .line 265
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 262
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 310
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->radioId:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 311
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v4, v6

    .line 313
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x18

    int-to-long v9, v5

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 314
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 318
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v4, :cond_4e

    .line 320
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;-><init>()V

    mul-int/lit8 v5, v2, 0x18

    int-to-long v5, v5

    move-object/from16 v7, p1

    .line 321
    invoke-virtual {v3, v7, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 322
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_4e
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x18

    .line 283
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 284
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".radioId = "

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->radioId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .bandInfo = "

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiBand;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .ifaceInfos = "

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 278
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 352
    iget v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->radioId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    .line 353
    iget v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->bandInfo:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 355
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x8

    add-long/2addr p2, v3

    add-long/2addr v3, p2

    .line 356
    invoke-virtual {p1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 357
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 358
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_2c
    if-ge v5, v2, :cond_3f

    .line 360
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->ifaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;

    mul-int/lit8 v6, v5, 0x18

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_3f
    add-long/2addr p2, v0

    .line 362
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 328
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 329
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$RadioModeInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 330
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

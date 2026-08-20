.class public final Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;
.super Ljava/lang/Object;
.source "IHostapd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HwModeParams"
.end annotation


# instance fields
.field public enable6GhzBand:Z

.field public enable80211AX:Z

.field public enableHeMultiUserBeamformer:Z

.field public enableHeSingleUserBeamformee:Z

.field public enableHeSingleUserBeamformer:Z

.field public enableHeTargetWakeTime:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    .line 215
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    .line 220
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    .line 225
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    .line 230
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    .line 235
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;",
            ">;"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 308
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 311
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x6

    int-to-long v5, v3

    .line 313
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 312
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 318
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;-><init>()V

    mul-int/lit8 v5, v3, 0x6

    int-to-long v5, v5

    .line 319
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 320
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;",
            ">;)V"
        }
    .end annotation

    .line 345
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 347
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 348
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 349
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 350
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x6

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 352
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;

    mul-int/lit8 v5, v4, 0x6

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 354
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 357
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

    .line 245
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;

    if-eq v2, v3, :cond_11

    return v1

    .line 248
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;

    .line 249
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    if-eq v2, v3, :cond_1a

    return v1

    .line 252
    :cond_1a
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    if-eq v2, v3, :cond_21

    return v1

    .line 255
    :cond_21
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    if-eq v2, v3, :cond_28

    return v1

    .line 258
    :cond_28
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    if-eq v2, v3, :cond_2f

    return v1

    .line 261
    :cond_2f
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    if-eq v2, v3, :cond_36

    return v1

    .line 264
    :cond_36
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

    iget-boolean p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

    if-eq p0, p1, :cond_3d

    return v1

    :cond_3d
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 272
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    .line 273
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    .line 274
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    .line 275
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    .line 276
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    .line 277
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

    .line 278
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    .line 272
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 329
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    .line 330
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    .line 331
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    const-wide/16 v0, 0x3

    add-long/2addr v0, p3

    .line 332
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 333
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    const-wide/16 v0, 0x5

    add-long/2addr p3, v0

    .line 334
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x6

    .line 302
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 303
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".enable80211AX = "

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .enable6GhzBand = "

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .enableHeSingleUserBeamformer = "

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .enableHeSingleUserBeamformee = "

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .enableHeMultiUserBeamformer = "

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .enableHeTargetWakeTime = "

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 297
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 362
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable80211AX:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    .line 363
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enable6GhzBand:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    .line 364
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformer:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x3

    add-long/2addr v0, p2

    .line 365
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeSingleUserBeamformee:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 366
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeMultiUserBeamformer:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x5

    add-long/2addr p2, v0

    .line 367
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->enableHeTargetWakeTime:Z

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putBool(JZ)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 338
    new-instance v0, Landroid/os/HwBlob;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 339
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$HwModeParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 340
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

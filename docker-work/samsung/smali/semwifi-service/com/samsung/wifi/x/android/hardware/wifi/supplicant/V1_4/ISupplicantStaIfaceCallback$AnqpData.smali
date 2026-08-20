.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnqpData"
.end annotation


# instance fields
.field public V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

.field public venueUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->venueUrl:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 222
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 225
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 227
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 226
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 230
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 232
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;-><init>()V

    mul-int/lit8 v5, v3, 0x70

    int-to-long v5, v5

    .line 233
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 234
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;",
            ">;)V"
        }
    .end annotation

    .line 267
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 269
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 270
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 271
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 272
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x70

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 274
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;

    mul-int/lit8 v5, v4, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 276
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 279
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

    .line 183
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;

    if-eq v2, v3, :cond_11

    return v1

    .line 186
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;

    .line 187
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 190
    :cond_1e
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->venueUrl:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->venueUrl:Ljava/util/ArrayList;

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

    .line 198
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    .line 199
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->venueUrl:Ljava/util/ArrayList;

    .line 200
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 198
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p2

    .line 243
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    move-object/from16 v7, p1

    invoke-virtual {v2, v7, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0x60

    add-long v5, p3, v5

    const-wide/16 v8, 0x8

    add-long/2addr v8, v5

    .line 245
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v8, v2, 0x1

    int-to-long v8, v8

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v5, v3

    const/4 v14, 0x1

    .line 246
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 250
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->venueUrl:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v2, :cond_42

    mul-int/lit8 v4, v3, 0x1

    int-to-long v4, v4

    .line 253
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    .line 254
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->venueUrl:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_42
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x70

    .line 216
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 217
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".V1_0 = "

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .venueUrl = "

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->venueUrl:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    .line 284
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 286
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->venueUrl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v3, 0x60

    add-long/2addr p2, v3

    const-wide/16 v3, 0x8

    add-long/2addr v3, p2

    .line 287
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 288
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 289
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x1

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_26
    if-ge v5, v0, :cond_3d

    mul-int/lit8 v4, v5, 0x1

    int-to-long v6, v4

    .line 291
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->venueUrl:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v3, v6, v7, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_3d
    add-long/2addr p2, v1

    .line 293
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 260
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 261
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 262
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

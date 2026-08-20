.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;
.super Ljava/lang/Object;
.source "StaPeerInfo.java"


# instance fields
.field public chanUtil:S

.field public rateStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;",
            ">;"
        }
    .end annotation
.end field

.field public staCount:S


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    .line 14
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 73
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 78
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 77
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 83
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;-><init>()V

    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    .line 84
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 85
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;",
            ">;)V"
        }
    .end annotation

    .line 119
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 122
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 124
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 126
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;

    mul-int/lit8 v5, v4, 0x18

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 128
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 131
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

    .line 28
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;

    if-eq v2, v3, :cond_11

    return v1

    .line 31
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;

    .line 32
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    if-eq v2, v3, :cond_1a

    return v1

    .line 35
    :cond_1a
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    if-eq v2, v3, :cond_21

    return v1

    .line 38
    :cond_21
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

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

    .line 46
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    .line 47
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    .line 48
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    .line 49
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 46
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

    .line 94
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v4

    iput-short v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    const-wide/16 v4, 0x2

    add-long v4, p3, v4

    .line 95
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v4

    iput-short v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v4, v6

    .line 97
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x24

    int-to-long v9, v5

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 98
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 102
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v4, :cond_4e

    .line 104
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;-><init>()V

    mul-int/lit8 v5, v2, 0x24

    int-to-long v5, v5

    move-object/from16 v7, p1

    .line 105
    invoke-virtual {v3, v7, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 106
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_4e
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x18

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 68
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".staCount = "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .chanUtil = "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .rateStats = "

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 136
    iget-short v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->staCount:S

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v2, 0x2

    add-long/2addr v2, p2

    .line 137
    iget-short v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->chanUtil:S

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 139
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x8

    add-long/2addr p2, v3

    add-long/2addr v3, p2

    .line 140
    invoke-virtual {p1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 141
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 142
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x24

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_2c
    if-ge v5, v2, :cond_3f

    .line 144
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->rateStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;

    mul-int/lit8 v6, v5, 0x24

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaRateStat;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_3f
    add-long/2addr p2, v0

    .line 146
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 112
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 113
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

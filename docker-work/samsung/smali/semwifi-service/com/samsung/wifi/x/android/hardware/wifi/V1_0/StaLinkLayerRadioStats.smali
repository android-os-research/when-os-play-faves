.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;
.super Ljava/lang/Object;
.source "StaLinkLayerRadioStats.java"


# instance fields
.field public onTimeInMs:I

.field public onTimeInMsForScan:I

.field public rxTimeInMs:I

.field public txTimeInMs:I

.field public txTimeInMsPerLevel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 20
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    .line 24
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 91
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 94
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 96
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 95
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 101
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;-><init>()V

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    .line 102
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 103
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;",
            ">;)V"
        }
    .end annotation

    .line 139
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 142
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 143
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 144
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 146
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 148
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 151
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

    .line 34
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    if-eq v2, v3, :cond_11

    return v1

    .line 37
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 38
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 41
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    if-eq v2, v3, :cond_21

    return v1

    .line 44
    :cond_21
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    .line 47
    :cond_2c
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    if-eq v2, v3, :cond_33

    return v1

    .line 50
    :cond_33
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    if-eq p0, p1, :cond_3a

    return v1

    :cond_3a
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    .line 61
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 58
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

    .line 112
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 113
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v4, v6

    .line 115
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 116
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 120
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v4, :cond_4c

    mul-int/lit8 v5, v3, 0x4

    int-to-long v5, v5

    .line 123
    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    .line 124
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_4c
    const-wide/16 v2, 0x18

    add-long v2, p3, v2

    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    const-wide/16 v2, 0x1c

    add-long v2, p3, v2

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x20

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 86
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onTimeInMs = "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .txTimeInMs = "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .txTimeInMsPerLevel = "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .rxTimeInMs = "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .onTimeInMsForScan = "

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 156
    iget v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    .line 157
    iget v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 159
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x8

    add-long v5, p2, v3

    add-long/2addr v3, v5

    .line 160
    invoke-virtual {p1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, v5

    const/4 v7, 0x0

    .line 161
    invoke-virtual {p1, v3, v4, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 162
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_2d
    if-ge v7, v2, :cond_44

    mul-int/lit8 v4, v7, 0x4

    int-to-long v8, v4

    .line 164
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v8, v9, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_44
    add-long/2addr v5, v0

    .line 166
    invoke-virtual {p1, v5, v6, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 168
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x1c

    add-long/2addr p2, v0

    .line 169
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 132
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 133
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 134
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

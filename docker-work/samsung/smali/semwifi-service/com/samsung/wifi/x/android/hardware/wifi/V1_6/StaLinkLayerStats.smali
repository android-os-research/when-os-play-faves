.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;
.super Ljava/lang/Object;
.source "StaLinkLayerStats.java"


# instance fields
.field public iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

.field public radios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;",
            ">;"
        }
    .end annotation
.end field

.field public timeStampInMs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->timeStampInMs:J

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 67
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xf8

    int-to-long v5, v3

    .line 72
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 71
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 77
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;-><init>()V

    mul-int/lit16 v5, v3, 0xf8

    int-to-long v5, v5

    .line 78
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;",
            ">;)V"
        }
    .end annotation

    .line 113
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 116
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 117
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 118
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xf8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 120
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;

    mul-int/lit16 v5, v4, 0xf8

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 122
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 125
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

    .line 22
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;

    if-eq v2, v3, :cond_11

    return v1

    .line 25
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;

    .line 26
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 29
    :cond_1e
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return v1

    .line 32
    :cond_29
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->timeStampInMs:J

    iget-wide p0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->timeStampInMs:J

    cmp-long p0, v2, p0

    if-eqz p0, :cond_32

    return v1

    :cond_32
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    .line 41
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    .line 42
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->timeStampInMs:J

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 40
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 88
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v9, v10, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v4, 0xe0

    add-long v4, p3, v4

    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    .line 90
    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v1, v11, 0x50

    int-to-long v6, v1

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v4, v2

    const/4 v8, 0x1

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide v4, v12

    move-wide v6, v14

    .line 91
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 95
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v11, :cond_48

    .line 97
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;-><init>()V

    mul-int/lit8 v4, v2, 0x50

    int-to-long v4, v4

    .line 98
    invoke-virtual {v3, v9, v1, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 99
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_48
    const-wide/16 v1, 0xf0

    add-long v1, p3, v1

    .line 102
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->timeStampInMs:J

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xf8

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 62
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".iface = "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .radios = "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .timeStampInMs = "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->timeStampInMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    .line 130
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 132
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v3, 0xe0

    add-long/2addr v3, p2

    const-wide/16 v5, 0x8

    add-long/2addr v5, v3

    .line 133
    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    add-long/2addr v5, v3

    const/4 v7, 0x0

    .line 134
    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 135
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x50

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    :goto_26
    if-ge v7, v0, :cond_39

    .line 137
    iget-object v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;

    mul-int/lit8 v8, v7, 0x50

    int-to-long v8, v8

    invoke-virtual {v6, v5, v8, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_39
    add-long/2addr v3, v1

    .line 139
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v0, 0xf0

    add-long/2addr p2, v0

    .line 141
    iget-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->timeStampInMs:J

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/os/HwBlob;->putInt64(JJ)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 106
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xf8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 107
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

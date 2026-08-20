.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;
.super Ljava/lang/Object;
.source "StaBackgroundScanCapabilities.java"


# instance fields
.field public maxApCachePerScan:I

.field public maxBuckets:I

.field public maxCacheSize:I

.field public maxReportingThreshold:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxCacheSize:I

    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxBuckets:I

    .line 16
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxApCachePerScan:I

    .line 21
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxReportingThreshold:I

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 82
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 87
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 86
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 92
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;-><init>()V

    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    .line 93
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 94
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;",
            ">;)V"
        }
    .end annotation

    .line 117
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 120
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 121
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 122
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 124
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;

    mul-int/lit8 v5, v4, 0x10

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 126
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 129
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

    .line 31
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;

    if-eq v2, v3, :cond_11

    return v1

    .line 34
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;

    .line 35
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxCacheSize:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxCacheSize:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 38
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxBuckets:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxBuckets:I

    if-eq v2, v3, :cond_21

    return v1

    .line 41
    :cond_21
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxApCachePerScan:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxApCachePerScan:I

    if-eq v2, v3, :cond_28

    return v1

    .line 44
    :cond_28
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxReportingThreshold:I

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxReportingThreshold:I

    if-eq p0, p1, :cond_2f

    return v1

    :cond_2f
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxCacheSize:I

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxBuckets:I

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxApCachePerScan:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxReportingThreshold:I

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 52
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 103
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxCacheSize:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 104
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxBuckets:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 105
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxApCachePerScan:I

    const-wide/16 v0, 0xc

    add-long/2addr p3, v0

    .line 106
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxReportingThreshold:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x10

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 77
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".maxCacheSize = "

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxCacheSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxBuckets = "

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxBuckets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxApCachePerScan = "

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxApCachePerScan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxReportingThreshold = "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxReportingThreshold:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 134
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxCacheSize:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 135
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxBuckets:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 136
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxApCachePerScan:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr p2, v0

    .line 137
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxReportingThreshold:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 110
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 111
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;
.super Ljava/lang/Object;
.source "StaBackgroundScanBucketParameters.java"


# instance fields
.field public band:I

.field public bucketIdx:I

.field public eventReportScheme:I

.field public exponentialBase:I

.field public exponentialMaxPeriodInMs:I

.field public exponentialStepCount:I

.field public frequencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public periodInMs:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->bucketIdx:I

    .line 14
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->band:I

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->frequencies:Ljava/util/ArrayList;

    .line 25
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->periodInMs:I

    .line 38
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialMaxPeriodInMs:I

    .line 42
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialBase:I

    .line 47
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialStepCount:I

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 132
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 135
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 137
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 136
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 142
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;-><init>()V

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    .line 143
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 144
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;",
            ">;)V"
        }
    .end annotation

    .line 183
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 185
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 186
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 187
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 188
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 190
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;

    mul-int/lit8 v5, v4, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 192
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 195
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

    .line 57
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;

    if-eq v2, v3, :cond_11

    return v1

    .line 60
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;

    .line 61
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->bucketIdx:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->bucketIdx:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 64
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->band:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->band:I

    if-eq v2, v3, :cond_21

    return v1

    .line 67
    :cond_21
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->frequencies:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->frequencies:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    .line 70
    :cond_2c
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->periodInMs:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->periodInMs:I

    if-eq v2, v3, :cond_33

    return v1

    .line 73
    :cond_33
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->eventReportScheme:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->eventReportScheme:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    return v1

    .line 76
    :cond_46
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialMaxPeriodInMs:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialMaxPeriodInMs:I

    if-eq v2, v3, :cond_4d

    return v1

    .line 79
    :cond_4d
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialBase:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialBase:I

    if-eq v2, v3, :cond_54

    return v1

    .line 82
    :cond_54
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialStepCount:I

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialStepCount:I

    if-eq p0, p1, :cond_5b

    return v1

    :cond_5b
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->bucketIdx:I

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->band:I

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->frequencies:Ljava/util/ArrayList;

    .line 93
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->periodInMs:I

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->eventReportScheme:I

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialMaxPeriodInMs:I

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialBase:I

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialStepCount:I

    .line 98
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 90
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

    .line 153
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->bucketIdx:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 154
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->band:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v4, v6

    .line 156
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 157
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 161
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->frequencies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v4, :cond_4c

    mul-int/lit8 v5, v3, 0x4

    int-to-long v5, v5

    .line 164
    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    .line 165
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->frequencies:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_4c
    const-wide/16 v2, 0x18

    add-long v2, p3, v2

    .line 168
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->periodInMs:I

    const-wide/16 v2, 0x1c

    add-long v2, p3, v2

    .line 169
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->eventReportScheme:I

    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialMaxPeriodInMs:I

    const-wide/16 v2, 0x24

    add-long v2, p3, v2

    .line 171
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialBase:I

    const-wide/16 v2, 0x28

    add-long v2, p3, v2

    .line 172
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialStepCount:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x30

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 127
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bucketIdx = "

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->bucketIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .band = "

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->band:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiBand;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .frequencies = "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->frequencies:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .periodInMs = "

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->periodInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .eventReportScheme = "

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->eventReportScheme:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketEventReportSchemeMask;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .exponentialMaxPeriodInMs = "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialMaxPeriodInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .exponentialBase = "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialBase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .exponentialStepCount = "

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialStepCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 200
    iget v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->bucketIdx:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    .line 201
    iget v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->band:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 203
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->frequencies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x8

    add-long v5, p2, v3

    add-long/2addr v3, v5

    .line 204
    invoke-virtual {p1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, v5

    const/4 v7, 0x0

    .line 205
    invoke-virtual {p1, v3, v4, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 206
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_2d
    if-ge v7, v2, :cond_44

    mul-int/lit8 v4, v7, 0x4

    int-to-long v8, v4

    .line 208
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->frequencies:Ljava/util/ArrayList;

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

    .line 210
    invoke-virtual {p1, v5, v6, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 212
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->periodInMs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    .line 213
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->eventReportScheme:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 214
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialMaxPeriodInMs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    .line 215
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialBase:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x28

    add-long/2addr p2, v0

    .line 216
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialStepCount:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 176
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 177
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 178
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

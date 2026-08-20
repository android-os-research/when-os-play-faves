.class public final Landroid/hardware/audio/common/V2_0/Uuid;
.super Ljava/lang/Object;
.source "Uuid.java"


# instance fields
.field public node:[B

.field public timeLow:I

.field public timeMid:S

.field public variantAndClockSeqHigh:S

.field public versionAndTimeHigh:S


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 6
    iput-short v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 7
    iput-short v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 8
    iput-short v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 9
    iput-object v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

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
            "Landroid/hardware/audio/common/V2_0/Uuid;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 76
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 81
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 80
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 86
    new-instance v4, Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-direct {v4}, Landroid/hardware/audio/common/V2_0/Uuid;-><init>()V

    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    .line 87
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/audio/common/V2_0/Uuid;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 88
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
            "Landroid/hardware/audio/common/V2_0/Uuid;",
            ">;)V"
        }
    .end annotation

    .line 116
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 119
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 120
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 121
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 123
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/audio/common/V2_0/Uuid;

    mul-int/lit8 v5, v4, 0x10

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/audio/common/V2_0/Uuid;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 125
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 128
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

    .line 19
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/audio/common/V2_0/Uuid;

    if-eq v2, v3, :cond_11

    return v1

    .line 22
    :cond_11
    check-cast p1, Landroid/hardware/audio/common/V2_0/Uuid;

    .line 23
    iget v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 26
    :cond_1a
    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    iget-short v3, p1, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    if-eq v2, v3, :cond_21

    return v1

    .line 29
    :cond_21
    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    iget-short v3, p1, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    if-eq v2, v3, :cond_28

    return v1

    .line 32
    :cond_28
    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    iget-short v3, p1, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    if-eq v2, v3, :cond_2f

    return v1

    .line 35
    :cond_2f
    iget-object p0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    iget-object p1, p1, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    return v1

    :cond_3a
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    iget v1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 45
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 46
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 47
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    .line 48
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 43
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 97
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 98
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    const-wide/16 v0, 0x6

    add-long/2addr v0, p3

    .line 99
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 100
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    const-wide/16 v0, 0xa

    add-long/2addr p3, v0

    .line 103
    iget-object p0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    const/4 p1, 0x6

    invoke-virtual {p2, p3, p4, p0, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x10

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 71
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/audio/common/V2_0/Uuid;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".timeLow = "

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .timeMid = "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-short v1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .versionAndTimeHigh = "

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-short v1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .variantAndClockSeqHigh = "

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-short v1, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .node = "

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object p0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 133
    iget v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 134
    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v0, 0x6

    add-long/2addr v0, p2

    .line 135
    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 136
    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v0, 0xa

    add-long/2addr p2, v0

    .line 139
    iget-object p0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    if-eqz p0, :cond_2f

    .line 141
    array-length v0, p0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2f

    .line 145
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    return-void

    .line 142
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 109
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 110
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/audio/common/V2_0/Uuid;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

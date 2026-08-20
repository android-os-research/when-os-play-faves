.class public final Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;
.super Ljava/lang/Object;
.source "AudioOffloadInfo.java"


# instance fields
.field public bitRatePerSecond:I

.field public bitWidth:I

.field public bufferSize:I

.field public channelMask:I

.field public durationMicroseconds:J

.field public format:I

.field public hasVideo:Z

.field public isStreaming:Z

.field public sampleRateHz:I

.field public streamType:I

.field public usage:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    .line 6
    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    .line 7
    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    .line 8
    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    .line 9
    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    .line 11
    iput-boolean v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    .line 12
    iput-boolean v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    .line 13
    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    .line 14
    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    .line 15
    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

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
            "Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 118
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 121
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 123
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 122
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 128
    new-instance v4, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    invoke-direct {v4}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;-><init>()V

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    .line 129
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 130
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
            "Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;",
            ">;)V"
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 162
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 163
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 164
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 165
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 167
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    mul-int/lit8 v5, v4, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 169
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 172
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 25
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    if-eq v2, v3, :cond_11

    return v1

    .line 28
    :cond_11
    check-cast p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    .line 29
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 32
    :cond_1a
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    if-eq v2, v3, :cond_21

    return v1

    .line 35
    :cond_21
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    if-eq v2, v3, :cond_28

    return v1

    .line 38
    :cond_28
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    if-eq v2, v3, :cond_2f

    return v1

    .line 41
    :cond_2f
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    if-eq v2, v3, :cond_36

    return v1

    .line 44
    :cond_36
    iget-wide v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    iget-wide v4, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3f

    return v1

    .line 47
    :cond_3f
    iget-boolean v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    iget-boolean v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    if-eq v2, v3, :cond_46

    return v1

    .line 50
    :cond_46
    iget-boolean v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    iget-boolean v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    if-eq v2, v3, :cond_4d

    return v1

    .line 53
    :cond_4d
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    if-eq v2, v3, :cond_54

    return v1

    .line 56
    :cond_54
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    iget v3, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    if-eq v2, v3, :cond_5b

    return v1

    .line 59
    :cond_5b
    iget p0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    iget p1, p1, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    if-eq p0, p1, :cond_62

    return v1

    :cond_62
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    .line 73
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget p0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xa

    aput-object p0, v0, v1

    .line 67
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 139
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 140
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 141
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    .line 142
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 143
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    .line 144
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    .line 145
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    const-wide/16 v0, 0x21

    add-long/2addr v0, p3

    .line 146
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    .line 147
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    .line 148
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    const-wide/16 v0, 0x2c

    add-long/2addr p3, v0

    .line 149
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x30

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 113
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sampleRateHz = "

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .channelMask = "

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .format = "

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioFormat;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .streamType = "

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioStreamType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .bitRatePerSecond = "

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .durationMicroseconds = "

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-wide v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .hasVideo = "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-boolean v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .isStreaming = "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-boolean v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .bitWidth = "

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .bufferSize = "

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .usage = "

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget p0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioUsage;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 177
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 178
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 179
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 180
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 181
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 182
    iget-wide v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 183
    iget-boolean v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x21

    add-long/2addr v0, p2

    .line 184
    iget-boolean v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    .line 185
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 186
    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x2c

    add-long/2addr p2, v0

    .line 187
    iget p0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 153
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 154
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

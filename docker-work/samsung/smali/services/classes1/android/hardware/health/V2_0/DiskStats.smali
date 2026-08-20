.class public final Landroid/hardware/health/V2_0/DiskStats;
.super Ljava/lang/Object;
.source "DiskStats.java"


# instance fields
.field public attr:Landroid/hardware/health/V2_0/StorageAttribute;

.field public ioInFlight:J

.field public ioInQueue:J

.field public ioTicks:J

.field public readMerges:J

.field public readSectors:J

.field public readTicks:J

.field public reads:J

.field public writeMerges:J

.field public writeSectors:J

.field public writeTicks:J

.field public writes:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    .line 12
    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    .line 16
    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    .line 20
    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    .line 24
    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    .line 28
    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    .line 32
    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    .line 36
    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    .line 40
    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    .line 44
    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    .line 48
    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    .line 52
    new-instance v0, Landroid/hardware/health/V2_0/StorageAttribute;

    invoke-direct {v0}, Landroid/hardware/health/V2_0/StorageAttribute;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V2_0/DiskStats;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

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
            "Landroid/hardware/health/V2_0/DiskStats;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 161
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 164
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 166
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 165
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 171
    new-instance v4, Landroid/hardware/health/V2_0/DiskStats;

    invoke-direct {v4}, Landroid/hardware/health/V2_0/DiskStats;-><init>()V

    mul-int/lit8 v5, v3, 0x70

    int-to-long v5, v5

    .line 172
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/health/V2_0/DiskStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 173
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
            "Landroid/hardware/health/V2_0/DiskStats;",
            ">;)V"
        }
    .end annotation

    .line 204
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 206
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 207
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 208
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 209
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x70

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 211
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/health/V2_0/DiskStats;

    mul-int/lit8 v5, v4, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/health/V2_0/DiskStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 213
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 216
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

    .line 62
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/health/V2_0/DiskStats;

    if-eq v2, v3, :cond_11

    return v1

    .line 65
    :cond_11
    check-cast p1, Landroid/hardware/health/V2_0/DiskStats;

    .line 66
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    return v1

    .line 69
    :cond_1c
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_25

    return v1

    .line 72
    :cond_25
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2e

    return v1

    .line 75
    :cond_2e
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_37

    return v1

    .line 78
    :cond_37
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_40

    return v1

    .line 81
    :cond_40
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_49

    return v1

    .line 84
    :cond_49
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_52

    return v1

    .line 87
    :cond_52
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5b

    return v1

    .line 90
    :cond_5b
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_64

    return v1

    .line 93
    :cond_64
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6d

    return v1

    .line 96
    :cond_6d
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    iget-wide v4, p1, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_76

    return v1

    .line 99
    :cond_76
    iget-object p0, p0, Landroid/hardware/health/V2_0/DiskStats;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    iget-object p1, p1, Landroid/hardware/health/V2_0/DiskStats;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_81

    return v1

    :cond_81
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 107
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    .line 108
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    .line 109
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    .line 110
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    .line 111
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    .line 112
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    .line 113
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    .line 114
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    .line 115
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    .line 116
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    .line 117
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    .line 118
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/health/V2_0/DiskStats;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    .line 119
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xb

    aput-object p0, v0, v1

    .line 107
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 182
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 183
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 184
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    .line 185
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    .line 186
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    .line 187
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    .line 188
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    const-wide/16 v0, 0x38

    add-long/2addr v0, p3

    .line 189
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    const-wide/16 v0, 0x40

    add-long/2addr v0, p3

    .line 190
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    const-wide/16 v0, 0x48

    add-long/2addr v0, p3

    .line 191
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    const-wide/16 v0, 0x50

    add-long/2addr v0, p3

    .line 192
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    .line 193
    iget-object p0, p0, Landroid/hardware/health/V2_0/DiskStats;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    const-wide/16 v0, 0x58

    add-long/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/health/V2_0/StorageAttribute;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x70

    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 156
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/health/V2_0/DiskStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".reads = "

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .readMerges = "

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .readSectors = "

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .readTicks = "

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .writes = "

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .writeMerges = "

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .writeSectors = "

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .writeTicks = "

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .ioInFlight = "

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .ioTicks = "

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .ioInQueue = "

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-wide v1, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .attr = "

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object p0, p0, Landroid/hardware/health/V2_0/DiskStats;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 221
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 222
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 223
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 224
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 225
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 226
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    .line 227
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    .line 228
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    .line 229
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    .line 230
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    .line 231
    iget-wide v2, p0, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 232
    iget-object p0, p0, Landroid/hardware/health/V2_0/DiskStats;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    const-wide/16 v0, 0x58

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/health/V2_0/StorageAttribute;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 197
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 198
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/health/V2_0/DiskStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

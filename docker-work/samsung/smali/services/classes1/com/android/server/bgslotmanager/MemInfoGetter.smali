.class public Lcom/android/server/bgslotmanager/MemInfoGetter;
.super Ljava/lang/Object;
.source "MemInfoGetter.java"


# instance fields
.field public mInfoInner:Lcom/android/internal/util/MemInfoReader;

.field public final mTotalMemMb:J

.field public final memoryMBToGBPool:[[I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 9
    fill-array-data v2, :array_58

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_60

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_70

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_78

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_80

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_88

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_90

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->memoryMBToGBPool:[[I

    .line 21
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    .line 22
    invoke-static {}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getTotalMemoryMB()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mTotalMemMb:J

    return-void

    nop

    :array_58
    .array-data 4
        0x3000
        0x10
    .end array-data

    :array_60
    .array-data 4
        0x2000
        0xc
    .end array-data

    :array_68
    .array-data 4
        0x1800
        0x8
    .end array-data

    :array_70
    .array-data 4
        0x1000
        0x6
    .end array-data

    :array_78
    .array-data 4
        0xc00
        0x4
    .end array-data

    :array_80
    .array-data 4
        0x800
        0x3
    .end array-data

    :array_88
    .array-data 4
        0x400
        0x2
    .end array-data

    :array_90
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static getTotalMemoryMB()J
    .registers 4

    .line 26
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getAvailableMemLegacy()J
    .registers 9

    .line 39
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/MemInfoGetter;->readLightMemInfo()V

    .line 40
    iget-object v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v0

    .line 41
    iget-object v2, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v2

    .line 42
    iget-object v4, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getRbinTotalSize()J

    move-result-wide v4

    .line 43
    iget-object p0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getRbinAllocedSize()J

    move-result-wide v6

    add-long/2addr v0, v2

    sub-long/2addr v4, v6

    sub-long/2addr v0, v4

    return-wide v0
.end method

.method public getPhysicalMemory()I
    .registers 10

    .line 60
    iget-object v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->memoryMBToGBPool:[[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    .line 61
    iget-wide v5, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mTotalMemMb:J

    aget v7, v4, v2

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_16

    const/4 p0, 0x1

    .line 62
    aget p0, v4, p0

    return p0

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_19
    return v2
.end method

.method public final getSwapTotalSizeKb()J
    .registers 3

    .line 34
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/MemInfoGetter;->readLightMemInfo()V

    .line 35
    iget-object p0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSwapsizeGB()I
    .registers 7

    .line 49
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getSwapTotalSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 51
    iget-object p0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->memoryMBToGBPool:[[I

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_1c

    aget-object v4, p0, v3

    .line 52
    aget v5, v4, v2

    if-le v0, v5, :cond_19

    const/4 p0, 0x1

    .line 53
    aget p0, v4, p0

    return p0

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1c
    return v2
.end method

.method public final readLightMemInfo()V
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    return-void
.end method

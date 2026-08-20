.class public Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcFileInfoGetter"
.end annotation


# static fields
.field public static final LMKD_CRIC_NODE:Ljava/lang/String; = "/proc/lmkd_debug/lmkd_cricount"

.field public static final LMKD_NODE:Ljava/lang/String; = "/proc/lmkd_debug/lmkd_count"

.field public static final LMK_NODE:Ljava/lang/String; = "/sys/module/lowmemorykiller/parameters/lmkcount"

.field public static final SWAP_NODE:Ljava/lang/String; = "/proc/sys/vm/swappiness"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurSwappiness()I
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x2020

    const/4 v3, 0x0

    aput v2, v1, v3

    new-array v0, v0, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v3

    const-string v2, "/proc/sys/vm/swappiness"

    const/4 v4, 0x0

    .line 4157
    invoke-static {v2, v1, v4, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v0, v0, v3

    long-to-int v0, v0

    return v0
.end method

.method public static getLMKCountInfo()J
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x2020

    const/4 v3, 0x0

    aput v2, v1, v3

    new-array v0, v0, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v3

    const-string v2, "/sys/module/lowmemorykiller/parameters/lmkcount"

    const/4 v4, 0x0

    .line 4187
    invoke-static {v2, v1, v4, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v0, v0, v3

    return-wide v0
.end method

.method public static getLMKDCountInfo()J
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x2020

    const/4 v3, 0x0

    aput v2, v1, v3

    new-array v0, v0, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v3

    const-string v2, "/proc/lmkd_debug/lmkd_count"

    const/4 v4, 0x0

    .line 4167
    invoke-static {v2, v1, v4, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v0, v0, v3

    return-wide v0
.end method

.method public static getLMKDCricCountInfo()J
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x2020

    const/4 v3, 0x0

    aput v2, v1, v3

    new-array v0, v0, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v3

    const-string v2, "/proc/lmkd_debug/lmkd_cricount"

    const/4 v4, 0x0

    .line 4177
    invoke-static {v2, v1, v4, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v0, v0, v3

    return-wide v0
.end method

.method public static getRAMsizeGB()I
    .registers 8

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 4194
    fill-array-data v1, :array_28

    .line 4195
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 4197
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 4198
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v0, :cond_24

    .line 4201
    aget v5, v1, v4

    int-to-double v6, v5

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_21

    return v5

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_24
    const/4 v0, 0x6

    aget v0, v1, v0

    return v0

    :array_28
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
    .end array-data
.end method

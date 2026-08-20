.class public final Lcom/android/net/module/util/NetworkCapabilitiesUtils;
.super Ljava/lang/Object;
.source "NetworkCapabilitiesUtils.java"


# static fields
.field private static final blacklist DISPLAY_TRANSPORT_PRIORITIES:[I

.field private static final blacklist FORCE_RESTRICTED_CAPABILITIES:J

.field public static final blacklist RESTRICTED_CAPABILITIES:J

.field public static final blacklist UNRESTRICTED_CAPABILITIES:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 61
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->DISPLAY_TRANSPORT_PRIORITIES:[I

    .line 88
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    invoke-static {v0}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->packBitList([I)J

    move-result-wide v0

    sput-wide v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->RESTRICTED_CAPABILITIES:J

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_60

    invoke-static {v0}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->packBitList([I)J

    move-result-wide v0

    sput-wide v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->FORCE_RESTRICTED_CAPABILITIES:J

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    invoke-static {v0}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->packBitList([I)J

    move-result-wide v0

    sput-wide v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->UNRESTRICTED_CAPABILITIES:J

    return-void

    :array_2e
    .array-data 4
        0x4
        0x0
        0x5
        0x2
        0x1
        0x3
        0x8
    .end array-data

    :array_40
    .array-data 4
        0x1f
        0x5
        0x2
        0xa
        0x1d
        0x3
        0x7
        0x4
        0x17
        0x8
        0x1b
        0x1e
        0x9
        0x21
    .end array-data

    :array_60
    .array-data 4
        0x1d
        0x16
        0x1a
    .end array-data

    :array_6a
    .array-data 4
        0xc
        0x0
        0x1
        0x6
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDisplayTransport([I)I
    .registers 7
    .param p0, "transports"    # [I

    .line 134
    sget-object v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->DISPLAY_TRANSPORT_PRIORITIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_13

    aget v4, v0, v3

    .line 135
    .local v4, "transport":I
    invoke-static {p0, v4}, Lcom/android/net/module/util/CollectionUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 136
    return v4

    .line 134
    .end local v4    # "transport":I
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 140
    :cond_13
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1a

    .line 146
    aget v0, p0, v2

    return v0

    .line 144
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No transport in the provided array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist inferRestrictedCapability(Landroid/net/NetworkCapabilities;)Z
    .registers 8
    .param p0, "nc"    # Landroid/net/NetworkCapabilities;

    .line 161
    sget-wide v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->FORCE_RESTRICTED_CAPABILITIES:J

    invoke-static {v0, v1}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->unpackBits(J)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    const/4 v4, 0x1

    if-ge v3, v1, :cond_18

    aget v5, v0, v3

    .line 162
    .local v5, "capability":I
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 163
    return v4

    .line 161
    .end local v5    # "capability":I
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 169
    :cond_18
    sget-wide v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->UNRESTRICTED_CAPABILITIES:J

    invoke-static {v0, v1}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->unpackBits(J)[I

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_20
    if-ge v3, v1, :cond_2e

    aget v5, v0, v3

    .line 170
    .restart local v5    # "capability":I
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 171
    return v2

    .line 169
    .end local v5    # "capability":I
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 176
    :cond_2e
    sget-wide v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->RESTRICTED_CAPABILITIES:J

    invoke-static {v0, v1}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->unpackBits(J)[I

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_36
    if-ge v3, v1, :cond_44

    aget v5, v0, v3

    .line 177
    .restart local v5    # "capability":I
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 178
    return v4

    .line 176
    .end local v5    # "capability":I
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 181
    :cond_44
    return v2
.end method

.method public static varargs blacklist packBitList([I)J
    .registers 3
    .param p0, "bits"    # [I

    .line 210
    invoke-static {p0}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->packBits([I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist packBits([I)J
    .registers 8
    .param p0, "bits"    # [I

    .line 223
    const-wide/16 v0, 0x0

    .line 224
    .local v0, "packed":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_f

    aget v4, p0, v3

    .line 225
    .local v4, "b":I
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 224
    .end local v4    # "b":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 227
    :cond_f
    return-wide v0
.end method

.method public static blacklist unpackBits(J)[I
    .registers 10
    .param p0, "val"    # J

    .line 188
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 189
    .local v0, "size":I
    new-array v1, v0, [I

    .line 190
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 191
    .local v2, "index":I
    const/4 v3, 0x0

    .line 192
    .local v3, "bitPos":I
    :goto_8
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-eqz v4, :cond_20

    .line 193
    const-wide/16 v4, 0x1

    and-long v6, p0, v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_1b

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index":I
    .local v4, "index":I
    aput v3, v1, v2

    move v2, v4

    .line 194
    .end local v4    # "index":I
    .restart local v2    # "index":I
    :cond_1b
    const/4 v4, 0x1

    ushr-long/2addr p0, v4

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 197
    :cond_20
    return-object v1
.end method

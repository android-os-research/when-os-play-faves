.class Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;
.super Ljava/lang/Object;
.source "WifiQoSCacheManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkScoreData"
.end annotation


# static fields
.field static final KEY_LEVEL_MAX_MINUS1_SPEED:Ljava/lang/String; = "levelMax-1"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LEVEL_MAX_MINUS2_SPEED:Ljava/lang/String; = "levelMax-2"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LEVEL_MAX_SPEED:Ljava/lang/String; = "levelMax"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_NETWORK_TYPE:Ljava/lang/String; = "networkType"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mLastUpdateTime:J

.field mNetworkScores:[I

.field mQoSNetworkType:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

.field mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;


# direct methods
.method static bridge synthetic -$$Nest$mgetNetworkScores(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->getNetworkScores()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRealNetworkScores(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->getRealNetworkScores()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->update(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V
    .registers 4

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    array-length v0, p2

    new-array v0, v0, [Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 217
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->update(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mLastUpdateTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;-><init>(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V

    return-void
.end method

.method private getNetworkScores()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mQoSNetworkType:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "networkType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "levelMax"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "levelMax-1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    const/4 v1, 0x2

    aget-object p0, p0, v1

    iget p0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "levelMax-2"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getRealNetworkScores()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 233
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mQoSNetworkType:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "networkType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "levelMax"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "levelMax-1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    const/4 v1, 0x2

    aget p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "levelMax-2"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private update(Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;)V
    .registers 10

    .line 274
    array-length v0, p2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1e

    .line 275
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "received QoS data length is invalid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiProfileShare.Cache"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 278
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mQoSNetworkType:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->SUSPICIOUS:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    if-eq v0, v1, :cond_26

    .line 279
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mQoSNetworkType:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 281
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 282
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mLastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long p1, v2, v4

    const/4 v2, 0x1

    if-lez p1, :cond_38

    move p1, v2

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    .line 283
    :goto_39
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    :goto_3d
    if-ltz v3, :cond_86

    if-nez p1, :cond_58

    .line 284
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    aget v4, v2, v3

    sget-object v5, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    iget v6, v5, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    if-ne v4, v6, :cond_4c

    goto :goto_58

    .line 286
    :cond_4c
    aget-object v6, p2, v3

    if-eq v6, v5, :cond_60

    .line 287
    iget v5, v6, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    aput v4, v2, v3

    goto :goto_60

    .line 285
    :cond_58
    :goto_58
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    aget-object v4, p2, v3

    iget v4, v4, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    aput v4, v2, v3

    .line 289
    :cond_60
    :goto_60
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    aget v4, v2, v3

    sget-object v5, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    iget v5, v5, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->score:I

    if-eq v4, v5, :cond_77

    add-int/lit8 v5, v3, 0x1

    array-length v6, v2

    if-ge v5, v6, :cond_77

    .line 290
    aget v5, v2, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v2, v3

    .line 292
    :cond_77
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    aget v4, v4, v3

    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_3d

    .line 294
    :cond_86
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->validateNetworkScoreAndUpdateSpeed()V

    .line 295
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mLastUpdateTime:J

    return-void
.end method

.method private validateNetworkScoreAndUpdateSpeed()V
    .registers 7

    .line 241
    sget-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    .line 242
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-ltz v1, :cond_25

    .line 243
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object v2

    .line 244
    sget-object v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    if-eq v0, v3, :cond_1f

    iget v4, v2, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    iget v5, v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    if-ge v4, v5, :cond_1f

    .line 245
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    aput-object v0, v4, v1

    :cond_1f
    if-eq v2, v3, :cond_22

    move-object v0, v2

    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 251
    :cond_25
    sget-object v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    const/4 v1, 0x0

    .line 252
    :goto_28
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    array-length v3, v2

    if-ge v1, v3, :cond_71

    .line 253
    aget v2, v2, v1

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->fromScore(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object v2

    .line 254
    sget-object v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->UNKNOWN:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    if-eq v0, v3, :cond_6d

    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    aget-object v5, v4, v1

    if-eq v5, v3, :cond_3f

    if-ne v2, v3, :cond_6d

    :cond_3f
    add-int/lit8 v2, v1, 0x1

    .line 256
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mNetworkScores:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4d

    aget-object v2, v4, v2

    if-ne v2, v0, :cond_4d

    .line 257
    aput-object v0, v4, v1

    goto :goto_68

    .line 258
    :cond_4d
    sget-object v2, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->SLOW:Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    if-ne v0, v2, :cond_54

    .line 259
    aput-object v0, v4, v1

    goto :goto_68

    .line 261
    :cond_54
    iget v0, v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->from(I)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    move-result-object v0

    .line 262
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    aget-object v3, v2, v1

    iget v3, v3, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    iget v4, v0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;->bitValue:I

    if-ge v3, v4, :cond_68

    .line 263
    aput-object v0, v2, v1

    .line 266
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$NetworkScoreData;->mSpeeds:[Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$Speed;

    aget-object v0, v0, v1

    goto :goto_6e

    :cond_6d
    move-object v0, v2

    :goto_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_71
    return-void
.end method

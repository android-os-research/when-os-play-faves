.class public Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;
.super Ljava/lang/Object;
.source "FavoriteNetworkEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;,
        Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$ScorePolicy;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION_TIME_MS:J = 0x0L

.field static final DURATION_FOR_MINUS_SCORE_MS:J = 0x927c0L

.field static final DURATION_FOR_POINT_1_MS:J = 0x927c0L

.field static final DURATION_FOR_POINT_2_MS:J = 0x6ddd00L

.field static final DURATION_FOR_POINT_4_MS:J = 0x1b77400L

.field static final DURATION_FOR_RECOVERY_SCORE_MS:J = 0x36ee80L

.field static final SCORE_FOR_REACHING_FAVORITE:I = 0x4

.field static final SCORE_OF_FAVORITE_NETWORK:I = 0xa

.field static final SCORE_OF_KT_PERSISTENT_FAVORITE_NETWORK:I = 0xc

.field static final SCORE_OF_PERSISTENT_FAVORITE_NETWORK:I = 0xb

.field static final SCORE_OF_PERSISTENT_NON_FAVORITE_NETWORK:I = -0x1

.field static final SCORE_OF_REMOVED_FROM_FAVORITE_NETWORK:I = 0x2

.field public static final SCORE_POLICY_DEFAULT:I = 0x1

.field public static final SCORE_POLICY_ONE_STEP:I = 0x2

.field private static final SECOND:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "AutoWifi.Favorite"


# instance fields
.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mConnectedHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDecreasedHistory:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDurationForMinusPoint:J

.field private mDurationForPoint1:J

.field private mDurationForPoint2:J

.field private mDurationForPoint4:J

.field private mDurationForRecoveryPoint:J

.field private final mExceptionConfigKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

.field private final mIncreasedHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mIsAutoWifiEnabled:Z

.field private mIsWifiConnected:Z

.field private mLastConfigKey:Ljava/lang/String;

.field private mLastNetworkScore:I

.field private mLastWifiConnectedAt:J

.field private mListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

.field private final mLock:Ljava/lang/Object;

.field private mOneStepScorePolicy:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;Lcom/samsung/android/server/wifi/util/SemClock;)V
    .registers 6

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIncreasedHistory:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mConnectedHistory:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDecreasedHistory:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mExceptionConfigKeys:Ljava/util/Set;

    .line 83
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 84
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    const-wide/32 p1, 0x927c0

    .line 86
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint1:J

    const-wide/32 v1, 0x6ddd00

    .line 87
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint2:J

    const-wide/32 v1, 0x1b77400

    .line 88
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint4:J

    .line 89
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForMinusPoint:J

    const-wide/32 p1, 0x36ee80

    .line 90
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForRecoveryPoint:J

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\"ollehWiFi \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\"olleh GiGA WiFi \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\"KT GiGA WiFi \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\"KT WiFi \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\"T wifi zone\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\"KT_Free_WiFi\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkAndDecreaseScore()V
    .registers 9

    .line 267
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsActive:Z

    if-nez v0, :cond_c

    const-string p0, "AutoWifi.Favorite"

    const-string v0, "inactive"

    .line 268
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 271
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "AutoWifi.Favorite"

    const-string v0, "checkAndDecreaseScore configKey is null"

    .line 272
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mExceptionConfigKeys:Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "AutoWifi.Favorite"

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndDecreaseScore ignored "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 279
    :cond_3f
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    if-lez v0, :cond_ea

    const/16 v1, 0xb

    if-lt v0, v1, :cond_49

    goto/16 :goto_ea

    .line 284
    :cond_49
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_4c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDecreasedHistory:Ljava/util/Set;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e5

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->getConnectionMaintenanceTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_e5

    .line 287
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForMinusPoint:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_e5

    .line 288
    iget v3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 289
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDecreasedHistory:Ljava/util/Set;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static {v3}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result v4

    if-eqz v4, :cond_b0

    iget v4, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    invoke-static {v4}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result v4

    if-nez v4, :cond_b0

    const-string v4, "AutoWifi.Favorite"

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is removed from favorite network list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    .line 293
    iput v4, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 294
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->addConfigAsNormal(Ljava/lang/String;)V

    .line 295
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mConnectedHistory:Ljava/util/Map;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint2:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_b0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->handleNetworkScoreChanged()V

    const-string v4, "AutoWifi.Favorite"

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decreaseScore duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForMinusPoint:J

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", prevScore: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newScore: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_e5
    monitor-exit v0

    return-void

    :catchall_e7
    move-exception p0

    monitor-exit v0
    :try_end_e9
    .catchall {:try_start_4c .. :try_end_e9} :catchall_e7

    throw p0

    :cond_ea
    :goto_ea
    const-string v0, "AutoWifi.Favorite"

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has persistent network score"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkAndIncreaseScore(Z)V
    .registers 14

    .line 308
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsActive:Z

    if-nez v0, :cond_c

    const-string p0, "AutoWifi.Favorite"

    const-string p1, "inactive"

    .line 309
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 312
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "AutoWifi.Favorite"

    const-string p1, "checkAndIncreaseScore configKey is null"

    .line 313
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 316
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mExceptionConfigKeys:Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string p1, "AutoWifi.Favorite"

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndIncreaseScore ignored "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 320
    :cond_3f
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_5e

    const-string p1, "AutoWifi.Favorite"

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is favorite"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 324
    :cond_5e
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsAutoWifiEnabled:Z

    const/4 v3, 0x4

    if-nez v2, :cond_7e

    if-lt v0, v3, :cond_7e

    const-string p1, "AutoWifi.Favorite"

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoWifi is disabled ignored "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7e
    const/4 v2, -0x1

    if-ne v0, v2, :cond_9a

    const-string p1, "AutoWifi.Favorite"

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user manually disable AutoWifi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 332
    :cond_9a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_9d
    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 334
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mConnectedHistory:Ljava/util/Map;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->getConnectionMaintenanceTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 337
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint1:J

    cmp-long v8, v6, v8

    if-ltz v8, :cond_12f

    .line 338
    iget-object v8, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIncreasedHistory:Ljava/util/Map;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_df

    .line 339
    iget-boolean v10, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mOneStepScorePolicy:Z

    if-nez v10, :cond_df

    .line 340
    iget v10, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    add-int/2addr v10, v9

    iput v10, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    add-int/lit8 v8, v8, 0x1

    .line 343
    :cond_df
    iget-wide v10, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint2:J

    cmp-long v10, v6, v10

    if-ltz v10, :cond_f0

    iget-boolean v10, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mOneStepScorePolicy:Z

    if-nez v10, :cond_f0

    .line 345
    iget v10, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    add-int/2addr v10, v9

    iput v10, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    add-int/lit8 v8, v8, 0x1

    .line 348
    :cond_f0
    iget-wide v10, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint4:J

    cmp-long v10, v4, v10

    if-ltz v10, :cond_107

    .line 349
    iget-boolean v10, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mOneStepScorePolicy:Z

    if-nez v10, :cond_fe

    .line 350
    iput v3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    move v8, v3

    goto :goto_107

    :cond_fe
    if-ge v8, v9, :cond_107

    .line 354
    iget v10, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    add-int/2addr v10, v9

    iput v10, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    add-int/lit8 v8, v8, 0x1

    .line 360
    :cond_107
    :goto_107
    iget-object v9, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIncreasedHistory:Ljava/util/Map;

    iget-object v10, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v8, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mConnectedHistory:Ljava/util/Map;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-static {v2}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result v8

    if-eqz v8, :cond_129

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForRecoveryPoint:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_12d

    :cond_129
    iget v8, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    if-le v8, v1, :cond_12f

    .line 365
    :cond_12d
    iput v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 368
    :cond_12f
    invoke-static {v2}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result v8

    if-nez v8, :cond_16c

    iget v8, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    if-lt v8, v3, :cond_16c

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsAutoWifiEnabled:Z

    if-eqz v3, :cond_16c

    if-eqz p1, :cond_16c

    const-string v3, "AutoWifi.Favorite"

    .line 370
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "favorite network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " detected"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iput v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 372
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->addConfigAsFavorite(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mConnectedHistory:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_16c
    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    if-eq v2, v1, :cond_1ab

    .line 376
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->handleNetworkScoreChanged()V

    const-string v1, "AutoWifi.Favorite"

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "increaseScore duration: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", connectedTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " prevScore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newScore: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " hasLocationInfo: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_1ab
    monitor-exit v0

    return-void

    :catchall_1ad
    move-exception p0

    monitor-exit v0
    :try_end_1af
    .catchall {:try_start_9d .. :try_end_1af} :catchall_1ad

    throw p0
.end method

.method private handleNetworkScoreChanged()V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 250
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;->onNetworkScoreChanged(Ljava/lang/String;I)V

    :cond_15
    return-void
.end method

.method public static isFavoriteNetwork(I)Z
    .registers 2

    const/16 v0, 0x8

    if-le p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private resetScoreChangedHistory(Ljava/lang/String;)V
    .registers 4

    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIncreasedHistory:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDecreasedHistory:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 263
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method


# virtual methods
.method calculateNetworkScore()V
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsWifiConnected:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->checkAndIncreaseScore(Z)V

    :cond_8
    return-void
.end method

.method calculateNetworkScore(ZLjava/lang/String;IZZ)V
    .registers 7

    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsWifiConnected:Z

    if-eq v0, p1, :cond_19

    .line 131
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsWifiConnected:Z

    .line 132
    iput-boolean p4, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsAutoWifiEnabled:Z

    .line 133
    iput p3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    if-eqz p1, :cond_16

    .line 135
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastWifiConnectedAt:J

    .line 136
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 138
    :cond_16
    invoke-direct {p0, p5}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->checkAndIncreaseScore(Z)V

    :cond_19
    return-void
.end method

.method clearHistory(Ljava/lang/String;)V
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIncreasedHistory:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDecreasedHistory:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 239
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mConnectedHistory:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2f

    .line 241
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->removeConfig(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p1, 0x0

    .line 243
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    const/4 p1, 0x0

    .line 244
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    :cond_2e
    return-void

    :catchall_2f
    move-exception p0

    .line 240
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method dump()Ljava/lang/String;
    .registers 6

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - Duration For PlusPoint1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint1:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds\n - Duration For PlusPoint2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint2:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds\n - Duration For PlusPoint4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint4:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds\n - Duration For MinusPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForMinusPoint:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds\n - Duration For RecoveryPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForRecoveryPoint:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " seconds\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getConnectionMaintenanceTimeMillis()J
    .registers 5

    .line 255
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastWifiConnectedAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    goto :goto_13

    .line 256
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastWifiConnectedAt:J

    sub-long v2, v0, v2

    :goto_13
    return-wide v2
.end method

.method notifyWifiOffByUser()V
    .registers 1

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->checkAndDecreaseScore()V

    return-void
.end method

.method removeScoreHistory(Ljava/lang/String;)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->resetScoreChangedHistory(Ljava/lang/String;)V

    return-void
.end method

.method setNetworkAsNormal()V
    .registers 4

    .line 157
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsWifiConnected:Z

    if-eqz v0, :cond_21

    .line 158
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    const/4 v1, 0x0

    .line 159
    iput v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 160
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsActive:Z

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 161
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->addConfigAsNormal(Ljava/lang/String;)V

    .line 163
    :cond_1a
    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    if-eq v0, v1, :cond_21

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->handleNetworkScoreChanged()V

    :cond_21
    return-void
.end method

.method setNetworkAsPersistentFavoriteNetwork(Ljava/lang/String;)V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AutoWifi.Favorite"

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 171
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkAsPersistentFavoriteNetwork update configKey "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    .line 174
    :cond_28
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mExceptionConfigKeys:Ljava/util/Set;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNetworkAsPersistentFavoriteNetwork ignored "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 178
    :cond_49
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsActive:Z

    if-eqz p1, :cond_6b

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsWifiConnected:Z

    if-eqz p1, :cond_6b

    .line 179
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    const/16 v0, 0xc

    .line 180
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 181
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result v0

    if-nez v0, :cond_64

    .line 182
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->addConfigAsFavorite(Ljava/lang/String;)V

    .line 184
    :cond_64
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    if-eq p1, v0, :cond_6b

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->handleNetworkScoreChanged()V

    :cond_6b
    return-void
.end method

.method setNetworkScorePolicy(I)V
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 153
    :goto_6
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mOneStepScorePolicy:Z

    return-void
.end method

.method start(Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;)V
    .registers 3

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsActive:Z

    .line 144
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

    return-void
.end method

.method stop()V
    .registers 2

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsActive:Z

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

    return-void
.end method

.method testNetworkScore(Ljava/lang/String;I)V
    .registers 4

    .line 191
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsWifiConnected:Z

    if-eqz v0, :cond_65

    .line 192
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_45

    .line 197
    :cond_15
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 198
    iput p2, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastNetworkScore:I

    .line 199
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mIsActive:Z

    if-eqz v0, :cond_65

    .line 200
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p2}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 201
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->addConfigAsNormal(Ljava/lang/String;)V

    goto :goto_65

    .line 202
    :cond_31
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result p1

    if-nez p1, :cond_65

    invoke-static {p2}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 203
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mHintCardUtil:Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->addConfigAsFavorite(Ljava/lang/String;)V

    goto :goto_65

    .line 193
    :cond_45
    :goto_45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore test settings, connected configKey: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mLastConfigKey:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", but want to change "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoWifi.Favorite"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    :goto_65
    return-void
.end method

.method testTimeSettings(JJJJJ)V
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 211
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint1:J

    :cond_8
    cmp-long p1, p3, v0

    if-ltz p1, :cond_e

    .line 214
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint2:J

    :cond_e
    cmp-long p1, p5, v0

    if-ltz p1, :cond_14

    .line 217
    iput-wide p5, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint4:J

    :cond_14
    cmp-long p1, p7, v0

    if-ltz p1, :cond_1a

    .line 220
    iput-wide p7, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForMinusPoint:J

    :cond_1a
    cmp-long p1, p9, v0

    if-ltz p1, :cond_20

    .line 223
    iput-wide p9, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForRecoveryPoint:J

    :cond_20
    return-void
.end method

.method updateAutoWifiScorePolicies([I)V
    .registers 6

    const/4 v0, 0x0

    .line 115
    aget v0, p1, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint1:J

    const/4 v0, 0x1

    .line 116
    aget v0, p1, v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint2:J

    const/4 v0, 0x2

    .line 117
    aget v0, p1, v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForPoint4:J

    const/4 v0, 0x3

    .line 118
    aget v0, p1, v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForMinusPoint:J

    const/4 v0, 0x4

    .line 119
    aget p1, p1, v0

    int-to-long v0, p1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->mDurationForRecoveryPoint:J

    return-void
.end method

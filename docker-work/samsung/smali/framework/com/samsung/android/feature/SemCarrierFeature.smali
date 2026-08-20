.class public Lcom/samsung/android/feature/SemCarrierFeature;
.super Ljava/lang/Object;
.source "SemCarrierFeature.java"


# static fields
.field static final blacklist DEBUG:Z

.field private static final blacklist DEBUG_LEVEL_HIGH:Ljava/lang/String; = "0x4948"

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field static final blacklist TEST:Z

.field private static blacklist sInstance:Lcom/samsung/android/feature/SemCarrierFeature;


# instance fields
.field private blacklist mCanonicalId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDefaultFeatureList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mFeatureVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastFeatureList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/samsung/android/feature/SemCarrierFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    .line 40
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->isTestEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/feature/SemCarrierFeature;->TEST:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mFeatureVersion:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mLastFeatureList:Ljava/util/Map;

    .line 84
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_20
    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->readSimCount()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 85
    iget-object v1, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mFeatureVersion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/feature/FeatureUtil;->getLastFeatureVersion(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->loadDefaultFeatures(I)V

    .line 88
    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->loadCarrierFeatures(I)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 90
    .end local v0    # "phoneId":I
    :cond_40
    return-void
.end method

.method public static whitelist createInstance()Lcom/samsung/android/feature/SemCarrierFeature;
    .registers 1

    .line 79
    new-instance v0, Lcom/samsung/android/feature/SemCarrierFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/SemCarrierFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    .line 80
    return-object v0
.end method

.method private blacklist get(ILjava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 104
    sget-boolean v0, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[get] phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " checkLastSim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_30
    if-eqz p1, :cond_3e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3e

    .line 107
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[get] phoneId should be 0 or 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_3e
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->isFeatureChanged(I)Z

    move-result v0

    const-string v1, " / "

    const-string v2, "/ "

    if-eqz v0, :cond_96

    .line 113
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[get] Feature Version is changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mFeatureVersion:Ljava/util/Map;

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastFeatureVersion(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mFeatureVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastFeatureVersion(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->loadDefaultFeatures(I)V

    .line 119
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->loadCarrierFeatures(I)V

    goto :goto_d5

    .line 120
    :cond_96
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->isCarrierIdChanged(I)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 122
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[get] CarrierId is changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastCanonicalID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->loadCarrierFeatures(I)V

    .line 127
    :cond_d5
    :goto_d5
    if-eqz p3, :cond_100

    .line 129
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->getDefaultCanonicalID()I

    move-result v1

    if-le v0, v1, :cond_13f

    .line 130
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mLastFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 134
    :cond_100
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->getDefaultCanonicalID()I

    move-result v1

    if-eq v0, v1, :cond_13f

    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getCurrentCanonicalID(I)I

    move-result v1

    if-ne v0, v1, :cond_13f

    .line 136
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mLastFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 140
    :cond_13f
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getInstance()Lcom/samsung/android/feature/SemCarrierFeature;
    .registers 1

    .line 64
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    if-nez v0, :cond_b

    .line 65
    new-instance v0, Lcom/samsung/android/feature/SemCarrierFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/SemCarrierFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    .line 67
    :cond_b
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    return-object v0
.end method

.method private blacklist isCarrierIdChanged(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 148
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastCanonicalID(I)I

    move-result v1

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private static blacklist isDebugEnabled()Z
    .registers 2

    .line 93
    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "debugLevel":Ljava/lang/String;
    const-string v1, "0x4948"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method private blacklist isFeatureChanged(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 144
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mFeatureVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastFeatureVersion(I)I

    move-result v1

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private static blacklist isTestEnabled()Z
    .registers 1

    .line 98
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    return v0
.end method

.method private blacklist loadCarrierFeatures(I)V
    .registers 6
    .param p1, "phoneId"    # I

    .line 170
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->getDefaultCanonicalID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastCanonicalID(I)I

    move-result v0

    .line 173
    .local v0, "canonicalId":I
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update carrier features : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {p1, v0}, Lcom/samsung/android/feature/FeatureUtil;->getCarrierFeature(II)Lcom/samsung/android/feature/SecCarrier;

    move-result-object v1

    .line 175
    .local v1, "last":Lcom/samsung/android/feature/SecCarrier;
    if-eqz v1, :cond_41

    .line 176
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->setSlotTargetFeatureList(ILcom/samsung/android/feature/SecCarrier;I)V

    .line 178
    :cond_41
    return-void
.end method

.method private blacklist loadDefaultFeatures(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .line 155
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "update default carrier features"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/samsung/android/feature/FeatureUtil;->getCarrierFeature(II)Lcom/samsung/android/feature/SecCarrier;

    move-result-object v0

    .line 157
    .local v0, "last":Lcom/samsung/android/feature/SecCarrier;
    if-eqz v0, :cond_12

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->setSlotDefaultFeatureList(ILcom/samsung/android/feature/SecCarrier;)V

    .line 160
    :cond_12
    return-void
.end method

.method private blacklist setSlotDefaultFeatureList(ILcom/samsung/android/feature/SecCarrier;)V
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "carrier"    # Lcom/samsung/android/feature/SecCarrier;

    .line 163
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/feature/SecCarrier;->getFeature()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method private blacklist setSlotTargetFeatureList(ILcom/samsung/android/feature/SecCarrier;I)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "carrier"    # Lcom/samsung/android/feature/SecCarrier;
    .param p3, "canonicalId"    # I

    .line 181
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mLastFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/feature/SecCarrier;->getFeature()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method


# virtual methods
.method public whitelist getBoolean(ILjava/lang/String;ZZ)Z
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .param p4, "checkLastSim"    # Z

    .line 219
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getBoolean] key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_2a
    if-eqz v0, :cond_31

    .line 223
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_32

    return v1

    .line 225
    :cond_31
    return p3

    .line 227
    .end local v0    # "value":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_52

    .line 229
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getBoolean] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    :cond_52
    return p3
.end method

.method public whitelist getBooleanArray(ILjava/lang/String;Z)[Z
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 250
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "value":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getBooleanArray] key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_2b
    if-nez v1, :cond_2e

    return-object v0

    .line 254
    :cond_2e
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [Z

    .line 256
    .local v3, "arrays":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    array-length v5, v2

    if-ge v4, v5, :cond_4a

    .line 257
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v3, v4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_4b

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 259
    .end local v4    # "i":I
    :cond_4a
    return-object v3

    .line 260
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "arrays":[Z
    :catch_4b
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_6b

    .line 262
    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getBooleanArray] Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    :cond_6b
    return-object v0
.end method

.method public whitelist getCarrierId(IZ)I
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "checkLastSim"    # Z

    .line 197
    if-eqz p2, :cond_7

    .line 198
    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastCanonicalID(I)I

    move-result v0

    return v0

    .line 200
    :cond_7
    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getCurrentCanonicalID(I)I

    move-result v0

    return v0
.end method

.method public whitelist getDouble(ILjava/lang/String;DZ)D
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # D
    .param p5, "checkLastSim"    # Z

    .line 413
    :try_start_0
    invoke-direct {p0, p1, p2, p5}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDouble] key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_2a
    if-eqz v0, :cond_31

    .line 417
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_32

    return-wide v1

    .line 419
    :cond_31
    return-wide p3

    .line 421
    .end local v0    # "value":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_52

    .line 423
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDouble] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    :cond_52
    return-wide p3
.end method

.method public whitelist getDoubleArray(ILjava/lang/String;Z)[D
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 444
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "value":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDoubleArray] key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_2b
    if-nez v1, :cond_2e

    return-object v0

    .line 448
    :cond_2e
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [D

    .line 450
    .local v3, "arrays":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    array-length v5, v2

    if-ge v4, v5, :cond_4a

    .line 451
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aput-wide v5, v3, v4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_4b

    .line 450
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 453
    .end local v4    # "i":I
    :cond_4a
    return-object v3

    .line 454
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "arrays":[D
    :catch_4b
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_6b

    .line 456
    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDoubleArray] Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    :cond_6b
    return-object v0
.end method

.method public whitelist getInt(ILjava/lang/String;IZ)I
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .param p4, "checkLastSim"    # Z

    .line 282
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getInt] key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_2a
    if-eqz v0, :cond_31

    .line 286
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_32

    return v1

    .line 288
    :cond_31
    return p3

    .line 290
    .end local v0    # "value":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_52

    .line 292
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getInt] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    :cond_52
    return p3
.end method

.method public whitelist getIntArray(ILjava/lang/String;Z)[I
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 313
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "value":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getIntArray] key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_2b
    if-nez v1, :cond_2e

    return-object v0

    .line 317
    :cond_2e
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [I

    .line 319
    .local v3, "arrays":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    array-length v5, v2

    if-ge v4, v5, :cond_4a

    .line 320
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_4b

    .line 319
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 322
    .end local v4    # "i":I
    :cond_4a
    return-object v3

    .line 323
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "arrays":[I
    :catch_4b
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_6b

    .line 325
    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getIntArray] Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    :cond_6b
    return-object v0
.end method

.method public whitelist getLong(ILjava/lang/String;JZ)J
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J
    .param p5, "checkLastSim"    # Z

    .line 347
    :try_start_0
    invoke-direct {p0, p1, p2, p5}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getLong] key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_2a
    if-eqz v0, :cond_31

    .line 351
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_32

    return-wide v1

    .line 353
    :cond_31
    return-wide p3

    .line 355
    .end local v0    # "value":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_52

    .line 357
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getLong] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    :cond_52
    return-wide p3
.end method

.method public whitelist getLongArray(ILjava/lang/String;Z)[J
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 378
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "value":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getLongArray] key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_2b
    if-nez v1, :cond_2e

    return-object v0

    .line 382
    :cond_2e
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [J

    .line 384
    .local v3, "arrays":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    array-length v5, v2

    if-ge v4, v5, :cond_4a

    .line 385
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v3, v4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_4b

    .line 384
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 387
    .end local v4    # "i":I
    :cond_4a
    return-object v3

    .line 388
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "arrays":[J
    :catch_4b
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_6b

    .line 390
    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getLongArray] Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    :cond_6b
    return-object v0
.end method

.method public whitelist getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "checkLastSim"    # Z

    .line 480
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getString] key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2e

    .line 483
    :cond_2a
    if-eqz v0, :cond_2d

    .line 484
    return-object v0

    .line 486
    :cond_2d
    return-object p3

    .line 488
    .end local v0    # "value":Ljava/lang/String;
    :catch_2e
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_4e

    .line 490
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getString] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    :cond_4e
    return-object p3
.end method

.method public whitelist getStringArray(ILjava/lang/String;Z)[Ljava/lang/String;
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 511
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "value":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getStringArray] key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_2b
    if-nez v1, :cond_2e

    return-object v0

    .line 515
    :cond_2e
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_35

    return-object v0

    .line 516
    .end local v1    # "value":Ljava/lang/String;
    :catch_35
    move-exception v1

    .line 517
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_55

    .line 518
    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getStringArray] Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 521
    :cond_55
    return-object v0
.end method

.method public blacklist tracer(I)Ljava/util/Map;
    .registers 5
    .param p1, "tableNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 529
    const/4 v0, 0x0

    .line 531
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 529
    if-nez p1, :cond_17

    .line 530
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mLastFeatureList.get(0)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v1, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mLastFeatureList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 532
    :cond_17
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2e

    .line 533
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mLastFeatureList.get(1)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mLastFeatureList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 535
    :cond_2e
    const/4 v2, 0x2

    if-ne p1, v2, :cond_41

    .line 536
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mDefaultFeatureList.get(0)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 538
    :cond_41
    const/4 v0, 0x3

    if-ne p1, v0, :cond_58

    .line 539
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mDefaultFeatureList.get(1)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 542
    :cond_58
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Invalid feature table number"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v0, 0x0

    return-object v0
.end method

.class public Lcom/samsung/android/server/wifi/util/FeatureUtil;
.super Ljava/lang/Object;
.source "FeatureUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifi.FeatureUtil"


# instance fields
.field private mCachedSupportedFeatures:J

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mIWifiManager:Landroid/net/wifi/IWifiManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/net/wifi/WifiManager;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/FeatureUtil;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/FeatureUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private getSupportedFeatures()J
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/FeatureUtil;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v0, :cond_c

    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/FeatureUtil;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIWifiManager()Landroid/net/wifi/IWifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/FeatureUtil;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    .line 47
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/FeatureUtil;->mIWifiManager:Landroid/net/wifi/IWifiManager;

    if-eqz p0, :cond_1a

    .line 49
    :try_start_10
    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getSupportedFeatures()J

    move-result-wide v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return-wide v0

    :catch_15
    move-exception p0

    .line 51
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_21

    :cond_1a
    const-string p0, "SemWifi.FeatureUtil"

    const-string v0, "could not get IWifiManager interface"

    .line 54
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 10

    const-string v0, "Supported Features: "

    .line 72
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/util/FeatureUtil;->mCachedSupportedFeatures:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    const-string p0, "never turned on the Wi-Fi"

    .line 74
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    :try_start_18
    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_4a

    aget-object v4, v1, v3

    .line 81
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_43

    const-string v6, "WIFI_FEATURE_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 83
    iget-object v6, p0, Lcom/samsung/android/server/wifi/util/FeatureUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    .line 84
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_43} :catch_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_43} :catch_46

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :catch_46
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    :cond_4a
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_52
    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/util/FeatureUtil;->isSupported(J)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_52

    :cond_9a
    const-string p0, ""

    .line 98
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public initSupportedFeatures()V
    .registers 4

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/FeatureUtil;->getSupportedFeatures()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/util/FeatureUtil;->mCachedSupportedFeatures:J

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setup supported feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/util/FeatureUtil;->mCachedSupportedFeatures:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifi.FeatureUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isSupported(J)Z
    .registers 7

    .line 65
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/util/FeatureUtil;->mCachedSupportedFeatures:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/FeatureUtil;->initSupportedFeatures()V

    .line 68
    :cond_b
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/util/FeatureUtil;->mCachedSupportedFeatures:J

    and-long/2addr v0, p1

    cmp-long p0, v0, p1

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

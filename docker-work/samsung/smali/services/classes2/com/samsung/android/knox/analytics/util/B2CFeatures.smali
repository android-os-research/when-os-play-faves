.class public Lcom/samsung/android/knox/analytics/util/B2CFeatures;
.super Ljava/lang/Object;
.source "B2CFeatures.java"


# static fields
.field public static final ACTION_B2C_ACTIVATION:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.action.B2C_ACTIVATION"

.field public static final EXTRA_B2C_ACTIVATION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.extra.B2C_ACTIVATION_STATUS"

.field public static final EXTRA_B2C_FEATURE:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.extra.B2C_FEATURE"

.field public static final EXTRA_B2C_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.extra.B2C_PACKAGE_NAME"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/util/B2CFeatures;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrRemoveB2CFeature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    .line 73
    sget-object v0, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrRemoveB2CFeature() - package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shouldAdd? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    if-eqz p3, :cond_44

    if-eqz p2, :cond_44

    .line 77
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 78
    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "feature_name"

    .line 79
    invoke-virtual {p3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_6a

    :cond_44
    if-nez p3, :cond_6a

    .line 84
    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeatureByPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p3, v1, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p2, :cond_6a

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    new-array p3, v2, [Ljava/lang/String;

    aput-object p2, p3, v4

    const-string p2, "feature"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_6a
    :goto_6a
    return-void
.end method

.method public static applyWhitelistForB2CFeatures(Landroid/content/Context;)V
    .registers 5

    .line 24
    sget-object v0, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->TAG:Ljava/lang/String;

    const-string v1, "applyWhitelistForB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeaturesList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 28
    :cond_12
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1b

    .line 34
    :cond_30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "KNOX_ANALYTICS"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 38
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public static getB2CActivationStatus(Landroid/content/Context;)Z
    .registers 4

    .line 63
    sget-object v0, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->TAG:Ljava/lang/String;

    const-string v1, "getB2CActivationStatus()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeaturePackageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 66
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getB2CActivationStatus() - status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static removeB2CFeaturesFromWhitelist(Landroid/content/Context;)V
    .registers 5

    .line 44
    sget-object v0, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeB2CFeaturesFromWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeaturesList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "feature"

    if-nez v1, :cond_2b

    const-string v1, "KNOX_ANALYTICS"

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 58
    :cond_2b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

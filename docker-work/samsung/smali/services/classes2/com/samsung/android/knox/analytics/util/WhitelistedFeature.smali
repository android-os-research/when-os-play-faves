.class public Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;
.super Ljava/lang/Object;
.source "WhitelistedFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    }
.end annotation


# instance fields
.field public mEnableApi:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

.field public mFeature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mFeature:Ljava/lang/String;

    .line 15
    invoke-static {p2}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->fromEnableType(Ljava/lang/Integer;)Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mEnableApi:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-void
.end method

.method public static fromEnableType(Ljava/lang/Integer;)Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    .registers 2

    if-nez p0, :cond_5

    .line 20
    sget-object p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object p0

    .line 22
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_10
    sget-object p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->GET:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object p0

    .line 24
    :cond_13
    sget-object p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object p0
.end method


# virtual methods
.method public getEnableApi()Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mEnableApi:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object p0
.end method

.method public hasFeatureName(Ljava/lang/String;)Z
    .registers 2

    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mFeature:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

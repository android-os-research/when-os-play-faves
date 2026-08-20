.class public Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;
.super Ljava/lang/Object;
.source "BlacklistedFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;
    }
.end annotation


# instance fields
.field public mDisableApi:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

.field public mFeature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->mFeature:Ljava/lang/String;

    .line 15
    invoke-static {p2}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->fromDisableType(Ljava/lang/Integer;)Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->mDisableApi:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    return-void
.end method

.method public static fromDisableType(Ljava/lang/Integer;)Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;
    .registers 2

    if-nez p0, :cond_5

    .line 20
    sget-object p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->ALL:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

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
    sget-object p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->GET:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    return-object p0

    .line 24
    :cond_13
    sget-object p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->ALL:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    return-object p0
.end method


# virtual methods
.method public getDisableApi()Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->mDisableApi:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    return-object p0
.end method

.method public hasFeatureName(Ljava/lang/String;)Z
    .registers 2

    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->mFeature:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

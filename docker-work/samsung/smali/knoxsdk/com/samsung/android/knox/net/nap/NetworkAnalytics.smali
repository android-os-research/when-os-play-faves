.class public final Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
.super Ljava/lang/Object;
.source "NetworkAnalytics.java"


# static fields
.field public static final greylist TAG:Ljava/lang/String; = "NetworkAnalytics"

.field public static greylist mNetworkAnalyticsService:Lcom/samsung/android/knox/net/nap/INetworkAnalytics;


# instance fields
.field public greylist mContext:Landroid/content/Context;

.field public greylist mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor greylist <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static greylist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public static greylist getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public static greylist getService()Lcom/samsung/android/knox/net/nap/INetworkAnalytics;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final greylist getNPAVersion()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final greylist getNetworkMonitorProfiles()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final greylist getProfiles()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final greylist isProfileActivated(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final greylist registerNetworkMonitorProfile(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final greylist start(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final greylist start(Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public final greylist stop(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final greylist unregisterNetworkMonitorProfile(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

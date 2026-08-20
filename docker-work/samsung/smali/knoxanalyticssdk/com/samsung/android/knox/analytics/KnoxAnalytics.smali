.class public Lcom/samsung/android/knox/analytics/KnoxAnalytics;
.super Ljava/lang/Object;
.source "KnoxAnalytics.java"


# static fields
.field public static final ANALYTICS_SERVICE:Ljava/lang/String; = "knox_analytics"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "[KnoxAnalyticsSDK]"

.field private static mService:Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    const-string v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getService()Z
    .registers 1

    .line 72
    sget-object v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->mService:Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;

    if-nez v0, :cond_10

    .line 73
    const-string v0, "knox_analytics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->mService:Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;

    .line 75
    :cond_10
    sget-object v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->mService:Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .registers 6
    .param p0, "event"    # Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 46
    sget-boolean v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->DEBUG:Z

    const-string v1, "[KnoxAnalyticsSDK]"

    if-eqz v0, :cond_d

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_d
    invoke-static {}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->getService()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 50
    if-eqz v0, :cond_1a

    .line 51
    const-string v0, "log(): service not running!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1a
    return-void

    .line 55
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 57
    .local v2, "token":J
    :try_start_1f
    sget-object v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->mService:Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_35
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_24} :catch_2a
    .catchall {:try_start_1f .. :try_end_24} :catchall_28

    .line 67
    :cond_24
    :goto_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    goto :goto_40

    .line 67
    :catchall_28
    move-exception v0

    goto :goto_41

    .line 62
    :catch_2a
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2b
    sget-boolean v4, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->DEBUG:Z

    if-eqz v4, :cond_24

    .line 64
    const-string v4, "log(): Security Exception in log - "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 58
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_35
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->DEBUG:Z

    if-eqz v4, :cond_24

    .line 60
    const-string v4, "log(): Remote Exception in log - "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_28

    goto :goto_24

    .line 69
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_40
    return-void

    .line 67
    :goto_41
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    throw v0
.end method

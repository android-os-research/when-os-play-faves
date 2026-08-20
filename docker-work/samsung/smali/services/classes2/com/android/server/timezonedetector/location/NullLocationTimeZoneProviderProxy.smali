.class public Lcom/android/server/timezonedetector/location/NullLocationTimeZoneProviderProxy;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;
.source "NullLocationTimeZoneProviderProxy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;-><init>(Landroid/content/Context;Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 3

    .line 70
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    const-string/jumbo p2, "{NullLocationTimeZoneProviderProxy}"

    .line 71
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 72
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onInitialize()V
    .registers 1

    return-void
.end method

.method public setRequest(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;)V
    .registers 4

    .line 61
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->sendUpdates()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string p1, "Provider is disabled"

    .line 62
    invoke-static {v0, v1, p1}, Landroid/service/timezone/TimeZoneProviderEvent;->createPermanentFailureEvent(JLjava/lang/String;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->handleTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    :cond_13
    return-void
.end method

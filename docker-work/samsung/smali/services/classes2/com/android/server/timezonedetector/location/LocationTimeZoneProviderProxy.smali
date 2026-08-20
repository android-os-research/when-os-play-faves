.class public abstract Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;
.super Ljava/lang/Object;
.source "LocationTimeZoneProviderProxy.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation
.end field

.field public final mSharedLock:Ljava/lang/Object;

.field public final mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;


# direct methods
.method public static synthetic $r8$lambda$1cqcAVjtmMOpNl5vPQouk_Qah-w(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;Landroid/service/timezone/TimeZoneProviderEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->lambda$handleTimeZoneProviderEvent$0(Landroid/service/timezone/TimeZoneProviderEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 68
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getLockObject()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$handleTimeZoneProviderEvent$0(Landroid/service/timezone/TimeZoneProviderEvent;)V
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    invoke-interface {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;->onReportTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->onDestroy()V

    .line 101
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final handleTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;Landroid/service/timezone/TimeZoneProviderEvent;)V

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;)V
    .registers 4

    .line 77
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_6
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    if-nez v1, :cond_11

    .line 82
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->onInitialize()V

    .line 84
    monitor-exit v0

    return-void

    .line 80
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "listener already set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_19
    move-exception p0

    .line 84
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public abstract onDestroy()V
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation
.end method

.method public abstract onInitialize()V
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation
.end method

.method public abstract setRequest(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;)V
.end method

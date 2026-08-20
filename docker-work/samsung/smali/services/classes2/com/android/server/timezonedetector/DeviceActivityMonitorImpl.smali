.class public Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;
.super Ljava/lang/Object;
.source "DeviceActivityMonitorImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/DeviceActivityMonitor;


# static fields
.field public static final DBG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "time_zone_detector"


# instance fields
.field public final mListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/DeviceActivityMonitor$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$mnotifyFlightComplete(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->notifyFlightComplete()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;-><init>(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    const-string p0, "airplane_mode_on"

    .line 69
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/timezonedetector/DeviceActivityMonitor;
    .registers 3

    .line 43
    new-instance v0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/server/timezonedetector/DeviceActivityMonitor$Listener;)V
    .registers 3

    monitor-enter p0

    .line 76
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 78
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final declared-synchronized notifyFlightComplete()V
    .registers 3

    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/DeviceActivityMonitor$Listener;

    .line 86
    invoke-interface {v1}, Lcom/android/server/timezonedetector/DeviceActivityMonitor$Listener;->onFlightComplete()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    goto :goto_7

    .line 88
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

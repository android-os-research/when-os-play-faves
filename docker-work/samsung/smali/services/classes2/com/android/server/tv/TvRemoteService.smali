.class public Lcom/android/server/tv/TvRemoteService;
.super Lcom/android/server/SystemService;
.source "TvRemoteService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "TvRemoteService"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    .line 45
    new-instance v1, Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-direct {v1, p1, v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 46
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    return-void
.end method


# virtual methods
.method public monitor()V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x258

    if-ne p1, v0, :cond_9

    .line 65
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteService;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-virtual {p0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->start()V

    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

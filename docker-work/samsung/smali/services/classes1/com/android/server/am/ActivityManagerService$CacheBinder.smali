.class public Lcom/android/server/am/ActivityManagerService$CacheBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheBinder"
.end annotation


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 2438
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2439
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    .line 2445
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 2447
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "cacheinfo"

    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_30

    if-nez v1, :cond_21

    .line 2454
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return-void

    .line 2452
    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->dumpBinderCacheContents(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_30

    .line 2454
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return-void

    :catchall_30
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 2455
    throw p1
.end method

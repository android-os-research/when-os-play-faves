.class public Lcom/android/server/am/ActivityManagerService$GraphicsBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GraphicsBinder"
.end annotation


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 2397
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2398
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    .line 2404
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 2406
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "gfxinfo"

    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_31

    if-nez v1, :cond_22

    .line 2410
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return-void

    .line 2408
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->dumpGraphicsHardwareUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_31

    .line 2410
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return-void

    :catchall_31
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 2411
    throw p1
.end method

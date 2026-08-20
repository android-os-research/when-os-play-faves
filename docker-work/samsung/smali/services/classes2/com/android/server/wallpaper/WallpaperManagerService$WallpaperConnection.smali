.class public Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    }
.end annotation


# static fields
.field public static final WALLPAPER_RECONNECT_TIMEOUT_MS:J = 0x2710L


# instance fields
.field public final mClientUid:I

.field public mDisconnectRunnable:Ljava/lang/Runnable;

.field public mDisplayConnector:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;",
            ">;"
        }
    .end annotation
.end field

.field public final mInfo:Landroid/app/WallpaperInfo;

.field public mReply:Landroid/os/IRemoteCallback;

.field public mResetRunnable:Ljava/lang/Runnable;

.field public mService:Landroid/service/wallpaper/IWallpaperService;

.field public mTryToRebindRunnable:Ljava/lang/Runnable;

.field public mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public static synthetic $r8$lambda$7NxlgJvQlugkX1tkW2z_ZRq8P6M(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->tryToRebind()V

    return-void
.end method

.method public static synthetic $r8$lambda$CaD5DEGcUPX-MGehq_5Oe-7gOEE(Landroid/graphics/RectF;Landroid/app/WallpaperColors;Landroid/app/ILocalWallpaperColorConsumer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$onLocalWallpaperColorsChanged$1(Landroid/graphics/RectF;Landroid/app/WallpaperColors;Landroid/app/ILocalWallpaperColorConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LhXodFrHuATLfr5T3tySklz5snQ(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$onServiceDisconnected$3(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N5dhtybxkshAk---s2nlXx06ebA(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/graphics/RectF;Landroid/app/WallpaperColors;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$onLocalWallpaperColorsChanged$2(Landroid/graphics/RectF;Landroid/app/WallpaperColors;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VwxDTbk2WBTfGD4fmz6YMlabbDM(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$rF3pDRWzdWx5HBlf9HHOpQBmOwk(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDisconnectRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisconnectRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResetRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTryToRebindRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mappendConnectorWithCondition(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Ljava/util/function/Predicate;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorWithCondition(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 5

    .line 2059
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 2012
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    .line 2024
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    .line 2057
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Ljava/lang/Runnable;

    .line 2383
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisconnectRunnable:Ljava/lang/Runnable;

    .line 2060
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 2061
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2062
    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    .line 2063
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->initDisplayState()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 6

    .line 2025
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2026
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmShuttingDown(Lcom/android/server/wallpaper/WallpaperManagerService;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string p0, "WallpaperManagerService"

    const-string v1, "Ignoring relaunch timeout during shutdown"

    .line 2029
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    monitor-exit v0

    return-void

    .line 2035
    :cond_18
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string p0, "WallpaperManagerService"

    const-string v1, "Ignore reset for image wallpaper. This connection isn\'t valid."

    .line 2036
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    monitor-exit v0

    return-void

    .line 2041
    :cond_35
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_7a

    iget-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v2, :cond_7a

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    if-ne v1, v2, :cond_7a

    const-string v1, "WallpaperManagerService"

    .line 2043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper reconnect timed out for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reverting to built-in wallpaper!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    .line 2051
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v3, 0x1

    or-int/2addr v1, v3

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 2054
    :cond_7a
    monitor-exit v0

    return-void

    :catchall_7c
    move-exception p0

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7 .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method private synthetic lambda$new$4()V
    .registers 7

    .line 2384
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2387
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne p0, v2, :cond_b3

    .line 2388
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const-string v2, "WallpaperManagerService"

    .line 2390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wallpaper onServiceDisconnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v3, :cond_ba

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v3

    if-ne v2, v3, :cond_ba

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 2394
    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultPreloadedLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmDefaultWallpaperComponent(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2395
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2396
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    .line 2403
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_a7

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 2405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_a7

    const-string v2, "WallpaperManagerService"

    const-string v3, "Reverting to built-in wallpaper!"

    .line 2406
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    const-string p0, "WallpaperManagerService"

    const-string v1, "ImageWallpaper not reverted"

    .line 2410
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    monitor-exit v0

    return-void

    .line 2418
    :cond_92
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    .line 2419
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v3, 0x1

    or-int/2addr v1, v3

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    goto :goto_ba

    .line 2422
    :cond_a7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    .line 2423
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->tryToRebind()V

    goto :goto_ba

    :cond_b3
    const-string p0, "WallpaperManagerService"

    const-string v1, "Wallpaper changed during disconnect tracking; ignoring"

    .line 2428
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    :cond_ba
    :goto_ba
    monitor-exit v0

    return-void

    :catchall_bc
    move-exception p0

    monitor-exit v0
    :try_end_be
    .catchall {:try_start_7 .. :try_end_be} :catchall_bc

    throw p0
.end method

.method public static synthetic lambda$onLocalWallpaperColorsChanged$1(Landroid/graphics/RectF;Landroid/app/WallpaperColors;Landroid/app/ILocalWallpaperColorConsumer;)V
    .registers 3

    .line 2298
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/app/ILocalWallpaperColorConsumer;->onColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 2300
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_8
    return-void
.end method

.method private synthetic lambda$onLocalWallpaperColorsChanged$2(Landroid/graphics/RectF;Landroid/app/WallpaperColors;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 5

    .line 2296
    new-instance p4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;

    invoke-direct {p4, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;-><init>(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    .line 2303
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2305
    :try_start_c
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLocalColorRepo(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/LocalColorRepository;

    move-result-object p0

    invoke-virtual {p0, p4, p1, p3}, Lcom/android/server/wallpaper/LocalColorRepository;->forEachCallback(Ljava/util/function/Consumer;Landroid/graphics/RectF;I)V

    .line 2306
    monitor-exit p2

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p2
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw p0
.end method

.method public static synthetic lambda$onServiceDisconnected$3(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 2

    const/4 v0, 0x0

    .line 2320
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    return-void
.end method


# virtual methods
.method public appendConnectorInternal(I)V
    .registers 4

    .line 2120
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    if-nez v0, :cond_2a

    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appendConnectorInternal, displayId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method public final appendConnectorWithCondition(Ljava/util/function/Predicate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    .line 2082
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmDisplayManager(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 2084
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2085
    :try_start_11
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 p1, 0x1

    .line 2086
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorInternal(I)V

    .line 2087
    monitor-exit v1

    return-void

    .line 2090
    :cond_21
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4e

    .line 2091
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmDisplayManager(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object p1

    const-string v0, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p1

    .line 2092
    array-length v0, p1

    if-lez v0, :cond_4c

    .line 2093
    aget-object p1, p1, v3

    .line 2094
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    iput p1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    .line 2095
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorInternal(I)V

    .line 2097
    :cond_4c
    monitor-exit v1

    return-void

    .line 2099
    :cond_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_11 .. :try_end_4f} :catchall_65

    .line 2101
    array-length v1, v0

    :goto_50
    if-ge v3, v1, :cond_64

    aget-object v2, v0, v3

    .line 2102
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 2103
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 2104
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorInternal(I)V

    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_64
    return-void

    :catchall_65
    move-exception p0

    .line 2099
    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;I)V
    .registers 8

    .line 2483
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2484
    :try_start_7
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_89

    if-nez v1, :cond_1b

    .line 2487
    :try_start_d
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_89

    goto :goto_19

    :catch_11
    move-exception p0

    :try_start_12
    const-string p1, "WallpaperManagerService"

    const-string p2, "Failed to destroy engine"

    .line 2489
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2491
    :goto_19
    monitor-exit v0

    return-void

    .line 2493
    :cond_1b
    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 2494
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->ensureStatusHandled()V

    .line 2497
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result p1
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_89

    if-eqz p1, :cond_42

    if-nez p2, :cond_42

    .line 2499
    :try_start_2c
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmInAmbientMode(Lcom/android/server/wallpaper/WallpaperManagerService;)Z

    move-result v2

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_39} :catch_3a
    .catchall {:try_start_2c .. :try_end_39} :catchall_89

    goto :goto_42

    :catch_3a
    move-exception p1

    :try_start_3b
    const-string v2, "WallpaperManagerService"

    const-string v3, "Failed to set ambient mode state"

    .line 2501
    invoke-static {v2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_89

    .line 2507
    :cond_42
    :goto_42
    :try_start_42
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->requestWallpaperColors()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_48
    .catchall {:try_start_42 .. :try_end_47} :catchall_89

    goto :goto_50

    :catch_48
    move-exception p1

    :try_start_49
    const-string v2, "WallpaperManagerService"

    const-string v3, "Failed to request wallpaper colors"

    .line 2509
    invoke-static {v2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2512
    :goto_50
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLocalColorRepo(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/LocalColorRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/LocalColorRepository;->getAreasByDisplayId(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 2513
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2
    :try_end_60
    .catchall {:try_start_49 .. :try_end_60} :catchall_89

    if-eqz p2, :cond_70

    .line 2515
    :try_start_62
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {p2, p1}, Landroid/service/wallpaper/IWallpaperEngine;->addLocalColorsAreas(Ljava/util/List;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_67} :catch_68
    .catchall {:try_start_62 .. :try_end_67} :catchall_89

    goto :goto_70

    :catch_68
    move-exception p1

    :try_start_69
    const-string p2, "WallpaperManagerService"

    const-string v2, "Failed to register local colors areas"

    .line 2517
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2521
    :cond_70
    :goto_70
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F
    :try_end_74
    .catchall {:try_start_69 .. :try_end_74} :catchall_89

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_87

    .line 2523
    :try_start_79
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {p1, p0}, Landroid/service/wallpaper/IWallpaperEngine;->applyDimming(F)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_7e} :catch_7f
    .catchall {:try_start_79 .. :try_end_7e} :catchall_89

    goto :goto_87

    :catch_7f
    move-exception p0

    :try_start_80
    const-string p1, "WallpaperManagerService"

    const-string p2, "Failed to dim wallpaper"

    .line 2525
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2528
    :cond_87
    :goto_87
    monitor-exit v0

    return-void

    :catchall_89
    move-exception p0

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_80 .. :try_end_8b} :catchall_89

    throw p0
.end method

.method public containsDisplay(I)Z
    .registers 2

    .line 2198
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .registers 6

    .line 2533
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopDualMode()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2534
    :cond_12
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/DesktopMode;->sendWallpaperEngineShownIntent()V

    .line 2537
    :cond_1d
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2538
    :try_start_24
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_38

    .line 2539
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_3a

    const/4 v2, 0x0

    .line 2541
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    invoke-interface {v3, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_33
    .catchall {:try_start_2d .. :try_end_32} :catchall_3a

    goto :goto_36

    .line 2543
    :catch_33
    :try_start_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2545
    :goto_36
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 2547
    :cond_38
    monitor-exit p1

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public forEachDisplayConnector(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;",
            ">;)V"
        }
    .end annotation

    .line 2170
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2171
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 2172
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public getConnectedEngineSize()I
    .registers 4

    .line 2178
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_1c

    .line 2179
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 2180
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v2, :cond_19

    add-int/lit8 v1, v1, 0x1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1c
    return v1
.end method

.method public getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    .registers 4

    .line 2186
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    if-nez v0, :cond_24

    .line 2188
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmDisplayManager(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 2189
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isUsableDisplay(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2190
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V

    .line 2191
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_24
    return-object v0
.end method

.method public final initDisplayState()V
    .registers 4

    .line 2068
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 2069
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$msupportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2071
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorWithCondition(Ljava/util/function/Predicate;)V

    goto :goto_28

    .line 2075
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public isSameWithPreviousWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)Z
    .registers 12

    const-string v0, " "

    const-string v1, "failed parsing "

    .line 2562
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 2564
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mmakeJournaledFile(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/internal/util/JournaledFile;

    move-result-object p2

    .line 2566
    invoke-virtual {p2}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object p2

    .line 2567
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "WallpaperManagerService"

    if-nez v3, :cond_1f

    const-string p0, "isSameWithPreviousWallpaper file is not exists."

    .line 2568
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2571
    :cond_1f
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v5, "wallpaper_orig"

    const-string/jumbo v6, "wallpaper"

    invoke-direct {v3, v2, p0, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2574
    :try_start_31
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_36} :catch_101
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_36} :catch_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_36} :catch_cb
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_b0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31 .. :try_end_36} :catch_95

    .line 2575
    :try_start_36
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v5

    .line 2579
    :cond_3a
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_85

    .line 2581
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "wp"

    .line 2582
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 2583
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo v8, "width"

    invoke-interface {v5, p0, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWidth(I)V

    .line 2584
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string v8, "height"

    invoke-interface {v5, p0, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setHeight(I)V

    const-string v7, "name"

    .line 2585
    invoke-interface {v5, p0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const-string v7, "component"

    .line 2586
    invoke-interface {v5, p0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_82

    .line 2587
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    goto :goto_83

    :cond_82
    move-object v7, p0

    :goto_83
    iput-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;
    :try_end_85
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_85} :catch_92
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_85} :catch_90
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_85} :catch_8e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_85} :catch_8c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36 .. :try_end_85} :catch_8a

    :cond_85
    const/4 v7, 0x1

    if-ne v6, v7, :cond_3a

    goto/16 :goto_11b

    :catch_8a
    move-exception v5

    goto :goto_97

    :catch_8c
    move-exception v5

    goto :goto_b2

    :catch_8e
    move-exception v5

    goto :goto_cd

    :catch_90
    move-exception v5

    goto :goto_e8

    :catch_92
    move-exception v5

    goto/16 :goto_103

    :catch_95
    move-exception v5

    move-object v2, p0

    .line 2600
    :goto_97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    :catch_b0
    move-exception v5

    move-object v2, p0

    .line 2598
    :goto_b2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    :catch_cb
    move-exception v5

    move-object v2, p0

    .line 2596
    :goto_cd
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    :catch_e6
    move-exception v5

    move-object v2, p0

    .line 2594
    :goto_e8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    :catch_101
    move-exception v5

    move-object v2, p0

    .line 2592
    :goto_103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    :goto_11b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2604
    iget-object p2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez p2, :cond_124

    move-object p2, p0

    goto :goto_128

    :cond_124
    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2605
    :goto_128
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_12d

    goto :goto_131

    :cond_12d
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2607
    :goto_131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".xml file : width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 2608
    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " component="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2607
    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "service : width="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 2612
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2611
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    invoke-virtual {v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isSameWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result p0

    return p0
.end method

.method public isUsableDisplay(Landroid/view/Display;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_42

    .line 2130
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    invoke-virtual {p1, v0}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_42

    .line 2147
    :cond_b
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_13

    return v0

    .line 2152
    :cond_13
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_1e

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v1, :cond_1e

    if-ne p1, v0, :cond_1e

    return v0

    .line 2157
    :cond_1e
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isVirtualWallpaperDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    return v0

    .line 2161
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2163
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->shouldShowSystemDecorOnDisplay(I)Z

    move-result p0
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_3d

    .line 2165
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_3d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2166
    throw p0

    :cond_42
    :goto_42
    const/4 p0, 0x0

    return p0
.end method

.method public onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    .registers 5

    .line 2295
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    .line 2210
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2213
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->getWallpaperBindingFallbackExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 2214
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->increaseWallpaperBindingFallbackCount()V

    .line 2215
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/DesktopMode;->setWallpaperBindingFallbackExecuted(Z)V

    .line 2220
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v2, p0, :cond_144

    .line 2222
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    .line 2223
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->handleWallpaperBindingTimeout(ZZ)V

    const-string v2, "WallpaperManagerService"

    .line 2224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper onServiceConnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WallpaperManagerService"

    .line 2225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper onServiceConnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 2232
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {p2, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mneedUpdateWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result p2

    if-eqz p2, :cond_b5

    const-string p2, "WallpaperManagerService"

    const-string/jumbo v2, "onServiceConnected needUpdateWallpaperData"

    .line 2233
    invoke-static {p2, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {p2, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2235
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object p2

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    invoke-virtual {p2, v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p2

    if-eqz p2, :cond_b6

    .line 2237
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_b6

    :cond_b5
    move v3, v1

    .line 2243
    :cond_b6
    :goto_b6
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {p2, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mattachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2254
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isSameWithPreviousWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)Z

    move-result p2

    if-eqz p2, :cond_c7

    if-eqz v3, :cond_d4

    .line 2255
    :cond_c7
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 2256
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v2, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$msaveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    .line 2260
    :cond_d4
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2261
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2264
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12a

    .line 2265
    sget-boolean p2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz p2, :cond_104

    sget-boolean p2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez p2, :cond_108

    :cond_104
    sget-boolean p2, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz p2, :cond_122

    .line 2267
    :cond_108
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_132

    const/4 v0, 0x5

    if-eq p2, v0, :cond_132

    const/16 v0, 0x8

    if-eq p2, v0, :cond_132

    .line 2271
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    goto :goto_132

    .line 2274
    :cond_122
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    goto :goto_132

    .line 2277
    :cond_12a
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V
    :try_end_132
    .catchall {:try_start_7 .. :try_end_132} :catchall_146

    .line 2281
    :cond_132
    :goto_132
    :try_start_132
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz p2, :cond_144

    .line 2282
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/service/wallpaper/IWallpaperService;->setCurrentUserId(I)V
    :try_end_13f
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_13f} :catch_140
    .catchall {:try_start_132 .. :try_end_13f} :catchall_146

    goto :goto_144

    :catch_140
    move-exception p0

    .line 2285
    :try_start_141
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2289
    :cond_144
    :goto_144
    monitor-exit p1

    return-void

    :catchall_146
    move-exception p0

    monitor-exit p1
    :try_end_148
    .catchall {:try_start_141 .. :try_end_148} :catchall_146

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    .line 2313
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "WallpaperManagerService"

    .line 2314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper service gone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    const-string p1, "WallpaperManagerService"

    .line 2316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does not match expected wallpaper component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/4 p1, 0x0

    .line 2319
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 2320
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2321
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v1, p0, :cond_67

    .line 2329
    iget-boolean p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez p1, :cond_67

    .line 2330
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2334
    :cond_67
    monitor-exit v0

    return-void

    :catchall_69
    move-exception p0

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_7 .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V
    .registers 11

    .line 2442
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2445
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2446
    monitor-exit v0

    return-void

    .line 2449
    :cond_19
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2451
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    .line 2452
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    or-int/lit8 v4, v1, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_99

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2456
    :try_start_35
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v6

    or-int/2addr v1, v4

    invoke-virtual {v5, v6, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 2457
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v5

    .line 2458
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_50} :catch_52
    .catchall {:try_start_35 .. :try_end_50} :catchall_99

    move-object v3, v1

    goto :goto_6a

    :catch_52
    move-exception v1

    :try_start_53
    const-string v5, "WallpaperManagerService"

    .line 2460
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onWallpaperColorsChanged Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    :goto_6a
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, p1, v5, v2, v3}, Lcom/samsung/server/wallpaper/LegibilityColor;->convertColors(Landroid/app/WallpaperColors;Lcom/samsung/server/wallpaper/SemWallpaperData;Lcom/samsung/server/wallpaper/SemWallpaperData;Landroid/graphics/drawable/BitmapDrawable;)V

    if-nez p2, :cond_8e

    .line 2470
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    if-nez p1, :cond_8e

    const/4 v4, 0x3

    .line 2475
    :cond_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_53 .. :try_end_8f} :catchall_99

    if-eqz v4, :cond_98

    .line 2477
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {p1, p0, v4, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    :cond_98
    return-void

    :catchall_99
    move-exception p0

    .line 2475
    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p0
.end method

.method public removeDisplayConnector(I)V
    .registers 3

    .line 2202
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    if-eqz v0, :cond_f

    .line 2204
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_f
    return-void
.end method

.method public final scheduleTimeoutLocked()V
    .registers 5

    .line 2340
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2341
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2342
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started wallpaper reconnect timeout for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WallpaperManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 2552
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2553
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v3, 0x0

    if-ne v2, p0, :cond_16

    .line 2554
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 2556
    :cond_16
    monitor-exit v0

    return-object v3

    :catchall_18
    move-exception p0

    .line 2557
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final tryToRebind()V
    .registers 9

    .line 2350
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2351
    :try_start_7
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-eqz v1, :cond_f

    .line 2352
    monitor-exit v0

    return-void

    .line 2354
    :cond_f
    iget-object v7, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2357
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mbindWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2359
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->scheduleTimeoutLocked()V

    goto :goto_81

    .line 2360
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-gez v1, :cond_4d

    const-string v1, "WallpaperManagerService"

    const-string v2, "Rebind fail! Try again later"

    .line 2363
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_81

    :cond_4d
    const-string v1, "WallpaperManagerService"

    const-string v2, "Reverting to built-in wallpaper!"

    .line 2367
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    .line 2373
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v3, 0x1

    or-int/2addr v1, v3

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 2375
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const v1, 0x80e8

    const/4 v2, 0x0

    .line 2377
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2376
    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2380
    :goto_81
    monitor-exit v0

    return-void

    :catchall_83
    move-exception p0

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_7 .. :try_end_85} :catchall_83

    throw p0
.end method

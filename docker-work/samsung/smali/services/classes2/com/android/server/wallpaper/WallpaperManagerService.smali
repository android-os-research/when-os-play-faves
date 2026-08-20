.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Lcom/android/server/wallpaper/IWallpaperManagerService;
.implements Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;,
        Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
    }
.end annotation


# static fields
.field public static final COVER_WALLPAPER_SERVICE_INTERFACE:Ljava/lang/String; = "com.samsung.android.service.wallpaper.CoverWallpaperService"

.field public static final DEBUG:Z = false

.field public static final DEBUG_CROP:Z = true

.field public static final DEBUG_LIVE:Z = true

.field public static final LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field public static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field public static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field public static final RECORD_FILE:Ljava/lang/String; = "decode_record"

.field public static final RECORD_LOCK_FILE:Ljava/lang/String; = "decode_lock_record"

.field public static final SHIPPED:Z

.field public static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field public static final WALLPAPER:Ljava/lang/String; = "wallpaper_orig"

.field public static final WALLPAPER_CROP:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field public static final WALLPAPER_LOCK:Ljava/lang/String; = "wallpaper_lock_orig"

.field public static final WALLPAPER_LOCK_CROP:Ljava/lang/String; = "wallpaper_lock"

.field public static final sPerUserFiles:[Ljava/lang/String;

.field public static final sWallpaperType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActiveVirtualDisplayId:I

.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

.field public final mColorsChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mCoverWallpaperListenerClientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;",
            ">;"
        }
    .end annotation
.end field

.field public mCoverWallpaperListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentUserId:I

.field public final mDefaultWallpaperComponent:Landroid/content/ComponentName;

.field public mDisplayDatas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public final mImageWallpaper:Landroid/content/ComponentName;

.field public mInAmbientMode:Z

.field public mIsInitialLodeSucceed:Z

.field public mKeyguardListenerClientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;",
            ">;"
        }
    .end annotation
.end field

.field public mKeyguardListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mLastDexWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field public mLastVirtualWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field public mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field public mLastWatchFace:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field public mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

.field public final mLock:Ljava/lang/Object;

.field public mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

.field public final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field public mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

.field public mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

.field public mShuttingDown:Z

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mUserRestorecon:Landroid/util/SparseBooleanArray;

.field public final mWallpaperHandlerThread:Landroid/os/HandlerThread;

.field public final mWallpaperHanlder:Landroid/os/Handler;

.field public mWallpaperId:I

.field public mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

.field public mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$2HybkWnUz1e0oef28-1QUwVBZHw(FLcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$setWallpaperDimAmountForUid$12(FLcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3RwVwgg4X4NLHci5RwxlGGvEkuA(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$attachServiceLocked$15(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4lC09eR5rDu3Kudlz3McjemLQQk(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$setWallpaperComponent$14(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6B3GgwzOiacs4rV_zCmYZzylJt0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$updateFallbackConnection$2(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7bP3abYgjJTT81xhMR34gQdo4h4(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$onBootPhase$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$8G-zDvuQYUwqScPXV_ivtEl05kc(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$completeUnlockUser$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DRlXsJ6I2XEZofNJgxJ9TLflAO0(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$notifyWallpaperColorsChanged$0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I_MXWRIYz5UpDqKWNXK1vGqBHjU(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$notifyWakingUp$10(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R3Ug1sAqbz9j0rz1NEYX9wAFWIY(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$notifyGoingToSleep$11(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UBmEqjpqb0R84_ONkD1bg6y7sQ4(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$onBootPhase$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$WHTd08lsADwuXSrVQlLVz3pjmd4(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$onUnlockUser$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WHhkTkWG_SLbtvKPJE7gaEz5r0s(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$setWallpaper$13(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XT97juh6w8uvptYbejdSzwHb4eQ(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$updateFallbackConnection$4(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lUAEXFIRQBYkBvaZdsyPPFmXdLs(ILandroid/graphics/Rect;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$generateCrop$1(ILandroid/graphics/Rect;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mA7kKKd1glWr0OhCFHWeDownLZQ(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$updateFallbackConnection$3(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wmBFjabFWfu3Vz2hqnI0ezb-66s(Lcom/android/server/wallpaper/WallpaperManagerService;ILjava/lang/Integer;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$errorCheck$7(ILjava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xaiLYL28aNwphR_RTh_db66FbfI(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$dump$16(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z4OhGfAxjfhAXXmHTdfBJORtsFA(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$dump$18(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmColorsChangedListeners(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultWallpaperComponent(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDatas(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInAmbientMode(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalColorRepo(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/LocalColorRepository;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSemWallpaperResourcesInfo(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/app/SemWallpaperResourcesInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShuttingDown(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmShuttingDown(Lcom/android/server/wallpaper/WallpaperManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mattachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbindComponentNow(Lcom/android/server/wallpaper/WallpaperManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindComponentNow(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mbindWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcleanUpWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdetachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$merrorCheck(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->errorCheck(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetConvertedUserId(Lcom/android/server/wallpaper/WallpaperManagerService;II)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getConvertedUserId(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisplayDataOrCreate(Lcom/android/server/wallpaper/WallpaperManagerService;I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTargetWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getTargetWallpaper(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minitVideoWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->initVideoWallpaper(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloadSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService;IZI)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmakeJournaledFile(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/internal/util/JournaledFile;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mneedUpdateWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->needUpdateWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDisplayReadyInternal(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onDisplayReadyInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveDisplayData(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeDisplayData(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetSemWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/samsung/server/wallpaper/SemWallpaperData;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->resetSemWallpaperData(Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msupportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetWallpaperLockDir(I)Ljava/io/File;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 246
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 250
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    const-string/jumbo v0, "wallpaper_orig"

    const-string/jumbo v1, "wallpaper"

    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    const-string/jumbo v4, "wallpaper_info.xml"

    .line 328
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    .line 3086
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;

    invoke-direct {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$5;-><init>()V

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sWallpaperType:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 2797
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 311
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 1355
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1423
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    .line 1424
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerClientList:Ljava/util/ArrayList;

    .line 1426
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCoverWallpaperListenerList:Ljava/util/ArrayList;

    .line 1427
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCoverWallpaperListenerClientList:Ljava/util/ArrayList;

    .line 1459
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    .line 1463
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    const/16 v3, -0x2710

    .line 1464
    iput v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1466
    new-instance v3, Lcom/android/server/wallpaper/LocalColorRepository;

    invoke-direct {v3}, Lcom/android/server/wallpaper/LocalColorRepository;-><init>()V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    const/4 v3, 0x1

    .line 8539
    iput-boolean v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsInitialLodeSucceed:Z

    .line 2799
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 2800
    iput-boolean v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    .line 2802
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040603

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2801
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 2803
    invoke-static {p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 2806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WallpaperService startup (support sub display ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WallpaperManagerService"

    invoke-static {v5, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    new-instance v4, Landroid/app/SemWallpaperResourcesInfo;

    invoke-direct {v4, p1}, Landroid/app/SemWallpaperResourcesInfo;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 2808
    new-instance v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-direct {v6, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-direct {v4, p1, v6, p0, v7}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;Landroid/app/SemWallpaperResourcesInfo;)V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 2810
    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-direct {v6, v1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;-><init>(Ljava/lang/Object;ILcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 2811
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    const/4 v6, 0x2

    invoke-direct {v3, v1, v6, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;-><init>(Ljava/lang/Object;ILcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 2814
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2815
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "appops"

    .line 2816
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2817
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2818
    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 2819
    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2820
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 2821
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 2823
    const-class p1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$LocalService-IA;)V

    invoke-static {p1, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo p1, "statusbar"

    .line 2828
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 2827
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2831
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperHandlerThread:Landroid/os/HandlerThread;

    .line 2832
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 2833
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperHanlder:Landroid/os/Handler;

    return-void
.end method

.method public static emptyCallbackList(Landroid/os/RemoteCallbackList;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/os/RemoteCallbackList<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_b

    .line 762
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static getWallpaperLockDir(I)Ljava/io/File;
    .registers 3

    .line 8503
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "wallpaper_lock_images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$attachServiceLocked$15(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3

    .line 5485
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method private synthetic lambda$completeUnlockUser$9(I)V
    .registers 7

    .line 3175
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 3176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper_selinux_restorecon-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3178
    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p0

    .line 3179
    sget-object p1, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_38

    aget-object v3, p1, v2

    .line 3180
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3181
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 3182
    invoke-static {v4}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_3c

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 3186
    :cond_38
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_3c
    move-exception p0

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3187
    throw p0
.end method

.method public static synthetic lambda$dump$16(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3

    const-string v0, "     mDisplayId="

    .line 6685
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6686
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "     mToken="

    .line 6687
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6688
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "     mEngine="

    .line 6689
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6690
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$dump$17(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3

    const-string v0, "     mDisplayId="

    .line 6715
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6716
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "     mToken="

    .line 6717
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6718
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "     mEngine="

    .line 6719
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6720
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$dump$18(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;)V
    .registers 3

    const-string v0, "  displayId="

    .line 6731
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6732
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mWidth="

    .line 6733
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6734
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mHeight="

    .line 6735
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6736
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mPadding="

    .line 6737
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$errorCheck$7(ILjava/lang/Integer;Ljava/lang/String;)V
    .registers 6

    .line 3095
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3096
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_3c

    .line 3097
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wallpaper tyep = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wallpaper fail detect!! reset to default wallpaper"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "WallpaperManagerService"

    invoke-static {v1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperData(II)V

    .line 3100
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3c
    return-void
.end method

.method public static synthetic lambda$generateCrop$1(ILandroid/graphics/Rect;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 5

    .line 1271
    invoke-virtual {p2, p0}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 1272
    invoke-virtual {p2, p1}, Landroid/graphics/ImageDecoder;->setCrop(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$notifyGoingToSleep$11(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 10

    .line 4198
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_12

    :try_start_4
    const-string v1, "android.wallpaper.goingtosleep"

    const/4 v4, -0x1

    move v2, p0

    move v3, p1

    move-object v5, p2

    .line 4200
    invoke-interface/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p0

    .line 4204
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_12
    :goto_12
    return-void
.end method

.method public static synthetic lambda$notifyWakingUp$10(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 10

    .line 4176
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_12

    :try_start_4
    const-string v1, "android.wallpaper.wakingup"

    const/4 v4, -0x1

    move v2, p0

    move v3, p1

    move-object v5, p2

    .line 4178
    invoke-interface/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p0

    .line 4181
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_12
    :goto_12
    return-void
.end method

.method private synthetic lambda$notifyWallpaperColorsChanged$0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 4

    .line 699
    iget p3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    return-void
.end method

.method private synthetic lambda$onBootPhase$5()V
    .registers 1

    .line 3073
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V

    return-void
.end method

.method private synthetic lambda$onBootPhase$6()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3081
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    return-void
.end method

.method private synthetic lambda$onUnlockUser$8(I)V
    .registers 2

    .line 3119
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->completeUnlockUser(I)V

    return-void
.end method

.method private synthetic lambda$setWallpaper$13(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4582
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x64

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$setWallpaperComponent$14(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 7

    .line 4968
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_16

    const-string v1, "android.wallpaper.reapply"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4969
    invoke-interface/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    const-string v0, "WallpaperManagerService"

    const-string v1, "Error sending apply message to wallpaper"

    .line 4973
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_16
    return-void
.end method

.method public static synthetic lambda$setWallpaperDimAmountForUid$12(FLcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3

    .line 4366
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz p1, :cond_10

    .line 4368
    :try_start_4
    invoke-interface {p1, p0}, Landroid/service/wallpaper/IWallpaperEngine;->applyDimming(F)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string p1, "WallpaperManagerService"

    const-string v0, "Can\'t apply dimming on wallpaper display connector"

    .line 4370
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public static synthetic lambda$updateFallbackConnection$2(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 2

    .line 1901
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_7

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->disconnectLocked()V

    :cond_7
    return-void
.end method

.method public static synthetic lambda$updateFallbackConnection$3(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .registers 3

    .line 1909
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isUsableDisplay(Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1910
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_18

    .line 1911
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private synthetic lambda$updateFallbackConnection$4(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 4

    .line 1913
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v0, :cond_9

    .line 1914
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p2, p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p3, v0, :cond_10

    const/4 v0, 0x1

    if-ne p3, v0, :cond_7

    goto :goto_10

    .line 4275
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4277
    :cond_10
    :goto_10
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getEngine(III)Landroid/service/wallpaper/IWallpaperEngine;

    move-result-object p3

    if-nez p3, :cond_17

    return-void

    .line 4279
    :cond_17
    iget-object p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 4280
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/wallpaper/LocalColorRepository;->addAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)V

    .line 4281
    monitor-exit p4
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_24

    .line 4282
    invoke-interface {p3, p2}, Landroid/service/wallpaper/IWallpaperEngine;->addLocalColorsAreas(Ljava/util/List;)V

    return-void

    :catchall_24
    move-exception p0

    .line 4281
    :try_start_25
    monitor-exit p4
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public applyWallpaperColors(Ljava/util/List;IIILjava/lang/String;)V
    .registers 9

    .line 6870
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_7b

    const-string v0, "WallpaperManagerService"

    .line 6874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyWallpaperColors colors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6875
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 6877
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6878
    :try_start_25
    invoke-virtual {p0, v0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 6879
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_78

    if-eqz v2, :cond_69

    .line 6882
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mColorTheme:Lcom/samsung/server/wallpaper/ColorTheme;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/samsung/server/wallpaper/ColorTheme;->applyWallpaperColors(Ljava/util/List;IILcom/samsung/server/wallpaper/SemWallpaperData;)V

    .line 6883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyWallpaperColors : colors = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , sNum = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , lNum = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , which = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , calling pkg = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->putLog(Ljava/lang/String;)V

    .line 6887
    :cond_69
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6888
    :try_start_6c
    invoke-static {p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    .line 6889
    monitor-exit p1

    return-void

    :catchall_75
    move-exception p0

    monitor-exit p1
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_75

    throw p0

    :catchall_78
    move-exception p0

    .line 6879
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0

    .line 6871
    :cond_7b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call applyWallpaperColors"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3

    .line 5485
    new-instance p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final bindComponentNow(I)Z
    .registers 5

    .line 5059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindComponentNow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5061
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    return v1

    .line 5071
    :cond_1e
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_34

    .line 5072
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_33
    return v2

    .line 5077
    :cond_34
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_4d

    .line 5078
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLidState()I

    move-result p0

    if-nez p0, :cond_45

    .line 5079
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_4c

    return v2

    .line 5083
    :cond_45
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result p0

    if-eqz p0, :cond_4c

    return v2

    :cond_4c
    return v1

    :cond_4d
    return v2
.end method

.method public final bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 5126
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    move-result p0

    return p0
.end method

.method public final bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 5131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " force="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WallpaperManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    if-nez v0, :cond_32

    .line 5133
    invoke-virtual {v1, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v0

    if-eqz v0, :cond_32

    return v5

    :cond_32
    const/4 v7, 0x0

    if-nez v2, :cond_84

    .line 5143
    :try_start_35
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_77

    .line 5145
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v0

    .line 5146
    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultWallpaperType(I)I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_77

    .line 5147
    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultPreloadedLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 5149
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindWallpaperComponentLocked: default Live Wallpaper : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5150
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v8, v0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultLiveWallpaperFileName(I)Ljava/lang/String;

    move-result-object v0

    .line 5151
    iget-object v8, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v8, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFileName(Ljava/lang/String;)V

    .line 5152
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0, v5}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsPreloaded(Z)V

    .line 5153
    invoke-virtual {v1, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->setKWPTypeLiveWallpaper(I)V

    :cond_77
    if-nez v2, :cond_84

    .line 5160
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const-string v0, "No default component; using image wallpaper"

    .line 5163
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_80} :catch_81

    goto :goto_84

    :catch_81
    move-exception v0

    goto/16 :goto_295

    .line 5169
    :cond_84
    :goto_84
    :try_start_84
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_b2

    if-eqz v2, :cond_b2

    .line 5170
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 5171
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_98} :catch_99

    goto :goto_b2

    :catch_99
    move-exception v0

    .line 5175
    :try_start_9a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SAFEMODE Exception occurs! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5179
    :cond_b2
    :goto_b2
    iget v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 5180
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v9, 0x1080

    invoke-interface {v8, v2, v9, v10, v0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    if-nez v8, :cond_d8

    .line 5184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted wallpaper "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_d8
    const-string v9, "android.permission.BIND_WALLPAPER"

    .line 5187
    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ff

    .line 5188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected service does not have android.permission.BIND_WALLPAPER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_f9

    .line 5194
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 5192
    :cond_f9
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ff
    const/4 v9, 0x0

    .line 5199
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.service.wallpaper.WallpaperService"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_145

    .line 5204
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v2, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_145

    if-nez p6, :cond_145

    .line 5207
    invoke-virtual {v1, v10, v8, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInfo(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;IZ)Landroid/app/WallpaperInfo;

    move-result-object v9

    if-nez v9, :cond_126

    .line 5209
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.android.service.wallpaper.LiveWallpaperService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5210
    invoke-virtual {v1, v9, v8, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInfo(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;IZ)Landroid/app/WallpaperInfo;

    move-result-object v8

    move-object v10, v9

    move-object v9, v8

    :cond_126
    if-nez v9, :cond_149

    .line 5214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected service is not a wallpaper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_13f

    .line 5219
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 5217
    :cond_13f
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_145
    if-eqz p6, :cond_149

    move-object/from16 v9, p6

    :cond_149
    if-eqz v9, :cond_17c

    .line 5227
    invoke-virtual {v9}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v8

    if-eqz v8, :cond_17c

    .line 5228
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v11, "android.permission.AMBIENT_WALLPAPER"

    .line 5229
    invoke-virtual {v9}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 5228
    invoke-interface {v8, v11, v12, v0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_17c

    .line 5232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected service does not have android.permission.AMBIENT_WALLPAPER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_176

    .line 5238
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 5236
    :cond_176
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5245
    :cond_17c
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-wide/32 v12, 0x10000000

    iget v14, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v8, v11, v12, v13, v14}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    .line 5247
    new-instance v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {v11, v1, v9, v4, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 5248
    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v8, "android.intent.extra.client_label"

    const v9, 0x1040efb

    .line 5249
    invoke-virtual {v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "android.intent.extra.client_intent"

    .line 5251
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v15, 0x10402c7

    .line 5254
    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 5253
    invoke-static {v9, v14}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v14

    const/high16 v15, 0x4000000

    const/16 v16, 0x0

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v17, v9

    .line 5251
    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5256
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v9, 0x22001001

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v10, v11, v9, v12}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1f3

    .line 5261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to bind service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_1ed

    .line 5266
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 5264
    :cond_1ed
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5271
    :cond_1f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindService success connect : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5281
    iget v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v8, :cond_229

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 5282
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_229

    .line 5283
    invoke-virtual {v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLastWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_21e

    .line 5285
    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 5288
    :cond_21e
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->rebindWallpaper(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v0

    if-eqz v0, :cond_229

    .line 5289
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v0, v5, v5}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->handleWallpaperBindingTimeout(ZZ)V

    .line 5293
    :cond_229
    iput-object v2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 5294
    iput-object v11, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v8, p5

    .line 5295
    iput-object v8, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 5297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wallpaper userId = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , current user Id = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5303
    iget v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v9}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOldUserId()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->getConvertedUserId(II)I

    move-result v8

    if-ne v0, v8, :cond_291

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_291

    .line 5305
    invoke-virtual {v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->setLastWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 5307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLastWallpaper wallpaperComponent = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " nextWallpaperComponent="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5310
    :cond_291
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateFallbackConnection()V
    :try_end_294
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_294} :catch_81

    return v5

    .line 5312
    :goto_295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_2b4

    .line 5316
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 5314
    :cond_2b4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 3

    .line 5096
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz p0, :cond_13

    .line 5097
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 p2, 0x1

    if-nez p0, :cond_c

    if-nez p1, :cond_13

    return p2

    .line 5103
    :cond_c
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    return p2

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final checkPermission(Ljava/lang/String;)V
    .registers 4

    .line 5510
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 5511
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access denied to process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", must have permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .registers 8

    .line 6777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkWallpaperData userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wpType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wallpaperFile= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2b

    return-void

    .line 6781
    :cond_2b
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-eqz p3, :cond_30

    return-void

    .line 6784
    :cond_30
    invoke-static {p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result p3

    if-eqz p3, :cond_3b

    .line 6785
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v0

    goto :goto_3f

    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    :goto_3f
    const/4 v1, 0x0

    .line 6786
    invoke-static {p4, p3, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 6788
    invoke-static {p4, p3, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v2

    .line 6791
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setDefaultWallpaperData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_51

    .line 6793
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_53

    :cond_51
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 6794
    :goto_53
    invoke-static {p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p4

    invoke-virtual {p3, p1, p4, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->put(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 6795
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method public final cleanUpWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 7

    const-string p0, "WallpaperManagerService"

    const-string v0, "cleanUpWallpaperData"

    .line 6893
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1c5

    .line 6895
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    .line 6896
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_VIDEO_WALLPAPER:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_81

    if-eq v0, v2, :cond_81

    .line 6898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete video thumbnail file. wpType="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6899
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_81

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 6900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete video thumbnail file path : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6901
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 6902
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFirstFrameFile(Ljava/io/File;)V

    .line 6903
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoPkgName(Ljava/lang/String;)V

    .line 6904
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoColor(Ljava/lang/String;)V

    .line 6905
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFileName(Ljava/lang/String;)V

    :cond_81
    if-eqz v0, :cond_f3

    .line 6911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete wallpaper and crop file. wpType="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6912
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-eqz v1, :cond_c8

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 6913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete wallpaper file path : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6914
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 6915
    iput-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 6917
    :cond_c8
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v1, :cond_f3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 6918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete crop file path : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6919
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 6920
    iput-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    :cond_f3
    if-eqz v0, :cond_ff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_ff

    if-eq v0, v2, :cond_ff

    .line 6927
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setExternalParams(Landroid/os/Bundle;)V

    :cond_ff
    const/4 v1, 0x4

    if-eq v0, v1, :cond_161

    .line 6931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete animated background file. wpType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6932
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedBackground()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_161

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedBackground()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_161

    .line 6933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete animated background file path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedBackground()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6934
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedBackground()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 6935
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setAnimatedBackground(Ljava/io/File;)V

    .line 6936
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setAnimatedPkgName(Ljava/lang/String;)V

    :cond_161
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c3

    .line 6941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete motion background file. wpType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6942
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionBackground()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1c3

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionBackground()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c3

    .line 6943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete motion background file path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionBackground()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6944
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionBackground()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 6945
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setMotionBackground(Ljava/io/File;)V

    .line 6946
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setMotionPkgName(Ljava/lang/String;)V

    .line 6950
    :cond_1c3
    iput-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    :cond_1c5
    return-void
.end method

.method public clearWallpaper(Ljava/lang/String;II)V
    .registers 18

    move-object v0, p0

    move-object v6, p1

    move/from16 v1, p2

    const-string v2, "WallpaperManagerService"

    .line 3422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearWallpaper: callingPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WallpaperManagerService"

    .line 3423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearWallpaper: callingPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission.SET_WALLPAPER"

    .line 3426
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 3427
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_107

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    goto/16 :goto_107

    .line 3431
    :cond_53
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v2, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->isSupportingMode(I)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v0, "WallpaperManagerService"

    .line 3432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearWallpaper ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] mode isn\'t support"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3436
    :cond_7b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 3437
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "clearWallpaper"

    const/4 v13, 0x0

    move/from16 v9, p3

    .line 3436
    invoke-static/range {v7 .. v13}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    .line 3440
    iget-object v9, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_92
    const-string v2, "com.samsung.android.themecenter"

    .line 3452
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 3453
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v2, v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result v1

    :cond_a2
    move v10, v1

    .line 3456
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v1, v10}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->removeSnapshotByWhich(I)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v10

    move v4, v7

    move-object v6, p1

    .line 3457
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;Ljava/lang/String;)V

    .line 3459
    invoke-static {v10}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x4

    if-eqz v1, :cond_cd

    .line 3460
    invoke-static {v10}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 3461
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v1, v7, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v8

    goto :goto_cd

    .line 3463
    :cond_c7
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v1, v7, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v8

    .line 3466
    :cond_cd
    :goto_cd
    invoke-static {v10}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v1

    if-nez v1, :cond_d5

    if-nez v8, :cond_f7

    .line 3467
    :cond_d5
    invoke-static {v10}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 3468
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v1, v7, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v8

    goto :goto_f7

    .line 3469
    :cond_e2
    invoke-static {v10}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 3470
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    const/16 v2, 0x20

    invoke-virtual {v1, v7, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v8

    goto :goto_f7

    .line 3472
    :cond_f1
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v1, v7, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v8

    .line 3476
    :cond_f7
    :goto_f7
    monitor-exit v9
    :try_end_f8
    .catchall {:try_start_92 .. :try_end_f8} :catchall_104

    if-eqz v8, :cond_103

    .line 3480
    invoke-virtual {p0, v8, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3481
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    :cond_103
    return-void

    :catchall_104
    move-exception v0

    .line 3476
    :try_start_105
    monitor-exit v9
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    throw v0

    :cond_107
    :goto_107
    return-void
.end method

.method public final clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3

    const/4 v0, 0x0

    .line 5480
    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 5481
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method public final clearWallpaperData(II)V
    .registers 6

    .line 3106
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_d

    const-string/jumbo v2, "wallpaper_lock_orig"

    goto :goto_10

    :cond_d
    const-string/jumbo v2, "wallpaper_orig"

    :goto_10
    if-ne p2, v1, :cond_16

    const-string/jumbo p2, "wallpaper_lock"

    goto :goto_19

    :cond_16
    const-string/jumbo p2, "wallpaper"

    .line 3108
    :goto_19
    invoke-direct {v0, p1, p0, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 3109
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 3110
    iget-object p0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 3112
    :cond_27
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result p0

    if-eqz p0, :cond_32

    .line 3113
    iget-object p0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_32
    return-void
.end method

.method public clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 3490
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;Ljava/lang/String;)V

    return-void
.end method

.method public clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v0, p5

    const-string v1, "clearWallpaperLocked: Reset to default video wallpaper. But we don\'t update settings."

    .line 3494
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSingleType(I)Z

    move-result v2

    if-eqz v2, :cond_239

    .line 3505
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v2

    .line 3506
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_26

    .line 3507
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v3, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    if-nez v3, :cond_37

    return-void

    .line 3517
    :cond_26
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v3, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    if-nez v3, :cond_37

    .line 3520
    invoke-virtual {v7, v9, v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 3521
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v3, v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    :cond_37
    move-object v11, v3

    if-nez v11, :cond_3b

    return-void

    .line 3528
    :cond_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3553
    :try_start_3f
    invoke-virtual {v11}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_6a

    invoke-virtual {v11}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 3554
    invoke-virtual {v11}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3555
    iget-object v3, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-object v3, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_6a

    const/4 v3, 0x1

    goto :goto_6b

    :cond_6a
    move v3, v4

    .line 3560
    :goto_6b
    invoke-virtual {v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->resetWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3561
    iget-object v6, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v7, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->resetSemWallpaperData(Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    .line 3563
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v6
    :try_end_77
    .catchall {:try_start_3f .. :try_end_77} :catchall_234

    const/4 v14, 0x5

    const-string v15, "(clear)"

    const-string v4, "WallpaperManagerService"

    if-eqz v6, :cond_170

    .line 3564
    :try_start_7e
    iget-object v6, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    .line 3566
    invoke-virtual {v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    const-string v10, "com.android.wallpaperbackup"

    .line 3568
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_96

    const-string v0, "clearWallpaperLocked: DO NOT RESTORE TO DEFAULT LOCK WALLPAPER."

    .line 3569
    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 3570
    invoke-virtual {v7, v0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(II)V

    goto/16 :goto_160

    .line 3573
    :cond_96
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v10

    if-eqz v10, :cond_f0

    .line 3574
    invoke-virtual {v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultWallpaperType(I)I

    move-result v10

    const/16 v5, 0x8

    if-ne v10, v5, :cond_f0

    iget-object v5, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v10, 0x2

    .line 3575
    invoke-static {v5, v10}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_f0

    const-string v2, "com.android.wallpaper.livepicker"

    .line 3577
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    :goto_b5
    const/4 v2, 0x0

    goto :goto_cc

    .line 3581
    :cond_b7
    invoke-virtual {v7, v9, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 3582
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 3583
    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsPreloaded()Z

    move-result v5

    if-eqz v5, :cond_cb

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v2

    const/4 v5, 0x7

    if-ne v2, v5, :cond_cb

    goto :goto_b5

    :cond_cb
    const/4 v2, 0x1

    :goto_cc
    if-nez v2, :cond_d4

    .line 3588
    invoke-static {v4, v1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    invoke-static {v4, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    :cond_d4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3593
    invoke-virtual {v7, v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->initVideoWallpaper(ZZ)V

    if-nez v3, :cond_15a

    .line 3595
    invoke-virtual {v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_15a

    .line 3598
    :cond_f0
    iget-object v1, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v3

    invoke-virtual {v1, v9, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->remove(II)V

    .line 3599
    invoke-virtual {v7, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    .line 3600
    invoke-virtual {v7, v9, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3601
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    iget-object v3, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistories()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWallpaperHistories(Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;)V

    .line 3602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V
    :try_end_11d
    .catchall {:try_start_7e .. :try_end_11d} :catchall_234

    .line 3604
    :try_start_11d
    invoke-virtual {v7, v9, v8, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultMultipack(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 3605
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    .line 3606
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultMultiPackUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setUri(Ljava/lang/String;)V

    .line 3607
    invoke-virtual {v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3608
    invoke-virtual {v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyMultipackApplied(I)V

    goto :goto_15a

    .line 3610
    :cond_139
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    .line 3611
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    invoke-virtual {v7, v0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(II)V

    .line 3614
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V
    :try_end_155
    .catch Ljava/lang/NullPointerException; {:try_start_11d .. :try_end_155} :catch_156
    .catchall {:try_start_11d .. :try_end_155} :catchall_234

    goto :goto_15a

    :catch_156
    move-exception v0

    .line 3618
    :try_start_157
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 3623
    :cond_15a
    :goto_15a
    invoke-virtual {v7, v9, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 3624
    iput-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    .line 3628
    :goto_160
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 3629
    iget-object v0, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setColorThemeData(Lcom/samsung/server/wallpaper/ColorThemeData;)V
    :try_end_16c
    .catchall {:try_start_157 .. :try_end_16c} :catchall_234

    .line 3705
    :cond_16c
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 3641
    :cond_170
    :try_start_170
    iget-object v1, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_17b

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_17b

    .line 3642
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_17b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_170 .. :try_end_17b} :catch_1ec
    .catchall {:try_start_170 .. :try_end_17b} :catchall_234

    :cond_17b
    const/4 v5, 0x0

    .line 3646
    :try_start_17c
    iput-object v5, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    const/4 v1, 0x0

    .line 3647
    iput-boolean v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 3648
    iget v1, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_183
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17c .. :try_end_183} :catch_1e8
    .catchall {:try_start_17c .. :try_end_183} :catchall_234

    if-eq v9, v1, :cond_189

    .line 3705
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 3657
    :cond_189
    :try_start_189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 3658
    invoke-virtual {v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindComponentNow(I)Z

    move-result v0

    if-eqz v0, :cond_1c3

    .line 3659
    iget-object v0, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    if-eqz p1, :cond_1ad

    .line 3661
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;
    :try_end_1ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_189 .. :try_end_1ab} :catch_1e8
    .catchall {:try_start_189 .. :try_end_1ab} :catchall_234

    move-object v2, v0

    goto :goto_1ae

    :cond_1ad
    move-object v2, v5

    :goto_1ae
    const/4 v3, 0x1

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v6, v4

    move-object v15, v5

    move v4, v0

    move-object v5, v11

    move-object v14, v6

    move-object/from16 v6, p4

    .line 3660
    :try_start_1b9
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_1bd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b9 .. :try_end_1bd} :catch_1e6
    .catchall {:try_start_1b9 .. :try_end_1bd} :catchall_234

    if-eqz v0, :cond_1e4

    .line 3705
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1c3
    move-object v14, v4

    move-object v15, v5

    .line 3666
    :try_start_1c5
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1e4

    and-int/lit8 v0, v8, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e4

    const-string v0, "clearWallpaperLocked: send command to update cached wallpaper for homescreen."

    .line 3668
    invoke-static {v14, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "which"

    .line 3670
    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "refresh_cache"

    .line 3671
    invoke-virtual {v7, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->sendWindowWallpaperCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1e4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c5 .. :try_end_1e4} :catch_1e6
    .catchall {:try_start_1c5 .. :try_end_1e4} :catchall_234

    :cond_1e4
    move-object v4, v15

    goto :goto_1f0

    :catch_1e6
    move-exception v0

    goto :goto_1ef

    :catch_1e8
    move-exception v0

    move-object v14, v4

    move-object v15, v5

    goto :goto_1ef

    :catch_1ec
    move-exception v0

    move-object v14, v4

    const/4 v15, 0x0

    :goto_1ef
    move-object v4, v0

    :goto_1f0
    :try_start_1f0
    const-string v0, "Default wallpaper component not found!"

    .line 3684
    invoke-static {v14, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3685
    invoke-virtual {v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3687
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_22b

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v0, :cond_22b

    .line 3689
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_208

    const/4 v0, 0x5

    goto :goto_20a

    :cond_208
    const/16 v0, 0x11

    .line 3688
    :goto_20a
    invoke-virtual {v7, v9, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    if-eqz v5, :cond_22b

    .line 3690
    iget-object v0, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_22b

    .line 3691
    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-eqz v0, :cond_22b

    const-string v0, "clearWallpaperLocked: default failed on both screen. So bind wallpaper agian"

    .line 3692
    invoke-static {v14, v0}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_227
    .catchall {:try_start_1f0 .. :try_end_227} :catchall_234

    .line 3705
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_22b
    if-eqz v10, :cond_230

    .line 3700
    :try_start_22d
    invoke-interface {v10, v15}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_230
    .catch Landroid/os/RemoteException; {:try_start_22d .. :try_end_230} :catch_230
    .catchall {:try_start_22d .. :try_end_230} :catchall_234

    .line 3705
    :catch_230
    :cond_230
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_234
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3706
    throw v0

    .line 3496
    :cond_239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper to clear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final completeUnlockUser(I)V
    .registers 7

    .line 3123
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "WallpaperManagerService"

    .line 3125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUnlockUser: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_9e

    .line 3129
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsInitialLodeSucceed:Z

    if-nez v1, :cond_37

    .line 3130
    invoke-static {}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCallStackString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->putLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3131
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3132
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsInitialLodeSucceed:Z

    if-nez v1, :cond_37

    const-string/jumbo v1, "onUnlockUser: loadSettingsLocked failed."

    .line 3133
    invoke-static {v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->putLog(Ljava/lang/String;)V

    .line 3149
    :cond_37
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_73

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v1, :cond_73

    .line 3150
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v4, 0x5

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3151
    iget v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 3152
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWaitingForUnlockUser()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 3153
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 3156
    :cond_59
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v4, 0x11

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3157
    iget v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 3158
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWaitingForUnlockUser()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 3159
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    goto :goto_85

    .line 3162
    :cond_73
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3163
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWaitingForUnlockUser()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 3164
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 3165
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3172
    :cond_85
    :goto_85
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 3173
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3174
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 3189
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3192
    :cond_9e
    monitor-exit v0

    return-void

    :catchall_a0
    move-exception p0

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_3 .. :try_end_a2} :catchall_a0

    throw p0
.end method

.method public copyFileToWallpaperFile(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 7471
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->copyFileToWallpaperFile(IZLjava/lang/String;)V

    return-void
.end method

.method public final copyFileToWallpaperFile(IZLjava/lang/String;)V
    .registers 11

    const-string v0, "WallpaperManagerService"

    .line 7480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFileToWallpaperFile: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isPreloaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7483
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 7484
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1, p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p1

    .line 7485
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    .line 7487
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 7490
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    .line 7493
    :goto_40
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 7495
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->initLockWallpaperData(II)V

    .line 7498
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    or-int/lit8 v5, v1, 0x2

    .line 7499
    :try_start_51
    invoke-virtual {p0, v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 7500
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_ef

    .line 7502
    iget-object p1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    const/4 p1, 0x1

    .line 7504
    iput-boolean p1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    or-int/lit8 v1, v1, 0x3

    .line 7505
    iput v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 7506
    iput-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 7507
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsCopied(Z)V

    .line 7508
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsPreloaded(Z)V

    if-eqz v2, :cond_9d

    .line 7510
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 7511
    iget-boolean v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iput-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 7512
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7513
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 7514
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v6}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getExternalParams()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setExternalParams(Landroid/os/Bundle;)V

    .line 7515
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setOrientation(I)V

    .line 7518
    :cond_9d
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-static {v3, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 7519
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 7520
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    const-string v1, "WallpaperManagerService"

    .line 7521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyFileToWallpaperFile: restorecon() of lock file returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7522
    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->waitForCompletion()V

    goto :goto_e0

    :cond_d1
    const-string v0, "WallpaperManagerService"

    const-string v1, "copyFileToWallpaperFile: lockWallpaper.wallpaperFile does not exist."

    .line 7524
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    :cond_d9
    const-string v0, "WallpaperManagerService"

    const-string v1, "copyFileToWallpaperFile: failed copyFile (0x03)"

    .line 7527
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7530
    :goto_e0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {v0, p1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setKWPTypeLiveWallpaper(I)V

    .line 7531
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {p0, p3, v5, p2}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->updateTransparencySettingIfNeed(Ljava/lang/String;IZ)V

    return-void

    :catchall_ef
    move-exception p0

    .line 7500
    :try_start_f0
    monitor-exit p1
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw p0
.end method

.method public copyPreloadedFileToWallpaperFile(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 7476
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->copyFileToWallpaperFile(IZLjava/lang/String;)V

    return-void
.end method

.method public final detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 8

    .line 5421
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_cf

    .line 5422
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 5424
    :try_start_9
    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_c

    .line 5427
    :catch_c
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 5431
    :cond_10
    :try_start_10
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v0, :cond_86

    const/4 v0, 0x0

    .line 5433
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v2

    .line 5434
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v0, 0x2

    goto :goto_42

    .line 5436
    :cond_25
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v0, 0x1

    goto :goto_42

    .line 5438
    :cond_2f
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 5439
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_3a} :catch_7e

    .line 5440
    :try_start_3a
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    .line 5441
    monitor-exit v0

    move v0, v3

    goto :goto_42

    :catchall_3f
    move-exception v2

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_3f

    :try_start_41
    throw v2

    :cond_42
    :goto_42
    const-string v3, "WallpaperManagerService"

    .line 5443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detach, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", display id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", whichPending = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5447
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-interface {v2, v0}, Landroid/service/wallpaper/IWallpaperService;->detach(I)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_7d} :catch_7e

    goto :goto_86

    :catch_7e
    move-exception v0

    const-string v2, "WallpaperManagerService"

    const-string v3, "Failed detaching wallpaper service "

    .line 5450
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5457
    :cond_86
    :goto_86
    :try_start_86
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_8d} :catch_8d

    .line 5461
    :catch_8d
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 5463
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 5464
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 5466
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmResetRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5467
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisconnectRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5469
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p0

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmTryToRebindRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5472
    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    :cond_cf
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 6572
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WallpaperManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v0, "mDefaultWallpaperComponent="

    .line 6574
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "mImageWallpaper="

    .line 6575
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6577
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_22
    const-string v1, "mLastWallpaper state:"

    .line 6669
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " User "

    .line 6670
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": id="

    .line 6671
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "  mCropHint="

    .line 6672
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "  mName="

    .line 6673
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mAllowBackup="

    .line 6674
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6675
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_ab

    const-string v2, "  mLastWallpaper connection "

    .line 6677
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6678
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    .line 6679
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6680
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_88

    const-string v2, "    mInfo.component="

    .line 6681
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6682
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6684
    :cond_88
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    const-string v2, "    mService="

    .line 6692
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6693
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "    mLastDiedTime="

    .line 6694
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6695
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    :cond_ab
    const-string v1, " Display state:"

    .line 6729
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6730
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->forEachDisplayData(Ljava/util/function/Consumer;)V

    .line 6740
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6741
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->dump(Ljava/io/PrintWriter;)V

    .line 6742
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->dump(Ljava/io/PrintWriter;)V

    const-string p0, "WallpaperManagerService"

    .line 6743
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6745
    monitor-exit v0

    return-void

    :catchall_ce
    move-exception p0

    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_22 .. :try_end_d0} :catchall_ce

    throw p0
.end method

.method public final enforcePackageBelongsToUid(Ljava/lang/String;I)V
    .registers 4

    .line 5529
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->packageBelongsToUid(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 5530
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid package or package does not belong to uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    .line 6302
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-ltz p0, :cond_10

    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 6303
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-gez p0, :cond_16

    .line 6304
    :cond_10
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_16
    return-void
.end method

.method public final ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V
    .registers 3

    .line 1849
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension(I)I

    move-result p0

    .line 1850
    iget p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ge p2, p0, :cond_a

    .line 1851
    iput p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 1853
    :cond_a
    iget p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-ge p2, p0, :cond_10

    .line 1854
    iput p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    :cond_10
    return-void
.end method

.method public final errorCheck(I)V
    .registers 4

    .line 3094
    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sWallpaperType:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 8

    .line 852
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 853
    :try_start_4
    iput-boolean v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mIsColorExtractedFromDim:Z

    .line 854
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_f5

    .line 856
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 857
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 858
    :try_start_12
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_1a

    monitor-exit v0

    return-void

    .line 859
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_2b

    .line 860
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object p1

    .line 861
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 862
    :try_start_22
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 863
    monitor-exit v1

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_28

    throw p0

    :catchall_2b
    move-exception p0

    .line 859
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0

    .line 867
    :cond_2e
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 869
    :try_start_31
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_43

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_41

    goto :goto_43

    :cond_41
    move v0, v1

    goto :goto_44

    :cond_43
    :goto_43
    move v0, v3

    :goto_44
    const/4 v4, 0x0

    if-eqz v0, :cond_58

    .line 871
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v5, :cond_58

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 872
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_68

    :cond_58
    if-eqz v0, :cond_67

    .line 873
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v0

    if-nez v0, :cond_67

    move v1, v3

    :cond_67
    move-object v0, v4

    .line 876
    :goto_68
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 877
    iget v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    .line 878
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_31 .. :try_end_6d} :catchall_f2

    if-eqz v0, :cond_7d

    .line 882
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_83

    .line 884
    invoke-static {v2, v5}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v4

    .line 885
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_83

    :cond_7d
    if-eqz v1, :cond_83

    .line 889
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object v4

    :cond_83
    :goto_83
    if-nez v0, :cond_b6

    if-nez v1, :cond_b6

    .line 894
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9b

    const-string v1, "WallpaperManagerService"

    const-string v2, "extractColors: crop file is none so, get colors from cropped bitmap (CSC, OMC case)"

    .line 897
    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-static {v0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v4

    goto :goto_b6

    .line 900
    :cond_9b
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    .line 901
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b6

    .line 902
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v4

    .line 907
    :cond_b6
    :goto_b6
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    if-nez v4, :cond_cd

    const-string p0, "WallpaperManagerService"

    const-string p1, "Cannot extract colors because wallpaper could not be read."

    .line 911
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 915
    :cond_cd
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 916
    :try_start_d0
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-ne v1, v3, :cond_e6

    .line 917
    iput-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 920
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    goto :goto_ed

    :cond_e6
    const-string p0, "WallpaperManagerService"

    const-string p1, "Not setting primary colors since wallpaper changed"

    .line 922
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :goto_ed
    monitor-exit v0

    return-void

    :catchall_ef
    move-exception p0

    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_d0 .. :try_end_f1} :catchall_ef

    throw p0

    :catchall_f2
    move-exception p0

    .line 878
    :try_start_f3
    monitor-exit v2
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw p0

    :catchall_f5
    move-exception p0

    .line 854
    :try_start_f6
    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    throw p0
.end method

.method public final extractDefaultImageWallpaperColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperColors;
    .registers 5

    .line 931
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    .line 933
    :cond_9
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    .line 934
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_6a

    const/4 v0, 0x0

    .line 937
    :try_start_d
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_14} :catch_4e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_45

    if-nez v1, :cond_23

    :try_start_16
    const-string p1, "WallpaperManagerService"

    const-string v2, "Can\'t open default wallpaper stream"

    .line 939
    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_39

    if-eqz v1, :cond_22

    .line 949
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_22} :catch_4e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_45

    :cond_22
    return-object v0

    .line 943
    :cond_23
    :try_start_23
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 944
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 946
    invoke-static {v2, p1}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v0

    .line 947
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_39

    .line 949
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_35 .. :try_end_38} :catch_4e
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_45

    goto :goto_56

    :catchall_39
    move-exception p1

    if-eqz v1, :cond_44

    .line 937
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v1

    :try_start_41
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw p1
    :try_end_45
    .catch Ljava/lang/OutOfMemoryError; {:try_start_41 .. :try_end_45} :catch_4e
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_45} :catch_45

    :catch_45
    move-exception p1

    const-string v1, "WallpaperManagerService"

    const-string v2, "Can\'t close default wallpaper stream"

    .line 952
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    :catch_4e
    move-exception p1

    const-string v1, "WallpaperManagerService"

    const-string v2, "Can\'t decode default wallpaper stream"

    .line 950
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    if-nez v0, :cond_60

    const-string p0, "WallpaperManagerService"

    const-string p1, "Extract default image wallpaper colors failed"

    .line 956
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 958
    :cond_60
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 959
    :try_start_63
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    .line 960
    monitor-exit p1

    :goto_66
    return-object v0

    :catchall_67
    move-exception p0

    monitor-exit p1
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_67

    throw p0

    :catchall_6a
    move-exception p0

    .line 934
    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2884
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, 0x0

    move v1, v0

    .line 2885
    :goto_5
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 2886
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->valueAt(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 2887
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2892
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 2893
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->valueAt(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 2894
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_31
    return-void
.end method

.method public final findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 4

    .line 4492
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_11

    .line 4493
    invoke-virtual {v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 4494
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object p0

    .line 4496
    :cond_11
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    return-object p0
.end method

.method public forEachDisplayData(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;",
            ">;)V"
        }
    .end annotation

    .line 1868
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1869
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 1870
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public forceRebindWallpaper(II)V
    .registers 12

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 8260
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 8261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8263
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_41

    .line 8264
    :try_start_c
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v7

    const-string p2, "WallpaperManagerService"

    .line 8265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceRebindWallpaper: which ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", component = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8266
    iget-object v4, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 8267
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_3e

    .line 8269
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3e
    move-exception p0

    .line 8267
    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p0

    .line 8269
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8270
    throw p0
.end method

.method public generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 974
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2, v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDisplayId(Lcom/samsung/server/wallpaper/SemWallpaperData;)I

    move-result v2

    .line 975
    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v3

    .line 976
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 977
    new-instance v5, Landroid/view/DisplayInfo;

    invoke-direct {v5}, Landroid/view/DisplayInfo;-><init>()V

    .line 978
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 981
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 982
    :cond_31
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getOrientation()I

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 983
    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result v2

    if-eqz v2, :cond_53

    .line 984
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getOrientation()I

    move-result v2

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v6}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result v6

    if-eq v2, v6, :cond_53

    .line 985
    iget v2, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 986
    iget v6, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v6, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 987
    iput v2, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 992
    :cond_53
    iget v2, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    if-eqz v2, :cond_5cd

    iget v2, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    if-nez v2, :cond_5d

    goto/16 :goto_5cd

    .line 998
    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Generating crop for new wallpaper(s): 0x"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 999
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    .line 1000
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " crop=("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x78

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") dim=("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "WallpaperManagerService"

    .line 998
    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x1

    .line 1007
    iput-boolean v10, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1012
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lcom/samsung/android/app/SemWallpaperUtils;->decodeFileConsiderQMG(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1015
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateCrop  info=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v13, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v13, " options=("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v14, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v14, " preload="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 1018
    invoke-virtual {v15}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsPreloaded()Z

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1015
    invoke-static {v9, v11}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v12, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, " dim=("

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 1024
    invoke-virtual {v6}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsPreloaded()Z

    move-result v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1019
    invoke-static {v9, v6}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v7, 0x0

    if-lez v6, :cond_5aa

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v6, :cond_180

    goto/16 :goto_5aa

    .line 1036
    :cond_180
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_194

    .line 1037
    iput v7, v4, Landroid/graphics/Rect;->top:I

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 1038
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 1039
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    :cond_192
    move v6, v7

    goto :goto_1c6

    .line 1068
    :cond_194
    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v6, v8, :cond_19c

    sub-int/2addr v8, v6

    goto :goto_19d

    :cond_19c
    move v8, v7

    .line 1069
    :goto_19d
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v6, v11, :cond_1a5

    sub-int/2addr v11, v6

    goto :goto_1a6

    :cond_1a5
    move v11, v7

    .line 1067
    :goto_1a6
    invoke-virtual {v4, v8, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 1072
    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-gez v6, :cond_1af

    .line 1073
    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 1075
    :cond_1af
    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_1b5

    .line 1076
    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1080
    :cond_1b5
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-gt v6, v8, :cond_1c5

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1081
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v6, v8, :cond_192

    :cond_1c5
    move v6, v10

    .line 1085
    :goto_1c6
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v11, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-gt v8, v11, :cond_1e5

    .line 1086
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v11

    if-gt v8, v11, :cond_1e5

    .line 1087
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v11

    if-le v8, v11, :cond_1e3

    goto :goto_1e5

    :cond_1e3
    move v8, v7

    goto :goto_1e6

    :cond_1e5
    :goto_1e5
    move v8, v10

    :goto_1e6
    const/4 v11, 0x2

    if-eqz v8, :cond_2fb

    .line 1099
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v12}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getOrientation()I

    move-result v12

    if-ne v12, v11, :cond_22a

    .line 1100
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v12

    if-nez v12, :cond_219

    sget-boolean v12, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v12, :cond_208

    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v12}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v12

    invoke-static {v12}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v12

    if-nez v12, :cond_208

    goto :goto_219

    .line 1104
    :cond_208
    iget v12, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v13, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1105
    iget v13, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v14, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_23a

    .line 1101
    :cond_219
    :goto_219
    iget v12, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v13, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1102
    iget v13, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v14, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_23a

    .line 1108
    :cond_22a
    iget v12, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v13, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1109
    iget v13, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v14, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_23a
    int-to-float v13, v13

    .line 1113
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 1114
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    float-to-int v13, v14

    if-ge v13, v12, :cond_2fb

    .line 1117
    iget v6, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v6, v6

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    .line 1121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "before center crop "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v6

    float-to-int v6, v12

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/2addr v5, v11

    .line 1123
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 1124
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 1125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after center crop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v5, :cond_2fa

    .line 1133
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v5}, Lcom/samsung/server/wallpaper/SemWallpaperData;->isThemeContents()Z

    move-result v5

    if-eqz v5, :cond_2fa

    .line 1134
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v5, v6, :cond_2fa

    const-string v5, "generateCrop: Center crop."

    .line 1135
    invoke-static {v9, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v11

    .line 1137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateCrop: [before] cropHint.top = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", cropHint.bottom = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1139
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 1140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateCrop: [after] cropHint.top = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2fa
    move v6, v10

    .line 1147
    :cond_2fb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crop: w="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " h="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dims: w="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "meas: w="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crop?="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " scale?="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_37b

    if-eqz v8, :cond_383

    .line 1157
    :cond_37b
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v5}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsPreloaded()Z

    move-result v5

    if-eqz v5, :cond_394

    .line 1166
    :cond_383
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_5b0

    .line 1169
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_5b0

    .line 1188
    :cond_394
    :try_start_394
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    div-int/2addr v6, v8

    move v8, v10

    :goto_39c
    mul-int/lit8 v12, v8, 0x2

    if-gt v12, v6, :cond_3a2

    move v8, v12

    goto :goto_39c

    .line 1193
    :cond_3a2
    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1194
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1196
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1201
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0, v6, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->scaleEstimateCrop(Landroid/graphics/Rect;I)V

    .line 1203
    iget v12, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v12, v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 1204
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v13, v13

    .line 1205
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v12

    float-to-int v14, v14

    .line 1208
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v15

    if-le v14, v15, :cond_417

    iget-object v15, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v15}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v15

    invoke-static {v15}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v15

    if-nez v15, :cond_417

    .line 1209
    iget v15, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v15, v15

    div-float/2addr v15, v12

    float-to-int v15, v15

    .line 1210
    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v12

    float-to-int v3, v3

    const-string v5, "Invalid crop dimensions, trying to adjust."

    .line 1213
    invoke-static {v9, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1217
    iget v5, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v17

    sub-int v17, v17, v3

    div-int/lit8 v17, v17, 0x2

    add-int v5, v5, v17

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 1218
    iget v5, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    sub-int v17, v17, v15

    div-int/lit8 v17, v17, 0x2

    add-int v5, v5, v17

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 1219
    iget v11, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v3

    iput v11, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v15

    .line 1220
    iput v5, v6, Landroid/graphics/Rect;->bottom:I

    .line 1221
    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1226
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0, v6, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->scaleEstimateCrop(Landroid/graphics/Rect;I)V

    .line 1233
    :cond_417
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    float-to-int v3, v3

    .line 1234
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v12

    float-to-int v5, v5

    .line 1237
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v11
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_394 .. :try_end_429} :catch_592
    .catchall {:try_start_394 .. :try_end_429} :catchall_58d

    const-string/jumbo v15, "x"

    if-le v5, v11, :cond_461

    :try_start_42e
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v11}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v11

    invoke-static {v11}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v11

    if-eqz v11, :cond_461

    .line 1238
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v11

    sub-int/2addr v11, v10

    int-to-float v3, v3

    int-to-float v7, v11

    int-to-float v5, v5

    div-float/2addr v7, v5

    mul-float/2addr v3, v7

    float-to-int v3, v3

    .line 1241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "safe="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v11

    :cond_461
    const-string v7, "Decode parameters:"

    .line 1246
    invoke-static {v9, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  cropHint="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", estimateCrop="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  down sampling="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hRatio="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  dest="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  safe="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  maxTextureSize="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "wallpaper_orig"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4fe

    const-string v2, "decode_record"

    goto :goto_500

    :cond_4fe
    const-string v2, "decode_lock_record"

    .line 1262
    :goto_500
    new-instance v4, Ljava/io/File;

    iget v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "record path ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", record name ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 1268
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 1270
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v2, v8, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda7;-><init>(ILandroid/graphics/Rect;)V

    invoke-static {v0, v2}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1275
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-nez v0, :cond_551

    const-string v0, "Could not decode new wallpaper"

    .line 1283
    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    goto :goto_571

    .line 1286
    :cond_551
    invoke-static {v0, v5, v3, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1296
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_55c
    .catch Ljava/lang/Exception; {:try_start_42e .. :try_end_55c} :catch_592
    .catchall {:try_start_42e .. :try_end_55c} :catchall_58d

    .line 1297
    :try_start_55c
    new-instance v3, Ljava/io/BufferedOutputStream;

    const v4, 0x8000

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_564
    .catch Ljava/lang/Exception; {:try_start_55c .. :try_end_564} :catch_588
    .catchall {:try_start_55c .. :try_end_564} :catchall_583

    .line 1302
    :try_start_564
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1304
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_56e
    .catch Ljava/lang/Exception; {:try_start_564 .. :try_end_56e} :catch_57e
    .catchall {:try_start_564 .. :try_end_56e} :catchall_579

    move-object/from16 v16, v2

    move-object v5, v3

    .line 1312
    :goto_571
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1313
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move v7, v10

    goto :goto_5b0

    :catchall_579
    move-exception v0

    move-object/from16 v16, v2

    move-object v5, v3

    goto :goto_5a3

    :catch_57e
    move-exception v0

    move-object/from16 v16, v2

    move-object v5, v3

    goto :goto_596

    :catchall_583
    move-exception v0

    move-object/from16 v16, v2

    const/4 v5, 0x0

    goto :goto_5a3

    :catch_588
    move-exception v0

    move-object/from16 v16, v2

    const/4 v5, 0x0

    goto :goto_596

    :catchall_58d
    move-exception v0

    const/4 v5, 0x0

    const/16 v16, 0x0

    goto :goto_5a3

    :catch_592
    move-exception v0

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_596
    :try_start_596
    const-string v2, "Error decoding crop"

    .line 1309
    invoke-static {v9, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59b
    .catchall {:try_start_596 .. :try_end_59b} :catchall_5a2

    .line 1312
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1313
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_5af

    :catchall_5a2
    move-exception v0

    .line 1312
    :goto_5a3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1313
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1314
    throw v0

    :cond_5aa
    :goto_5aa
    const-string v0, "Invalid wallpaper data"

    .line 1029
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5af
    const/4 v7, 0x0

    :cond_5b0
    :goto_5b0
    if-nez v7, :cond_5bc

    const-string v0, "Unable to apply new wallpaper"

    .line 1319
    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1323
    :cond_5bc
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5cd

    .line 1324
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    :cond_5cd
    :goto_5cd
    return-void
.end method

.method public getAdjustedWallpaperColorsOnDimming(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperColors;
    .registers 6

    .line 4474
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 4475
    :try_start_3
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v0, :cond_31

    .line 4478
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_31

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_31

    .line 4480
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    and-int/lit8 p1, p1, -0x2

    and-int/lit8 p1, p1, -0x3

    .line 4483
    new-instance v1, Landroid/app/WallpaperColors;

    .line 4484
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getSecondaryColor()Landroid/graphics/Color;

    move-result-object v3

    .line 4485
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getTertiaryColor()Landroid/graphics/Color;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p1}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    monitor-exit p0

    return-object v1

    .line 4487
    :cond_31
    monitor-exit p0

    return-object v0

    :catchall_33
    move-exception p1

    .line 4488
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public getAnimatedPkgName(I)Ljava/lang/String;
    .registers 5

    .line 7346
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 7347
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v2, p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    .line 7348
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_39

    if-eqz p0, :cond_30

    .line 7350
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedPkgName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallpaperManagerService"

    .line 7351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnimatedPkgName userId=0 name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_30
    const-string p0, "WallpaperManagerService"

    const-string p1, "Lock wallpaper data is null. So animated package name is null"

    .line 7355
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :catchall_39
    move-exception p0

    .line 7348
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final getAttributeFloat(Landroid/util/TypedXmlPullParser;Ljava/lang/String;F)F
    .registers 4

    const/4 p0, 0x0

    .line 5932
    invoke-interface {p1, p0, p2, p3}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public final getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 4

    const/4 p0, 0x0

    .line 5928
    invoke-interface {p1, p0, p2, p3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getConvertedUserId(II)I
    .registers 3

    .line 8492
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, -0x2710

    if-ne p2, p0, :cond_c

    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    move p1, p2

    :cond_d
    :goto_d
    return p1
.end method

.method public final getCoverWallpaperInfo(Landroid/content/ComponentName;I)Landroid/app/WallpaperInfo;
    .registers 8

    .line 5041
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 5047
    :cond_6
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.service.wallpaper.CoverWallpaperService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5048
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v3, 0x1080

    invoke-interface {v2, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    const/4 v2, 0x1

    .line 5050
    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInfo(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;IZ)Landroid/app/WallpaperInfo;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 5052
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1f
    return-object v1
.end method

.method public final getCurrentUserId()I
    .registers 1

    .line 8618
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-gez p0, :cond_5

    const/4 p0, 0x0

    :cond_5
    return p0
.end method

.method public getCurrentWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2790
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2792
    :try_start_3
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_e

    :cond_c
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 2793
    :goto_e
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 2794
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final getDefaultMultiPackUri(I)Ljava/lang/String;
    .registers 6

    .line 8295
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultMultipackStyle(I)Ljava/lang/String;

    move-result-object p0

    .line 8299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_68

    const-string p1, "MULTIPLE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_68

    :cond_15
    const-string p1, "="

    .line 8304
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const-string v0, ":"

    .line 8306
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2b

    .line 8307
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    const-string/jumbo v1, "tilt"

    if-ne v0, v2, :cond_37

    .line 8310
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    goto :goto_42

    .line 8312
    :cond_37
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 8313
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    move-object v3, p1

    move p1, p0

    move-object p0, v3

    .line 8315
    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipack"

    .line 8316
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    .line 8317
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_63

    const-string p0, "?"

    .line 8319
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=true"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8321
    :cond_63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_68
    :goto_68
    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "startMultipleWallpaper: defaultWallpaperStyle is empty or not MULTIPLE!"

    .line 8300
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultPreloadedLiveWallpaperComponentName(I)Landroid/content/ComponentName;
    .registers 4

    .line 9219
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 9222
    :try_start_8
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 9223
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0xc0000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    const/4 p1, 0x0

    :cond_19
    :goto_19
    return-object p1
.end method

.method public getDefaultWallpaperType(I)I
    .registers 3

    .line 9234
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDesktopMode()I
    .registers 1

    .line 6761
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/DesktopMode;->getDesktopMode()I

    move-result p0

    return p0
.end method

.method public getDeviceColor()Ljava/lang/String;
    .registers 1

    .line 8031
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .registers 3

    .line 1838
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    if-nez v0, :cond_17

    .line 1840
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    invoke-direct {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;-><init>(I)V

    .line 1841
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    .line 1842
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_17
    return-object v0
.end method

.method public getDisplayId(I)I
    .registers 2

    .line 7451
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDisplayId(I)I

    move-result p0

    return p0
.end method

.method public final getEngine(III)Landroid/service/wallpaper/IWallpaperEngine;
    .registers 8

    .line 4253
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return-object v0

    .line 4255
    :cond_8
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-nez p2, :cond_d

    return-object v0

    .line 4258
    :cond_d
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, 0x0

    .line 4259
    :goto_11
    :try_start_11
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 4260
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    .line 4261
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    if-eq v2, p3, :cond_3a

    if-eq v3, p1, :cond_3a

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 4263
    :cond_3a
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 4266
    :cond_46
    monitor-exit p0

    return-object v0

    :catchall_48
    move-exception p1

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_11 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public getHeightHint(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3848
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3849
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3852
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 3854
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object p0

    .line 3855
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    monitor-exit v0

    return p0

    :cond_1d
    const/4 p0, 0x0

    .line 3857
    monitor-exit v0

    return p0

    .line 3850
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find display with id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_37
    move-exception p0

    .line 3859
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final getHighestDimAmountFromMap(Landroid/util/ArrayMap;)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 4408
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4409
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_9

    .line 4410
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_9

    :cond_2e
    return p1
.end method

.method public getHighlightFilterState(I)I
    .registers 4

    .line 7564
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7565
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    .line 7566
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    .line 7567
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getHighlightFilterState(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)I

    move-result p0

    return p0

    :catchall_11
    move-exception p0

    .line 7566
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final getHighlightFilterState(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)I
    .registers 9

    const/4 v0, -0x1

    const-string v1, "WallpaperManagerService"

    if-nez p1, :cond_b

    const-string p0, "getHighlightFilterState : filterState=-1, failed to get wallpaper"

    .line 7572
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 7576
    :cond_b
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v2

    .line 7577
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 7579
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "getHighlightFilterState : which="

    if-nez v4, :cond_34

    .line 7580
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", filterState=0, not System type wallpaper data"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 7585
    :cond_34
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsPreloaded()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 7586
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", filterState=0, preloaded wallpaper"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 7590
    :cond_54
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result v4

    if-nez v4, :cond_f2

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v4

    if-nez v4, :cond_f2

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v4

    if-eqz v4, :cond_68

    goto/16 :goto_f2

    .line 7595
    :cond_68
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isOpenThemeWallpaperApplied(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result p0

    if-eqz p0, :cond_86

    .line 7596
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", filterState=0, open theme wallpaper enabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 7601
    :cond_86
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getPrimarySemColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    if-nez p0, :cond_a6

    .line 7603
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", filterState=-1, primary color is not ready"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_a6
    const-wide/16 v4, 0x40

    .line 7607
    invoke-virtual {p0, v4, v5}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    if-nez p0, :cond_c6

    .line 7609
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", filterState=-1, failed to get home screen color item"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 7612
    :cond_c6
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p0

    if-nez p0, :cond_ce

    const/4 p0, 0x1

    goto :goto_cf

    :cond_ce
    const/4 p0, 0x2

    .line 7613
    :goto_cf
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", filterState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", callerUserId= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 7591
    :cond_f2
    :goto_f2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", filterState=0, unsupported mode"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public getLastCallingPackage(I)Ljava/lang/String;
    .registers 4

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 8041
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 8043
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 8044
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8045
    :try_start_c
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    .line 8046
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_23

    if-nez p0, :cond_1c

    const-string p0, "WallpaperManagerService"

    const-string p1, "getLastCallingPackage wallpaper == null"

    .line 8048
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 8051
    :cond_1c
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastCallingPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_23
    move-exception p0

    .line 8046
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final getLastWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 4

    .line 5364
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5369
    :try_start_3
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5370
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWatchFace:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    monitor-exit v0

    return-object p0

    .line 5371
    :cond_f
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 5372
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastVirtualWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    monitor-exit v0

    return-object p0

    .line 5374
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    .line 5376
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public getLegacyDeviceColor()Ljava/lang/String;
    .registers 1

    .line 8036
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getLegacyDeviceColor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLidState()I
    .registers 1

    .line 8487
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result p0

    return p0
.end method

.method public getLockWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-object v3, p2

    move v4, p3

    .line 3953
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIZZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public getLockWallpaperType()I
    .registers 2

    const/4 v0, 0x2

    .line 6800
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->semGetWallpaperType(I)I

    move-result p0

    return p0
.end method

.method public final getMaximumSizeDimension(I)I
    .registers 4

    .line 1859
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_32

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WallpaperManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1864
    :cond_32
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result p0

    return p0
.end method

.method public getMotionWallpaperPkgName(I)Ljava/lang/String;
    .registers 6

    .line 7274
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 7275
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1, p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p1

    .line 7277
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7278
    :try_start_f
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    .line 7279
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_4c

    if-eqz p0, :cond_43

    .line 7281
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionPkgName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WallpaperManagerService"

    .line 7282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMotionPkgName userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " name="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , which="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_43
    const-string p0, "WallpaperManagerService"

    const-string p1, "Lock wallpaper data is null. So motion package name is null"

    .line 7286
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :catchall_4c
    move-exception p0

    .line 7279
    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 3004
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1e

    .line 3007
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3012
    :try_start_b
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 3015
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_18
    const/4 p0, 0x0

    .line 3018
    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 3020
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1b

    throw p0

    .line 3005
    :cond_1e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "getName() can only be called from the system process"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSemWallpaperColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)Landroid/app/SemWallpaperColors;
    .registers 7

    const-string v0, "WallpaperManagerService"

    if-nez p1, :cond_b

    const-string p0, "getSemWallpaperColors: wallpaper == null"

    .line 7904
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 7908
    :cond_b
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getPrimarySemColors()Landroid/app/SemWallpaperColors;

    move-result-object v1

    .line 7909
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getDlsSemColors()Landroid/app/SemWallpaperColors;

    move-result-object v2

    .line 7911
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-nez v3, :cond_23

    if-eqz v2, :cond_23

    const-string p0, "getSemWallpaperColors: return dlsSemColors"

    .line 7912
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_23
    if-eqz p2, :cond_26

    return-object v1

    .line 7920
    :cond_26
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_77

    .line 7921
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_46

    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p2, p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/LegibilityColor;->getAllowScreenRotateSystem()Z

    move-result p2

    if-nez p2, :cond_5c

    :cond_46
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 7922
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result p2

    if-ne p2, v0, :cond_77

    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p2, p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/LegibilityColor;->getAllowScreenRotateLock()Z

    move-result p2

    if-eqz p2, :cond_77

    .line 7923
    :cond_5c
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLandscapeColors()[Landroid/app/SemWallpaperColors;

    move-result-object p1

    if-eqz p1, :cond_77

    const/4 p2, 0x0

    .line 7925
    aget-object v1, p1, p2

    .line 7926
    array-length p2, p1

    if-ne p2, v0, :cond_77

    .line 7927
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    .line 7928
    iget p0, p0, Landroid/view/DisplayInfo;->rotation:I

    const/4 p2, 0x3

    if-ne p0, p2, :cond_77

    .line 7929
    aget-object v1, p1, v2

    :cond_77
    return-object v1
.end method

.method public getSnapshotCount(I)I
    .registers 3

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 7715
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 7717
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getSnapshotCount(I)I

    move-result p0

    return p0
.end method

.method public final getTargetWallpaper(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 3

    .line 5380
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5381
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object p0

    .line 5382
    :cond_11
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastVirtualWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_26

    .line 5383
    invoke-virtual {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5384
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastVirtualWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object p0

    .line 5385
    :cond_26
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_37

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_37

    invoke-virtual {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 5386
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object p0

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoColor()Ljava/lang/String;
    .registers 6

    .line 7125
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 7126
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result v1

    .line 7127
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_18

    :cond_16
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 7128
    :goto_18
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    const-string v2, "WallpaperManagerService"

    if-eqz p0, :cond_4f

    .line 7130
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoColor()Ljava/lang/String;

    move-result-object p0

    .line 7131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoColor userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", which = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoColor="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_4f
    const-string p0, "Lock wallpaper data is null. So videoColor is null"

    .line 7135
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoFileName(I)Ljava/lang/String;
    .registers 6

    .line 7141
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 7142
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1, p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p1

    .line 7143
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_17

    :cond_15
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 7144
    :goto_17
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    const-string v1, "WallpaperManagerService"

    if-eqz p0, :cond_4e

    .line 7146
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFileName()Ljava/lang/String;

    move-result-object p0

    .line 7147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoFileName userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", which = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", videoFileName="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_4e
    const-string p0, "Lock wallpaper data is null. So videoFileName is null"

    .line 7151
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoFilePath(I)Ljava/lang/String;
    .registers 5

    .line 7157
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 7158
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1, p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p1

    .line 7159
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_17

    :cond_15
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 7160
    :goto_17
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    const-string p1, "WallpaperManagerService"

    if-eqz p0, :cond_46

    .line 7162
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFilePath()Ljava/lang/String;

    move-result-object p0

    .line 7163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoFilePath userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_46
    const-string p0, "Lock wallpaper data is null. So video file path is null"

    .line 7167
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoPackage(I)Ljava/lang/String;
    .registers 6

    .line 7173
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 7174
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1, p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p1

    .line 7175
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_17

    :cond_15
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 7176
    :goto_17
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    const-string v1, "WallpaperManagerService"

    if-eqz p0, :cond_4e

    .line 7178
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoPkgName()Ljava/lang/String;

    move-result-object p0

    .line 7179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoFilePath userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pkg="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " which= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_4e
    const-string p0, "Lock wallpaper data is null. So video pkg is null"

    .line 7183
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIZZ)Landroid/os/ParcelFileDescriptor;
    .registers 15

    const-string v0, "WallpaperManagerService"

    .line 3958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWallpaper: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", wallpaperUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", wpType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDexEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 3961
    invoke-virtual {v2, p2}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopModeEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", orig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3958
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    if-nez v0, :cond_50

    .line 3965
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopSingleMode()Z

    move-result v0

    if-eqz v0, :cond_50

    and-int/lit8 p2, p2, -0x9

    or-int/lit8 p2, p2, 0x4

    .line 3971
    :cond_50
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3972
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getWallpaper"

    const/4 v6, 0x0

    move v2, p4

    .line 3971
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 3974
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSingleType(I)Z

    move-result v0

    if-eqz v0, :cond_154

    const/4 v0, 0x0

    .line 3980
    :try_start_69
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->isSysUiSafeModeEnabled()Z

    move-result v1
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6f} :catch_72

    if-eqz v1, :cond_8d

    return-object v0

    :catch_72
    move-exception v1

    const-string v2, "WallpaperManagerService"

    .line 3984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAFEMODE Exception occurs! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    :cond_8d
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3990
    :try_start_90
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v2

    if-eqz v2, :cond_99

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_9b

    :cond_99
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 3991
    :goto_9b
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v3

    invoke-virtual {v2, p4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_b5

    .line 4000
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v3

    .line 4001
    invoke-virtual {p0, p4, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 4002
    invoke-virtual {v2, p4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    if-nez v3, :cond_b5

    .line 4004
    monitor-exit v1

    return-object v0

    :cond_b5
    const-string p4, "WallpaperManagerService"

    .line 4010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWallpaper: which = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isCopied = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v5}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsCopied()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p6, :cond_eb

    .line 4011
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result p4

    if-eqz p4, :cond_eb

    iget-object p4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsCopied()Z

    move-result p4

    if-eqz p4, :cond_eb

    monitor-exit v1

    return-object v0

    .line 4015
    :cond_eb
    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object p4
    :try_end_ef
    .catchall {:try_start_90 .. :try_end_ef} :catchall_151

    if-eqz p3, :cond_103

    :try_start_f1
    const-string/jumbo p6, "width"

    .line 4018
    iget v2, p4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {p3, p6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p6, "height"

    .line 4019
    iget p4, p4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {p3, p6, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_103

    :catch_101
    move-exception p0

    goto :goto_148

    :cond_103
    :goto_103
    if-eqz p1, :cond_10c

    .line 4022
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-$$Nest$fgetcallbacks(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_10c
    if-eqz p7, :cond_111

    .line 4034
    iget-object p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    goto :goto_113

    .line 4036
    :cond_111
    iget-object p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    .line 4039
    :goto_113
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result p2

    if-eqz p2, :cond_124

    .line 4040
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLockWallpaper:Lcom/samsung/server/wallpaper/LockWallpaper;

    iget-object p2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/LockWallpaper;->getWallpaperFile(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)Ljava/io/File;

    move-result-object p1

    goto :goto_12e

    :cond_124
    const/16 p0, 0x8

    if-ne p5, p0, :cond_12e

    .line 4042
    iget-object p0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object p1

    :cond_12e
    :goto_12e
    if-eqz p1, :cond_13f

    .line 4045
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_137

    goto :goto_13f

    :cond_137
    const/high16 p0, 0x10000000

    .line 4049
    invoke-static {p1, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_13d
    .catch Ljava/io/FileNotFoundException; {:try_start_f1 .. :try_end_13d} :catch_101
    .catchall {:try_start_f1 .. :try_end_13d} :catchall_151

    :try_start_13d
    monitor-exit v1
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_151

    return-object p0

    :cond_13f
    :goto_13f
    :try_start_13f
    const-string p0, "WallpaperManagerService"

    const-string p1, "cropFile is not exist."

    .line 4046
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_146
    .catch Ljava/io/FileNotFoundException; {:try_start_13f .. :try_end_146} :catch_101
    .catchall {:try_start_13f .. :try_end_146} :catchall_151

    .line 4047
    :try_start_146
    monitor-exit v1

    return-object v0

    :goto_148
    const-string p1, "WallpaperManagerService"

    const-string p2, "Error getting wallpaper"

    .line 4053
    invoke-static {p1, p2, p0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4055
    monitor-exit v1

    return-object v0

    :catchall_151
    move-exception p0

    .line 4056
    monitor-exit v1
    :try_end_153
    .catchall {:try_start_146 .. :try_end_153} :catchall_151

    throw p0

    .line 3975
    :cond_154
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 3923
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation

    .line 709
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 710
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_11

    .line 712
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public getWallpaperColors(III)Landroid/app/WallpaperColors;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4419
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSingleType(I)Z

    move-result p3

    if-eqz p3, :cond_73

    .line 4424
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p3, p3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {p3, p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p1

    const-string p3, "WallpaperManagerService"

    .line 4425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWallpaperColors: which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4428
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "getWallpaperColors"

    const/4 v7, 0x0

    move v3, p2

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 4434
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 4448
    :try_start_41
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_4c

    :cond_4a
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 4449
    :goto_4c
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    if-nez p1, :cond_59

    const/4 p0, 0x0

    .line 4453
    monitor-exit p3

    return-object p0

    .line 4455
    :cond_59
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz p2, :cond_64

    iget-boolean p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mIsColorExtractedFromDim:Z

    if-eqz p2, :cond_62

    goto :goto_64

    :cond_62
    const/4 p2, 0x0

    goto :goto_65

    :cond_64
    :goto_64
    const/4 p2, 0x1

    .line 4457
    :goto_65
    monitor-exit p3
    :try_end_66
    .catchall {:try_start_41 .. :try_end_66} :catchall_70

    if-eqz p2, :cond_6b

    .line 4460
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 4463
    :cond_6b
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAdjustedWallpaperColorsOnDimming(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object p0

    return-object p0

    :catchall_70
    move-exception p0

    .line 4457
    :try_start_71
    monitor-exit p3
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0

    .line 4420
    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWallpaperComponentExtras(II)Landroid/os/Bundle;
    .registers 6

    .line 4814
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4815
    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_13

    const-string p0, "WallpaperManagerService"

    const-string p2, "getWallpaperComponentExtras: wallpaper data is null"

    .line 4817
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4818
    monitor-exit v0

    return-object p1

    .line 4820
    :cond_13
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p2

    const/4 v1, 0x7

    if-eq p2, v1, :cond_25

    const-string p0, "WallpaperManagerService"

    const-string p2, "getWallpaperComponentExtras: not supported wallpaper type"

    .line 4821
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4822
    monitor-exit v0

    return-object p1

    .line 4825
    :cond_25
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsPreloaded()Z

    move-result p1

    .line 4826
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFileName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "WallpaperManagerService"

    .line 4827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWallpaperComponentExtras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isPreloaded"

    .line 4830
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "filename"

    .line 4831
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4832
    monitor-exit v0

    return-object p2

    :catchall_60
    move-exception p0

    .line 4833
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public getWallpaperDimAmount()F
    .registers 3

    const-string v0, "android.permission.SET_WALLPAPER_DIM_AMOUNT"

    .line 4393
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 4394
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4395
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    .line 4396
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 4397
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getWallpaperDir(I)Ljava/io/File;
    .registers 2

    .line 2879
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperExtras(II)Landroid/os/Bundle;
    .registers 4

    .line 4838
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4839
    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    if-nez p0, :cond_13

    const-string p0, "WallpaperManagerService"

    const-string p1, "getWallpaperExtras: wallpaper data is null"

    .line 4841
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 4842
    monitor-exit v0

    return-object p0

    .line 4844
    :cond_13
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getExternalParams()Landroid/os/Bundle;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 4845
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getWallpaperIdForUser(II)I
    .registers 10

    .line 4078
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 4079
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getWallpaperIdForUser"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    .line 4078
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 4081
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSingleType(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4086
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_23

    :cond_21
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 4087
    :goto_23
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 4088
    :try_start_26
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 4090
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    monitor-exit p0

    return p1

    .line 4092
    :cond_34
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :catchall_37
    move-exception p1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_37

    throw p1

    .line 4082
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify exactly one kind of wallpaper"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWallpaperInfo(II)Landroid/app/WallpaperInfo;
    .registers 10

    .line 4065
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 4066
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getWallpaperInfo"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    .line 4065
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 4067
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4068
    :try_start_15
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 4069
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz p0, :cond_23

    .line 4070
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v0

    return-object p0

    :cond_23
    const/4 p0, 0x0

    .line 4072
    monitor-exit v0

    return-object p0

    :catchall_26
    move-exception p0

    .line 4073
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final getWallpaperInfo(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;IZ)Landroid/app/WallpaperInfo;
    .registers 13

    const-string v0, "WallpaperManagerService"

    const/4 v1, 0x0

    .line 5326
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 5328
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x80

    move-object v3, p1

    move v7, p3

    .line 5327
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 5329
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    .line 5330
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_9c

    .line 5331
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_6f

    if-eqz p2, :cond_6f

    .line 5332
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_6f

    iget-object v4, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_6f

    iget-object v4, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 5333
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_44} :catch_9d

    if-eqz v3, :cond_6f

    .line 5335
    :try_start_46
    new-instance p2, Landroid/app/WallpaperInfo;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p2, p0, p1}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_53} :catch_62
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_53} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_53} :catch_9d

    move-object v1, p2

    goto :goto_9c

    :catch_55
    move-exception p0

    if-nez p4, :cond_5c

    .line 5346
    :try_start_58
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 5344
    :cond_5c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_62
    move-exception p0

    if-nez p4, :cond_69

    .line 5340
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 5338
    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_6f
    if-eqz v2, :cond_99

    .line 5352
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_79

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_99

    .line 5353
    :cond_79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ServiceInfo, name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_99} :catch_9d

    :cond_99
    add-int/lit8 p3, p3, 0x1

    goto :goto_1c

    :cond_9c
    :goto_9c
    return-object v1

    :catch_9d
    move-exception p0

    const-string p1, "Failed getting wallpaper info "

    .line 5357
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getWallpaperOrientation(II)I
    .registers 4

    .line 4850
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4851
    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    if-nez p0, :cond_13

    const-string p0, "WallpaperManagerService"

    const-string p1, "getWallpaperOrientation: wallpaper data is null"

    .line 4853
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 4854
    monitor-exit v0

    return p0

    .line 4856
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getOrientation()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    .line 4857
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 7

    .line 5947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWallpaperSafeLocked, userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", caller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5955
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_35

    :cond_33
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 5956
    :goto_35
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    if-nez v2, :cond_106

    const-string v2, "getWallpaperSafeLocked, didn\'t find wallpaper."

    .line 5959
    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5964
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v3, 0x0

    if-nez v2, :cond_58

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v2

    if-nez v2, :cond_58

    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v2, :cond_54

    goto :goto_58

    .line 5967
    :cond_54
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    goto :goto_5f

    .line 5965
    :cond_58
    :goto_58
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v2

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 5970
    :goto_5f
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    if-nez v2, :cond_106

    const-string v0, "getWallpaperSafeLocked, didn\'t find yet."

    .line 5982
    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5983
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 5988
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 5989
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_sub_display_lock_orig"

    const-string/jumbo v3, "wallpaper_sub_display_lock"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 p2, p2, 0x10

    goto :goto_a4

    .line 5993
    :cond_8c
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 5995
    invoke-static {}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCallStackString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->putLog(Ljava/lang/String;)V

    or-int/lit8 p2, p2, 0x4

    :goto_a4
    move-object v2, v0

    .line 5998
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p2

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->put(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 6000
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_106

    :cond_b2
    const-string v0, "Didn\'t find wallpaper in non-lock case!"

    .line 6004
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6014
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 6015
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_sub_display_orig"

    const-string/jumbo v3, "wallpaper_sub_display"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 p2, p2, 0x10

    :goto_ce
    move-object v2, v0

    goto :goto_fa

    .line 6018
    :cond_d0
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 6019
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_virtual_display_orig"

    const-string/jumbo v3, "wallpaper_virtual_display"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 p2, p2, 0x20

    goto :goto_ce

    .line 6023
    :cond_e8
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_orig"

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 p2, p2, 0x4

    goto :goto_ce

    .line 6027
    :goto_fa
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p2

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->put(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 6029
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_106
    :goto_106
    return-object v2
.end method

.method public getWallpaperThumbnailFileDescriptor(IIII)Landroid/os/ParcelFileDescriptor;
    .registers 8

    .line 7095
    invoke-static {p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 7096
    :goto_b
    invoke-static {p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    const-string v1, "WallpaperManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_59

    .line 7098
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->initializeThumnailFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;III)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_21

    return-object v2

    .line 7105
    :cond_21
    :try_start_21
    invoke-static {p0, p4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_25} :catch_4e

    .line 7106
    :try_start_25
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getVideoFileDescriptor() userId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",pfd="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7107
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_4b

    .line 7108
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_4a} :catch_4c

    return-object v2

    :cond_4b
    return-object p1

    :catch_4c
    move-exception p0

    goto :goto_50

    :catch_4e
    move-exception p0

    move-object p1, v2

    :goto_50
    const-string p2, "getVideoFileDescriptor() FileNotFoundException"

    .line 7113
    invoke-static {v1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7115
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :cond_59
    const-string p0, "Lock wallpaper data is null. So video file descriptor is null"

    .line 7119
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIZ)Landroid/os/ParcelFileDescriptor;
    .registers 18

    move-object v0, p0

    const-string v1, "android.permission.READ_WALLPAPER_INTERNAL"

    .line 3929
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 3931
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/storage/StorageManager;

    const/4 v3, 0x1

    .line 3932
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v6, p1

    move-object v7, p2

    .line 3931
    invoke-virtual/range {v2 .. v7}, Landroid/os/storage/StorageManager;->checkPermissionReadImages(ZIILjava/lang/String;Ljava/lang/String;)Z

    .line 3938
    :cond_22
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3939
    :try_start_25
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    move v3, p4

    invoke-virtual {v2, p4}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result v3

    move v5, p6

    .line 3940
    invoke-virtual {p0, p6, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 3941
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_4d

    if-eqz p7, :cond_3f

    if-eqz v2, :cond_3f

    .line 3943
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v1

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    move v6, v1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v4, p5

    move v5, p6

    move/from16 v8, p8

    .line 3947
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIZZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :catchall_4d
    move-exception v0

    .line 3941
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public getWidthHint(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3830
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3831
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3834
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 3836
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object p0

    .line 3837
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    monitor-exit v0

    return p0

    :cond_1d
    const/4 p0, 0x0

    .line 3839
    monitor-exit v0

    return p0

    .line 3832
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find display with id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_37
    move-exception p0

    .line 3841
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public handleOMCWallpaperUpdatedLocked()V
    .registers 10

    .line 7417
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7418
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v7

    const/4 v1, 0x2

    if-eqz v7, :cond_8c

    .line 7419
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/samsung/server/wallpaper/OMCWallpaper;->needToUpdateOMCWallpaper(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 7420
    invoke-virtual {p0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 7421
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_2e

    goto :goto_36

    :cond_2e
    const-string v2, "WallpaperManagerService"

    const-string v3, "current wallpaper is not image wallpaper"

    .line 7434
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    :cond_36
    :goto_36
    const-string v2, "WallpaperManagerService"

    .line 7423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOMCWallpaperUpdated: mCacheDefaultImageWallpaperColors = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7424
    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    .line 7425
    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    .line 7426
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 7427
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    const-string v2, "android"

    const/4 v3, 0x6

    .line 7428
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaper(Ljava/lang/String;II)V

    .line 7429
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_8c

    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v2, :cond_8c

    const-string v2, "android"

    const/16 v3, 0x12

    .line 7430
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaper(Ljava/lang/String;II)V

    .line 7439
    :cond_8c
    :goto_8c
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 7440
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 7441
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 7442
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 7444
    monitor-exit v0

    return-void

    :catchall_b9
    move-exception p0

    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_3 .. :try_end_bb} :catchall_b9

    throw p0
.end method

.method public final hasCrossUserPermission()Z
    .registers 2

    .line 3710
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 3711
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .registers 10

    .line 3717
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3718
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasCrossUserPermission()Z

    move-result v1

    .line 3724
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3726
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_6b

    .line 3728
    :try_start_f
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_66

    .line 3730
    :try_start_1e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3732
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    if-nez v1, :cond_39

    .line 3733
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v6, :cond_39

    goto :goto_25

    .line 3739
    :cond_39
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_40

    goto :goto_25

    .line 3742
    :cond_40
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v6

    if-nez v6, :cond_57

    .line 3745
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3746
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v6

    :cond_57
    if-eqz v6, :cond_25

    .line 3748
    iget-object v4, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 p0, 0x1

    .line 3749
    monitor-exit v2

    return p0

    .line 3752
    :cond_64
    monitor-exit v2

    return v5

    :catchall_66
    move-exception p0

    .line 3730
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3731
    throw p0

    :catchall_6b
    move-exception p0

    .line 3752
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_1e .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .registers 2

    .line 4060
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public hasVideoWallpaper()Z
    .registers 4

    .line 7070
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_35

    .line 7072
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    const/16 p0, 0x8

    if-eq v1, p0, :cond_19

    goto :goto_34

    :cond_19
    const/4 p0, 0x1

    return p0

    .line 7078
    :cond_1b
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getUri()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "hasVideo"

    .line 7079
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7080
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2f} :catch_30

    return p0

    :catch_30
    move-exception p0

    .line 7082
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_34
    return v0

    :cond_35
    const-string p0, "WallpaperManagerService"

    const-string v1, "Lock wallpaper data is null. So kwp can not be determined"

    .line 7088
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final initImageWallpaperCropFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 6

    if-nez p1, :cond_a

    const-string p0, "WallpaperManagerService"

    const-string p1, "initImageWallpaperCropFile: wallpaper data is not exist"

    .line 8510
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8513
    :cond_a
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 8515
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v0

    if-nez v0, :cond_46

    .line 8516
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "WallpaperManagerService"

    const-string v1, "No crop; regenerating from source"

    .line 8517
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8518
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 8520
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    .line 8521
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    if-eqz v0, :cond_46

    const/4 v1, -0x1

    if-eq v0, v1, :cond_46

    const-string p0, "WallpaperManagerService"

    const-string p1, "Unnecessary to clear because other type is set on system wallpaper"

    .line 8523
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8528
    :cond_46
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result p1

    if-nez p1, :cond_67

    const-string p1, "WallpaperManagerService"

    const-string v0, "Unable to regenerate crop; resetting"

    .line 8529
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8530
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8531
    :try_start_58
    invoke-virtual {p0, v1, p2, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 8532
    monitor-exit p1

    goto :goto_67

    :catchall_5d
    move-exception p0

    monitor-exit p1
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_5d

    throw p0

    :cond_60
    const-string p0, "WallpaperManagerService"

    const-string p1, "Nondefault wallpaper component; gracefully ignoring"

    .line 8535
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    :goto_67
    return-void
.end method

.method public final initLockWallpaperData(II)V
    .registers 8

    .line 8542
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 8545
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    .line 8546
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->remove(II)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 8549
    invoke-static {p2, v2, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v1

    .line 8550
    invoke-static {p2, v2, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v2

    .line 8552
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, p1, v4, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 8555
    iput-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    .line 8557
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    .line 8559
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v0, p1, p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->put(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 8560
    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method public final initVideoWallpaper(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 7188
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initVideoWallpaper(ZZ)V

    return-void
.end method

.method public final initVideoWallpaper(ZZ)V
    .registers 16

    const-string v0, "WallpaperManagerService"

    const-string v1, "initVideoWallpaper"

    .line 7192
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7193
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 7198
    :cond_11
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7199
    :try_start_14
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v3, 0x6

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 7200
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_95

    if-nez v2, :cond_25

    const-string v0, "WallpaperManagerService"

    const-string v3, "initVideWallpaper lockWallpaper == null"

    .line 7202
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7204
    :cond_25
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoDefaultHasBeenUsed()Z

    move-result v0

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_94

    .line 7205
    :cond_2f
    iget-object p1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoDefaultHasBeenUsed(Z)V

    const/4 p1, 0x0

    .line 7207
    invoke-static {p1}, Landroid/app/WallpaperManager;->getOMCVideoWallpaperFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7208
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 7209
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v0

    .line 7210
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v0, v1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultVideoWallpaperFileName(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "WallpaperManagerService"

    .line 7211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVideoWallpaper: omcVideoFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , hasOMCVideoWallpaper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , fileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_82

    const-string p1, "android"

    const/4 v5, 0x0

    .line 7213
    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v7, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v4

    move-object v4, p1

    move v8, p2

    invoke-virtual/range {v2 .. v10}, Landroid/app/WallpaperManager;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLandroid/os/Bundle;)V

    goto :goto_94

    .line 7215
    :cond_82
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_94

    const/4 v5, 0x0

    const-string v6, "com.samsung.android.wallpaper.res"

    .line 7216
    iget v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v9, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v10, p2

    invoke-virtual/range {v4 .. v12}, Landroid/app/WallpaperManager;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLandroid/os/Bundle;)V

    :cond_94
    :goto_94
    return-void

    :catchall_95
    move-exception p0

    .line 7200
    :try_start_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw p0
.end method

.method public initialize()V
    .registers 6

    .line 2845
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    const/4 v0, 0x0

    .line 2846
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2848
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 2850
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v1}, Landroid/app/SemWallpaperResourcesInfo;->isSupportCMF()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2851
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->initDeviceColor()V

    .line 2854
    :cond_29
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_34

    .line 2855
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->updateLidStateFromInputManager()V

    :cond_34
    const/4 v1, 0x4

    .line 2862
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    const/4 v1, 0x5

    .line 2863
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2866
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_4a

    const/16 v1, 0x10

    .line 2867
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    const/16 v1, 0x11

    .line 2868
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2871
    :cond_4a
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v1, :cond_58

    const/16 v1, 0x20

    .line 2872
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    const/16 v1, 0x21

    .line 2873
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :cond_58
    return-void
.end method

.method public final initializeFallbackWallpaper()V
    .registers 8

    .line 6274
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v0, :cond_61

    const/4 v0, 0x0

    .line 6282
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    .line 6284
    invoke-static {v2, v0, v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v3

    .line 6285
    invoke-static {v2, v0, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v2

    const-string v4, "WallpaperManagerService"

    .line 6287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oriFileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "WallpaperManagerService"

    .line 6288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cropFileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6290
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 6292
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 6293
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 6294
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6295
    :try_start_51
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 6296
    monitor-exit v0

    goto :goto_61

    :catchall_5e
    move-exception p0

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_5e

    throw p0

    :cond_61
    :goto_61
    return-void
.end method

.method public final isDefaultMultipack(IILjava/lang/String;)Z
    .registers 7

    .line 3757
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v0, p2}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultMultipack(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3759
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 3760
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string p0, "com.android.wallpaper.livepicker"

    .line 3761
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public isDefaultWallpaperState(I)Z
    .registers 5

    .line 6829
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 6831
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6832
    :try_start_7
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 6833
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_46

    if-eqz v0, :cond_44

    .line 6836
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v1

    .line 6837
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultWallpaperType(I)I

    move-result p0

    const/4 p1, 0x0

    if-eq v1, p0, :cond_32

    const-string p0, "WallpaperManagerService"

    .line 6839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDefaultWallpaperState false, currentType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 6843
    :cond_32
    iget-object p0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_44

    const-string p0, "WallpaperManagerService"

    const-string v0, "isDefaultWallpaperState false, cropFile is not null"

    .line 6844
    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_44
    const/4 p0, 0x1

    return p0

    :catchall_46
    move-exception p0

    .line 6833
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public isDesktopMode()Z
    .registers 1

    .line 6756
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopMode()Z

    move-result p0

    return p0
.end method

.method public isDesktopModeEnabled(I)Z
    .registers 2

    .line 6766
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopModeEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isDesktopStandAloneMode()Z
    .registers 1

    .line 6771
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopSingleMode()Z

    move-result p0

    return p0
.end method

.method public isHomeAndLockPaired(I)Z
    .registers 6

    .line 7538
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 7540
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    or-int/lit8 v2, p1, 0x2

    .line 7541
    :try_start_9
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    .line 7542
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_4a

    if-eqz p0, :cond_48

    const-string v1, "WallpaperManagerService"

    .line 7544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHomeAndLockPaired : mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isCopied : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsCopied()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " (called by userId= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7545
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsCopied()Z

    move-result p0

    return p0

    :cond_48
    const/4 p0, 0x0

    return p0

    :catchall_4a
    move-exception p0

    .line 7542
    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public final isOpenThemeWallpaperApplied(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 4

    .line 8274
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 8279
    :cond_8
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "current_sec_active_themepackage"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 8281
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1c

    return v0

    .line 8287
    :cond_1c
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p0

    .line 8288
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result p0

    if-eqz p0, :cond_31

    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->isThemeContents()Z

    move-result p0

    if-eqz p0, :cond_31

    return v0

    :cond_31
    return v1
.end method

.method public final isSameRequest(ILjava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 6

    .line 8134
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLastWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    .line 8135
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_e

    return v1

    .line 8139
    :cond_e
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getUri()Ljava/lang/String;

    move-result-object p0

    .line 8141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_84

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_84

    .line 8145
    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSameRequest: prevUriString = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uriString = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WallpaperManagerService"

    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8147
    iget-object p1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_51

    const/4 p3, 0x5

    if-eq p1, p3, :cond_4c

    return v1

    .line 8156
    :cond_4c
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 8149
    :cond_51
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 8150
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 8151
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_84

    .line 8152
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_84

    .line 8153
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_84

    const/4 v1, 0x1

    :cond_84
    :goto_84
    return v1
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .registers 6

    .line 5550
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/Knox;->isWallpaperChangeAllowed(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    return v2

    .line 5554
    :cond_d
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 5555
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 5556
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    return v2

    .line 5560
    :cond_26
    const-class p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 5561
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz p0, :cond_37

    .line 5562
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isDeviceOrProfileOwnerInCallingUser(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_37

    return v1

    .line 5565
    :cond_37
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    .line 5566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5568
    :try_start_3f
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    const-string v0, "no_set_wallpaper"

    .line 5569
    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_52

    xor-int/2addr p0, v1

    .line 5571
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_52
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5572
    throw p0
.end method

.method public isSnapshotTestMode()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7696
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 7700
    :cond_6
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->isSnapshotTestMode()Z

    move-result p0

    return p0
.end method

.method public final isValidDisplay(I)Z
    .registers 2

    .line 3770
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isValidSnapshot(I)Z
    .registers 3

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 7729
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 7731
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->isValidSnapshot(I)Z

    move-result p0

    return p0
.end method

.method public isVideoWallpaper()Z
    .registers 5

    .line 7056
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result v0

    .line 7057
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WallpaperManagerService"

    if-eqz v0, :cond_44

    .line 7059
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_25

    const/4 v1, 0x1

    .line 7060
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoWallpaper userId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " isVideoWallpaper="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_44
    const-string p0, "Lock wallpaper data is null. So kwp can not be determined"

    .line 7064
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isVirtualWallpaperDisplay(I)Z
    .registers 2

    .line 7456
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/VirtualDisplayMode;->isVirtualWallpaperDisplay(I)Z

    move-result p0

    return p0
.end method

.method public isWallpaperBackupAllowed(II)Z
    .registers 4

    .line 7637
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 7638
    :goto_b
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 7639
    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public isWallpaperBackupEligible(II)Z
    .registers 5

    .line 5577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_34

    .line 5582
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    return v1

    .line 5587
    :cond_14
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 5588
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    goto :goto_2f

    .line 5589
    :cond_25
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    :goto_2f
    if-eqz p0, :cond_33

    .line 5590
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    :cond_33
    return v1

    .line 5578
    :cond_34
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call isWallpaperBackupEligible"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isWallpaperDataExists(II)Z
    .registers 5

    .line 8623
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8625
    :try_start_3
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_e

    :cond_c
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 8626
    :goto_e
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    monitor-exit v0

    return p0

    :catchall_1d
    move-exception p0

    .line 8627
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .registers 4

    .line 5541
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5542
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->enforcePackageBelongsToUid(Ljava/lang/String;I)V

    .line 5544
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public final loadSettingsLocked(IZ)V
    .registers 5

    const-string v0, "WallpaperManagerService"

    const-string v1, "loadSettingsLocked"

    .line 6041
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6043
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopSingleMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x8

    goto :goto_2c

    .line 6045
    :cond_1e
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLidState()I

    move-result v0

    if-nez v0, :cond_2b

    const/16 v0, 0x10

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 6048
    :goto_2c
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    return-void
.end method

.method public final loadSettingsLocked(IZI)V
    .registers 23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    const-string v4, " "

    const-string v5, "failed parsing "

    .line 6052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSettingsLockedInternal  userid = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , mode = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "WallpaperManagerService"

    invoke-static {v6, v0}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6054
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 6055
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v7

    .line 6057
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;

    move-result-object v8

    .line 6061
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v8

    .line 6064
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_46

    const-string v9, "loadSettingsLocked: file is not exists."

    .line 6065
    invoke-static {v6, v9}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6067
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    .line 6071
    :cond_46
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v9, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v9, :cond_90

    .line 6090
    invoke-static {v3, v11, v11}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v9

    .line 6091
    invoke-static {v3, v11, v10}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v12

    .line 6093
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadSettingsLocked: oriFileName : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6094
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadSettingsLocked: cropFileName : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6096
    new-instance v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {v13, v2, v0, v9, v12}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 6097
    iput-boolean v10, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 6098
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v0, v2, v3, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->put(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 6100
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initializeFallbackWallpaper()V

    move-object v9, v13

    .line 6113
    :cond_90
    invoke-virtual {v1, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v12

    .line 6115
    :try_start_94
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_99
    .catch Ljava/io/FileNotFoundException; {:try_start_94 .. :try_end_99} :catch_35c
    .catch Ljava/lang/NullPointerException; {:try_start_94 .. :try_end_99} :catch_33d
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_99} :catch_31e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_94 .. :try_end_99} :catch_2ff
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_99} :catch_2e0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_94 .. :try_end_99} :catch_2c0

    .line 6116
    :try_start_99
    invoke-static {v14}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0
    :try_end_9d
    .catch Ljava/io/FileNotFoundException; {:try_start_99 .. :try_end_9d} :catch_2b8
    .catch Ljava/lang/NullPointerException; {:try_start_99 .. :try_end_9d} :catch_2af
    .catch Ljava/lang/NumberFormatException; {:try_start_99 .. :try_end_9d} :catch_2a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_99 .. :try_end_9d} :catch_29e
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9d} :catch_296
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_99 .. :try_end_9d} :catch_28e

    move v15, v11

    .line 6119
    :goto_9e
    :try_start_9e
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_237

    .line 6121
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "wp"

    .line 6122
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_b0
    .catch Ljava/io/FileNotFoundException; {:try_start_9e .. :try_end_b0} :catch_284
    .catch Ljava/lang/NullPointerException; {:try_start_9e .. :try_end_b0} :catch_279
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_b0} :catch_26e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9e .. :try_end_b0} :catch_263
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_b0} :catch_258
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9e .. :try_end_b0} :catch_24d

    if-eqz v13, :cond_136

    move/from16 v13, p2

    .line 6124
    :try_start_b4
    invoke-virtual {v1, v0, v9, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Landroid/util/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 6126
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    :try_end_b9
    .catch Ljava/io/FileNotFoundException; {:try_start_b4 .. :try_end_b9} :catch_130
    .catch Ljava/lang/NullPointerException; {:try_start_b4 .. :try_end_b9} :catch_129
    .catch Ljava/lang/NumberFormatException; {:try_start_b4 .. :try_end_b9} :catch_122
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b4 .. :try_end_b9} :catch_11b
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b9} :catch_114
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b4 .. :try_end_b9} :catch_10d

    or-int/lit8 v13, v3, 0x1

    move-object/from16 v16, v14

    :try_start_bd
    iget-object v14, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v14}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v14

    invoke-virtual {v11, v9, v13, v14, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->initializeThumnailFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;III)Ljava/io/File;

    const-string v11, "component"

    const/4 v13, 0x0

    .line 6129
    invoke-interface {v0, v13, v11}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d4

    .line 6131
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    goto :goto_d5

    :cond_d4
    const/4 v13, 0x0

    .line 6132
    :goto_d5
    iput-object v13, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v13, :cond_e5

    const-string v11, "android"

    .line 6135
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 6134
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e9

    .line 6136
    :cond_e5
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v11, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 6140
    :cond_e9
    iget-object v11, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v11}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistoryList()Ljava/util/ArrayList;

    move-result-object v11

    if-nez v11, :cond_f6

    .line 6141
    iget-object v11, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v11, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->parseWallpaperHistoryInfo(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 6156
    :cond_f6
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v11, v11, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget v13, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v14, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v11, v13, v14}, Lcom/samsung/server/wallpaper/LegibilityColor;->initSemWallpaperColors(ILcom/samsung/server/wallpaper/SemWallpaperData;)V
    :try_end_101
    .catch Ljava/io/FileNotFoundException; {:try_start_bd .. :try_end_101} :catch_132
    .catch Ljava/lang/NullPointerException; {:try_start_bd .. :try_end_101} :catch_10b
    .catch Ljava/lang/NumberFormatException; {:try_start_bd .. :try_end_101} :catch_109
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bd .. :try_end_101} :catch_107
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_101} :catch_105
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_bd .. :try_end_101} :catch_103

    goto/16 :goto_21d

    :catch_103
    move-exception v0

    goto :goto_110

    :catch_105
    move-exception v0

    goto :goto_117

    :catch_107
    move-exception v0

    goto :goto_11e

    :catch_109
    move-exception v0

    goto :goto_125

    :catch_10b
    move-exception v0

    goto :goto_12c

    :catch_10d
    move-exception v0

    move-object/from16 v16, v14

    :goto_110
    move-object/from16 v18, v12

    goto/16 :goto_254

    :catch_114
    move-exception v0

    move-object/from16 v16, v14

    :goto_117
    move-object/from16 v18, v12

    goto/16 :goto_25f

    :catch_11b
    move-exception v0

    move-object/from16 v16, v14

    :goto_11e
    move-object/from16 v18, v12

    goto/16 :goto_26a

    :catch_122
    move-exception v0

    move-object/from16 v16, v14

    :goto_125
    move-object/from16 v18, v12

    goto/16 :goto_275

    :catch_129
    move-exception v0

    move-object/from16 v16, v14

    :goto_12c
    move-object/from16 v18, v12

    goto/16 :goto_280

    :catch_130
    move-object/from16 v16, v14

    :catch_132
    move-object/from16 v18, v12

    goto/16 :goto_28a

    :cond_136
    move-object/from16 v16, v14

    :try_start_138
    const-string v13, "kwp"

    .line 6158
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21d

    or-int/lit8 v11, v3, 0x2

    .line 6171
    invoke-static {v11}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSupportLock(I)Z

    move-result v13

    if-eqz v13, :cond_21d

    .line 6172
    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v13, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v13
    :try_end_14e
    .catch Ljava/io/FileNotFoundException; {:try_start_138 .. :try_end_14e} :catch_234
    .catch Ljava/lang/NullPointerException; {:try_start_138 .. :try_end_14e} :catch_230
    .catch Ljava/lang/NumberFormatException; {:try_start_138 .. :try_end_14e} :catch_22c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_138 .. :try_end_14e} :catch_228
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_14e} :catch_224
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_138 .. :try_end_14e} :catch_220

    move-object/from16 v18, v12

    move/from16 v17, v15

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 6173
    :try_start_154
    invoke-static {v3, v14, v15}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v12

    .line 6174
    invoke-static {v3, v14, v14}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v15

    if-nez v13, :cond_168

    .line 6177
    new-instance v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {v13, v2, v7, v12, v15}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 6178
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v12, v2, v3, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->put(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_168
    const/4 v12, 0x0

    .line 6180
    invoke-virtual {v1, v0, v13, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Landroid/util/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 6181
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v14}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v14

    invoke-virtual {v12, v13, v11, v14, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->initializeThumnailFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;III)Ljava/io/File;

    .line 6183
    invoke-virtual {v13}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v11

    if-nez v11, :cond_186

    .line 6184
    invoke-virtual {v13}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v11

    if-eqz v11, :cond_186

    .line 6185
    invoke-virtual {v1, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 6188
    :cond_186
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v12, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    iget-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v11, v12, v14}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    const-string v11, "callingPackage"

    const/4 v12, 0x0

    .line 6190
    invoke-interface {v0, v12, v11}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_196
    .catch Ljava/io/FileNotFoundException; {:try_start_154 .. :try_end_196} :catch_217
    .catch Ljava/lang/NullPointerException; {:try_start_154 .. :try_end_196} :catch_210
    .catch Ljava/lang/NumberFormatException; {:try_start_154 .. :try_end_196} :catch_209
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_154 .. :try_end_196} :catch_202
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_196} :catch_1fb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_154 .. :try_end_196} :catch_1f4

    .line 6194
    :try_start_196
    iget-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v14}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistoryList()Ljava/util/ArrayList;

    move-result-object v14

    if-nez v14, :cond_1a3

    .line 6195
    iget-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v14, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->parseWallpaperHistoryInfo(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_1a3
    if-eqz v11, :cond_1c2

    .line 6199
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1c2

    .line 6200
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "legacyCallingPackage: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6201
    invoke-virtual {v13, v11}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 6205
    :cond_1c2
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v11, v11, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v13, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v11, v14, v13}, Lcom/samsung/server/wallpaper/LegibilityColor;->initSemWallpaperColors(ILcom/samsung/server/wallpaper/SemWallpaperData;)V
    :try_end_1cd
    .catch Ljava/io/FileNotFoundException; {:try_start_196 .. :try_end_1cd} :catch_1ef
    .catch Ljava/lang/NullPointerException; {:try_start_196 .. :try_end_1cd} :catch_1e9
    .catch Ljava/lang/NumberFormatException; {:try_start_196 .. :try_end_1cd} :catch_1e3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_196 .. :try_end_1cd} :catch_1dd
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_1cd} :catch_1d7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_196 .. :try_end_1cd} :catch_1d1

    const/4 v11, 0x1

    const/4 v15, 0x1

    goto/16 :goto_241

    :catch_1d1
    move-exception v0

    move-object/from16 v13, v16

    const/4 v15, 0x1

    goto/16 :goto_2c6

    :catch_1d7
    move-exception v0

    move-object/from16 v13, v16

    const/4 v15, 0x1

    goto/16 :goto_2e6

    :catch_1dd
    move-exception v0

    move-object/from16 v13, v16

    const/4 v15, 0x1

    goto/16 :goto_305

    :catch_1e3
    move-exception v0

    move-object/from16 v13, v16

    const/4 v15, 0x1

    goto/16 :goto_324

    :catch_1e9
    move-exception v0

    move-object/from16 v13, v16

    const/4 v15, 0x1

    goto/16 :goto_343

    :catch_1ef
    move-object/from16 v13, v16

    const/4 v15, 0x1

    goto/16 :goto_361

    :catch_1f4
    move-exception v0

    move-object/from16 v13, v16

    move/from16 v15, v17

    goto/16 :goto_2c6

    :catch_1fb
    move-exception v0

    move-object/from16 v13, v16

    move/from16 v15, v17

    goto/16 :goto_2e6

    :catch_202
    move-exception v0

    move-object/from16 v13, v16

    move/from16 v15, v17

    goto/16 :goto_305

    :catch_209
    move-exception v0

    move-object/from16 v13, v16

    move/from16 v15, v17

    goto/16 :goto_324

    :catch_210
    move-exception v0

    move-object/from16 v13, v16

    move/from16 v15, v17

    goto/16 :goto_343

    :catch_217
    move-object/from16 v13, v16

    move/from16 v15, v17

    goto/16 :goto_361

    :cond_21d
    :goto_21d
    move-object/from16 v18, v12

    goto :goto_23b

    :catch_220
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_252

    :catch_224
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_25d

    :catch_228
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_268

    :catch_22c
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_273

    :catch_230
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_27e

    :catch_234
    move-object/from16 v18, v12

    goto :goto_288

    :cond_237
    move-object/from16 v18, v12

    move-object/from16 v16, v14

    :goto_23b
    move/from16 v17, v15

    const/4 v12, 0x0

    move/from16 v15, v17

    const/4 v11, 0x1

    :goto_241
    move-object/from16 v14, v16

    if-ne v10, v11, :cond_248

    const/4 v0, 0x1

    goto/16 :goto_368

    :cond_248
    move-object/from16 v12, v18

    const/4 v11, 0x0

    goto/16 :goto_9e

    :catch_24d
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v16, v14

    :goto_252
    move/from16 v17, v15

    :goto_254
    move-object/from16 v13, v16

    goto/16 :goto_2c6

    :catch_258
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v16, v14

    :goto_25d
    move/from16 v17, v15

    :goto_25f
    move-object/from16 v13, v16

    goto/16 :goto_2e6

    :catch_263
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v16, v14

    :goto_268
    move/from16 v17, v15

    :goto_26a
    move-object/from16 v13, v16

    goto/16 :goto_305

    :catch_26e
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v16, v14

    :goto_273
    move/from16 v17, v15

    :goto_275
    move-object/from16 v13, v16

    goto/16 :goto_324

    :catch_279
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v16, v14

    :goto_27e
    move/from16 v17, v15

    :goto_280
    move-object/from16 v13, v16

    goto/16 :goto_343

    :catch_284
    move-object/from16 v18, v12

    move-object/from16 v16, v14

    :goto_288
    move/from16 v17, v15

    :goto_28a
    move-object/from16 v13, v16

    goto/16 :goto_361

    :catch_28e
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v16, v14

    move-object/from16 v13, v16

    goto :goto_2c5

    :catch_296
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v16, v14

    move-object/from16 v13, v16

    goto :goto_2e5

    :catch_29e
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v16, v14

    move-object/from16 v13, v16

    goto :goto_304

    :catch_2a6
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v16, v14

    move-object/from16 v13, v16

    goto/16 :goto_323

    :catch_2af
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v16, v14

    move-object/from16 v13, v16

    goto/16 :goto_342

    :catch_2b8
    move-object/from16 v18, v12

    move-object/from16 v16, v14

    move-object/from16 v13, v16

    goto/16 :goto_360

    :catch_2c0
    move-exception v0

    move-object/from16 v18, v12

    const/4 v12, 0x0

    move-object v13, v12

    :goto_2c5
    const/4 v15, 0x0

    .line 6224
    :goto_2c6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_366

    :catch_2e0
    move-exception v0

    move-object/from16 v18, v12

    const/4 v12, 0x0

    move-object v13, v12

    :goto_2e5
    const/4 v15, 0x0

    .line 6222
    :goto_2e6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_366

    :catch_2ff
    move-exception v0

    move-object/from16 v18, v12

    const/4 v12, 0x0

    move-object v13, v12

    :goto_304
    const/4 v15, 0x0

    .line 6220
    :goto_305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_366

    :catch_31e
    move-exception v0

    move-object/from16 v18, v12

    const/4 v12, 0x0

    move-object v13, v12

    :goto_323
    const/4 v15, 0x0

    .line 6218
    :goto_324
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_366

    :catch_33d
    move-exception v0

    move-object/from16 v18, v12

    const/4 v12, 0x0

    move-object v13, v12

    :goto_342
    const/4 v15, 0x0

    .line 6216
    :goto_343
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_366

    :catch_35c
    move-object/from16 v18, v12

    const/4 v12, 0x0

    move-object v13, v12

    :goto_360
    const/4 v15, 0x0

    :goto_361
    const-string v0, "no current wallpaper -- first boot?"

    .line 6214
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_366
    move-object v14, v13

    const/4 v0, 0x0

    .line 6226
    :goto_368
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-nez v0, :cond_384

    .line 6229
    iget-object v0, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v5, v18

    .line 6230
    iget-object v0, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    const-string v0, ""

    .line 6231
    iput-object v0, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 6233
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->remove(II)V

    goto :goto_390

    :cond_384
    move-object/from16 v5, v18

    .line 6235
    iget v0, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-gtz v0, :cond_390

    .line 6236
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    :cond_390
    :goto_390
    const/4 v4, 0x0

    .line 6244
    invoke-virtual {v1, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    .line 6245
    invoke-virtual {v1, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    if-nez v15, :cond_3a4

    const-string v0, "Didn\'t set wallpaperData for lockscreen"

    .line 6259
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6260
    iput-boolean v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsInitialLodeSucceed:Z

    .line 6261
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->initLockWallpaperData(II)V

    goto :goto_3b2

    .line 6263
    :cond_3a4
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    const/4 v2, 0x1

    .line 6264
    iput-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsInitialLodeSucceed:Z

    if-eqz v0, :cond_3b2

    .line 6266
    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_3b2
    :goto_3b2
    return-void
.end method

.method public lockScreenWallpaperExists()Z
    .registers 3

    .line 4317
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4318
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 4319
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 5639
    invoke-static {p2, v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object p2

    .line 5640
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 5642
    new-instance p1, Lcom/android/internal/util/JournaledFile;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object p1
.end method

.method public makeSnapshot(II)I
    .registers 4

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 7678
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 7680
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->makeSnapshot(II)I

    move-result p0

    return p0
.end method

.method public makeWallpaperIdLocked()I
    .registers 2

    .line 1876
    :cond_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-eqz v0, :cond_0

    return v0
.end method

.method public final migrateFromOld()V
    .registers 7

    .line 5896
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5898
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5899
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_orig"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5902
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 5903
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_58

    .line 5909
    invoke-static {v0, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_58

    .line 5911
    :cond_30
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 5916
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/wallpaper_info.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5917
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 5918
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "wallpaper_info.xml"

    invoke-direct {v5, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5919
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 5922
    :cond_52
    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 5923
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_58
    :goto_58
    return-void
.end method

.method public final migrateSystemToLockWallpaperLocked(II)V
    .registers 8

    .line 4669
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4678
    invoke-static {p2, v2, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v1

    .line 4679
    invoke-static {p2, v2, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v2

    .line 4688
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, p1, v4, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 4691
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iput v1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 4692
    iget-object v1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4693
    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iput-boolean v1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 4694
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-object v1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 4696
    iget-object v1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWidth(I)V

    .line 4697
    iget-object v1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setHeight(I)V

    .line 4702
    :try_start_49
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 4703
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Landroid/system/ErrnoException; {:try_start_49 .. :try_end_67} :catch_71

    .line 4711
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p2

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->put(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void

    :catch_71
    move-exception p0

    .line 4705
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t migrate system wallpaper: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallpaperManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4706
    iget-object p0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 4707
    iget-object p0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final needUpdateWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 4

    const/4 v0, 0x0

    .line 8591
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension(I)I

    move-result p0

    .line 8592
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWidth()I

    move-result v1

    if-lt v1, p0, :cond_17

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getHeight()I

    move-result p1

    if-ge p1, p0, :cond_16

    goto :goto_17

    :cond_16
    return v0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public final notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 5

    .line 5489
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-$$Nest$fgetcallbacks(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    .line 5492
    :try_start_b
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-$$Nest$fgetcallbacks(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v2}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_18

    :catch_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 5499
    :cond_1b
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-$$Nest$fgetcallbacks(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5501
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5502
    iget-boolean v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->fromForegroundApp:Z

    const-string v2, "android.service.wallpaper.extra.FROM_FOREGROUND_APP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5504
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    const-string/jumbo v1, "which"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5506
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final notifyColorListeners(Landroid/app/WallpaperColors;III)V
    .registers 14

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 775
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 777
    :try_start_8
    invoke-virtual {p0, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const/4 v3, -0x1

    .line 779
    invoke-virtual {p0, v3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v3

    .line 784
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v2, :cond_2c

    .line 788
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    move v7, v5

    :goto_1b
    if-ge v7, v6, :cond_29

    .line 790
    invoke-virtual {v2, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 792
    :cond_29
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_2c
    if-eqz v3, :cond_44

    .line 796
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    move v6, v5

    :goto_33
    if-ge v6, v2, :cond_41

    .line 798
    invoke-virtual {v3, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 800
    :cond_41
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 802
    :cond_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_79

    .line 804
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_49
    if-ge v5, v1, :cond_57

    .line 807
    :try_start_4b
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v2, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_54} :catch_54

    :catch_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 819
    :cond_57
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    if-eqz v4, :cond_74

    if-nez p4, :cond_74

    .line 827
    :try_start_5e
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_62
    :goto_62
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManagerCallback;

    if-eqz v0, :cond_62

    .line 829
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_73} :catch_74
    .catchall {:try_start_5e .. :try_end_73} :catchall_76

    goto :goto_62

    .line 837
    :catch_74
    :cond_74
    :try_start_74
    monitor-exit p0

    return-void

    :catchall_76
    move-exception p1

    monitor-exit p0
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_76

    throw p1

    :catchall_79
    move-exception p0

    .line 802
    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw p0
.end method

.method public notifyCoverWallpaperChanged(II)V
    .registers 8

    const-string v0, "WallpaperManagerService"

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCoverWallpaperChanged: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_21
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCoverWallpaperListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IWallpaperManagerCallback;
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_69

    if-eqz v1, :cond_27

    :try_start_35
    const-string v2, "WallpaperManagerService"

    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCoverWallpaperChanged: cb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-interface {v1, p1, p2}, Landroid/app/IWallpaperManagerCallback;->onSemWallpaperChanged(II)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_4e} :catch_4f
    .catchall {:try_start_35 .. :try_end_4e} :catchall_69

    goto :goto_27

    :catch_4f
    move-exception v1

    :try_start_50
    const-string v2, "WallpaperManagerService"

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCoverWallpaperChanged: fail. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 692
    :cond_67
    monitor-exit v0

    return-void

    :catchall_69
    move-exception p0

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_50 .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public notifyGoingToSleep(IILandroid/os/Bundle;)V
    .registers 6

    .line 4193
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4194
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 4195
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz p0, :cond_19

    .line 4196
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 4209
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public notifyLockWallpaperChanged(II)V
    .registers 8

    const-string v0, "WallpaperManagerService"

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLockWallpaperChanged type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_19
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IWallpaperManagerCallback;
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_65

    if-eqz v1, :cond_1f

    :try_start_2d
    const-string v2, "WallpaperManagerService"

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyLockWallpaperChanged cb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-interface {v1}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V

    .line 651
    invoke-interface {v1, p1, p2}, Landroid/app/IWallpaperManagerCallback;->onSemWallpaperChanged(II)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_49} :catch_4a
    .catchall {:try_start_2d .. :try_end_49} :catchall_65

    goto :goto_1f

    :catch_4a
    move-exception v1

    :try_start_4b
    const-string v2, "WallpaperManagerService"

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWallpaperChanged() fail. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 658
    :cond_63
    monitor-exit v0

    return-void

    :catchall_65
    move-exception p0

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_4b .. :try_end_67} :catchall_65

    throw p0
.end method

.method public notifyMultipackApplied(I)V
    .registers 7

    const-string v0, "WallpaperManagerService"

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMultipackApplied: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 664
    :try_start_19
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IWallpaperManagerCallback;
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_61

    if-eqz v1, :cond_1f

    :try_start_2d
    const-string v2, "WallpaperManagerService"

    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMultipackApplied: cb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-interface {v1, p1}, Landroid/app/IWallpaperManagerCallback;->onSemMultipackApplied(I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_46} :catch_47
    .catchall {:try_start_2d .. :try_end_46} :catchall_61

    goto :goto_1f

    :catch_47
    move-exception v1

    :try_start_48
    const-string v2, "WallpaperManagerService"

    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMultipackApplied: fail. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 675
    :cond_5f
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_48 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public notifyPid(IILjava/lang/String;Z)V
    .registers 5

    .line 6805
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance;->getBooster()Lcom/android/server/wm/ActivityManagerPerformance;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 6807
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyPidOfWallpaper(IILjava/lang/String;Z)V

    :cond_9
    return-void
.end method

.method public final notifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3

    const/4 v0, 0x0

    .line 7764
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method public final notifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 14

    const/4 v0, 0x0

    .line 7768
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getSemWallpaperColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)Landroid/app/SemWallpaperColors;

    move-result-object v1

    .line 7769
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v2

    .line 7770
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    if-nez v1, :cond_17

    const-string p0, "WallpaperManagerService"

    const-string p1, "notifySemColorListeners colors == null"

    .line 7774
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7778
    :cond_17
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v4, :cond_21

    and-int/lit8 v4, v2, 0x10

    const/16 v5, 0x10

    if-eq v4, v5, :cond_31

    :cond_21
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-nez v4, :cond_2b

    and-int/lit8 v4, v2, 0x20

    const/16 v5, 0x20

    if-eq v4, v5, :cond_31

    :cond_2b
    and-int/lit8 v4, v2, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_39

    :cond_31
    const-string p0, "WallpaperManagerService"

    const-string p1, "Unsupported wallpaper, ignore notifySemColorListeners"

    .line 7781
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7785
    :cond_39
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    if-nez v4, :cond_55

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopSingleMode()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v4

    if-eqz v4, :cond_55

    const-string p0, "WallpaperManagerService"

    const-string p1, "ignore colors changed of dex wallpaper if standalone mode"

    .line 7786
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7790
    :cond_55
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-lez v4, :cond_7c

    if-eq v3, v4, :cond_7c

    const-string p1, "WallpaperManagerService"

    .line 7791
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifySemColorListeners ignore, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7795
    :cond_7c
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v4

    if-eqz v4, :cond_9d

    const/4 v4, 0x0

    .line 7798
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getHighlightFilterState(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)I

    move-result p1

    const/4 v5, 0x1

    if-ne p1, v5, :cond_8f

    .line 7800
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_96

    :cond_8f
    const/4 v6, 0x2

    if-ne p1, v6, :cond_96

    .line 7802
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 7804
    :cond_96
    :goto_96
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/samsung/server/wallpaper/LegibilityColor;->setWhiteBgSettings(Landroid/app/SemWallpaperColors;IILjava/lang/Integer;)V

    .line 7810
    :cond_9d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7811
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 7813
    :try_start_a5
    invoke-virtual {p0, v3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v5

    const/4 v6, -0x1

    .line 7815
    invoke-virtual {p0, v6, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v6

    .line 7820
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    if-eqz v5, :cond_c8

    .line 7824
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    move v9, v0

    :goto_b7
    if-ge v9, v8, :cond_c5

    .line 7826
    invoke-virtual {v5, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v10

    check-cast v10, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_b7

    .line 7828
    :cond_c5
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_c8
    if-eqz v6, :cond_e0

    .line 7832
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    move v8, v0

    :goto_cf
    if-ge v8, v5, :cond_dd

    .line 7834
    invoke-virtual {v6, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_cf

    .line 7836
    :cond_dd
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 7838
    :cond_e0
    monitor-exit v4
    :try_end_e1
    .catchall {:try_start_a5 .. :try_end_e1} :catchall_13b

    .line 7840
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_e5
    if-ge v0, v4, :cond_f3

    .line 7843
    :try_start_e7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v5, v1, v2, v3}, Landroid/app/IWallpaperManagerCallback;->onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    :try_end_f0
    .catch Landroid/os/RemoteException; {:try_start_e7 .. :try_end_f0} :catch_f0

    :catch_f0
    add-int/lit8 v0, v0, 0x1

    goto :goto_e5

    .line 7855
    :cond_f3
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    if-eqz v7, :cond_110

    if-nez p2, :cond_110

    .line 7863
    :try_start_fa
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_fe
    :goto_fe
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManagerCallback;

    if-eqz v0, :cond_fe

    .line 7865
    invoke-interface {v0, v1, v2, v3}, Landroid/app/IWallpaperManagerCallback;->onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_10f} :catch_110
    .catchall {:try_start_fa .. :try_end_10f} :catchall_138

    goto :goto_fe

    .line 7873
    :catch_110
    :cond_110
    :try_start_110
    monitor-exit p0
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_138

    const-string p0, "WallpaperManagerService"

    .line 7875
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifySemColorListeners: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_138
    move-exception p1

    .line 7873
    :try_start_139
    monitor-exit p0
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_138

    throw p1

    :catchall_13b
    move-exception p0

    .line 7838
    :try_start_13c
    monitor-exit v4
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13b

    throw p0
.end method

.method public notifyWakingUp(IILandroid/os/Bundle;)V
    .registers 6

    .line 4171
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4172
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 4173
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz p0, :cond_19

    .line 4174
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda13;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 4186
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    .line 620
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    if-eqz p0, :cond_7

    .line 622
    :try_start_4
    invoke-interface {p0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

.method public notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 5

    .line 697
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_d

    .line 698
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    goto :goto_11

    :cond_d
    const/4 v0, 0x0

    .line 702
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    :goto_11
    return-void
.end method

.method public final notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .registers 8

    .line 720
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_3
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 722
    invoke-virtual {p0, v1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v1

    const/4 v2, -0x1

    .line 724
    invoke-virtual {p0, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 726
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 727
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 729
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopDualMode()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 730
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 733
    :cond_37
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_3f

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v1, :cond_46

    :cond_3f
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v1, :cond_44

    goto :goto_46

    .line 737
    :cond_44
    monitor-exit v0

    return-void

    :cond_46
    :goto_46
    const-string v1, "WallpaperManagerService"

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyWallpaperColorsChangedOnDisplay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_6f

    iget-boolean v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mIsColorExtractedFromDim:Z

    if-nez v1, :cond_6f

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 750
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getPrimarySemColors()Landroid/app/SemWallpaperColors;

    move-result-object v1

    if-nez v1, :cond_6d

    goto :goto_6f

    :cond_6d
    const/4 v1, 0x0

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v1, 0x1

    .line 752
    :goto_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_80

    if-eqz v1, :cond_76

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 757
    :cond_76
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAdjustedWallpaperColorsOnDimming(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object v0

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;III)V

    return-void

    :catchall_80
    move-exception p0

    .line 752
    :try_start_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 5

    const/4 v0, 0x0

    .line 3065
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->errorCheck(I)V

    const-string/jumbo v0, "onBootPhase: "

    const-string v1, "WallpaperManagerService"

    const/16 v2, 0x226

    if-ne p1, v2, :cond_2a

    .line 3072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperHanlder:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4a

    :cond_2a
    const/16 v2, 0x258

    if-ne p1, v2, :cond_4a

    .line 3080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperHanlder:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4a
    :goto_4a
    return-void
.end method

.method public final onDisplayReadyInternal(I)V
    .registers 6

    .line 5594
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "WallpaperManagerService"

    .line 5595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayReadyInternal, displayId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5605
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v1, :cond_28

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isVirtualWallpaperDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 5606
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    .line 5607
    monitor-exit v0

    return-void

    .line 5610
    :cond_28
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_2e

    .line 5611
    monitor-exit v0

    return-void

    .line 5613
    :cond_2e
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 5614
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 5615
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object p1

    if-nez p1, :cond_42

    .line 5616
    monitor-exit v0

    return-void

    .line 5617
    :cond_42
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p1, v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 5618
    monitor-exit v0

    return-void

    .line 5622
    :cond_4b
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_61

    .line 5623
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 5624
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object p1

    if-nez p1, :cond_59

    .line 5625
    monitor-exit v0

    return-void

    .line 5626
    :cond_59
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p1, v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_68

    :cond_61
    const-string p0, "WallpaperManagerService"

    const-string p1, "No wallpaper can be added to the new display"

    .line 5628
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5630
    :goto_68
    monitor-exit v0

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public onRemoveUser(I)V
    .registers 9

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-void

    .line 3198
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 3199
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3200
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    .line 3201
    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_21

    aget-object v5, v2, v4

    .line 3202
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 3204
    :cond_21
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3205
    monitor-exit v1

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 6566
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4

    .line 3119
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperHanlder:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final packageBelongsToUid(Ljava/lang/String;I)Z
    .registers 5

    .line 5517
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    .line 5520
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_f} :catch_12

    if-ne p0, p2, :cond_12

    const/4 v1, 0x1

    :catch_12
    :cond_12
    return v1
.end method

.method public parseWallpaperAttributes(Landroid/util/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "id"

    const/4 v2, -0x1

    .line 6311
    invoke-interface {p1, v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_13

    .line 6313
    iput v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 6314
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-le v1, v2, :cond_19

    .line 6315
    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    goto :goto_19

    .line 6318
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v1

    iput v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    :cond_19
    :goto_19
    const/4 v1, 0x0

    .line 6321
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v2

    if-nez p3, :cond_31

    const-string/jumbo p3, "width"

    .line 6324
    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    iput p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    const-string p3, "height"

    .line 6325
    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    iput p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 6327
    :cond_31
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropLeft"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->left:I

    .line 6328
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropTop"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->top:I

    .line 6329
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropRight"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->right:I

    .line 6330
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropBottom"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    .line 6331
    iget-object p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingLeft"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->left:I

    .line 6332
    iget-object p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingTop"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->top:I

    .line 6333
    iget-object p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingRight"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->right:I

    .line 6334
    iget-object p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v2, "paddingBottom"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    const-string p3, "dimAmount"

    const/4 v2, 0x0

    .line 6335
    invoke-virtual {p0, p1, p3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeFloat(Landroid/util/TypedXmlPullParser;Ljava/lang/String;F)F

    move-result p3

    iput p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    const-string p3, "dimAmountsCount"

    .line 6336
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p3

    if-lez p3, :cond_d8

    .line 6338
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, p3}, Landroid/util/ArrayMap;-><init>(I)V

    move v4, v1

    :goto_9c
    if-ge v4, p3, :cond_d6

    .line 6340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dimUID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 6341
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dimValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeFloat(Landroid/util/TypedXmlPullParser;Ljava/lang/String;F)F

    move-result v6

    .line 6342
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    .line 6344
    :cond_d6
    iput-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    :cond_d8
    const-string p3, "colorsCount"

    .line 6346
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p3

    const-string v2, "allColorsCount"

    .line 6347
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "colorHints"

    const/4 v4, 0x1

    if-lez v2, :cond_135

    .line 6349
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, v2}, Ljava/util/HashMap;-><init>(I)V

    move v5, v1

    :goto_ef
    if-ge v5, v2, :cond_129

    .line 6351
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allColorsValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 6352
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allColorsPopulation"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 6353
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_ef

    .line 6355
    :cond_129
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 6356
    new-instance v3, Landroid/app/WallpaperColors;

    invoke-direct {v3, p3, v2}, Landroid/app/WallpaperColors;-><init>(Ljava/util/Map;I)V

    iput-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    goto :goto_170

    :cond_135
    if-lez p3, :cond_170

    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    move v2, v1

    :goto_13b
    if-ge v2, p3, :cond_165

    .line 6360
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "colorValue"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v8

    if-nez v2, :cond_15a

    move-object v5, v8

    goto :goto_162

    :cond_15a
    if-ne v2, v4, :cond_15e

    move-object v6, v8

    goto :goto_162

    :cond_15e
    const/4 v9, 0x2

    if-ne v2, v9, :cond_165

    move-object v7, v8

    :goto_162
    add-int/lit8 v2, v2, 0x1

    goto :goto_13b

    .line 6371
    :cond_165
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p3

    .line 6372
    new-instance v2, Landroid/app/WallpaperColors;

    invoke-direct {v2, v5, v6, v7, p3}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    :cond_170
    :goto_170
    const-string/jumbo p3, "themeColorSize"

    .line 6376
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p3

    .line 6377
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-lez p3, :cond_1bc

    move v3, v1

    :goto_17f
    if-ge v3, p3, :cond_1a5

    .line 6380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "themeColor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 6381
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_17f

    :cond_1a5
    const-string/jumbo p3, "saturationNum"

    .line 6383
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p3

    const-string v3, "luminanceNum"

    .line 6384
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 6385
    new-instance v5, Lcom/samsung/server/wallpaper/ColorThemeData;

    invoke-direct {v5, v2, p3, v3}, Lcom/samsung/server/wallpaper/ColorThemeData;-><init>(Ljava/util/List;II)V

    .line 6386
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p3, v5}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setColorThemeData(Lcom/samsung/server/wallpaper/ColorThemeData;)V

    :cond_1bc
    const-string p3, "name"

    .line 6390
    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const-string p3, "backup"

    .line 6391
    invoke-interface {p1, v0, p3, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 6393
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string v2, "creationTime"

    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCreationTime(Ljava/lang/String;)V

    .line 6394
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string v2, "isPreloaded"

    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p3, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsPreloaded(Z)V

    .line 6395
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string v2, "isCopied"

    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p3, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsCopied(Z)V

    .line 6396
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string v2, "lastCallingPackage"

    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setLastCallingPackage(Ljava/lang/String;)V

    .line 6399
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo v2, "type"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    .line 6401
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    if-ne p0, v4, :cond_222

    .line 6402
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string p3, "motionPkgName"

    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setMotionPkgName(Ljava/lang/String;)V

    .line 6405
    :cond_222
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/4 p3, 0x4

    if-ne p0, p3, :cond_236

    .line 6406
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string p3, "animatedPkgName"

    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setAnimatedPkgName(Ljava/lang/String;)V

    .line 6409
    :cond_236
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/16 p3, 0x8

    const-string/jumbo v1, "videoFileName"

    if-ne p0, p3, :cond_280

    .line 6410
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo p3, "videoFilePath"

    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFilePath(Ljava/lang/String;)V

    .line 6411
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo p3, "videoPkgName"

    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoPkgName(Ljava/lang/String;)V

    .line 6412
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo p3, "videoColor"

    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoColor(Ljava/lang/String;)V

    .line 6413
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFileName(Ljava/lang/String;)V

    .line 6414
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo p3, "videoDefaultHasBeenUsed"

    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoDefaultHasBeenUsed(Z)V

    .line 6417
    :cond_280
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/4 p3, 0x7

    if-ne p0, p3, :cond_292

    .line 6418
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFileName(Ljava/lang/String;)V

    .line 6421
    :cond_292
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string p3, "externalParams"

    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->fromJson(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setExternalParams(Landroid/os/Bundle;)V

    .line 6422
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo p3, "uri"

    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setUri(Ljava/lang/String;)V

    .line 6424
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string p2, "history"

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->parseWallpaperHistoryInfo(Ljava/lang/String;)V

    return-void
.end method

.method public final rebindWallpaper(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 4

    if-eqz p1, :cond_21

    .line 5410
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    if-eqz p2, :cond_21

    iget-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz p1, :cond_21

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 5412
    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "WallpaperManagerService"

    const-string p1, "Run binding timeout cause duplicated bind / unbind of image wallpaper"

    .line 5413
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0
.end method

.method public registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .registers 11

    .line 4099
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "registerWallpaperColorsCallback"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 4101
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4103
    :try_start_16
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_2a

    .line 4105
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 4106
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4109
    :cond_2a
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-nez p0, :cond_3a

    .line 4111
    new-instance p0, Landroid/os/RemoteCallbackList;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 4112
    invoke-virtual {v1, p3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4114
    :cond_3a
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 4115
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_16 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public final removeDisplayData(I)V
    .registers 2

    .line 1834
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p3, v0, :cond_10

    const/4 v0, 0x1

    if-ne p3, v0, :cond_7

    goto :goto_10

    .line 4290
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4292
    :cond_10
    :goto_10
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 4293
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ne v0, p4, :cond_48

    .line 4296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 4299
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_32
    .catchall {:try_start_1f .. :try_end_22} :catchall_2d

    .line 4300
    :try_start_22
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    invoke-virtual {v4, p1, p2, p5}, Lcom/android/server/wallpaper/LocalColorRepository;->removeAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 4301
    monitor-exit v3

    goto :goto_32

    :catchall_2a
    move-exception p1

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2d} :catch_32
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 4305
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4306
    throw p0

    .line 4305
    :catch_32
    :goto_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4307
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getEngine(III)Landroid/service/wallpaper/IWallpaperEngine;

    move-result-object p0

    if-eqz p0, :cond_47

    if-nez v2, :cond_3e

    goto :goto_47

    .line 4309
    :cond_3e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_47

    invoke-interface {p0, v2}, Landroid/service/wallpaper/IWallpaperEngine;->removeLocalColorsAreas(Ljava/util/List;)V

    :cond_47
    :goto_47
    return-void

    .line 4294
    :cond_48
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "calling user id does not match"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeSnapshotByKey(I)V
    .registers 3

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 7658
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 7660
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->removeSnapshotByKey(I)V

    return-void
.end method

.method public removeSnapshotBySource(Ljava/lang/String;)V
    .registers 3

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 7668
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 7670
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->removeSnapshotBySource(Ljava/lang/String;)V

    return-void
.end method

.method public removeSnapshotByWhich(I)V
    .registers 3

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 7648
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 7650
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->removeSnapshotByWhich(I)V

    return-void
.end method

.method public final removeSystemWallpaperFile(II)V
    .registers 6

    const-string v0, "WallpaperManagerService"

    .line 8564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSystemWallpaperFile userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8565
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-nez v0, :cond_31

    .line 8568
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 8569
    :try_start_23
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 8570
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_2e

    .line 8571
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    goto :goto_31

    :catchall_2e
    move-exception p0

    .line 8570
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0

    :cond_31
    :goto_31
    if-nez v0, :cond_34

    return-void

    .line 8577
    :cond_34
    iget-object p0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-eqz p0, :cond_4e

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4e

    .line 8578
    iget-object p0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_4e

    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "removeSystemWallpaperFile delete orig file failed"

    .line 8579
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8583
    :cond_4e
    iget-object p0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz p0, :cond_68

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_68

    .line 8584
    iget-object p0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_68

    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "removeSystemWallpaperFile delete crop file failed"

    .line 8585
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return-void
.end method

.method public requestBindWallpaper(II)V
    .registers 12

    .line 9265
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 9266
    :goto_b
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    if-nez v5, :cond_1e

    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "requestBindWallpaper: wallpaper is null."

    .line 9268
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9272
    :cond_1e
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 9273
    :try_start_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_40

    :try_start_25
    const-string p2, "WallpaperManagerService"

    const-string/jumbo v0, "requestBindWallpaper"

    .line 9275
    invoke-static {p2, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9276
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_3b

    .line 9278
    :try_start_36
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9280
    monitor-exit p1

    return-void

    :catchall_3b
    move-exception p0

    .line 9278
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9279
    throw p0

    :catchall_40
    move-exception p0

    .line 9280
    monitor-exit p1
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public requestClearWallpaper(II)V
    .registers 4

    .line 9300
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaper(Ljava/lang/String;II)V

    return-void
.end method

.method public requestInitializeThumnailFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .registers 5

    .line 9338
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->initializeThumnailFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;III)Ljava/io/File;

    return-void
.end method

.method public requestKeyguardListeners()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation

    .line 9255
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public requestNotifyLockWallpaperChanged(II)V
    .registers 5

    .line 9305
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 9307
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(II)V

    :cond_15
    return-void
.end method

.method public requestNotifySemWallpaperColors(I)V
    .registers 4

    .line 9314
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9315
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    .line 9316
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 9317
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public requestParseWallpaperAttributes(Landroid/util/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .registers 4

    .line 9324
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Landroid/util/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_20

    :catch_4
    move-exception p0

    .line 9326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestParseWallpaperAttributes: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallpaperManagerService"

    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-void
.end method

.method public requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 6

    .line 9285
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9286
    :try_start_3
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_e

    :cond_c
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 9287
    :goto_e
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->put(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 9288
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public requestSaveSettingsLocked(II)V
    .registers 4

    .line 9293
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9294
    :try_start_3
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    .line 9295
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public requestSetWallpaperComponent(ILandroid/content/ComponentName;)V
    .registers 3

    .line 9260
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public requestWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 5

    .line 9242
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    .line 9243
    :goto_b
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-nez v0, :cond_21

    .line 9245
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9246
    :try_start_18
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 9247
    monitor-exit v1

    goto :goto_21

    :catchall_1e
    move-exception p0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_1e

    throw p0

    :cond_21
    :goto_21
    return-object v0
.end method

.method public requestWriteWallpaperAttributes(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 9333
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method public final resetSemWallpaperData(Lcom/samsung/server/wallpaper/SemWallpaperData;)V
    .registers 4

    const-string p0, "WallpaperManagerService"

    if-nez p1, :cond_b

    const-string/jumbo p1, "resetSemWallpaperData wallpaper == null"

    .line 8604
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8608
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "Wallpaper file is changed or deleted. Delete previous cropped bitmap"

    .line 8609
    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8610
    invoke-virtual {p1, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    .line 8613
    :cond_24
    invoke-virtual {p1, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setLandscapeColors([Landroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public final resetWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    const-string p0, ""

    .line 8599
    iput-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    return-void
.end method

.method public final restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 13

    const-string v0, "WallpaperManagerService"

    .line 6487
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-le v1, v2, :cond_18e

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "res:"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 6488
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3a

    .line 6491
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_2f

    .line 6493
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_30

    :cond_2f
    move-object v6, v5

    :goto_30
    const/16 v7, 0x2f

    .line 6497
    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-lez v7, :cond_3f

    add-int/lit8 v8, v7, 0x1

    .line 6499
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_40

    :cond_3f
    move-object v8, v5

    :goto_40
    const/4 v9, 0x1

    if-lez v4, :cond_4f

    if-lez v7, :cond_4f

    sub-int v10, v7, v4

    if-le v10, v9, :cond_4f

    add-int/2addr v4, v9

    .line 6504
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_50

    :cond_4f
    move-object v4, v5

    :goto_50
    if-eqz v6, :cond_18e

    if-eqz v8, :cond_18e

    if-eqz v4, :cond_18e

    const/4 v7, -0x1

    .line 6513
    :try_start_57
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 6514
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 6515
    invoke-virtual {p0, v1, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_95

    .line 6517
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "couldn\'t resolve identifier pkg="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ident="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_57 .. :try_end_8b} :catch_153
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_57 .. :try_end_8b} :catch_132
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_8b} :catch_116
    .catchall {:try_start_57 .. :try_end_8b} :catchall_112

    .line 6547
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6554
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6555
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v3

    .line 6522
    :cond_95
    :try_start_95
    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_99
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_95 .. :try_end_99} :catch_153
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_95 .. :try_end_99} :catch_132
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_99} :catch_116
    .catchall {:try_start_95 .. :try_end_99} :catchall_112

    .line 6523
    :try_start_99
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 6524
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 6525
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 6527
    :cond_ab
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_99 .. :try_end_b2} :catch_10e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_99 .. :try_end_b2} :catch_10a
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_b2} :catch_104
    .catchall {:try_start_99 .. :try_end_b2} :catchall_fd

    .line 6528
    :try_start_b2
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b2 .. :try_end_b9} :catch_fb
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b2 .. :try_end_b9} :catch_f9
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b9} :catch_f6
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_f3

    const p1, 0x8000

    :try_start_bc
    new-array p1, p1, [B

    .line 6532
    :goto_be
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_cb

    .line 6533
    invoke-virtual {v2, p1, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 6534
    invoke-virtual {v4, p1, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_be

    .line 6538
    :cond_cb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restored wallpaper: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bc .. :try_end_df} :catch_110
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_bc .. :try_end_df} :catch_10c
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_df} :catch_f1
    .catchall {:try_start_bc .. :try_end_df} :catchall_ef

    .line 6547
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6549
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 6552
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 6554
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6555
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v9

    :catchall_ef
    move-exception p1

    goto :goto_100

    :catch_f1
    move-exception p1

    goto :goto_107

    :catchall_f3
    move-exception p1

    move-object v4, v5

    goto :goto_100

    :catch_f6
    move-exception p1

    move-object v4, v5

    goto :goto_107

    :catch_f9
    move-object v4, v5

    goto :goto_10c

    :catch_fb
    move-object v4, v5

    goto :goto_110

    :catchall_fd
    move-exception p1

    move-object v2, v5

    move-object v4, v2

    :goto_100
    move-object v5, p0

    move-object p0, p1

    goto/16 :goto_17a

    :catch_104
    move-exception p1

    move-object v2, v5

    move-object v4, v2

    :goto_107
    move-object v5, p0

    move-object p0, p1

    goto :goto_119

    :catch_10a
    move-object v2, v5

    move-object v4, v2

    :catch_10c
    :goto_10c
    move-object v5, p0

    goto :goto_134

    :catch_10e
    move-object v2, v5

    move-object v4, v2

    :catch_110
    :goto_110
    move-object v5, p0

    goto :goto_155

    :catchall_112
    move-exception p0

    move-object v2, v5

    move-object v4, v2

    goto :goto_17a

    :catch_116
    move-exception p0

    move-object v2, v5

    move-object v4, v2

    :goto_119
    :try_start_119
    const-string p1, "IOException while restoring wallpaper "

    .line 6545
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11e
    .catchall {:try_start_119 .. :try_end_11e} :catchall_179

    .line 6547
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v2, :cond_126

    .line 6549
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_126
    if-eqz v4, :cond_12b

    .line 6552
    :goto_128
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 6554
    :cond_12b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6555
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_18e

    :catch_132
    move-object v2, v5

    move-object v4, v2

    .line 6543
    :goto_134
    :try_start_134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Resource not found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catchall {:try_start_134 .. :try_end_148} :catchall_179

    .line 6547
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v2, :cond_150

    .line 6549
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_150
    if-eqz v4, :cond_12b

    goto :goto_128

    :catch_153
    move-object v2, v5

    move-object v4, v2

    .line 6541
    :goto_155
    :try_start_155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Package name "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16e
    .catchall {:try_start_155 .. :try_end_16e} :catchall_179

    .line 6547
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v2, :cond_176

    .line 6549
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_176
    if-eqz v4, :cond_12b

    goto :goto_128

    :catchall_179
    move-exception p0

    .line 6547
    :goto_17a
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v2, :cond_182

    .line 6549
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_182
    if-eqz v4, :cond_187

    .line 6552
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 6554
    :cond_187
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6555
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6556
    throw p0

    :cond_18e
    :goto_18e
    return v3
.end method

.method public restoreSnapshot(ILjava/lang/String;)Z
    .registers 4

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 7688
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 7690
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->restoreSnapshot(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final saveAnimatedWallpaperData(ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 10

    .line 7316
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7317
    :try_start_3
    invoke-virtual {p0, p4, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 7318
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_65

    .line 7319
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    if-eqz v1, :cond_4f

    .line 7321
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    .line 7322
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2, p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setAnimatedPkgName(Ljava/lang/String;)V

    .line 7323
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsPreloaded(Z)V

    .line 7324
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setUri(Ljava/lang/String;)V

    .line 7325
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setExternalParams(Landroid/os/Bundle;)V

    .line 7326
    invoke-virtual {v1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 7327
    iput-boolean p5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 7328
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    iget-object p5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2, p3, p5}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    .line 7329
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 7330
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 7331
    :try_start_3e
    invoke-virtual {p0, p4, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    .line 7332
    monitor-exit p2
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_4c

    .line 7333
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(II)V

    goto :goto_57

    :catchall_4c
    move-exception p0

    .line 7332
    :try_start_4d
    monitor-exit p2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0

    :cond_4f
    const-string p1, "WallpaperManagerService"

    const-string/jumbo p2, "saveAnimatedWallpaperData: wallpaper data is null."

    .line 7335
    invoke-static {p1, p2}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7339
    :goto_57
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    return-void

    :catchall_65
    move-exception p0

    .line 7318
    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public saveSettingsLocked(I)V
    .registers 4

    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "saveSettingsLocked"

    .line 5647
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5649
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x8

    goto :goto_23

    .line 5651
    :cond_15
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLidState()I

    move-result v0

    if-nez v0, :cond_22

    const/16 v0, 0x10

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 5654
    :goto_23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    return-void
.end method

.method public final saveSettingsLocked(II)V
    .registers 8

    .line 5658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveSettingsLockedInternal mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5659
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v0, p2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p2

    .line 5660
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    const/4 v1, 0x0

    .line 5664
    :try_start_24
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_69

    .line 5665
    :try_start_2e
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 5666
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5670
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_45

    const-string/jumbo v4, "wp"

    .line 5672
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 5674
    :cond_45
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 5679
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSupportLock(I)Z

    move-result p2

    if-eqz p2, :cond_58

    const-string p2, "kwp"

    .line 5681
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 5684
    :cond_58
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 5686
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 5687
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 5688
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 5689
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_67} :catch_68

    goto :goto_6f

    :catch_68
    move-object v1, v2

    .line 5691
    :catch_69
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5692
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_6f
    return-void
.end method

.method public final saveVideoWallpaperData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/os/Bundle;)V
    .registers 14

    .line 6995
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6996
    :try_start_3
    invoke-virtual {p0, p6, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 6997
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_ec

    if-nez v1, :cond_13

    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "saveVideoWallpaperData wallpaper == null"

    .line 6999
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7003
    :cond_13
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    .line 7004
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    .line 7005
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2, p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFilePath(Ljava/lang/String;)V

    .line 7006
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoPkgName(Ljava/lang/String;)V

    .line 7007
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2, p4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFileName(Ljava/lang/String;)V

    .line 7008
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoColor(Ljava/lang/String;)V

    .line 7009
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2, p7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsPreloaded(Z)V

    .line 7010
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2, p4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setUri(Ljava/lang/String;)V

    .line 7011
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2, p9}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setExternalParams(Landroid/os/Bundle;)V

    .line 7012
    invoke-virtual {v1, p5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 7013
    iput-boolean p8, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 7014
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 7015
    :try_start_4a
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result p4

    iput p4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 7016
    monitor-exit p2
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_e9

    .line 7018
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    iget-object p7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2, p4, p7}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    .line 7019
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_79

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6e

    const-string p2, "com.samsung.android.themecenter"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_79

    :cond_6e
    const-string p2, "WallpaperManagerService"

    const-string/jumbo p3, "saveVideoWallpaperData: Set allowBackup true."

    .line 7020
    invoke-static {p2, p3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 7021
    iput-boolean p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    :cond_79
    if-eqz p9, :cond_a2

    const-string/jumbo p2, "videoCropHint"

    .line 7025
    invoke-virtual {p9, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    const-string p3, "WallpaperManagerService"

    .line 7026
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "saveVideoWallpaperData cropHint = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_a2

    .line 7028
    iget-object p3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7032
    :cond_a2
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 7033
    iget-object p8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p8

    .line 7034
    :try_start_a8
    invoke-virtual {p0, p6, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    .line 7035
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result p2

    if-nez p2, :cond_c8

    .line 7036
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_b5
    .catchall {:try_start_a8 .. :try_end_b5} :catchall_e6

    .line 7038
    :try_start_b5
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 p4, 0x1

    const/4 p5, 0x1

    const/4 p7, 0x0

    move-object p2, p0

    move-object p6, v1

    invoke-virtual/range {p2 .. p7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_bf
    .catchall {:try_start_b5 .. :try_end_bf} :catchall_c3

    .line 7040
    :try_start_bf
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c8

    :catchall_c3
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7041
    throw p0

    .line 7043
    :cond_c8
    :goto_c8
    monitor-exit p8
    :try_end_c9
    .catchall {:try_start_bf .. :try_end_c9} :catchall_e6

    .line 7045
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result p2

    if-eqz p2, :cond_d8

    .line 7046
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(II)V

    .line 7050
    :cond_d8
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    return-void

    :catchall_e6
    move-exception p0

    .line 7043
    :try_start_e7
    monitor-exit p8
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw p0

    :catchall_e9
    move-exception p0

    .line 7016
    :try_start_ea
    monitor-exit p2
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    throw p0

    :catchall_ec
    move-exception p0

    .line 6997
    :try_start_ed
    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    throw p0
.end method

.method public final scaleEstimateCrop(Landroid/graphics/Rect;I)V
    .registers 4

    int-to-float p0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    div-float p0, p2, p0

    cmpl-float p2, p0, p2

    if-eqz p2, :cond_29

    .line 1336
    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 1337
    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 1338
    iget p2, p1, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 1339
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    float-to-int p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_29
    return-void
.end method

.method public secAdjustCropHint1(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;Landroid/view/DisplayInfo;)Landroid/graphics/Rect;
    .registers 4

    .line 8325
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    const/4 p1, 0x0

    .line 8326
    iput p1, p0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 8327
    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 8328
    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method

.method public secAdjustCropHint2(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;Landroid/view/DisplayInfo;)Landroid/graphics/Rect;
    .registers 13

    const-string p0, "WallpaperManagerService"

    const-string/jumbo v0, "secAdjustCropHint2: start."

    .line 8333
    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8334
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8336
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 8337
    iget v2, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    iget v3, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 8341
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge v3, v4, :cond_19a

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_19a

    .line 8347
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    float-to-int v1, v3

    .line 8350
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 8352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "secAdjustCropHint2: estimatedWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8354
    new-instance v2, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 8355
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 8357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "secAdjustCropHint2: cropHintCenterPoint.x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cropHintCenterPoint.y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8362
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/4 v5, 0x0

    if-le v1, v4, :cond_151

    .line 8365
    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const-string v4, ", estimatedHeight = "

    if-gt v1, p1, :cond_fc

    .line 8368
    iget v6, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v1, 0x2

    add-int v8, v6, v7

    if-le v8, p1, :cond_a0

    .line 8369
    iput p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    .line 8370
    iput p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_af

    :cond_a0
    sub-int p1, v6, v7

    if-gez p1, :cond_a9

    .line 8372
    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 8373
    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_af

    :cond_a9
    sub-int/2addr v6, v7

    .line 8375
    iput v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    .line 8376
    iput v6, v0, Landroid/graphics/Rect;->right:I

    :goto_af
    int-to-float p1, v1

    .line 8381
    iget v6, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v6, v6

    mul-float/2addr p1, v6

    iget p3, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    float-to-int p1, p1

    .line 8383
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8386
    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge p1, p2, :cond_f6

    .line 8389
    iget p3, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, p1, 0x2

    add-int v2, p3, v1

    if-le v2, p2, :cond_e4

    .line 8390
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    .line 8391
    iput p2, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_19a

    :cond_e4
    sub-int p2, p3, v1

    if-gez p2, :cond_ee

    .line 8393
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 8394
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_19a

    :cond_ee
    sub-int/2addr p3, v1

    .line 8396
    iput p3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p1

    .line 8397
    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_19a

    .line 8403
    :cond_f6
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 8404
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_19a

    :cond_fc
    const-string/jumbo p1, "secAdjustCropHint2: estimatedWidth is bigger than image size. Fit width to original image width."

    .line 8412
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8414
    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 8416
    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 8417
    iput p1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, p1

    .line 8420
    iget v6, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v6, v6

    mul-float/2addr v1, v6

    iget p3, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float p3, p3

    div-float/2addr v1, p3

    float-to-int p3, v1

    .line 8422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8425
    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge p3, p1, :cond_14c

    .line 8428
    iget p2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, p3, 0x2

    add-int v2, p2, v1

    if-le v2, p1, :cond_13c

    .line 8429
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p3

    .line 8430
    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_19a

    :cond_13c
    sub-int p1, p2, v1

    if-gez p1, :cond_145

    .line 8432
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 8433
    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_19a

    :cond_145
    sub-int/2addr p2, v1

    .line 8435
    iput p2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p3

    .line 8436
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_19a

    .line 8442
    :cond_14c
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 8443
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_19a

    .line 8452
    :cond_151
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget v1, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget p3, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    float-to-int p1, p1

    .line 8454
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "secAdjustCropHint2: estimatedHeight = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8457
    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge p1, p2, :cond_196

    .line 8460
    iget p3, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, p1, 0x2

    add-int v2, p3, v1

    if-le v2, p2, :cond_186

    .line 8461
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    .line 8462
    iput p2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_19a

    :cond_186
    sub-int p2, p3, v1

    if-gez p2, :cond_18f

    .line 8464
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 8465
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_19a

    :cond_18f
    sub-int/2addr p3, v1

    .line 8467
    iput p3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p1

    .line 8468
    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_19a

    .line 8474
    :cond_196
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 8475
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 8481
    :cond_19a
    :goto_19a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "secAdjustCropHint2: returnCrop = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .registers 4

    .line 7892
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 7893
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1, p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p1

    .line 7895
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7896
    :try_start_f
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    .line 7897
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1a

    const/4 v0, 0x1

    .line 7899
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getSemWallpaperColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0

    :catchall_1a
    move-exception p0

    .line 7897
    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public semGetSmartCropRect(I)Landroid/graphics/Rect;
    .registers 6

    .line 8016
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8017
    :try_start_3
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    if-nez p0, :cond_16

    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "semSetSmartCropRect wallpaper == null"

    .line 8019
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 8020
    monitor-exit v0

    return-object p0

    :cond_16
    const-string v1, "WallpaperManagerService"

    .line 8022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semgetSmartCropRect, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8023
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropRect()Landroid/graphics/Rect;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_43
    move-exception p0

    .line 8024
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public semGetUri(ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 8230
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 8232
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 8233
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8234
    :try_start_c
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 8235
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_66

    const/4 v1, 0x0

    if-nez v2, :cond_1d

    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "semGetUri wallpaper == null"

    .line 8237
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 8240
    :cond_1d
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_36

    if-eqz v3, :cond_2f

    const/4 p0, 0x3

    if-eq v3, p0, :cond_2f

    const/4 p0, 0x5

    if-eq v3, p0, :cond_2f

    return-object v1

    .line 8244
    :cond_2f
    iget-object p0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getUri()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8246
    :cond_36
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultMultipack(IILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_41

    .line 8247
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultMultiPackUri(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_41
    const-string p0, "WallpaperManagerService"

    .line 8249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "semGetUri: which = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", type = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Default type is not multiple!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_66
    move-exception p0

    .line 8235
    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .registers 4

    .line 7880
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 7881
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1, p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p1

    .line 7883
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7884
    :try_start_f
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    .line 7885
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1a

    const/4 v0, 0x0

    .line 7887
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getSemWallpaperColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0

    :catchall_1a
    move-exception p0

    .line 7885
    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public semGetWallpaperCropHint(I)Landroid/graphics/Rect;
    .registers 4

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 6853
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 6855
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 6857
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6858
    :try_start_c
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    .line 6859
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_18

    if-eqz p0, :cond_16

    .line 6862
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0

    :catchall_18
    move-exception p0

    .line 6859
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public semGetWallpaperType(I)I
    .registers 6

    .line 6813
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v0

    .line 6815
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6816
    :try_start_7
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    .line 6817
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_4f

    if-eqz p0, :cond_47

    const-string v1, "WallpaperManagerService"

    .line 6819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "which : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", return type : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (called by userId= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6820
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    return p0

    :cond_47
    const-string/jumbo p0, "semGetWallpaperType : return -1"

    .line 6822
    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->putLog(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :catchall_4f
    move-exception p0

    .line 6817
    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public semRequestWallpaperColorsAnalysis(ILjava/lang/String;)V
    .registers 7

    .line 7941
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_21

    const-string v0, "com.android.systemui"

    .line 7942
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "com.samsung.android.app.dressroom"

    .line 7943
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    goto :goto_21

    .line 7944
    :cond_19
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No permission to invoke semRequestWallpaperColorsAnalysis()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7947
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result p2

    .line 7948
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopSingleMode()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 7949
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    goto :goto_3e

    .line 7952
    :cond_36
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v0, p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p1

    .line 7955
    :goto_3e
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7956
    :try_start_41
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_87

    .line 7960
    :try_start_44
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    if-eqz v2, :cond_4a

    .line 7962
    invoke-interface {v2, p1, p2}, Landroid/app/IWallpaperManagerCallback;->onSemWallpaperColorsAnalysisRequested(II)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_5b} :catch_5c
    .catchall {:try_start_44 .. :try_end_5b} :catchall_87

    goto :goto_4a

    :catch_5c
    move-exception p2

    :try_start_5d
    const-string v1, "WallpaperManagerService"

    .line 7966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semRequestWallpaperColorsAnalysis : e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7968
    :cond_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_5d .. :try_end_75} :catchall_87

    .line 7970
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_82

    const/4 p0, 0x1

    goto :goto_83

    :cond_82
    const/4 p0, 0x0

    :goto_83
    invoke-virtual {p2, p1, p0}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    return-void

    :catchall_87
    move-exception p0

    .line 7968
    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V
    .registers 6

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 7738
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    const-string v0, "WallpaperManagerService"

    .line 7739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetDLSWallpaperColors "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_27

    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "semSetDLSWallpaperColors return. "

    .line 7741
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7747
    :cond_27
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7748
    :try_start_2a
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p2

    if-nez p2, :cond_3c

    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "semSetDLSWallpaperColors wallpaper == null"

    .line 7750
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7751
    monitor-exit v0

    return-void

    .line 7754
    :cond_3c
    iget-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getDlsSemColors()Landroid/app/SemWallpaperColors;

    move-result-object v1

    .line 7755
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setDlsSemColors(Landroid/app/SemWallpaperColors;)V

    .line 7756
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_50

    if-nez v1, :cond_4c

    if-eqz p1, :cond_4f

    .line 7759
    :cond_4c
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_4f
    return-void

    :catchall_50
    move-exception p0

    .line 7756
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 7975
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 7980
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_84

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_84

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-ltz v0, :cond_84

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-gez v0, :cond_16

    goto :goto_84

    :cond_16
    const-string v0, "WallpaperManagerService"

    .line 7985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetSmartCropRect, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7988
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7989
    :try_start_40
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    if-nez p1, :cond_52

    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "semSetSmartCropRect wallpaper == null"

    .line 7991
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7992
    monitor-exit v0

    return-void

    .line 7995
    :cond_52
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 7997
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLandscapeColors()[Landroid/app/SemWallpaperColors;

    move-result-object v1

    if-eqz v1, :cond_63

    const-string p0, "WallpaperManagerService"

    const-string p1, "landscapeColors is calculated already"

    .line 7998
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7999
    monitor-exit v0

    return-void

    .line 8002
    :cond_63
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setSmartCropOriginalRect(Landroid/graphics/Rect;)V

    .line 8003
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setSmartCropRect(Landroid/graphics/Rect;)V

    .line 8004
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_40 .. :try_end_74} :catchall_81

    .line 8006
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    return-void

    :catchall_81
    move-exception p0

    .line 8004
    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p0

    :cond_84
    :goto_84
    const-string p0, "WallpaperManagerService"

    .line 7981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid rect "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public semSetUri(Ljava/lang/String;ZIILjava/lang/String;ILandroid/os/Bundle;)V
    .registers 23

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    const-string v2, "android.permission.SET_WALLPAPER"

    .line 8056
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    if-eqz p7, :cond_33

    .line 8060
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_33

    const-string v2, "com.android.systemui"

    .line 8061
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "com.samsung.android.app.dressroom"

    .line 8062
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_33

    .line 8063
    :cond_2b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system or SystemUI may invoke setWallpaper() with extras"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8066
    :cond_33
    :goto_33
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/server/wallpaper/Knox;->isWallpaperChangeAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_3f

    return-void

    .line 8070
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 8073
    :try_start_43
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 8074
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 8075
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "WallpaperManagerService"

    .line 8076
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "semSetUri: path = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", allowBackup ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", which = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", callerPackage = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", userId = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", scheme = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", path = "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hasExtras = "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p7, :cond_ae

    move v8, v3

    goto :goto_af

    :cond_ae
    move v8, v2

    :goto_af
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    and-int/lit8 v11, v4, 0x3

    const/4 v12, 0x3

    if-ne v11, v12, :cond_c0

    goto :goto_c1

    :cond_c0
    move v3, v2

    .line 8088
    :goto_c1
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c4
    .catchall {:try_start_43 .. :try_end_c4} :catchall_12f

    if-eqz v3, :cond_d7

    .line 8090
    :try_start_c6
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v8

    or-int/lit8 v11, v8, 0x1

    .line 8091
    invoke-virtual {p0, v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v11

    or-int/lit8 v8, v8, 0x2

    .line 8092
    invoke-virtual {p0, v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v8

    goto :goto_db

    .line 8094
    :cond_d7
    invoke-virtual {p0, v7, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v11

    .line 8096
    :goto_db
    monitor-exit v2
    :try_end_dc
    .catchall {:try_start_c6 .. :try_end_dc} :catchall_12c

    if-nez v11, :cond_ea

    :try_start_de
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "semSetUri wallpaper == null"

    .line 8098
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catchall {:try_start_de .. :try_end_e6} :catchall_12f

    .line 8121
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 8104
    :cond_ea
    :try_start_ea
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 8105
    invoke-virtual {p0, v5, v1, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSameRequest(ILjava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v2

    if-eqz v2, :cond_102

    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "semSetUri: Ignoring same request as previous one."

    .line 8106
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catchall {:try_start_ea .. :try_end_fe} :catchall_12f

    .line 8121
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 8111
    :cond_102
    :try_start_102
    iget-object v2, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setUri(Ljava/lang/String;)V

    if-eqz v3, :cond_110

    if-eqz v8, :cond_110

    .line 8113
    iget-object v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setUri(Ljava/lang/String;)V

    :cond_110
    const/4 v1, -0x1

    if-eq v5, v1, :cond_128

    move-object v1, p0

    move-object v2, v11

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 8117
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->setUriInternal(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;ZIILjava/lang/String;ILandroid/os/Bundle;)V
    :try_end_124
    .catchall {:try_start_102 .. :try_end_124} :catchall_12f

    .line 8121
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_128
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12c
    move-exception v0

    .line 8096
    :try_start_12d
    monitor-exit v2
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    :try_start_12e
    throw v0
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12f

    :catchall_12f
    move-exception v0

    .line 8121
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8122
    throw v0
.end method

.method public sendWindowWallpaperCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    .line 7619
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_2e

    .line 7620
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2e

    const/4 v1, 0x0

    .line 7621
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_2e

    .line 7623
    :try_start_11
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_23} :catch_24

    goto :goto_2e

    :catch_24
    move-exception p0

    .line 7626
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallpaperManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public setAnimatedWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 12

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 7294
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 7296
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/Knox;->isWallpaperChangeAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 7300
    :cond_11
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 7301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ", userId = "

    const-string v2, "WallpaperManagerService"

    if-eqz v0, :cond_39

    .line 7302
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "packageName is null or empty. packageName = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7305
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAnimatedWallpaper pkgName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allowBackup = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    .line 7311
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveAnimatedWallpaperData(ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public setCoverWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .registers 6

    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 4236
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 4237
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "setCoverWallpaperCallback()"

    .line 4239
    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCoverWallpaperListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    if-ne v2, p1, :cond_16

    const-string p0, "WallpaperManagerService"

    const-string p1, "IWallpaperManagerCallback is already added."

    .line 4242
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    monitor-exit v0

    return v3

    .line 4246
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCoverWallpaperListenerClientList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/IWallpaperManagerCallback;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4247
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCoverWallpaperListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4248
    monitor-exit v0

    return v3

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public setDimensionHints(IILjava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    .line 3779
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 3780
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_c

    return-void

    .line 3785
    :cond_c
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3786
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3788
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 3789
    :try_start_1f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    .line 3790
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    if-lez p1, :cond_87

    if-lez p2, :cond_87

    .line 3795
    invoke-virtual {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 3799
    invoke-virtual {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v3

    .line 3800
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ne p1, v4, :cond_3e

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-eq p2, v4, :cond_6e

    .line 3801
    :cond_3e
    iput p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 3802
    iput p2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-nez p4, :cond_47

    .line 3803
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 3804
    :cond_47
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v3, v0, :cond_4d

    monitor-exit p3

    return-void

    .line 3805
    :cond_4d
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_6e

    .line 3807
    invoke-virtual {v0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object p4

    if-eqz p4, :cond_5a

    .line 3808
    iget-object v0, p4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_59
    .catchall {:try_start_1f .. :try_end_59} :catchall_90

    goto :goto_5b

    :cond_5a
    const/4 v0, 0x0

    :goto_5b
    if-eqz v0, :cond_64

    .line 3811
    :try_start_5d
    invoke-interface {v0, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_60} :catch_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_90

    .line 3814
    :catch_60
    :try_start_60
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_6e

    .line 3815
    :cond_64
    iget-object p0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz p0, :cond_6e

    if-eqz p4, :cond_6e

    .line 3819
    iput-boolean v1, p4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDimensionsChanged:Z

    .line 3823
    :cond_6e
    :goto_6e
    monitor-exit p3

    return-void

    .line 3796
    :cond_70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find display with id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3792
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width and height must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_90
    move-exception p0

    .line 3823
    monitor-exit p3
    :try_end_92
    .catchall {:try_start_60 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .registers 11

    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    .line 3866
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 3867
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_c

    return-void

    .line 3870
    :cond_c
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 3871
    :try_start_f
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 3874
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    .line 3875
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 3876
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_bf

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_bf

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ltz v3, :cond_bf

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v3, :cond_bf

    .line 3880
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension(I)I

    move-result v3

    .line 3882
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 3883
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    if-gt v4, v3, :cond_9f

    if-gt v5, v3, :cond_7f

    .line 3893
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v3

    .line 3894
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 3895
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez p3, :cond_56

    .line 3896
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 3897
    :cond_56
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v3, v0, :cond_5c

    monitor-exit p2

    return-void

    .line 3898
    :cond_5c
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_7d

    .line 3900
    invoke-virtual {v0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object p3

    if-eqz p3, :cond_69

    .line 3901
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_68
    .catchall {:try_start_f .. :try_end_68} :catchall_ee

    goto :goto_6a

    :cond_69
    const/4 v0, 0x0

    :goto_6a
    if-eqz v0, :cond_73

    .line 3904
    :try_start_6c
    invoke-interface {v0, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_6f} :catch_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_ee

    .line 3907
    :catch_6f
    :try_start_6f
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_7d

    .line 3908
    :cond_73
    iget-object p0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz p0, :cond_7d

    if-eqz p3, :cond_7d

    .line 3912
    iput-boolean v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mPaddingChanged:Z

    .line 3916
    :cond_7d
    :goto_7d
    monitor-exit p2

    return-void

    .line 3889
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "padding height "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " exceeds max height "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3885
    :cond_9f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "padding width "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " exceeds max width "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3877
    :cond_bf
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "padding must be positive: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3872
    :cond_d7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find display with id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_ee
    move-exception p0

    .line 3916
    monitor-exit p2
    :try_end_f0
    .catchall {:try_start_6f .. :try_end_f0} :catchall_ee

    throw p0
.end method

.method public setInAmbientMode(ZJ)V
    .registers 6

    .line 4145
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4146
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    .line 4147
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 4149
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_27

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v1, :cond_1d

    .line 4150
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4152
    :cond_1d
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    .line 4156
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2f

    if-eqz p0, :cond_2e

    .line 4160
    :try_start_2b
    invoke-interface {p0, p1, p2, p3}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_2e

    :catch_2e
    :cond_2e
    return-void

    :catchall_2f
    move-exception p0

    .line 4156
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public setKWPTypeLiveWallpaper(I)V
    .registers 2

    .line 7461
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setKWPTypeLiveWallpaper(I)V

    return-void
.end method

.method public setKWPTypeLiveWallpaperWithMode(II)V
    .registers 3

    .line 7466
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setKWPTypeLiveWallpaper(II)V

    return-void
.end method

.method public final setLastWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 4

    .line 5393
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5398
    :try_start_3
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5399
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWatchFace:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_1b

    .line 5400
    :cond_e
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5401
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastVirtualWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_1b

    .line 5403
    :cond_19
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 5405
    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .registers 6

    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 4214
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 4215
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "setLockWallpaperCallback()"

    .line 4220
    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    if-ne v2, p1, :cond_16

    const-string p0, "WallpaperManagerService"

    const-string p1, "IWallpaperManagerCallback is already added."

    .line 4223
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    monitor-exit v0

    return v3

    .line 4227
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerClientList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperManagerCallbackClient;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/IWallpaperManagerCallback;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4228
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4230
    monitor-exit v0

    return v3

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public setMotionWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 10

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 7226
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 7228
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/Knox;->isWallpaperChangeAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 7232
    :cond_11
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 7233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string p0, "WallpaperManagerService"

    .line 7234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "packageName is null or empty. packageName="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " userId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    const-string v2, "WallpaperManagerService"

    .line 7237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMotionWallpaper pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", callingPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", allowBackup = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7243
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v2, p3}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p3

    .line 7245
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7246
    :try_start_7b
    invoke-virtual {p0, v0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 7247
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_d8

    if-nez v3, :cond_8b

    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "setMotionWallpaper wallpaper == null"

    .line 7249
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7252
    :cond_8b
    iget-object v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    .line 7253
    iget-object v1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setMotionPkgName(Ljava/lang/String;)V

    .line 7254
    iget-object p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsPreloaded(Z)V

    .line 7255
    iget-object p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setUri(Ljava/lang/String;)V

    .line 7256
    iget-object p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setExternalParams(Landroid/os/Bundle;)V

    .line 7257
    invoke-virtual {v3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 7258
    iput-boolean p4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 7259
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    iget-object p4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1, p2, p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    .line 7260
    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 7261
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7262
    :try_start_ba
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 7263
    monitor-exit p1
    :try_end_be
    .catchall {:try_start_ba .. :try_end_be} :catchall_d5

    .line 7265
    iget-object p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(II)V

    .line 7268
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    return-void

    :catchall_d5
    move-exception p0

    .line 7263
    :try_start_d6
    monitor-exit p1
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw p0

    :catchall_d8
    move-exception p0

    .line 7247
    :try_start_d9
    monitor-exit v2
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw p0
.end method

.method public setSnapshotSource(ILjava/lang/String;)Z
    .registers 4

    const-string v0, "android.permission.SET_WALLPAPER"

    .line 7722
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 7724
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setSnapshotSource(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setSnapshotTestMode(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7706
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    if-eqz v0, :cond_5

    return-void

    .line 7710
    :cond_5
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setSnapshotTestMode(Z)V

    return-void
.end method

.method public final setUriInternal(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;ZIILjava/lang/String;ILandroid/os/Bundle;)V
    .registers 14

    .line 8165
    invoke-static {p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    .line 8166
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWhich(I)V

    .line 8167
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, p4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    .line 8168
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, p7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setExternalParams(Landroid/os/Bundle;)V

    .line 8169
    invoke-virtual {p1, p5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 8170
    iput-boolean p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 8171
    iput p3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 8172
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 8173
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result p7

    iput p7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 8174
    invoke-virtual {p0, p6, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    .line 8175
    monitor-exit p2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_d3

    .line 8177
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    const-string p2, "WallpaperManagerService"

    .line 8179
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p7, "setUriInternal: which = "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, ", type = "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p2, p6}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8181
    invoke-static {p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result p2

    const/4 p6, 0x3

    if-eqz p2, :cond_71

    if-eq p4, p6, :cond_5b

    const-string p0, "WallpaperManagerService"

    const-string p1, "Not supported."

    .line 8191
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d2

    .line 8184
    :cond_5b
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 8185
    :try_start_5e
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 8186
    monitor-exit p2
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_6e

    .line 8188
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {p1, p3}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyMultipackApplied(I)V

    goto :goto_d2

    :catchall_6e
    move-exception p0

    .line 8186
    :try_start_6f
    monitor-exit p2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p0

    :cond_71
    if-eq p4, p6, :cond_7e

    const/4 p2, 0x5

    if-eq p4, p2, :cond_7e

    const-string p0, "WallpaperManagerService"

    const-string p1, "Not supported."

    .line 8223
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 8197
    :cond_7e
    sget-boolean p2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz p2, :cond_86

    sget-boolean p2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez p2, :cond_8a

    :cond_86
    sget-boolean p2, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz p2, :cond_d2

    .line 8199
    :cond_8a
    invoke-static {p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSupportLock(I)Z

    move-result p2

    if-nez p2, :cond_d2

    invoke-static {p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result p2

    if-nez p2, :cond_97

    goto :goto_d2

    .line 8203
    :cond_97
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 8204
    :try_start_9a
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 8205
    monitor-exit p2
    :try_end_a5
    .catchall {:try_start_9a .. :try_end_a5} :catchall_cf

    .line 8207
    invoke-static {p3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result p2

    if-eqz p2, :cond_ae

    .line 8208
    invoke-virtual {p0, p4, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(II)V

    .line 8212
    :cond_ae
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setPrimarySemColors(Landroid/app/SemWallpaperColors;)V

    .line 8214
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p2, p1, p5}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateCroppedBitmap(Lcom/samsung/server/wallpaper/SemWallpaperData;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 8215
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    goto :goto_d2

    :cond_c6
    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "setUriInternal: Fail setting cropped bitmap."

    .line 8217
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    :catchall_cf
    move-exception p0

    .line 8205
    :try_start_d0
    monitor-exit p2
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw p0

    :cond_d2
    :goto_d2
    return-void

    :catchall_d3
    move-exception p0

    .line 8175
    :try_start_d4
    monitor-exit p2
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw p0
.end method

.method public setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/os/Bundle;)V
    .registers 24

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    move/from16 v1, p6

    move/from16 v8, p7

    .line 6959
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v7, ", allowBackup = "

    const-string v9, ", videoFileName = "

    const-string v10, ", which = "

    const-string v11, ", userId = "

    const-string v12, ", themePackage = "

    const-string v13, "WallpaperManagerService"

    if-eqz v5, :cond_59

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 6960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVideoWallpaper() packageName is null or empty. videoFilePath = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_59
    const-string v5, "android.permission.SET_WALLPAPER"

    .line 6970
    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 6972
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/samsung/server/wallpaper/Knox;->isWallpaperChangeAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_6a

    return-void

    .line 6976
    :cond_6a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setVideoWallpaper() videoFilePath = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", callingPackage = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", extras = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p8

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.samsung.android.wallpaper.res"

    .line 6986
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object v0, p0

    move/from16 v1, p6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 6989
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveVideoWallpaperData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/os/Bundle;)V

    return-void
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;II)Landroid/os/ParcelFileDescriptor;
    .registers 29

    .line 4504
    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "changing wallpaper"

    const/4 v6, 0x0

    move/from16 v2, p8

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move/from16 v16, p9

    .line 4508
    invoke-virtual/range {v7 .. v18}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p9

    move/from16 v7, p10

    move-object/from16 v8, p11

    const-string v9, "WallpaperManagerService"

    .line 4526
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setWallpaper() name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " callingPackage = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " cropHint = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " allowBackup = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " which = 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4530
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " wpType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " userId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " current userId = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " extras = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_83

    .line 4534
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p11 .. p11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " fields"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_85

    :cond_83
    const-string v12, "null"

    :goto_85
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " isDexEnabled = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v12, v12, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 4535
    invoke-virtual {v12, v5}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopModeEnabled(I)Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4526
    invoke-static {v9, v10}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "android.permission.SET_WALLPAPER"

    .line 4537
    invoke-virtual {v0, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    if-eqz v8, :cond_c7

    .line 4541
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_c7

    const-string v9, "com.android.systemui"

    .line 4542
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c7

    const-string v9, "com.samsung.android.app.dressroom"

    .line 4543
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bf

    goto :goto_c7

    .line 4544
    :cond_bf
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system or SystemUI may invoke setWallpaper() with extras"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c7
    :goto_c7
    and-int/lit8 v9, v5, 0x3

    if-eqz v9, :cond_225

    .line 4554
    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_21c

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_da

    goto/16 :goto_21c

    .line 4563
    :cond_da
    iget-object v9, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v9, v5}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->isSupportingMode(I)Z

    move-result v9

    if-nez v9, :cond_103

    const-string v0, "WallpaperManagerService"

    .line 4564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWallpaper ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] mode isn\'t support"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_103
    const/4 v9, 0x0

    if-nez v3, :cond_10c

    .line 4572
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_120

    .line 4574
    :cond_10c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-ltz v12, :cond_205

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-ltz v12, :cond_205

    iget v12, v3, Landroid/graphics/Rect;->left:I

    if-ltz v12, :cond_205

    iget v12, v3, Landroid/graphics/Rect;->top:I

    if-ltz v12, :cond_205

    .line 4581
    :goto_120
    new-instance v12, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v12, v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)V

    invoke-static {v12}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 4586
    invoke-static/range {p8 .. p8}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v13

    if-eqz v13, :cond_136

    move v11, v9

    .line 4589
    :cond_136
    sget-boolean v13, Lcom/samsung/android/wallpaper/Rune;->DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    if-nez v13, :cond_148

    .line 4590
    iget-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v13, v13, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v13}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopSingleMode()Z

    move-result v13

    if-eqz v13, :cond_148

    and-int/lit8 v5, v5, -0x9

    or-int/lit8 v5, v5, 0x4

    :cond_148
    const-string v13, "com.samsung.android.themecenter"

    .line 4596
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_160

    const-string v13, "com.android.systemui"

    .line 4597
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_160

    .line 4598
    iget-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v13, v13, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v13, v5}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result v5

    .line 4601
    :cond_160
    invoke-static {v5}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v13

    const/16 v14, 0x20

    if-eq v13, v14, :cond_16f

    .line 4602
    iget-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v13, v13, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {v13, v2, v5, v7}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->updateTransparencySettingIfNeed(Ljava/lang/String;IZ)V

    .line 4605
    :cond_16f
    iget-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 4613
    :try_start_172
    invoke-static {v5}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v14

    if-eqz v14, :cond_18e

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static {v5}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v15

    invoke-virtual {v14, v11, v15}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v14

    if-nez v14, :cond_18e

    const-string v14, "WallpaperManagerService"

    const-string v15, "Migrating current wallpaper to be lock-only beforeupdating system wallpaper"

    .line 4614
    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4616
    invoke-virtual {v0, v11, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(II)V

    .line 4620
    :cond_18e
    invoke-virtual {v0, v11, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v14

    .line 4623
    invoke-virtual {v0, v11, v14, v6, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 4626
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 4628
    iget-object v11, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v11, v2, v5}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->removeOriginalSavedFile(Ljava/lang/String;I)V
    :try_end_19e
    .catchall {:try_start_172 .. :try_end_19e} :catchall_202

    move-object/from16 v11, p5

    .line 4631
    :try_start_1a0
    invoke-virtual {v0, v1, v14, v11, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1f8

    const/4 v11, 0x1

    .line 4633
    iput-boolean v11, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 4634
    iput v5, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    move-object/from16 v5, p7

    .line 4635
    iput-object v5, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 4636
    iput-boolean v12, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->fromForegroundApp:Z

    .line 4637
    iget-object v5, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4638
    iput-boolean v4, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 4639
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDimAmount()F

    move-result v3

    iput v3, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    .line 4641
    iget-object v3, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3, v7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsPreloaded(Z)V

    .line 4642
    iget-object v3, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3, v6}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    .line 4643
    invoke-virtual {v14, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 4644
    iget-object v2, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2, v9}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsCopied(Z)V

    if-eqz v8, :cond_1d9

    const-string/jumbo v2, "orientation"

    .line 4648
    invoke-virtual {v8, v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    :cond_1d9
    if-nez v9, :cond_1e1

    .line 4651
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result v9

    .line 4653
    :cond_1e1
    iget-object v0, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0, v9}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setOrientation(I)V

    .line 4655
    iget-object v0, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0, v10}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setUri(Ljava/lang/String;)V

    .line 4656
    iget-object v0, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0, v8}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setExternalParams(Landroid/os/Bundle;)V

    const-string v0, "WallpaperManagerService"

    const-string/jumbo v2, "setWallpaper() updated"

    .line 4658
    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f8
    .catchall {:try_start_1a0 .. :try_end_1f8} :catchall_1fd

    .line 4663
    :cond_1f8
    :try_start_1f8
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v13

    return-object v1

    :catchall_1fd
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4664
    throw v0

    :catchall_202
    move-exception v0

    .line 4665
    monitor-exit v13
    :try_end_204
    .catchall {:try_start_1f8 .. :try_end_204} :catchall_202

    throw v0

    .line 4577
    :cond_205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid crop rect supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21c
    :goto_21c
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "setWallpaper callingPackage is wrong."

    .line 4556
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_225
    const-string v0, "WallpaperManagerService"

    const-string v1, "Must specify a valid wallpaper category to set"

    .line 4550
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a valid wallpaper category to set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setWallpaperComponent(ILandroid/content/ComponentName;)V
    .registers 9

    .line 4869
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const-string v3, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(ILandroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final setWallpaperComponent(ILandroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    .line 4884
    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingUid()I

    move-result v2

    const-string v6, "changing live wallpaper"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move/from16 v3, p4

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    const-string v1, "android.permission.SET_WALLPAPER_COMPONENT"

    .line 4886
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 4892
    invoke-virtual {v0, v8, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCoverWallpaperInfo(Landroid/content/ComponentName;I)Landroid/app/WallpaperInfo;

    move-result-object v7

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v7, :cond_28

    move v13, v11

    goto :goto_29

    :cond_28
    move v13, v12

    :goto_29
    if-eqz v13, :cond_2e

    const/16 v1, 0x10

    goto :goto_38

    .line 4897
    :cond_2e
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result v1

    .line 4901
    :goto_38
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v14, 0x2

    if-eqz v2, :cond_43

    .line 4902
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v2

    or-int/2addr v2, v14

    goto :goto_44

    :cond_43
    move v2, v14

    .line 4908
    :goto_44
    iget-object v15, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_47
    const-string v3, "WallpaperManagerService"

    .line 4909
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWallpaperComponent name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , coverWallpaperInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4911
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    invoke-virtual {v3, v11}, Lcom/samsung/server/wallpaper/Knox;->isWallpaperChangeAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 4912
    monitor-exit v15

    return-void

    .line 4915
    :cond_7a
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v4

    invoke-virtual {v3, v10, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v6

    if-eqz v6, :cond_1ac

    .line 4920
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4926
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v4, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 4937
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v4, v2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v4

    invoke-virtual {v3, v10, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    if-nez v3, :cond_ab

    .line 4940
    invoke-virtual {v0, v10, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(II)V

    .line 4950
    :cond_ab
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v4, v2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v2

    invoke-virtual {v3, v10, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    if-nez v2, :cond_c9

    const-string v2, "WallpaperManagerService"

    const-string/jumbo v3, "setWallpaperComponent: Set both flags, FLAG_SYSTEM and FLAG_LOCK"

    .line 4952
    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_47 .. :try_end_c7} :catchall_1c3

    or-int/lit8 v1, v1, 0x2

    :cond_c9
    move v5, v1

    .line 4957
    :try_start_ca
    invoke-virtual {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindComponentNow(I)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 4958
    iput v5, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 4959
    iput-boolean v12, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 4960
    invoke-virtual {v0, v8, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v18

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v14, v5

    move-object v5, v6

    move-object v11, v6

    move-object/from16 v6, v19

    .line 4961
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    move-result v1

    if-eqz v1, :cond_15b

    if-nez v18, :cond_f1

    const/4 v1, 0x0

    .line 4963
    iput-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    goto :goto_fd

    .line 4965
    :cond_f1
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_fd

    .line 4966
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 4978
    :cond_fd
    :goto_fd
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v1

    iput v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 4981
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v8, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12b

    .line 4982
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    if-eqz v9, :cond_147

    const-string v1, "filename"

    .line 4984
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4985
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_124

    .line 4986
    iget-object v2, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFileName(Ljava/lang/String;)V

    :cond_124
    const-string v1, "isPreloaded"

    .line 4988
    invoke-virtual {v9, v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    goto :goto_147

    .line 4991
    :cond_12b
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_142

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v1, :cond_142

    .line 4993
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_147

    .line 4994
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, v12}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    goto :goto_147

    .line 4997
    :cond_142
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, v12}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    .line 5001
    :cond_147
    :goto_147
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, v12}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsPreloaded(Z)V

    move-object/from16 v1, p3

    .line 5002
    invoke-virtual {v11, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 5003
    invoke-virtual {v0, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 5005
    invoke-virtual {v0, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_157
    .catchall {:try_start_ca .. :try_end_157} :catchall_1a7

    const/4 v12, 0x1

    goto :goto_15b

    :cond_159
    move v14, v5

    move-object v11, v6

    .line 5010
    :cond_15b
    :goto_15b
    :try_start_15b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5012
    monitor-exit v15
    :try_end_15f
    .catchall {:try_start_15b .. :try_end_15f} :catchall_1c3

    if-eqz v12, :cond_16a

    .line 5015
    invoke-virtual {v0, v11, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 5016
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 5020
    :cond_16a
    invoke-virtual {v0, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindComponentNow(I)Z

    move-result v1

    if-eqz v1, :cond_192

    .line 5021
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v8, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17f

    .line 5022
    invoke-static {v14}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeSystemWallpaperFile(II)V

    :cond_17f
    const/4 v1, 0x2

    .line 5026
    invoke-virtual {v0, v10, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v6

    .line 5027
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    goto :goto_193

    :cond_192
    move-object v6, v11

    .line 5031
    :goto_193
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_1a6

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v1, :cond_1a6

    if-eqz v13, :cond_1a6

    .line 5033
    iget-object v1, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v1

    invoke-virtual {v0, v1, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(II)V

    :cond_1a6
    return-void

    :catchall_1a7
    move-exception v0

    .line 5010
    :try_start_1a8
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5011
    throw v0

    .line 4918
    :cond_1ac
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1c3
    move-exception v0

    .line 5012
    monitor-exit v15
    :try_end_1c5
    .catchall {:try_start_1a8 .. :try_end_1c5} :catchall_1c3

    throw v0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 3

    .line 4864
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final setWallpaperComponent(Landroid/content/ComponentName;I)V
    .registers 4

    const-string v0, ""

    .line 4875
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;Ljava/lang/String;I)V

    return-void
.end method

.method public final setWallpaperComponent(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 12

    .line 4879
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result v3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(ILandroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 5

    .line 4793
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4798
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;Ljava/lang/String;I)V

    :cond_f
    return-void
.end method

.method public setWallpaperComponentWithExtras(ILandroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7

    .line 4807
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4808
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(ILandroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method public setWallpaperDimAmount(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDimAmountForUid(IF)V

    return-void
.end method

.method public setWallpaperDimAmountForUid(IF)V
    .registers 9

    const-string v0, "android.permission.SET_WALLPAPER_DIM_AMOUNT"

    .line 4343
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 4344
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4346
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_6b

    .line 4347
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 4348
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-nez v5, :cond_2b

    .line 4351
    iget-object p2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 4353
    :cond_2b
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4356
    :goto_38
    iget-object p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getHighestDimAmountFromMap(Landroid/util/ArrayMap;)F

    move-result p1

    .line 4357
    iput p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    if-eqz v4, :cond_44

    .line 4361
    iput p1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    .line 4364
    :cond_44
    iget-object p2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz p2, :cond_63

    .line 4365
    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v5, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;-><init>(F)V

    invoke-virtual {p2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    const/4 p1, 0x1

    .line 4377
    iput-boolean p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mIsColorExtractedFromDim:Z

    .line 4378
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    if-eqz v4, :cond_5e

    .line 4380
    iput-boolean p1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mIsColorExtractedFromDim:Z

    const/4 p1, 0x2

    .line 4381
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 4383
    :cond_5e
    iget p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 4385
    :cond_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_c .. :try_end_64} :catchall_68

    .line 4387
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_68
    move-exception p0

    .line 4385
    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception p0

    .line 4387
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4388
    throw p0
.end method

.method public setWallpaperWithExtras(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 31

    .line 4516
    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "changing wallpaper"

    const/4 v6, 0x0

    move/from16 v2, p8

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move/from16 v16, p9

    move/from16 v17, p10

    move-object/from16 v18, p11

    .line 4519
    invoke-virtual/range {v7 .. v18}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public settingsRestored()V
    .registers 11

    .line 6431
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_98

    .line 6439
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 6440
    :try_start_c
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 6441
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 6442
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v3

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    const/4 v9, 0x1

    .line 6443
    iput-boolean v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 6444
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_41

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 6445
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 6446
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v3

    if-nez v3, :cond_5f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, v2

    .line 6451
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_5f

    :cond_41
    const-string v3, ""

    .line 6457
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_50

    .line 6462
    :cond_4c
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v9

    :goto_50
    if-eqz v9, :cond_5f

    .line 6467
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 6468
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 6472
    :cond_5f
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_c .. :try_end_60} :catchall_95

    if-nez v9, :cond_8a

    const-string v0, "WallpaperManagerService"

    .line 6475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore wallpaper: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 6476
    iput-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 6477
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 6480
    :cond_8a
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6481
    :try_start_8d
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 6482
    monitor-exit v2

    return-void

    :catchall_92
    move-exception p0

    monitor-exit v2
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_92

    throw p0

    :catchall_95
    move-exception p0

    .line 6472
    :try_start_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw p0

    .line 6432
    :cond_98
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "settingsRestored() can only be called from the system process"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 3025
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    if-eqz p0, :cond_c

    .line 3026
    invoke-virtual {p0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 p0, 0x0

    .line 3027
    iput-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    :cond_c
    return-void
.end method

.method public stopObserversLocked(I)V
    .registers 4

    .line 3033
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3034
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3035
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->remove(II)V

    .line 3036
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->remove(II)V

    .line 3046
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_3f

    .line 3047
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3048
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3049
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->remove(II)V

    .line 3050
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->remove(II)V

    .line 3053
    :cond_3f
    invoke-static {}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCallStackString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->putLog(Ljava/lang/String;)V

    return-void
.end method

.method public final supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .registers 2

    const/4 p0, 0x0

    if-eqz p1, :cond_16

    .line 1883
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz p1, :cond_15

    .line 1884
    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->supportsMultipleDisplays()Z

    move-result p1

    if-nez p1, :cond_15

    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz p1, :cond_16

    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz p1, :cond_16

    :cond_15
    const/4 p0, 0x1

    :cond_16
    return p0
.end method

.method public switchUser(ILandroid/os/IRemoteCallback;)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v9, p1

    .line 3209
    new-instance v10, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v10, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 3210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper_switch-user-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3215
    :try_start_1f
    iget-object v11, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_22a

    .line 3216
    :try_start_22
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, v9, :cond_2b

    .line 3217
    monitor-exit v11
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_227

    .line 3359
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :cond_2b
    :try_start_2b
    const-string v1, "WallpaperManagerService"

    .line 3221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchUser, change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v12, 0x1

    if-eqz v1, :cond_5b

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v1, :cond_5b

    const/4 v1, 0x5

    .line 3223
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    goto :goto_5f

    .line 3225
    :cond_5b
    invoke-virtual {v0, v9, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    :goto_5f
    move-object v13, v1

    const/4 v14, 0x2

    .line 3227
    invoke-virtual {v0, v9, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v15

    if-eqz v13, :cond_21a

    if-nez v15, :cond_6b

    goto/16 :goto_21a

    .line 3233
    :cond_6b
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_76

    .line 3234
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->updateLidStateFromInputManager()V

    .line 3237
    :cond_76
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setOldUserId(I)V

    const/4 v8, -0x1

    if-lez v9, :cond_bc

    .line 3240
    iget-object v1, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v1

    if-ne v1, v8, :cond_bc

    .line 3242
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLidState()I

    move-result v1

    if-nez v1, :cond_92

    const/16 v1, 0x12

    move v4, v1

    goto :goto_93

    :cond_92
    move v4, v14

    .line 3246
    :goto_93
    iget-object v1, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastCallingPackage()Ljava/lang/String;

    move-result-object v6

    .line 3247
    invoke-virtual {v0, v9, v4, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultMultipack(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 3248
    iget-object v1, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultMultiPackUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setUri(Ljava/lang/String;)V

    .line 3249
    iget-object v1, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getExternalParams()Landroid/os/Bundle;

    move-result-object v16

    const/4 v3, 0x0

    const/4 v5, 0x3

    move-object/from16 v1, p0

    move-object v2, v15

    move/from16 v7, p1

    move v12, v8

    move-object/from16 v8, v16

    .line 3250
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->setUriInternal(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;ZIILjava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_bd

    :cond_bc
    move v12, v8

    .line 3254
    :goto_bd
    iput v9, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 3255
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v1, v9}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setCurrentUserId(I)V

    const-string v1, "WallpaperManagerService"

    .line 3267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchUser: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", lidState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLidState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, v0, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 3270
    iget-object v2, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    if-nez v2, :cond_fd

    .line 3271
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSemObserver:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->getWallpaperFileObserver()Landroid/os/FileObserver;

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    .line 3272
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 3276
    :cond_fd
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    .line 3277
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10a

    .line 3278
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 3281
    :cond_10a
    iget-object v1, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_11b

    .line 3282
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSemObserver:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->getLockWallpaperFileObserver()Landroid/os/FileObserver;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    .line 3283
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    :cond_11b
    move-object/from16 v1, p2

    .line 3292
    invoke-virtual {v0, v13, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 3293
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eqz v1, :cond_13b

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v1, :cond_13b

    .line 3294
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3295
    iget v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    or-int/2addr v4, v3

    iput v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 3296
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 3299
    :cond_13b
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v1, :cond_185

    .line 3300
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    invoke-virtual {v1, v4}, Lcom/samsung/server/wallpaper/VirtualDisplayMode;->isVirtualWallpaperDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_185

    .line 3301
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3302
    iget v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 3303
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_161

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-nez v4, :cond_185

    :cond_161
    const-string v4, "WallpaperManagerService"

    .line 3304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switchUser: userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mActiveVirtualDisplayId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 3310
    :cond_185
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(ILjava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1a8

    const/4 v1, 0x6

    .line 3311
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3312
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v1

    if-ne v1, v12, :cond_1a8

    .line 3313
    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->initVideoWallpaper(Z)V

    .line 3317
    :cond_1a8
    monitor-exit v11
    :try_end_1a9
    .catchall {:try_start_2b .. :try_end_1a9} :catchall_227

    .line 3329
    :try_start_1a9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLidState()I

    move-result v1

    if-nez v1, :cond_1b0

    goto :goto_1b1

    :cond_1b0
    move v3, v4

    :goto_1b1
    or-int/lit8 v1, v3, 0x1

    .line 3330
    invoke-virtual {v0, v13, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    or-int/lit8 v1, v3, 0x2

    .line 3331
    invoke-virtual {v0, v15, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3334
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->handleWallpaperBindingTimeout(ZZ)V

    .line 3337
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result v1

    .line 3338
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3339
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getPrimarySemColors()Landroid/app/SemWallpaperColors;

    move-result-object v2

    if-nez v2, :cond_1e5

    .line 3340
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    goto :goto_1e8

    .line 3342
    :cond_1e5
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3345
    :goto_1e8
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1, v14}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result v1

    .line 3346
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 3347
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getPrimarySemColors()Landroid/app/SemWallpaperColors;

    move-result-object v2

    if-nez v2, :cond_20c

    .line 3348
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    goto :goto_20f

    .line 3350
    :cond_20c
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :goto_20f
    if-ltz v9, :cond_216

    .line 3355
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v0, v9}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->loadSettingsLockedForSnapshot(I)V
    :try_end_216
    .catchall {:try_start_1a9 .. :try_end_216} :catchall_22a

    .line 3359
    :cond_216
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :cond_21a
    :goto_21a
    :try_start_21a
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "switchUser wallpaper == null"

    .line 3229
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    monitor-exit v11
    :try_end_223
    .catchall {:try_start_21a .. :try_end_223} :catchall_227

    .line 3359
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_227
    move-exception v0

    .line 3317
    :try_start_228
    monitor-exit v11
    :try_end_229
    .catchall {:try_start_228 .. :try_end_229} :catchall_227

    :try_start_229
    throw v0
    :try_end_22a
    .catchall {:try_start_229 .. :try_end_22a} :catchall_22a

    :catchall_22a
    move-exception v0

    .line 3359
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3360
    throw v0
.end method

.method public switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 13

    .line 3364
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3368
    :try_start_3
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWaitingForUnlockUser(Z)V

    .line 3369
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_e

    goto :goto_10

    .line 3370
    :cond_e
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 3375
    :goto_10
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCoverWallpaperInfo(Landroid/content/ComponentName;I)Landroid/app/WallpaperInfo;

    move-result-object v9

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v7, p1

    move-object v8, p2

    .line 3376
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    move-result v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_6d

    if-nez v3, :cond_6b

    const/4 v3, 0x0

    .line 3382
    :try_start_23
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v5, 0x40000

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v4, v1, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v3
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_6d

    :catch_2e
    const/4 v1, 0x1

    if-nez v3, :cond_3e

    :try_start_31
    const-string v3, "WallpaperManagerService"

    const-string v4, "Failure starting previous wallpaper; clearing"

    .line 3388
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    goto :goto_6b

    :cond_3e
    const-string v2, "WallpaperManagerService"

    const-string v3, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    .line 3391
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iput-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 3402
    new-instance v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 3403
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_lock_orig"

    const-string/jumbo v5, "wallpaper_lock"

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 3406
    invoke-virtual {p0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3407
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3408
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWaitingForUnlockUser(Z)V

    .line 3414
    :cond_6b
    :goto_6b
    monitor-exit v0

    return-void

    :catchall_6d
    move-exception p0

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_31 .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public systemReady()V
    .registers 7

    .line 2902
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initialize()V

    .line 2930
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    const-string v2, "WallpaperManagerService"

    const-string/jumbo v3, "systemReady: initImageWallpaperCropFile - 1"

    .line 2931
    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .line 2932
    invoke-virtual {p0, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->initImageWallpaperCropFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2933
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_2d

    .line 2934
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    const/16 v4, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    const-string/jumbo v4, "systemReady: initImageWallpaperCropFile - 2"

    .line 2935
    invoke-static {v2, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x11

    .line 2936
    invoke-virtual {p0, v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->initImageWallpaperCropFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2940
    :cond_2d
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.USER_REMOVED"

    .line 2941
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2942
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2953
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2954
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2970
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->initWallpaperLegibilityColors()V

    .line 2975
    :try_start_59
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-interface {v0, v4, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception v0

    .line 2984
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2989
    :goto_6a
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/OMCWallpaper;->registerOMCWallpaperUpdatedReceiver()V

    .line 2991
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 2993
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_87

    :cond_86
    move v1, v3

    .line 2996
    :cond_87
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/OMCWallpaper;->checkTSSActivation(Z)V

    return-void
.end method

.method public unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .registers 11

    .line 4121
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "unregisterWallpaperColorsCallback"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 4123
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4125
    :try_start_16
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_2b

    .line 4128
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_2b

    .line 4130
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 4133
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final updateFallbackConnection()V
    .registers 3

    .line 1891
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_47

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_9

    goto :goto_47

    .line 1892
    :cond_9
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1893
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-nez v1, :cond_17

    const-string p0, "WallpaperManagerService"

    const-string v0, "Fallback wallpaper connection has not been created yet!!"

    .line 1895
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1898
    :cond_17
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1899
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-eqz p0, :cond_47

    .line 1900
    new-instance p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1905
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    goto :goto_47

    .line 1908
    :cond_37
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-static {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$mappendConnectorWithCondition(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Ljava/util/function/Predicate;)V

    .line 1912
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    const/4 v0, 0x1

    .line 4717
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 10

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    const-string v2, "WallpaperManagerService"

    if-eqz v0, :cond_12

    .line 4732
    :try_start_b
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v0

    goto :goto_18

    .line 4735
    :cond_12
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 4738
    :goto_18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 4739
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 4741
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1f9

    const/4 v4, -0x1

    .line 4740
    invoke-static {v0, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 4755
    :cond_2b
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    .line 4756
    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v0, :cond_41

    .line 4759
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string p0, "fail to restorecon"

    .line 4760
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4765
    :cond_41
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 4766
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result p0

    iput p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-eqz p3, :cond_50

    const-string v0, "android.service.wallpaper.extra.ID"

    .line 4768
    invoke-virtual {p3, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4771
    :cond_50
    iput-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 4777
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-eqz p0, :cond_8b

    .line 4778
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateWallpaperBitmapLocked: which = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", id = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", name = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",file = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 4779
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4778
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_8b} :catch_8c

    :cond_8b
    return-object v3

    :catch_8c
    move-exception p0

    const-string p1, "Error setting wallpaper"

    .line 4784
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public writeWallpaperAttributes(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5704
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v1

    const/4 v2, 0x0

    .line 5705
    invoke-interface {p1, v2, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5706
    iget v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    const-string v4, "id"

    invoke-interface {p1, v2, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5707
    iget v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    const-string/jumbo v4, "width"

    invoke-interface {p1, v2, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5708
    iget v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    const-string v4, "height"

    invoke-interface {p1, v2, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5710
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    const-string v4, "cropLeft"

    invoke-interface {p1, v2, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5711
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const-string v4, "cropTop"

    invoke-interface {p1, v2, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5712
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    const-string v4, "cropRight"

    invoke-interface {p1, v2, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5713
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    const-string v4, "cropBottom"

    invoke-interface {p1, v2, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5715
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_4f

    const-string/jumbo v4, "paddingLeft"

    .line 5716
    invoke-interface {p1, v2, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5718
    :cond_4f
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eqz v3, :cond_5b

    const-string/jumbo v4, "paddingTop"

    .line 5719
    invoke-interface {p1, v2, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5721
    :cond_5b
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-eqz v3, :cond_67

    const-string/jumbo v4, "paddingRight"

    .line 5722
    invoke-interface {p1, v2, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5724
    :cond_67
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_73

    const-string/jumbo v3, "paddingBottom"

    .line 5725
    invoke-interface {p1, v2, v3, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5728
    :cond_73
    iget v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    const-string v3, "dimAmount"

    invoke-interface {p1, v2, v3, v1}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 5729
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const-string v3, "dimAmountsCount"

    .line 5730
    invoke-interface {p1, v2, v3, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x1

    if-lez v1, :cond_dd

    .line 5733
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 5734
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dimUID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v2, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5735
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dimValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {p1, v2, v6, v5}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    add-int/2addr v4, v3

    goto :goto_93

    .line 5740
    :cond_dd
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_18f

    .line 5741
    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v4, "colorsCount"

    .line 5742
    invoke-interface {p1, v2, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v1, :cond_11a

    move v4, v0

    :goto_f1
    if-ge v4, v1, :cond_11a

    .line 5745
    iget-object v5, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v5}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Color;

    .line 5746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/graphics/Color;->toArgb()I

    move-result v5

    invoke-interface {p1, v2, v6, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_f1

    .line 5750
    :cond_11a
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const-string v4, "allColorsCount"

    .line 5751
    invoke-interface {p1, v2, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v1, :cond_184

    .line 5754
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v1

    .line 5755
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 5754
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_13a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_184

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 5756
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allColorsValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v2, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5757
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allColorsPopulation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v2, v6, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    add-int/2addr v4, v3

    goto :goto_13a

    .line 5762
    :cond_184
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v1

    const-string v4, "colorHints"

    invoke-interface {p1, v2, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5765
    :cond_18f
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const-string v4, "name"

    invoke-interface {p1, v2, v4, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5766
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_1ad

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 5767
    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ad

    .line 5768
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 5769
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "component"

    .line 5768
    invoke-interface {p1, v2, v4, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5772
    :cond_1ad
    iget-boolean v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    if-eqz v1, :cond_1b6

    const-string v1, "backup"

    .line 5773
    invoke-interface {p1, v2, v1, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 5777
    :cond_1b6
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCreationTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c9

    .line 5778
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCreationTime()Ljava/lang/String;

    move-result-object v1

    const-string v4, "creationTime"

    invoke-interface {p1, v2, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5781
    :cond_1c9
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsPreloaded()Z

    move-result v1

    const-string/jumbo v4, "true"

    if-eqz v1, :cond_1d9

    const-string v1, "isPreloaded"

    .line 5782
    invoke-interface {p1, v2, v1, v4}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5785
    :cond_1d9
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsCopied()Z

    move-result v1

    if-eqz v1, :cond_1e6

    const-string v1, "isCopied"

    .line 5786
    invoke-interface {p1, v2, v1, v4}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5789
    :cond_1e6
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastCallingPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f9

    .line 5790
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastCallingPackage()Ljava/lang/String;

    move-result-object v1

    const-string v5, "lastCallingPackage"

    invoke-interface {p1, v2, v5, v1}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5793
    :cond_1f9
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getExternalParams()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_20c

    .line 5795
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->toJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20c

    const-string v5, "externalParams"

    .line 5797
    invoke-interface {p1, v2, v5, v1}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5801
    :cond_20c
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "type"

    invoke-interface {p1, v2, v5, v1}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5803
    iget v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v1

    const-string/jumbo v5, "videoFileName"

    const/16 v6, 0x8

    if-nez v1, :cond_27e

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 5804
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v1

    if-ne v1, v6, :cond_27e

    .line 5805
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_245

    .line 5806
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFilePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "videoFilePath"

    invoke-interface {p1, v2, v7, v1}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5808
    :cond_245
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoPkgName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_259

    .line 5809
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoPkgName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "videoPkgName"

    invoke-interface {p1, v2, v7, v1}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5811
    :cond_259
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26d

    .line 5812
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoColor()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "videoColor"

    invoke-interface {p1, v2, v7, v1}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5814
    :cond_26d
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27e

    .line 5815
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFileName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v5, v1}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5819
    :cond_27e
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    const/4 v7, 0x2

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v7, p0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(ILjava/lang/String;)I

    move-result p0

    if-ne p0, v6, :cond_2a8

    .line 5820
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoDefaultHasBeenUsed()Z

    move-result p0

    if-eqz p0, :cond_2a8

    .line 5821
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoDefaultHasBeenUsed()Z

    move-result p0

    if-eqz p0, :cond_2a0

    goto :goto_2a2

    :cond_2a0
    const-string v4, "false"

    :goto_2a2
    const-string/jumbo p0, "videoDefaultHasBeenUsed"

    invoke-interface {p1, v2, p0, v4}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2a8
    const-string p0, "kwp"

    .line 5825
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f7

    .line 5826
    iget p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result p0

    if-nez p0, :cond_2d3

    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 5827
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    if-ne p0, v3, :cond_2d3

    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 5828
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionPkgName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d3

    .line 5829
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionPkgName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "motionPkgName"

    invoke-interface {p1, v2, v1, p0}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5832
    :cond_2d3
    iget p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result p0

    if-nez p0, :cond_2f7

    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 5833
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_2f7

    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 5834
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedPkgName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2f7

    .line 5835
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedPkgName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "animatedPkgName"

    invoke-interface {p1, v2, v1, p0}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5839
    :cond_2f7
    iget p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result p0

    if-nez p0, :cond_331

    .line 5840
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_319

    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 5841
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_319

    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 5842
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    if-nez p0, :cond_331

    .line 5843
    :cond_319
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getUri()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_331

    .line 5844
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getUri()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "uri"

    invoke-interface {p1, v2, v1, p0}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5849
    :cond_331
    iget p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result p0

    if-nez p0, :cond_353

    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 5850
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/4 v1, 0x7

    if-ne p0, v1, :cond_353

    .line 5851
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFileName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_353

    .line 5852
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFileName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, v5, p0}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5857
    :cond_353
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getColorThemeData()Lcom/samsung/server/wallpaper/ColorThemeData;

    move-result-object p0

    if-eqz p0, :cond_3a9

    .line 5859
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/ColorThemeData;->getColors()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3a9

    .line 5861
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3a9

    const-string/jumbo v5, "themeColorSize"

    .line 5863
    invoke-interface {p1, v2, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    move v5, v0

    :goto_36e
    if-ge v5, v4, :cond_396

    .line 5865
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 5866
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "themeColor"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_36e

    .line 5868
    :cond_396
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/ColorThemeData;->getSaturationNum()I

    move-result v1

    const-string/jumbo v4, "saturationNum"

    invoke-interface {p1, v2, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5869
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/ColorThemeData;->getLuminanceNum()I

    move-result p0

    const-string v1, "luminanceNum"

    invoke-interface {p1, v2, v1, p0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5875
    :cond_3a9
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistoryList()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_3db

    .line 5877
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 5878
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ltz v1, :cond_3db

    :goto_3bd
    if-gt v0, v1, :cond_3d2

    .line 5881
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq v0, v1, :cond_3cf

    const-string v3, ";"

    .line 5883
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3cf
    add-int/lit8 v0, v0, 0x1

    goto :goto_3bd

    .line 5887
    :cond_3d2
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "history"

    invoke-interface {p1, v2, p3, p0}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5891
    :cond_3db
    invoke-interface {p1, v2, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

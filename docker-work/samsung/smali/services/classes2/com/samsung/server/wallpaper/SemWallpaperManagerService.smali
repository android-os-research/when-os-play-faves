.class public Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
.super Ljava/lang/Object;
.source "SemWallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;,
        Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;
    }
.end annotation


# static fields
.field public static final ACTION_SAMSUNG_LIVE_WALLPAPER:Ljava/lang/String; = "com.samsung.android.service.wallpaper.LiveWallpaperService"

.field public static final BACKUP_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.android.wallpaperbackup"

.field public static final COVER_AREMOJI_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.aremoji"

.field public static final DEBUG:Z = true

.field public static final DESKTOP_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field public static final DRESSROOM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.dressroom"

.field public static final EDIT_TYPE_CROP:I = 0x1

.field public static final EDIT_TYPE_ORIGINAL:I = 0x0

.field public static final EXTRA_WALLPAPER_FILENAME:Ljava/lang/String; = "filename"

.field public static final EXTRA_WALLPAPER_FLAG:Ljava/lang/String; = "which"

.field public static final EXTRA_WALLPAPER_IS_PRELOADED:Ljava/lang/String; = "isPreloaded"

.field public static final EXTRA_WALLPAPER_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final FILE_TYPE_INFO:I = 0x2

.field public static final FILE_TYPE_LOCK:I = 0x1

.field public static final FILE_TYPE_SYSTEM:I = 0x0

.field public static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final LIVE_WALLPAPER_PICKER_PACKAGE_NAME:Ljava/lang/String; = "com.android.wallpaper.livepicker"

.field public static final MSG_WALLPAPER_BINDING_TIMEOUT:I = 0x3f1

.field public static final ODTC_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "service.odtcfactory.sec.com.odtcfactoryservice"

.field public static final REQUEST_DELETE_WALLPAPER:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_DELETE_WALLPAPER"

.field public static final SHIPPED:Z

.field public static final SYSTEMUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field public static final TAG:Ljava/lang/String; = "SemWallpaperManagerService"

.field public static final THEME_CENTER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.themecenter"

.field public static final WALLPAPER:Ljava/lang/String; = "wallpaper_orig"

.field public static final WALLPAPER_BINDING_TIMEOUT_MILLIS:J = 0x7d0L

.field public static final WALLPAPER_CROP:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_FIRST_FRAME:Ljava/lang/String; = "wallpaper_first"

.field public static final WALLPAPER_FIRST_FRAME_SUB:Ljava/lang/String; = "wallpaper_first_sub"

.field public static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field public static final WALLPAPER_LOCK:Ljava/lang/String; = "wallpaper_lock_orig"

.field public static final WALLPAPER_LOCK_CROP:Ljava/lang/String; = "wallpaper_lock"

.field public static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.samsung.android.wallpaper.res"

.field public static final sLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sSnapshotTestMode:Z


# instance fields
.field public mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public mColorTheme:Lcom/samsung/server/wallpaper/ColorTheme;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

.field public mDensityDpi:I

.field public mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mHandler:Landroid/os/Handler;

.field public mKnox:Lcom/samsung/server/wallpaper/Knox;

.field public mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

.field public mLockWallpaper:Lcom/samsung/server/wallpaper/LockWallpaper;

.field public mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

.field public mOldUserId:I

.field public mOrientation:I

.field public final mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

.field public final mSnapshotDataLock:Ljava/lang/Object;

.field public final mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

.field public mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

.field public mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSnapshotManager(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdoRestore(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;II)Ljava/util/Map;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->doRestore(II)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdoRestoreOrRemove(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;II)Ljava/util/Map;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->doRestoreOrRemove(II)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 161
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 224
    sput-boolean v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sSnapshotTestMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;Landroid/app/SemWallpaperResourcesInfo;)V
    .registers 8

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    .line 196
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 197
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    const/4 v0, -0x1

    .line 201
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    .line 202
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    const/4 v0, 0x2

    .line 222
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    .line 226
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 227
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 228
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 229
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLockWallpaper:Lcom/samsung/server/wallpaper/LockWallpaper;

    .line 230
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 231
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 232
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    .line 233
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 234
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    .line 235
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mColorTheme:Lcom/samsung/server/wallpaper/ColorTheme;

    .line 237
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    .line 400
    new-instance v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Landroid/os/Handler;

    const-string v1, "SemWallpaperManagerService"

    .line 244
    invoke-static {v1, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    .line 247
    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 248
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 249
    new-instance v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-direct {v1, p1, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;-><init>(Landroid/content/Context;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;)V

    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 250
    new-instance p3, Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-direct {p3, p1, p2, p0, p4}, Lcom/samsung/server/wallpaper/DefaultWallpaper;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 251
    new-instance p3, Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-direct {p3, p1, p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;-><init>(Landroid/content/Context;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 252
    new-instance p3, Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-direct {p3, p1, p2, p0}, Lcom/samsung/server/wallpaper/OMCWallpaper;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 253
    new-instance p3, Lcom/samsung/server/wallpaper/LockWallpaper;

    invoke-direct {p3}, Lcom/samsung/server/wallpaper/LockWallpaper;-><init>()V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLockWallpaper:Lcom/samsung/server/wallpaper/LockWallpaper;

    .line 254
    new-instance p3, Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-direct {p3, p1, p2, p0}, Lcom/samsung/server/wallpaper/DesktopMode;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 255
    new-instance p3, Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-direct {p3, p2}, Lcom/samsung/server/wallpaper/SubDisplayMode;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 256
    new-instance p3, Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-direct {p3, p1, p2, p0}, Lcom/samsung/server/wallpaper/LegibilityColor;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 257
    new-instance p2, Lcom/samsung/server/wallpaper/Knox;

    invoke-direct {p2, p1}, Lcom/samsung/server/wallpaper/Knox;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    .line 259
    new-instance p2, Lcom/samsung/server/wallpaper/ColorTheme;

    invoke-direct {p2, v0}, Lcom/samsung/server/wallpaper/ColorTheme;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mColorTheme:Lcom/samsung/server/wallpaper/ColorTheme;

    .line 262
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 263
    new-instance p3, Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    invoke-direct {p3, p2}, Lcom/samsung/server/wallpaper/VirtualDisplayMode;-><init>(Landroid/hardware/display/DisplayManager;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 266
    iget p3, p2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setDensityDpi(I)V

    .line 267
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setOrientation(I)V

    .line 269
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.CONFIGURATION_CHANGED"

    .line 270
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    new-instance p3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;

    invoke-direct {p3, p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 601
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 604
    :goto_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 605
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 606
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_13

    :cond_25
    const-string v3, "\n"

    .line 609
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 612
    :cond_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 613
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCallStackString()Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 617
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCallStackString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallStackString(IZ)Ljava/lang/String;
    .registers 10

    .line 623
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-gez p0, :cond_b

    .line 626
    array-length p0, v0

    :cond_b
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 632
    :goto_d
    array-length v3, v0

    if-ge v2, v3, :cond_23

    .line 633
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getCallStackString"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    add-int/lit8 v1, v2, 0x1

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 638
    :cond_23
    array-length v2, v0

    sub-int/2addr v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2a

    .line 639
    array-length p0, v0

    sub-int/2addr p0, v1

    :cond_2a
    const-string v2, ""

    move v3, v1

    move-object v4, v2

    :goto_2e
    add-int v5, v1, p0

    if-ge v3, v5, :cond_88

    .line 642
    array-length v5, v0

    if-ge v3, v5, :cond_88

    .line 643
    aget-object v5, v0, v3

    if-ne v3, v1, :cond_3e

    .line 645
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    goto :goto_5f

    .line 647
    :cond_3e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_54

    const-string v7, "\n"

    goto :goto_55

    :cond_54
    move-object v7, v2

    :goto_55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5f
    if-eqz p1, :cond_85

    .line 653
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") :"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 657
    :cond_88
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_a7

    .line 658
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a7
    return-object v2
.end method

.method public static getFileName(III)Ljava/lang/String;
    .registers 6

    .line 413
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    if-ne p1, v1, :cond_e

    const-string/jumbo p0, "wallpaper_desktop_info.xml"

    return-object p0

    :cond_e
    if-ne p1, v2, :cond_1a

    if-ne p2, v2, :cond_16

    const-string/jumbo p0, "wallpaper_desktop_lock"

    return-object p0

    :cond_16
    const-string/jumbo p0, "wallpaper_desktop_lock_orig"

    return-object p0

    :cond_1a
    if-ne p2, v2, :cond_20

    const-string/jumbo p0, "wallpaper_desktop"

    return-object p0

    :cond_20
    const-string/jumbo p0, "wallpaper_desktop_orig"

    return-object p0

    .line 429
    :cond_24
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_46

    if-ne p1, v1, :cond_30

    const-string/jumbo p0, "wallpaper_subdisplay_info.xml"

    return-object p0

    :cond_30
    if-ne p1, v2, :cond_3c

    if-ne p2, v2, :cond_38

    const-string/jumbo p0, "wallpaper_sub_display_lock"

    return-object p0

    :cond_38
    const-string/jumbo p0, "wallpaper_sub_display_lock_orig"

    return-object p0

    :cond_3c
    if-ne p2, v2, :cond_42

    const-string/jumbo p0, "wallpaper_sub_display"

    return-object p0

    :cond_42
    const-string/jumbo p0, "wallpaper_sub_display_orig"

    return-object p0

    .line 445
    :cond_46
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_5c

    if-ne p1, v1, :cond_52

    const-string/jumbo p0, "wallpaper_virtualdisplay_info.xml"

    return-object p0

    :cond_52
    if-ne p2, v2, :cond_58

    const-string/jumbo p0, "wallpaper_virtual_display"

    return-object p0

    :cond_58
    const-string/jumbo p0, "wallpaper_virtual_display_orig"

    return-object p0

    :cond_5c
    if-ne p1, v1, :cond_62

    const-string/jumbo p0, "wallpaper_info.xml"

    return-object p0

    :cond_62
    if-ne p1, v2, :cond_6e

    if-ne p2, v2, :cond_6a

    const-string/jumbo p0, "wallpaper_lock"

    return-object p0

    :cond_6a
    const-string/jumbo p0, "wallpaper_lock_orig"

    return-object p0

    :cond_6e
    if-ne p2, v2, :cond_74

    const-string/jumbo p0, "wallpaper"

    return-object p0

    :cond_74
    const-string/jumbo p0, "wallpaper_orig"

    return-object p0
.end method

.method public static getLogArray()[Ljava/lang/String;
    .registers 2

    .line 1672
    sget-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1673
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .line 1674
    monitor-exit v0

    return-object v1

    .line 1676
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception v1

    .line 1677
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 589
    :try_start_a
    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_14
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 594
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    goto :goto_2f

    :catchall_12
    move-exception v0

    goto :goto_30

    :catch_14
    move-exception v0

    :try_start_15
    const-string v1, "SemWallpaperManagerService"

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStringFromFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_12

    .line 594
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    :goto_2f
    return-object v0

    :goto_30
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 595
    throw v0
.end method

.method public static getWallpaperDir(I)Ljava/io/File;
    .registers 1

    .line 1076
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getWallpaperLockDir(I)Ljava/io/File;
    .registers 3

    .line 1072
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "wallpaper_lock_images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static putLog(Ljava/lang/String;)V
    .registers 8

    const-string v0, "SemWallpaperManagerService"

    .line 1656
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    sget-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1658
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1659
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1660
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    .line 1661
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1662
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    rem-long/2addr v1, v5

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v1, 0x14

    if-le p0, v1, :cond_53

    const/4 p0, 0x0

    .line 1666
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1668
    :cond_53
    monitor-exit v0

    return-void

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_55

    throw p0
.end method


# virtual methods
.method public final canRestore(I)Z
    .registers 8

    .line 1227
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshotCount(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "No snapshot"

    const/4 v3, 0x2

    const-string v4, "SemWallpaperManagerService"

    if-gtz v0, :cond_1d

    const-string v0, "canRestore: No snapshot."

    .line 1228
    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0, v3, p1, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/lang/String;)V

    return v1

    .line 1233
    :cond_1d
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v5, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1234
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData()Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p0, 0x1

    return p0

    .line 1235
    :cond_30
    :goto_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canRestore: No snapshot for key ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0, v3, p1, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/lang/String;)V

    return v1
.end method

.method public final doRestore(II)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1310
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1311
    :try_start_8
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p2

    .line 1312
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_57

    if-eqz p2, :cond_56

    const-string v1, "SemWallpaperManagerService"

    .line 1315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRestore: which set = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1318
    invoke-virtual {p0, p1, v2, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->restoreSnapshotInternal(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)I

    move-result v3

    .line 1319
    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->postProcess(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;I)V

    .line 1320
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_56
    return-object v0

    :catchall_57
    move-exception p0

    .line 1312
    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public final doRestoreOrRemove(II)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1331
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1332
    :try_start_8
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v2

    .line 1333
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_5f

    if-eqz v2, :cond_5e

    .line 1336
    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1337
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v4, p1, p2, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->shouldRestoreSnapshot(III)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1338
    invoke-virtual {p0, p1, v3, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->restoreSnapshotInternal(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)I

    move-result v4

    .line 1339
    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->postProcess(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;I)V

    .line 1340
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 1342
    :cond_44
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1343
    :try_start_47
    iget-object v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v5, p1, p2, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->migrateToPriorSnapshot(III)V

    .line 1344
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_5b

    .line 1345
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x3ec

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :catchall_5b
    move-exception p0

    .line 1344
    :try_start_5c
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0

    :cond_5e
    return-object v0

    :catchall_5f
    move-exception p0

    .line 1333
    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const-string v0, "SemWallpaperManagerService start"

    .line 325
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Legibility Version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/SemWallpaperColors;->getLegibilityVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  allowScreenRotate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->getAllowScreenRotateSystem()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->getAllowScreenRotateLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_7b

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Lid state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7b
    const-string v0, " ------------ Snapshot History ------------"

    .line 338
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getLogArray()[Ljava/lang/String;

    move-result-object p0

    const-string v0, " --------------LogArray--------------"

    .line 342
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p0, :cond_b5

    .line 344
    array-length v0, p0

    const/4 v1, 0x0

    :goto_92
    if-ge v1, v0, :cond_ba

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    :cond_b5
    const-string p0, "  logArray is null"

    .line 349
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ba
    const-string p0, "SemWallpaperManagerService"

    .line 352
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p0, "SemWallpaperManagerService end"

    .line 353
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public generateCroppedBitmap(Lcom/samsung/server/wallpaper/SemWallpaperData;Ljava/lang/String;)Z
    .registers 12

    .line 869
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 874
    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    .line 879
    :cond_1c
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_27

    return v1

    .line 884
    :cond_27
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 885
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const-string v4, "SemWallpaperManagerService"

    if-lez v2, :cond_db

    if-gtz v3, :cond_37

    goto/16 :goto_db

    :cond_37
    const-string v5, "com.samsung.android.themecenter"

    .line 891
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v5, 0x1

    if-nez p2, :cond_44

    .line 892
    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    return v5

    .line 896
    :cond_44
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDisplayId(Lcom/samsung/server/wallpaper/SemWallpaperData;)I

    move-result p2

    .line 897
    new-instance v6, Landroid/view/DisplayInfo;

    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    .line 898
    iget-object v7, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 900
    iget p2, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    if-eqz p2, :cond_d7

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    if-nez v6, :cond_60

    goto/16 :goto_d7

    .line 908
    :cond_60
    invoke-virtual {p0, v2, v3, p2, v6}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCroppedBitmapInfo(IIII)[Landroid/graphics/Point;

    move-result-object p0

    .line 909
    aget-object p2, p0, v1

    iget v6, p2, Landroid/graphics/Point;->x:I

    .line 910
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 911
    aget-object p0, p0, v5

    iget v7, p0, Landroid/graphics/Point;->x:I

    .line 912
    iget p0, p0, Landroid/graphics/Point;->y:I

    if-gez v7, :cond_73

    move v7, v1

    :cond_73
    if-gez p0, :cond_76

    goto :goto_77

    :cond_76
    move v1, p0

    .line 917
    :goto_77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generateCroppedBitmap:\n\tbitmapWidth = "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\tbitmapHeight = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\tfinalWidth = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\tfinalHeight = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\toptimalDx = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\toptimalDy = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v6, :cond_c9

    if-gtz p2, :cond_b8

    goto :goto_c9

    .line 933
    :cond_b8
    invoke-static {v0, v7, v1, v6, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 934
    invoke-virtual {p1, p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    .line 937
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c8

    .line 938
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c8
    return v5

    :cond_c9
    :goto_c9
    const-string p0, "generateCroppedBitmap: Width or height of newly generated bitmap should be greater than 0."

    .line 926
    invoke-static {v4, p0}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "generateResizedBitmap: Width or height of newly generated bitmap should be greater than 0."

    .line 927
    invoke-static {v4, p0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    return v5

    .line 901
    :cond_d7
    :goto_d7
    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    return v5

    :cond_db
    :goto_db
    const-string p0, "generateCroppedBitmap: bitmap size must be > 0"

    .line 887
    invoke-static {v4, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;Z)Landroid/graphics/Bitmap;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 736
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v3

    .line 737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateResizedBitmap: which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isPreloadRotated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemWallpaperManagerService"

    invoke-static {v5, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 740
    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDisplayId(Lcom/samsung/server/wallpaper/SemWallpaperData;)I

    move-result v4

    .line 741
    iget-object v8, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_5a

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateResizedBitmap: failed to get display. displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    .line 746
    :cond_5a
    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    .line 747
    invoke-virtual {v8, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 749
    iget v8, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    if-eqz v8, :cond_287

    iget v8, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    if-nez v8, :cond_6c

    goto/16 :goto_287

    .line 751
    :cond_6c
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v8

    if-nez v8, :cond_78

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v8

    if-eqz v8, :cond_96

    .line 752
    :cond_78
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getOrientation()I

    move-result v8

    if-eqz v8, :cond_96

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result v8

    if-eqz v8, :cond_96

    .line 754
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getOrientation()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result v10

    if-eq v8, v10, :cond_96

    .line 755
    iget v8, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 756
    iget v10, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v10, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 757
    iput v8, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 764
    :cond_96
    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSingleType(I)Z

    move-result v8

    if-nez v8, :cond_b1

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateResizedBitmap: invalid which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    .line 769
    :cond_b1
    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 770
    iget-object v8, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLockWallpaper:Lcom/samsung/server/wallpaper/LockWallpaper;

    move-object/from16 v10, p1

    invoke-virtual {v8, v10, v1}, Lcom/samsung/server/wallpaper/LockWallpaper;->getWallpaperFile(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)Ljava/io/File;

    move-result-object v8

    goto :goto_d4

    :cond_c0
    move-object/from16 v10, p1

    .line 771
    sget-boolean v8, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v8, :cond_d3

    .line 772
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v8

    const/16 v11, 0x8

    if-ne v8, v11, :cond_d3

    .line 773
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object v8

    goto :goto_d4

    :cond_d3
    move-object v8, v10

    .line 777
    :goto_d4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    if-eqz v8, :cond_ed

    .line 779
    :try_start_da
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_e1

    goto :goto_ed

    .line 787
    :cond_e1
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 788
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_12f

    :catchall_ea
    move-exception v0

    goto/16 :goto_283

    .line 780
    :cond_ed
    :goto_ed
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateResizedBitmap: file is null, (which = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ") so create Operator wallpaper bitmap"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v8, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-virtual {v8, v3}, Lcom/samsung/server/wallpaper/OMCWallpaper;->getOperatorWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_12e

    .line 783
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateResizedBitmap: file operator bitmap is null, (which = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ") so create Default wallpaper bitmap"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v8, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {v8, v3}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->getDefaultWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_12d
    .catchall {:try_start_da .. :try_end_12d} :catchall_ea

    goto :goto_12f

    :cond_12e
    move-object v3, v8

    .line 791
    :goto_12f
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v3, :cond_13a

    const-string v0, "generateResizedBitmap: bitmap is null"

    .line 795
    invoke-static {v5, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    .line 799
    :cond_13a
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 800
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-lez v8, :cond_27c

    if-gtz v10, :cond_148

    goto/16 :goto_27c

    .line 809
    :cond_148
    iget v11, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 810
    iget v12, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 812
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getOrientation()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_189

    .line 813
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v11

    if-nez v11, :cond_179

    sget-boolean v11, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v11, :cond_168

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v11

    invoke-static {v11}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v11

    if-nez v11, :cond_168

    goto :goto_179

    .line 817
    :cond_168
    iget v11, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v12, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 818
    iget v12, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_189

    .line 814
    :cond_179
    :goto_179
    iget v11, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v12, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 815
    iget v12, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_189
    :goto_189
    if-eqz v2, :cond_190

    move/from16 v16, v12

    move v12, v11

    move/from16 v11, v16

    .line 828
    :cond_190
    invoke-virtual {v0, v8, v10, v11, v12}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCroppedBitmapInfo(IIII)[Landroid/graphics/Point;

    move-result-object v0

    const/4 v4, 0x0

    .line 829
    aget-object v11, v0, v4

    iget v12, v11, Landroid/graphics/Point;->x:I

    .line 830
    iget v11, v11, Landroid/graphics/Point;->y:I

    const/4 v13, 0x1

    .line 831
    aget-object v0, v0, v13

    iget v15, v0, Landroid/graphics/Point;->x:I

    .line 832
    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v15, :cond_1a5

    move v15, v4

    :cond_1a5
    if-gez v0, :cond_1a8

    move v0, v4

    .line 837
    :cond_1a8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generateResizedBitmap: start bitmapWidth = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", bitmapHeight = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " optimalWidth = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", optimalHeight = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", finalWidth = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " , finalHeight = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", optimalDx = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " , optimalDy = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v8, :cond_272

    if-lez v10, :cond_272

    if-lez v12, :cond_272

    if-gtz v11, :cond_1fd

    goto :goto_272

    .line 849
    :cond_1fd
    invoke-static {v3, v15, v0, v12, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v8, "generateResizedBitmap end createBitmap"

    .line 850
    invoke-static {v5, v8}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_20b

    .line 853
    invoke-virtual {v1, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    .line 857
    :cond_20b
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_214

    .line 858
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 861
    :cond_214
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v6

    .line 862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateResizedBitmap : took :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v14, [Ljava/lang/Object;

    const-wide/32 v7, 0xf4240

    div-long v9, v1, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v4

    rem-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v6, v2

    const-string v1, "%d.%06dms"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateResizedBitmap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_272
    :goto_272
    const-string v0, "generateResizedBitmap: Width or height of newly generated bitmap should be greater than 0."

    .line 844
    invoke-static {v5, v0}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-static {v5, v0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_27c
    :goto_27c
    move-object v0, v9

    const-string v1, "generateResizedBitmap: bitmap size must be > 0"

    .line 803
    invoke-static {v5, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 791
    :goto_283
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 792
    throw v0

    :cond_287
    :goto_287
    move-object v0, v9

    return-object v0
.end method

.method public generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)V
    .registers 4

    const/4 v0, 0x0

    .line 732
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;Z)Landroid/graphics/Bitmap;

    return-void
.end method

.method public final getCroppedBitmapInfo(IIII)[Landroid/graphics/Point;
    .registers 13

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/graphics/Point;

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResizedBitmapOffset start optimal width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemWallpaperManagerService"

    invoke-static {v2, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, p4

    int-to-float v3, p3

    div-float/2addr v0, v3

    const/4 v3, 0x0

    if-lez p1, :cond_46

    if-lez p2, :cond_46

    int-to-float v4, p2

    int-to-float v5, p1

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    if-lez v0, :cond_3d

    mul-int/2addr p3, p2

    .line 998
    div-int/2addr p3, p4

    sub-int/2addr p1, p3

    int-to-double v6, p1

    mul-double/2addr v6, v4

    double-to-int p1, v6

    move p4, p2

    move p2, p1

    move p1, p3

    move p3, v3

    goto :goto_4a

    :cond_3d
    mul-int/2addr p4, p1

    .line 1001
    div-int/2addr p4, p3

    sub-int/2addr p2, p4

    int-to-double p2, p2

    mul-double/2addr p2, v4

    double-to-int p2, p2

    move p3, p2

    move p2, v3

    goto :goto_4a

    :cond_46
    move p1, v3

    move p2, p1

    move p3, p2

    move p4, p3

    .line 1005
    :goto_4a
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, p0, v3

    const/4 v0, 0x1

    .line 1006
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, p0, v0

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayInfo end width = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dx = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , dy = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getCurrentUserId()I
    .registers 1

    .line 362
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    return p0
.end method

.method public getDensityDpi()I
    .registers 1

    .line 389
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    return p0
.end method

.method public getDisplayId(I)I
    .registers 5

    .line 956
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    and-int/lit8 p1, p1, 0x3c

    const/16 v0, 0x10

    const/4 v2, 0x1

    if-ne p1, v0, :cond_e

    move p1, v2

    goto :goto_f

    :cond_e
    move p1, v1

    .line 959
    :goto_f
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_15

    move v1, p1

    goto :goto_23

    .line 962
    :cond_15
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result p0

    if-nez p0, :cond_20

    if-nez p1, :cond_23

    goto :goto_22

    :cond_20
    if-eqz p1, :cond_23

    :goto_22
    move v1, v2

    .line 972
    :cond_23
    :goto_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getDisplayId: displayId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWallpaperManagerService"

    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return v1
.end method

.method public getDisplayId(Lcom/samsung/server/wallpaper/SemWallpaperData;)I
    .registers 2

    .line 945
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDisplayId(I)I

    move-result p0

    return p0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 366
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 367
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 368
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 369
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 371
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 372
    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    return-object v0
.end method

.method public getOldUserId()I
    .registers 1

    .line 381
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    return p0
.end method

.method public getOrientation()I
    .registers 1

    .line 397
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    return p0
.end method

.method public getPreloadRotatedCroppedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x1

    .line 728
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getSnapshotCount(I)I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    .line 1577
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshotCount(I)I

    move-result p0

    return p0

    .line 1579
    :cond_c
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshotCount(II)I

    move-result p0

    return p0
.end method

.method public final getTargetFile(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Ljava/io/File;
    .registers 7

    .line 1507
    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    .line 1508
    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_aa

    const/4 v1, 0x4

    if-eq p0, v1, :cond_8a

    const/16 v1, 0x8

    if-eq p0, v1, :cond_40

    .line 1539
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    .line 1540
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p1

    invoke-static {p2, v2, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 1542
    :cond_30
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    invoke-static {p2, v0, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_c9

    .line 1529
    :cond_40
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1530
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    goto :goto_57

    :cond_53
    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p1

    .line 1531
    :goto_57
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_61

    const-string/jumbo v1, "wallpaper_first_sub"

    goto :goto_64

    :cond_61
    const-string/jumbo v1, "wallpaper_first_sub_home"

    :goto_64
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_c9

    .line 1533
    :cond_68
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    goto :goto_79

    :cond_75
    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p1

    .line 1534
    :goto_79
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_83

    const-string/jumbo v1, "wallpaper_first"

    goto :goto_86

    :cond_83
    const-string/jumbo v1, "wallpaper_first_home"

    :goto_86
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_c9

    .line 1521
    :cond_8a
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1522
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "wallpaper_animated_background_sub"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_c9

    .line 1524
    :cond_9d
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "wallpaper_animated_background"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_c9

    .line 1513
    :cond_aa
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1514
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "wallpaper_motion_background_sub"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_c9

    .line 1516
    :cond_bd
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "wallpaper_motion_background"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1547
    :goto_c9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTargetFile: which = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", WallpaperDataWhich = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", wallpaperType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", targetFile = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWallpaperManagerService"

    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public handleLiveWallpaperRemoved()V
    .registers 3

    const-string v0, "SemWallpaperManagerService"

    const-string v1, "external live wallpaper is removed"

    .line 717
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    const/4 v0, 0x0

    .line 721
    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->hasLockscreenWallpaper(Z)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 722
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setKWPTypeLiveWallpaper(I)V

    .line 723
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    :cond_1f
    return-void
.end method

.method public handleWallpaperBindingTimeout(ZZ)V
    .registers 4

    const/16 v0, 0x3f1

    if-eqz p1, :cond_9

    .line 1013
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    if-eqz p2, :cond_12

    .line 1016
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x7d0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_12
    return-void
.end method

.method public hasLockscreenWallpaper(Z)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1a

    .line 680
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 681
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    if-lez p0, :cond_f

    goto :goto_10

    :cond_f
    move p0, v0

    :goto_10
    const-string v2, "lockscreen_wallpaper_sub"

    .line 680
    invoke-static {p1, v2, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_19

    move v0, v1

    :cond_19
    return v0

    .line 683
    :cond_1a
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 684
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    if-lez p0, :cond_25

    goto :goto_26

    :cond_25
    move p0, v0

    :goto_26
    const-string v2, "lockscreen_wallpaper"

    .line 683
    invoke-static {p1, v2, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_2f

    move v0, v1

    :cond_2f
    return v0
.end method

.method public initializeThumnailFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;III)Ljava/io/File;
    .registers 8

    .line 1022
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_f

    const-string p0, "SemWallpaperManagerService"

    const-string p2, "initializeThumnailFile: SemWallpaperData is null."

    .line 1024
    invoke-static {p0, p2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 1028
    :cond_f
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    const/16 v1, 0x8

    if-ne p3, v1, :cond_60

    .line 1030
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_60

    .line 1032
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 1033
    new-instance p1, Ljava/io/File;

    if-eqz v0, :cond_2c

    .line 1034
    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    goto :goto_30

    :cond_2c
    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    :goto_30
    if-eqz v0, :cond_36

    const-string/jumbo v2, "wallpaper_first_sub"

    goto :goto_39

    :cond_36
    const-string/jumbo v2, "wallpaper_first_sub_home"

    .line 1035
    :goto_39
    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFirstFrameFile(Ljava/io/File;)V

    goto :goto_5c

    .line 1037
    :cond_40
    new-instance p1, Ljava/io/File;

    if-eqz v0, :cond_49

    .line 1038
    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    goto :goto_4d

    :cond_49
    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    :goto_4d
    if-eqz v0, :cond_53

    const-string/jumbo v2, "wallpaper_first"

    goto :goto_56

    :cond_53
    const-string/jumbo v2, "wallpaper_first_home"

    .line 1039
    :goto_56
    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFirstFrameFile(Ljava/io/File;)V

    .line 1041
    :goto_5c
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object p1

    :cond_60
    const/4 v1, 0x4

    if-ne p3, v1, :cond_94

    if-eqz v0, :cond_94

    .line 1046
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedBackground()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_94

    .line 1048
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 1049
    new-instance p1, Ljava/io/File;

    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_animated_background_sub"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setAnimatedBackground(Ljava/io/File;)V

    goto :goto_90

    .line 1051
    :cond_81
    new-instance p1, Ljava/io/File;

    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_animated_background"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setAnimatedBackground(Ljava/io/File;)V

    .line 1053
    :goto_90
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedBackground()Ljava/io/File;

    move-result-object p1

    :cond_94
    const/4 v1, 0x1

    if-ne p3, v1, :cond_c8

    if-eqz v0, :cond_c8

    .line 1058
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionBackground()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_c8

    .line 1060
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 1061
    new-instance p1, Ljava/io/File;

    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p2

    const-string/jumbo p3, "wallpaper_motion_background_sub"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setMotionBackground(Ljava/io/File;)V

    goto :goto_c4

    .line 1063
    :cond_b5
    new-instance p1, Ljava/io/File;

    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p2

    const-string/jumbo p3, "wallpaper_motion_background"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setMotionBackground(Ljava/io/File;)V

    .line 1065
    :goto_c4
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionBackground()Ljava/io/File;

    move-result-object p1

    :cond_c8
    return-object p1
.end method

.method public isLiveWallpaper(I)Z
    .registers 2

    const/4 p0, 0x7

    if-ne p1, p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final isNeedToNotifySnapshotStatus(I)Z
    .registers 14

    .line 1244
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    const/4 v2, 0x6

    .line 1250
    invoke-virtual {v0, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v3

    const/16 v4, 0x12

    .line 1251
    invoke-virtual {v0, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v5

    .line 1252
    sget-boolean v6, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    const/16 v7, 0x11

    if-eqz v6, :cond_22

    invoke-virtual {v0, v7}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v6

    goto :goto_23

    :cond_22
    move v6, v1

    .line 1253
    :goto_23
    sget-boolean v8, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    const/16 v9, 0x21

    if-eqz v8, :cond_2e

    invoke-virtual {v0, v9}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v8

    goto :goto_2f

    :cond_2e
    move v8, v1

    :goto_2f
    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v6, :cond_45

    .line 1258
    invoke-virtual {v0, v7}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v7

    if-eqz v7, :cond_45

    .line 1260
    invoke-virtual {v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v7

    .line 1261
    invoke-virtual {v7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v7

    if-ne v7, v10, :cond_45

    move v7, v11

    goto :goto_46

    :cond_45
    move v7, v1

    :goto_46
    if-eqz v8, :cond_5a

    .line 1268
    invoke-virtual {v0, v9}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 1270
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v0

    .line 1271
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    if-ne v0, v10, :cond_5a

    move v0, v11

    goto :goto_5b

    :cond_5a
    move v0, v1

    .line 1277
    :goto_5b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNeedToNotifySnapshotStatus: key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", hasMainLock = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasSubLock = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasCoverHome = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasVirtualHome = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasCoverMultipack = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasVirtualMultipack = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "SemWallpaperManagerService"

    invoke-static {v6, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_c1

    if-eqz v0, :cond_a6

    goto :goto_c1

    :cond_a6
    if-eqz v3, :cond_b3

    .line 1291
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p1, v0, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshotCount(II)I

    move-result p1

    if-ne p1, v11, :cond_b3

    return v11

    :cond_b3
    if-eqz v5, :cond_c0

    .line 1297
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p1, p0, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshotCount(II)I

    move-result p0

    if-ne p0, v11, :cond_c0

    return v11

    :cond_c0
    return v1

    :cond_c1
    :goto_c1
    return v11
.end method

.method public isSnapshotTestMode()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1610
    sget-boolean p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1613
    :cond_6
    sget-boolean p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sSnapshotTestMode:Z

    return p0
.end method

.method public isSupportingMode(I)Z
    .registers 3

    .line 689
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p0

    const/16 p1, 0x8

    const/4 v0, 0x0

    if-eq p0, p1, :cond_15

    const/16 p1, 0x10

    if-eq p0, p1, :cond_e

    goto :goto_13

    .line 698
    :cond_e
    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez p0, :cond_13

    return v0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0

    :cond_15
    return v0
.end method

.method public isValidSnapshot(I)Z
    .registers 4

    .line 1597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidSnapshot: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 1600
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData()Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x1

    return p0

    .line 1601
    :cond_29
    :goto_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isValidSnapshot: No snapshot for key ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public loadSettingsLockedForSnapshot(I)V
    .registers 3

    .line 1495
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1496
    :try_start_3
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->loadSettingsLockedForSnapshot(I)V

    .line 1497
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public makeSnapshot(II)I
    .registers 14

    .line 1138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1139
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWhiches(I)Ljava/util/ArrayList;

    move-result-object p1

    if-gtz p2, :cond_1b

    .line 1142
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1143
    :try_start_e
    iget-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p2, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->makeSnapshotKey(I)I

    move-result p2

    .line 1144
    monitor-exit v1

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw p0

    .line 1149
    :cond_1b
    :goto_1b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_53

    .line 1150
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1151
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1152
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    iget v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-interface {v2, v3, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 1154
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_53

    .line 1155
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    :cond_53
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fe

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1161
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-interface {v1, v2, v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1162
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v7, :cond_a9

    .line 1164
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SemWallpaperManagerService"

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeSnapshot: which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", wallpaperCopied is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 1170
    :cond_a9
    invoke-virtual {v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v1

    .line 1171
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCreationTime(Ljava/lang/String;)V

    const-string v1, "SemWallpaperManagerService"

    .line 1173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeSnapshot: which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", wallpaperData ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1176
    :try_start_e2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addSnapshot(Landroid/content/Context;IIILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    monitor-exit v1

    goto/16 :goto_57

    :catchall_fb
    move-exception p0

    monitor-exit v1
    :try_end_fd
    .catchall {:try_start_e2 .. :try_end_fd} :catchall_fb

    throw p0

    .line 1181
    :cond_fe
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p1, v1, v9, p2, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    .line 1184
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10d
    :goto_10d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1186
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "SemWallpaperManagerService"

    .line 1188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeSnapshot: Result <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v0, :cond_155

    const/4 v2, -0x3

    if-ne v0, v2, :cond_10d

    .line 1190
    :cond_155
    invoke-virtual {p0, v1, v9, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->notifySnapshotStatus(III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_10d

    .line 1197
    :cond_15b
    iget p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    if-lez v8, :cond_163

    return p2

    :cond_163
    const/4 p0, -0x1

    return p0
.end method

.method public final notifySnapshotStatus(III)V
    .registers 6

    .line 1554
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 1555
    invoke-interface {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestKeyguardListeners()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_b

    return-void

    .line 1560
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySnapshotStatus: which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, -0x1

    if-ne p1, v0, :cond_54

    .line 1564
    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3e
    :goto_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManagerCallback;

    if-eqz v0, :cond_3e

    .line 1566
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onSemBackupStatusChanged(III)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4f} :catch_50

    goto :goto_3e

    :catch_50
    move-exception p0

    .line 1570
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_54
    return-void
.end method

.method public final postProcess(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;I)V
    .registers 6

    const/16 v0, 0x3e9

    if-ne p4, v0, :cond_49

    const/4 p4, 0x0

    .line 1356
    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1358
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1360
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p4

    .line 1364
    :cond_15
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveSettingsLocked(II)V

    .line 1365
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getSettingsData(I)Ljava/util/Map;

    move-result-object p3

    invoke-static {v0, p1, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->updateSettings(Landroid/content/Context;ILjava/util/Map;)V

    .line 1367
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result p3

    if-eqz p3, :cond_53

    const/4 p3, 0x1

    if-eq p4, p3, :cond_34

    const/4 p3, 0x4

    if-eq p4, p3, :cond_34

    const/16 p3, 0x8

    if-eq p4, p3, :cond_34

    goto :goto_53

    .line 1374
    :cond_34
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->hasLockscreenWallpaper(Z)Z

    move-result p3

    if-eqz p3, :cond_53

    .line 1375
    iget-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p3, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestNotifyLockWallpaperChanged(II)V

    .line 1376
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestNotifySemWallpaperColors(I)V

    goto :goto_53

    .line 1384
    :cond_49
    iget-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p3, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestClearWallpaper(II)V

    .line 1385
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->writeDefaultSettings(Landroid/content/Context;II)V

    :cond_53
    :goto_53
    return-void
.end method

.method public removeOriginalSavedFile(Ljava/lang/String;I)V
    .registers 5

    const-string v0, "com.android.systemui"

    .line 666
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "com.samsung.android.app.dressroom"

    .line 667
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_28

    .line 671
    :cond_11
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.intent.action.REQUEST_DELETE_WALLPAPER"

    .line 672
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "WHICH"

    .line 674
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public removeSnapshotByKey(I)V
    .registers 7

    .line 1104
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1105
    :try_start_3
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->removeSnapshotByKey(II)Ljava/util/Map;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x4

    .line 1106
    invoke-virtual {p0, v2, v3, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->notifySnapshotStatus(III)V

    .line 1107
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, p1, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    .line 1108
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .line 1109
    iget p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    return-void

    :catchall_1f
    move-exception p0

    .line 1108
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public removeSnapshotBySource(Ljava/lang/String;)V
    .registers 5

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeSnapshotBySource: source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    .line 1121
    :cond_1e
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getAllSnapshots(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    if-nez v1, :cond_39

    goto :goto_2a

    .line 1127
    :cond_39
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getSource()Ljava/lang/String;

    move-result-object v2

    .line 1128
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1129
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->removeSnapshotByKey(I)V

    goto :goto_2a

    :cond_4b
    return-void
.end method

.method public removeSnapshotByWhich(I)V
    .registers 8

    .line 1084
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWhiches(I)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "SemWallpaperManagerService"

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSnapshotByWhich: whiches = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1088
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1089
    :try_start_23
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1090
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v4, v5, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->removeSnapshotByWhich(II)V

    const/4 v4, 0x4

    .line 1091
    invoke-virtual {p0, v2, v4, v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->notifySnapshotStatus(III)V

    .line 1092
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 1094
    :cond_50
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    const/4 v4, 0x3

    invoke-virtual {p1, v2, v4, v3, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    .line 1095
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_23 .. :try_end_59} :catchall_5f

    .line 1097
    iget p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    return-void

    :catchall_5f
    move-exception p0

    .line 1095
    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public restoreSnapshot(ILjava/lang/String;)Z
    .registers 6

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreSnapshot: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SemWallpaperManagerService"

    invoke-static {v0, p2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->canRestore(I)Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez p2, :cond_2c

    .line 1213
    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->notifySnapshotStatus(III)V

    return v2

    .line 1217
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->isNeedToNotifySnapshotStatus(I)Z

    move-result p2

    if-eqz p2, :cond_36

    const/4 p2, 0x3

    .line 1218
    invoke-virtual {p0, v1, p2, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->notifySnapshotStatus(III)V

    .line 1221
    :cond_36
    new-instance p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;

    invoke-direct {p2, p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-virtual {p2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2
.end method

.method public final restoreSnapshotInternal(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)I
    .registers 13

    .line 1390
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    const/16 v1, 0x3eb

    const-string v2, "SemWallpaperManagerService"

    if-nez v0, :cond_13

    const-string/jumbo p0, "restoreSnapshotInternal: wallpaper is null."

    .line 1392
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_13
    if-eqz p3, :cond_189

    .line 1396
    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    if-nez v3, :cond_1d

    goto/16 :goto_189

    .line 1403
    :cond_1d
    :try_start_1d
    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez p3, :cond_30

    const-string/jumbo p0, "restoreSnapshotInternal: WallpaperData to restore is null."

    .line 1405
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2f} :catch_16e

    return v1

    .line 1413
    :cond_30
    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v1

    .line 1415
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v3

    .line 1416
    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v4

    .line 1418
    invoke-static {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFiles(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1421
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getTargetFile(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Ljava/io/File;

    move-result-object v0

    .line 1422
    invoke-virtual {p3, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    .line 1423
    new-instance v5, Ljava/io/File;

    .line 1424
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v6

    goto :goto_57

    :cond_53
    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v6

    .line 1425
    :goto_57
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v7

    const/4 v8, 0x1

    invoke-static {p2, v7, v8}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setWallpaperCropFile(Ljava/io/File;)V

    .line 1427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreSnapshotInternal: backupFile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", targetFile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastCallingPackage()Ljava/lang/String;

    move-result-object v5

    .line 1431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreSnapshotInternal: lastCallingPackage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistories()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWallpaperHistories(Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;)V

    .line 1434
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v6, "[RESTORE]"

    if-nez v3, :cond_c8

    .line 1435
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c4

    .line 1436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    goto :goto_cb

    .line 1438
    :cond_c4
    invoke-virtual {p3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    goto :goto_cb

    .line 1441
    :cond_c8
    invoke-virtual {p3, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 1444
    :goto_cb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreSnapshotInternal: wallpaperToRestore ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v3

    const/16 v4, 0x3e9

    if-eq v3, v8, :cond_168

    const/4 v5, 0x3

    if-eq v3, v5, :cond_168

    const/4 v5, 0x4

    if-eq v3, v5, :cond_168

    const/4 v5, 0x5

    if-eq v3, v5, :cond_157

    const/4 v5, 0x7

    if-eq v3, v5, :cond_148

    const/16 v5, 0x8

    const/4 v6, -0x2

    if-eq v3, v5, :cond_123

    .line 1480
    invoke-virtual {p3, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setImageWallpaperPending(Z)V

    .line 1481
    invoke-virtual {p3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setWhichPending(I)V

    .line 1482
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    if-eqz v1, :cond_11a

    .line 1483
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_11a

    .line 1484
    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_118

    goto :goto_119

    :cond_118
    move v4, v6

    :goto_119
    return v4

    :cond_11a
    const-string/jumbo p0, "restoreSnapshotInternal: backupFile is not exist. Reset to default wallpaper."

    .line 1486
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x3ea

    return p0

    .line 1468
    :cond_123
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v2

    if-eqz v2, :cond_137

    .line 1469
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1470
    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_135

    goto :goto_136

    :cond_135
    move v4, v6

    :goto_136
    return v4

    .line 1472
    :cond_137
    invoke-virtual {p3, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setImageWallpaperPending(Z)V

    .line 1473
    invoke-virtual {p3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setWhichPending(I)V

    .line 1474
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1475
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestBindWallpaper(II)V

    goto :goto_16d

    .line 1449
    :cond_148
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSetWallpaperComponent(ILandroid/content/ComponentName;)V

    .line 1450
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_16d

    .line 1460
    :cond_157
    invoke-virtual {p3, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setImageWallpaperPending(Z)V

    .line 1461
    invoke-virtual {p3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setWhichPending(I)V

    .line 1463
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1464
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestBindWallpaper(II)V

    goto :goto_16d

    .line 1456
    :cond_168
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :goto_16d
    return v4

    :catch_16e
    move-exception p0

    .line 1409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "restoreSnapshotInternal: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_189
    :goto_189
    const-string/jumbo p0, "restoreSnapshotInternal: snapshot or WallpaperData in snapshot is null."

    .line 1397
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public saveSettingsLockedForSnapshot(I)V
    .registers 3

    .line 1501
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1502
    :try_start_3
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->saveSettingsLockedForSnapshot(I)V

    .line 1503
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setCurrentUserId(I)V
    .registers 2

    .line 358
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    return-void
.end method

.method public setDensityDpi(I)V
    .registers 2

    .line 385
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    return-void
.end method

.method public setOldUserId(I)V
    .registers 2

    .line 377
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 393
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    return-void
.end method

.method public setSnapshotSource(ILjava/lang/String;)Z
    .registers 5

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSnapshotSource: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p0

    if-nez p0, :cond_40

    .line 1588
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setSnapshotSource: No snapshot for key = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1592
    :cond_40
    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setSource(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setSnapshotTestMode(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1618
    sget-boolean p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    if-eqz p0, :cond_5

    return-void

    .line 1622
    :cond_5
    sput-boolean p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sSnapshotTestMode:Z

    return-void
.end method

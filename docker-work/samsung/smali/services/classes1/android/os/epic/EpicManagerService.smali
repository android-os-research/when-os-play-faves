.class public final Landroid/os/epic/EpicManagerService;
.super Lcom/android/server/SystemService;
.source "EpicManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/epic/EpicManagerService$BinderService;
    }
.end annotation


# static fields
.field public static final FEATURE_ACTIVITY:J = 0x1L

.field public static final FEATURE_PROPERTY_KEY:Ljava/lang/String; = "vendor.epic.feature"

.field public static final FEATURE_WEB:J = 0x2L

.field public static final TAG:Ljava/lang/String; = "EpicManagerService"


# instance fields
.field public mActivityManager:Landroid/app/IActivityManager;

.field public mChromeDetector:Landroid/os/epic/EpicChromeDetector;

.field public final mContext:Landroid/content/Context;

.field public mDisplayHandlerThread:Landroid/os/HandlerThread;

.field public mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mUidObserver:Landroid/os/epic/EpicUidObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    .line 56
    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mUidObserver:Landroid/os/epic/EpicUidObserver;

    .line 57
    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 58
    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayHandlerThread:Landroid/os/HandlerThread;

    .line 63
    iput-object p1, p0, Landroid/os/epic/EpicManagerService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 69
    new-instance v0, Landroid/os/epic/EpicManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/epic/EpicManagerService$BinderService;-><init>(Landroid/os/epic/EpicManagerService;Landroid/os/epic/EpicManagerService$BinderService-IA;)V

    const-string v1, "epic"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public systemReady()V
    .registers 7

    :try_start_0
    const-string/jumbo v0, "vendor.epic.feature"

    const-wide/16 v1, 0x0

    .line 80
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long v4, v0, v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_7f

    .line 83
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Landroid/os/epic/EpicManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 84
    iget-object v2, p0, Landroid/os/epic/EpicManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Landroid/os/epic/EpicManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_5e

    .line 87
    new-instance v0, Landroid/os/epic/EpicChromeDetector;

    invoke-direct {v0}, Landroid/os/epic/EpicChromeDetector;-><init>()V

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    .line 89
    iget-object v0, p0, Landroid/os/epic/EpicManagerService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DisplayChange"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayHandlerThread:Landroid/os/HandlerThread;

    .line 91
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v0, Landroid/os/epic/EpicDisplayListener;

    iget-object v1, p0, Landroid/os/epic/EpicManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-direct {v0, v1}, Landroid/os/epic/EpicDisplayListener;-><init>(Landroid/hardware/display/DisplayManager;)V

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 94
    iget-object v1, p0, Landroid/os/epic/EpicManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/epic/EpicManagerService;->mDisplayHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 97
    :cond_5e
    new-instance v0, Landroid/os/epic/EpicUidObserver;

    iget-object v1, p0, Landroid/os/epic/EpicManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/os/epic/EpicManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Landroid/os/epic/EpicManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p0, Landroid/os/epic/EpicManagerService;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/epic/EpicUidObserver;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/IActivityManager;Landroid/os/epic/EpicChromeDetector;)V

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mUidObserver:Landroid/os/epic/EpicUidObserver;

    .line 98
    iget-object p0, p0, Landroid/os/epic/EpicManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p0, v0, v2, v2, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_74} :catch_75

    goto :goto_7f

    :catch_75
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EPICSVC"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    :goto_7f
    return-void
.end method

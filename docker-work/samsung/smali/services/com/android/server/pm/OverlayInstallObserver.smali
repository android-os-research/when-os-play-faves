.class public final Lcom/android/server/pm/OverlayInstallObserver;
.super Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver$Stub;
.source "OverlayInstallObserver.java"


# instance fields
.field public callbackCompleted:Z

.field public mDidLaunch:I

.field public mIsUninstallUpdates:Z

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mTimeoutRunnable:Ljava/lang/Runnable;

.field public mToken:I

.field public final overlayLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetcallbackCompleted(Lcom/android/server/pm/OverlayInstallObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/OverlayInstallObserver;->callbackCompleted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDidLaunch(Lcom/android/server/pm/OverlayInstallObserver;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/OverlayInstallObserver;->mDidLaunch:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUninstallUpdates(Lcom/android/server/pm/OverlayInstallObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/OverlayInstallObserver;->mIsUninstallUpdates:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPm(Lcom/android/server/pm/OverlayInstallObserver;)Lcom/android/server/pm/PackageManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/OverlayInstallObserver;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToken(Lcom/android/server/pm/OverlayInstallObserver;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/OverlayInstallObserver;->mToken:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetoverlayLock(Lcom/android/server/pm/OverlayInstallObserver;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/OverlayInstallObserver;->overlayLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputcallbackCompleted(Lcom/android/server/pm/OverlayInstallObserver;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/OverlayInstallObserver;->callbackCompleted:Z

    return-void
.end method

.method public constructor <init>(IIZLcom/android/server/pm/PackageManagerService;)V
    .registers 6

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver$Stub;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OverlayInstallObserver;->overlayLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/android/server/pm/OverlayInstallObserver;->callbackCompleted:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/server/pm/OverlayInstallObserver;->mIsUninstallUpdates:Z

    .line 30
    new-instance v0, Lcom/android/server/pm/OverlayInstallObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/OverlayInstallObserver$1;-><init>(Lcom/android/server/pm/OverlayInstallObserver;)V

    iput-object v0, p0, Lcom/android/server/pm/OverlayInstallObserver;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 44
    iput p1, p0, Lcom/android/server/pm/OverlayInstallObserver;->mToken:I

    .line 45
    iput p2, p0, Lcom/android/server/pm/OverlayInstallObserver;->mDidLaunch:I

    .line 46
    iput-boolean p3, p0, Lcom/android/server/pm/OverlayInstallObserver;->mIsUninstallUpdates:Z

    .line 47
    iput-object p4, p0, Lcom/android/server/pm/OverlayInstallObserver;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public onLocaleOverlaysInstalled(I)V
    .registers 6

    .line 52
    iget-object v0, p0, Lcom/android/server/pm/OverlayInstallObserver;->overlayLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/OverlayInstallObserver;->callbackCompleted:Z

    if-nez v1, :cond_15

    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcom/android/server/pm/OverlayInstallObserver;->callbackCompleted:Z

    .line 58
    iget-object v1, p0, Lcom/android/server/pm/OverlayInstallObserver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v2, p0, Lcom/android/server/pm/OverlayInstallObserver;->mDidLaunch:I

    iget-boolean v3, p0, Lcom/android/server/pm/OverlayInstallObserver;->mIsUninstallUpdates:Z

    iget-object p0, p0, Lcom/android/server/pm/OverlayInstallObserver;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, p1, v2, v3, p0}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IIZLjava/lang/Runnable;)V

    .line 60
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

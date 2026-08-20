.class public final Landroid/os/epic/EpicUidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "EpicUidObserver.java"


# static fields
.field public static final DELAY_CHECK_MS:J = 0x3e8L


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

.field public mCheckTimer:Ljava/util/Timer;

.field public mChromeDetector:Landroid/os/epic/EpicChromeDetector;

.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPrevPkgName:Ljava/lang/String;

.field public mRequest:Lcom/samsung/epic/Request;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/IActivityManager;Landroid/os/epic/EpicChromeDetector;)V
    .registers 7

    .line 46
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mPrevPkgName:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    .line 40
    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    .line 41
    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mCheckTimer:Ljava/util/Timer;

    .line 47
    iput-object p1, p0, Landroid/os/epic/EpicUidObserver;->mContext:Landroid/content/Context;

    .line 49
    new-instance p1, Lcom/samsung/epic/Request;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/samsung/epic/Request;-><init>(I)V

    iput-object p1, p0, Landroid/os/epic/EpicUidObserver;->mRequest:Lcom/samsung/epic/Request;

    .line 51
    iput-object p2, p0, Landroid/os/epic/EpicUidObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 52
    iput-object p3, p0, Landroid/os/epic/EpicUidObserver;->mActivityManager:Landroid/app/IActivityManager;

    .line 53
    iput-object p4, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    if-nez p4, :cond_1f

    return-void

    .line 58
    :cond_1f
    invoke-virtual {p4}, Landroid/os/epic/EpicChromeDetector;->LinkLibrary()Z

    move-result p1

    if-nez p1, :cond_28

    .line 59
    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    goto :goto_34

    .line 61
    :cond_28
    iget-object p1, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    invoke-virtual {p1}, Landroid/os/epic/EpicChromeDetector;->Initialize()V

    .line 62
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Landroid/os/epic/EpicUidObserver;->mCheckTimer:Ljava/util/Timer;

    :goto_34
    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 3

    .line 110
    :try_start_0
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_f

    .line 117
    iget-object p0, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    .line 119
    invoke-virtual {p0, p1}, Landroid/os/epic/EpicChromeDetector;->RemoveUid(Ljava/lang/String;)V

    :catch_f
    :cond_f
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    return-void

    .line 76
    :cond_4
    :try_start_4
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_4a

    .line 83
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mPrevPkgName:Ljava/lang/String;

    if-eq p2, p1, :cond_13

    .line 84
    iget-object p3, p0, Landroid/os/epic/EpicUidObserver;->mRequest:Lcom/samsung/epic/Request;

    invoke-virtual {p3, p2}, Lcom/samsung/epic/Request;->hint_release(Ljava/lang/String;)Z

    .line 86
    :cond_13
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mRequest:Lcom/samsung/epic/Request;

    invoke-virtual {p2, p1}, Lcom/samsung/epic/Request;->perf_hint(Ljava/lang/String;)Z

    .line 87
    iput-object p1, p0, Landroid/os/epic/EpicUidObserver;->mPrevPkgName:Ljava/lang/String;

    .line 89
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    if-nez p2, :cond_1f

    return-void

    .line 92
    :cond_1f
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    if-eqz p2, :cond_2e

    .line 93
    invoke-virtual {p2}, Ljava/util/TimerTask;->cancel()Z

    move-result p2

    if-nez p2, :cond_2e

    .line 94
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    invoke-virtual {p2}, Landroid/os/epic/EpicChromeTask;->setCancel()V

    .line 97
    :cond_2e
    new-instance p2, Landroid/os/epic/EpicChromeTask;

    iget-object p3, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    iget-object p4, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    invoke-direct {p2, p3, p4}, Landroid/os/epic/EpicChromeTask;-><init>(Landroid/os/epic/EpicChromeDetector;Landroid/os/epic/EpicChromeTask;)V

    iput-object p2, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    .line 98
    invoke-virtual {p2, p1}, Landroid/os/epic/EpicChromeTask;->setCheckPkgName(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    invoke-virtual {p1}, Landroid/os/epic/EpicChromeTask;->reset()V

    .line 100
    iget-object p1, p0, Landroid/os/epic/EpicUidObserver;->mCheckTimer:Ljava/util/Timer;

    iget-object p0, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :catch_4a
    return-void
.end method

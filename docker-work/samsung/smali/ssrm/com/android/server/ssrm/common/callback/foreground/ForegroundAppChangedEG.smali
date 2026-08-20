.class public Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;
.super Lcom/android/server/ssrm/common/AbstractEG;
.source "ForegroundAppChangedEG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/common/AbstractEG<",
        "Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedE;",
        "Lcom/android/server/ssrm/common/callback/foreground/AForegroundAppChangedER;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private mForegroundPids:Landroid/util/SparseIntArray;

.field private final mLock:Ljava/lang/Object;

.field private mProcessObserver:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmForegroundPids(Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mForegroundPids:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mIsInForegound(Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->IsInForegound(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/android/server/ssrm/common/AbstractEG;-><init>()V

    .line 18
    new-instance v0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;-><init>(Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;)V

    iput-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mProcessObserver:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mLock:Ljava/lang/Object;

    .line 22
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mForegroundPids:Landroid/util/SparseIntArray;

    return-void
.end method

.method private IsInForegound(I)Z
    .registers 5
    .param p1, "pid"    # I

    .line 25
    iget-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mForegroundPids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_f

    .line 27
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 28
    :cond_f
    monitor-exit v0

    .line 29
    const/4 v0, 0x0

    return v0

    .line 28
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public deregister(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 79
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mProcessObserver:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 82
    goto :goto_e

    .line 80
    :catch_a
    move-exception v1

    .line 81
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 83
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public getGeneratorIdentifier()Ljava/lang/String;
    .registers 2

    .line 87
    const-class v0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public register(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 69
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->mProcessObserver:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 72
    goto :goto_e

    .line 70
    :catch_a
    move-exception v1

    .line 71
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 73
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.class public final Lcom/android/server/print/RemotePrintSpooler;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;,
        Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;,
        Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;,
        Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;,
        Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;,
        Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;,
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    }
.end annotation


# static fields
.field public static final BIND_SPOOLER_SERVICE_TIMEOUT:J

.field public static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "RemotePrintSpooler"


# instance fields
.field public final mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

.field public mCanUnbind:Z

.field public final mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

.field public final mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

.field public final mContext:Landroid/content/Context;

.field public final mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

.field public mDestroyed:Z

.field public final mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

.field public final mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

.field public final mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

.field public final mIntent:Landroid/content/Intent;

.field public mIsBinding:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsLowPriority:Z

.field public final mLock:Ljava/lang/Object;

.field public mRemoteInstance:Landroid/print/IPrintSpooler;

.field public final mServiceConnection:Landroid/content/ServiceConnection;

.field public final mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

.field public final mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteInstance(Lcom/android/server/print/RemotePrintSpooler;)Landroid/print/IPrintSpooler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRemoteInstance(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearClientLocked(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAllPrintJobsHandled(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->onAllPrintJobsHandled()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPrintJobStateChanged(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintSpooler;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetClientLocked(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->setClientLocked()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 75
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_8

    const-wide/32 v0, 0x1d4c0

    goto :goto_a

    :cond_8
    const-wide/16 v0, 0x2710

    :goto_a
    sput-wide v0, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V
    .registers 7

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    .line 81
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    .line 83
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    .line 85
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 87
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    .line 90
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    .line 93
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    .line 96
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection-IA;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 128
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    .line 129
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    .line 130
    iput-object p4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    .line 131
    iput-boolean p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    .line 132
    new-instance p1, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-direct {p1, p0}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    .line 133
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    .line 134
    new-instance p0, Landroid/content/ComponentName;

    const-string p2, "com.android.printspooler"

    const-string p3, "com.android.printspooler.model.PrintSpoolerService"

    invoke-direct {p0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final bindLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 601
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    if-eqz v0, :cond_a

    .line 602
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 605
    :cond_a
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 609
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    const/4 v1, 0x0

    .line 618
    :try_start_13
    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    if-eqz v2, :cond_19

    move v2, v0

    goto :goto_1c

    :cond_19
    const v2, 0x4000001

    .line 624
    :goto_1c
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v6, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 628
    :goto_2b
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v4, :cond_39

    .line 639
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_55

    .line 641
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    .line 642
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void

    .line 631
    :cond_39
    :try_start_39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 632
    sget-wide v6, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_4d

    .line 636
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_2b

    .line 634
    :cond_4d
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Cannot get spooler!"

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_55
    .catchall {:try_start_39 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    .line 641
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    .line 642
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 643
    throw v0
.end method

.method public final clearClientLocked()V
    .registers 3

    .line 679
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p0

    const-string v0, "RemotePrintSpooler"

    const-string v1, "Error clearing print spooler client"

    .line 681
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void
.end method

.method public clearCustomPrinterIconCache()V
    .registers 5

    .line 429
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 430
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 432
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 433
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4e

    const/4 v0, 0x1

    .line 435
    :try_start_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->clearCustomPrinterIconCache(Landroid/print/IPrintSpooler;)Ljava/lang/Void;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_17} :catch_28
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_17} :catch_28
    .catchall {:try_start_e .. :try_end_17} :catchall_26

    .line 444
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_1a
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 446
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 447
    monitor-exit v1

    goto :goto_3b

    :catchall_23
    move-exception p0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_23

    throw p0

    :catchall_26
    move-exception v1

    goto :goto_3f

    :catch_28
    move-exception v1

    :try_start_29
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error clearing custom printer icon cache."

    .line 437
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    .line 444
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_33
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 446
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 447
    monitor-exit v1

    :goto_3b
    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_3c

    throw p0

    .line 444
    :goto_3f
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    :try_start_42
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 446
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 447
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4b

    .line 448
    throw v1

    :catchall_4b
    move-exception p0

    .line 447
    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p0

    :catchall_4e
    move-exception p0

    .line 433
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public final createPrintJob(Landroid/print/PrintJobInfo;)V
    .registers 5

    .line 187
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 188
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 190
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 191
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4c

    const/4 v0, 0x1

    .line 193
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/print/IPrintSpooler;->createPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 200
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 201
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 202
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 203
    monitor-exit p1

    goto :goto_39

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0

    :catchall_24
    move-exception p1

    goto :goto_3d

    :catch_26
    move-exception p1

    :try_start_27
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error creating print job."

    .line 195
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 200
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 201
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 202
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 203
    monitor-exit p1

    :goto_39
    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3a

    throw p0

    .line 200
    :goto_3d
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_40
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 202
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 203
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_49

    .line 204
    throw p1

    :catchall_49
    move-exception p0

    .line 203
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0

    :catchall_4c
    move-exception p0

    .line 191
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public final destroy()V
    .registers 3

    .line 547
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 551
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 553
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    const/4 v1, 0x1

    .line 554
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    const/4 v1, 0x0

    .line 555
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 556
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 8

    .line 560
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "is_destroyed"

    const-wide v2, 0x10800000001L

    .line 561
    iget-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v1, "is_bound"

    const-wide v2, 0x10800000002L

    .line 562
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    const/4 v5, 0x0

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    move v4, v5

    :goto_20
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 563
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_64

    .line 566
    :try_start_24
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    const-wide v1, 0x10b00000003L

    .line 568
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object p0

    invoke-interface {p0}, Landroid/print/IPrintSpooler;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string v3, "--proto"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;[Ljava/lang/String;)[B

    move-result-object p0

    .line 567
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;J[B)V

    goto :goto_63

    :cond_46
    const-string/jumbo v0, "internal_state"

    .line 571
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object p0

    invoke-interface {p0}, Landroid/print/IPrintSpooler;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    new-array v1, v5, [Ljava/lang/String;

    .line 570
    invoke-static {p0, v1}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;[Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->writeNested(Ljava/lang/String;[B)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_5a} :catch_5b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_24 .. :try_end_5a} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_5a} :catch_5b
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_5a} :catch_5b

    goto :goto_63

    :catch_5b
    move-exception p0

    const-string p1, "RemotePrintSpooler"

    const-string v0, "Failed to dump remote instance"

    .line 574
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_63
    return-void

    :catchall_64
    move-exception p0

    .line 563
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public final getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .registers 5

    .line 402
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 403
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 405
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 406
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_50

    const/4 v0, 0x1

    .line 408
    :try_start_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->getCustomPrinterIcon(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_18} :catch_29
    .catchall {:try_start_e .. :try_end_18} :catchall_27

    .line 418
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_1b
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 420
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 421
    monitor-exit v1

    return-object p1

    :catchall_24
    move-exception p0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p0

    :catchall_27
    move-exception p1

    goto :goto_41

    :catch_29
    move-exception p1

    :try_start_2a
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error getting custom printer icon."

    .line 411
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    const/4 p1, 0x0

    .line 418
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_35
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 420
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 421
    monitor-exit v1

    return-object p1

    :catchall_3e
    move-exception p0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_3e

    throw p0

    .line 418
    :goto_41
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_44
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 420
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 421
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4d

    .line 422
    throw p1

    :catchall_4d
    move-exception p0

    .line 421
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0

    :catchall_50
    move-exception p0

    .line 406
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public final getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 6

    .line 232
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 233
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 235
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 236
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_50

    const/4 v0, 0x1

    .line 238
    :try_start_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->getPrintJobInfo(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_18} :catch_29
    .catchall {:try_start_e .. :try_end_18} :catchall_27

    .line 246
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 247
    :try_start_1b
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 248
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit p2

    return-object p1

    :catchall_24
    move-exception p0

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p0

    :catchall_27
    move-exception p1

    goto :goto_41

    :catch_29
    move-exception p1

    :try_start_2a
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error getting print job info."

    .line 241
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 246
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 247
    :try_start_34
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 248
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :catchall_3e
    move-exception p0

    monitor-exit p1
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_3e

    throw p0

    .line 246
    :goto_41
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 247
    :try_start_44
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 248
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4d

    .line 250
    throw p1

    :catchall_4d
    move-exception p0

    .line 249
    :try_start_4e
    monitor-exit p2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0

    :catchall_50
    move-exception p0

    .line 236
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public final getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 165
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 167
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 168
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_50

    const/4 v0, 0x1

    .line 170
    :try_start_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->getPrintJobInfos(Landroid/print/IPrintSpooler;Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_18} :catch_29
    .catchall {:try_start_e .. :try_end_18} :catchall_27

    .line 178
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 179
    :try_start_1b
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 180
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit p2

    return-object p1

    :catchall_24
    move-exception p0

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p0

    :catchall_27
    move-exception p1

    goto :goto_41

    :catch_29
    move-exception p1

    :try_start_2a
    const-string p2, "RemotePrintSpooler"

    const-string p3, "Error getting print jobs."

    .line 173
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 178
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 179
    :try_start_34
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 180
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :catchall_3e
    move-exception p0

    monitor-exit p1
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_3e

    throw p0

    .line 178
    :goto_41
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 179
    :try_start_44
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 180
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4d

    .line 182
    throw p1

    :catchall_4d
    move-exception p0

    .line 181
    :try_start_4e
    monitor-exit p2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0

    :catchall_50
    move-exception p0

    .line 168
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public final getRemoteInstanceLazy()Landroid/print/IPrintSpooler;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v1, :cond_9

    .line 592
    monitor-exit v0

    return-object v1

    .line 594
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->bindLocked()V

    .line 595
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 596
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public increasePriority()V
    .registers 4

    .line 139
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    .line 142
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 145
    :goto_d
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_24

    if-nez v1, :cond_1f

    .line 147
    :try_start_11
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_24

    goto :goto_d

    :catch_17
    :try_start_17
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Interrupted while waiting for operation to complete"

    .line 149
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 157
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    .line 158
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    :goto_27
    return-void
.end method

.method public final onAllPrintJobsHandled()V
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 581
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    .line 582
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .registers 6

    .line 370
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 371
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 373
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 374
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4e

    const/4 v0, 0x1

    .line 376
    :try_start_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->onCustomPrinterIconLoaded(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)Ljava/lang/Void;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_17} :catch_28
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_17} :catch_28
    .catchall {:try_start_e .. :try_end_17} :catchall_26

    .line 385
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 386
    :try_start_1a
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 387
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit p1

    goto :goto_3b

    :catchall_23
    move-exception p0

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_23

    throw p0

    :catchall_26
    move-exception p1

    goto :goto_3f

    :catch_28
    move-exception p1

    :try_start_29
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error loading new custom printer icon."

    .line 379
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    .line 385
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 386
    :try_start_33
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 387
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit p1

    :goto_3b
    return-void

    :catchall_3c
    move-exception p0

    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_3c

    throw p0

    .line 385
    :goto_3f
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 386
    :try_start_42
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 387
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit p2
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4b

    .line 389
    throw p1

    :catchall_4b
    move-exception p0

    .line 388
    :try_start_4c
    monitor-exit p2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p0

    :catchall_4e
    move-exception p0

    .line 374
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public final onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 2

    .line 586
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method public final pruneApprovedPrintServices(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 504
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 506
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 507
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4c

    const/4 v0, 0x1

    .line 509
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/print/IPrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 517
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 518
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 519
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit p1

    goto :goto_39

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0

    :catchall_24
    move-exception p1

    goto :goto_3d

    :catch_26
    move-exception p1

    :try_start_27
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error pruning approved print services."

    .line 511
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 517
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 518
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 519
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit p1

    :goto_39
    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3a

    throw p0

    .line 517
    :goto_3d
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_40
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 519
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_49

    .line 521
    throw p1

    :catchall_49
    move-exception p0

    .line 520
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0

    :catchall_4c
    move-exception p0

    .line 507
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public final removeObsoletePrintJobs()V
    .registers 5

    .line 525
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 526
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 528
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 529
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4c

    const/4 v0, 0x1

    .line 531
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1}, Landroid/print/IPrintSpooler;->removeObsoletePrintJobs()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 539
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 541
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 542
    monitor-exit v1

    goto :goto_39

    :catchall_21
    move-exception p0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0

    :catchall_24
    move-exception v1

    goto :goto_3d

    :catch_26
    move-exception v1

    :try_start_27
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error removing obsolete print jobs ."

    .line 533
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 539
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 541
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 542
    monitor-exit v1

    :goto_39
    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3a

    throw p0

    .line 539
    :goto_3d
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 540
    :try_start_40
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 541
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 542
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_49

    .line 543
    throw v1

    :catchall_49
    move-exception p0

    .line 542
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0

    :catchall_4c
    move-exception p0

    .line 529
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public final setClientLocked()V
    .registers 3

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-interface {v0, p0}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string v0, "RemotePrintSpooler"

    const-string v1, "Error setting print spooler client"

    .line 673
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public final setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    .registers 5

    .line 475
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 476
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 478
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 479
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4c

    const/4 v0, 0x1

    .line 481
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 490
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 491
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 492
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 493
    monitor-exit p1

    goto :goto_39

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0

    :catchall_24
    move-exception p1

    goto :goto_3d

    :catch_26
    move-exception p1

    :try_start_27
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error setting print job cancelling."

    .line 484
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 490
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 491
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 492
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 493
    monitor-exit p1

    :goto_39
    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3a

    throw p0

    .line 490
    :goto_3d
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 491
    :try_start_40
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 492
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 493
    monitor-exit p2
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_49

    .line 494
    throw p1

    :catchall_49
    move-exception p0

    .line 493
    :try_start_4a
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0

    :catchall_4c
    move-exception p0

    .line 479
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public final setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .registers 8

    .line 255
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 256
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 258
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 259
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4f

    const/4 v0, 0x1

    .line 261
    :try_start_e
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->setPrintJobState(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;ILjava/lang/String;)Z

    move-result p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_18} :catch_29
    .catchall {:try_start_e .. :try_end_18} :catchall_27

    .line 269
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 270
    :try_start_1b
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 271
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p2

    return p1

    :catchall_24
    move-exception p0

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p0

    :catchall_27
    move-exception p1

    goto :goto_40

    :catch_29
    move-exception p1

    :try_start_2a
    const-string p2, "RemotePrintSpooler"

    const-string p3, "Error setting print job state."

    .line 264
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 269
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 270
    :try_start_34
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 271
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p1

    return v1

    :catchall_3d
    move-exception p0

    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_3d

    throw p0

    .line 269
    :goto_40
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 270
    :try_start_43
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 271
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4c

    .line 273
    throw p1

    :catchall_4c
    move-exception p0

    .line 272
    :try_start_4d
    monitor-exit p2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0

    :catchall_4f
    move-exception p0

    .line 259
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .registers 7

    .line 452
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 453
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 455
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 456
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4f

    const/4 v0, 0x1

    .line 458
    :try_start_e
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->setPrintJobTag(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;Ljava/lang/String;)Z

    move-result p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_18} :catch_29
    .catchall {:try_start_e .. :try_end_18} :catchall_27

    .line 466
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 467
    :try_start_1b
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 468
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 469
    monitor-exit p2

    return p1

    :catchall_24
    move-exception p0

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p0

    :catchall_27
    move-exception p1

    goto :goto_40

    :catch_29
    move-exception p1

    :try_start_2a
    const-string p2, "RemotePrintSpooler"

    const-string v2, "Error setting print job tag."

    .line 461
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 466
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 467
    :try_start_34
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 468
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 469
    monitor-exit p1

    return v1

    :catchall_3d
    move-exception p0

    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_3d

    throw p0

    .line 466
    :goto_40
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 467
    :try_start_43
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 468
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 469
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4c

    .line 470
    throw p1

    :catchall_4c
    move-exception p0

    .line 469
    :try_start_4d
    monitor-exit p2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0

    :catchall_4f
    move-exception p0

    .line 456
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final setProgress(Landroid/print/PrintJobId;F)V
    .registers 5

    .line 285
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 286
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 288
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 289
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4c

    const/4 v0, 0x1

    .line 291
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 298
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 299
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 300
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 301
    monitor-exit p1

    goto :goto_39

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0

    :catchall_24
    move-exception p1

    goto :goto_3d

    :catch_26
    move-exception p1

    :try_start_27
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error setting progress."

    .line 293
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 298
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 299
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 300
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 301
    monitor-exit p1

    :goto_39
    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3a

    throw p0

    .line 298
    :goto_3d
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 299
    :try_start_40
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 300
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 301
    monitor-exit p2
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_49

    .line 302
    throw p1

    :catchall_49
    move-exception p0

    .line 301
    :try_start_4a
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0

    :catchall_4c
    move-exception p0

    .line 289
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public final setStatus(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    .registers 6

    .line 341
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 342
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 344
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 345
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4c

    const/4 v0, 0x1

    .line 347
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/print/IPrintSpooler;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 354
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 355
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 356
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p1

    goto :goto_39

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0

    :catchall_24
    move-exception p1

    goto :goto_3d

    :catch_26
    move-exception p1

    :try_start_27
    const-string p2, "RemotePrintSpooler"

    const-string p3, "Error setting status."

    .line 349
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 354
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 355
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 356
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p1

    :goto_39
    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3a

    throw p0

    .line 354
    :goto_3d
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 355
    :try_start_40
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 356
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p2
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_49

    .line 358
    throw p1

    :catchall_49
    move-exception p0

    .line 357
    :try_start_4a
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0

    :catchall_4c
    move-exception p0

    .line 345
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public final setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    .registers 5

    .line 312
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 313
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 315
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 316
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4c

    const/4 v0, 0x1

    .line 318
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 325
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 326
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 327
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 328
    monitor-exit p1

    goto :goto_39

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0

    :catchall_24
    move-exception p1

    goto :goto_3d

    :catch_26
    move-exception p1

    :try_start_27
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error setting status."

    .line 320
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 325
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 326
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 327
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 328
    monitor-exit p1

    :goto_39
    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3a

    throw p0

    .line 325
    :goto_3d
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 326
    :try_start_40
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 327
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 328
    monitor-exit p2
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_49

    .line 329
    throw p1

    :catchall_49
    move-exception p0

    .line 328
    :try_start_4a
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0

    :catchall_4c
    move-exception p0

    .line 316
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public final throwIfCalledOnMainThread()V
    .registers 2

    .line 693
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-eq v0, p0, :cond_11

    return-void

    .line 694
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot invoke on the main thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final throwIfDestroyedLocked()V
    .registers 2

    .line 687
    iget-boolean p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    if-nez p0, :cond_5

    return-void

    .line 688
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot interact with a destroyed instance."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unbindLocked()V
    .registers 2

    .line 647
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-nez v0, :cond_5

    return-void

    .line 651
    :catch_5
    :cond_5
    :goto_5
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    if-eqz v0, :cond_17

    .line 655
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    .line 657
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    .line 661
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_5

    goto :goto_5
.end method

.method public final writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .registers 6

    .line 208
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 209
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 211
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 212
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_55

    const/4 v0, 0x1

    .line 214
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_29
    .catchall {:try_start_e .. :try_end_15} :catchall_27

    .line 223
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 225
    :try_start_1b
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 226
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit p2

    goto :goto_3f

    :catchall_24
    move-exception p0

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p0

    :catchall_27
    move-exception p2

    goto :goto_43

    :catch_29
    move-exception p2

    :try_start_2a
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error writing print job data."

    .line 216
    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 223
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 225
    :try_start_37
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 226
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit p2

    :goto_3f
    return-void

    :catchall_40
    move-exception p0

    monitor-exit p2
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_40

    throw p0

    .line 223
    :goto_43
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 225
    :try_start_49
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 226
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit p1
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_52

    .line 228
    throw p2

    :catchall_52
    move-exception p0

    .line 227
    :try_start_53
    monitor-exit p1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0

    :catchall_55
    move-exception p0

    .line 212
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

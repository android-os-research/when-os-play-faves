.class public final Lcom/android/server/print/UserState;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
.implements Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
.implements Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/UserState$PrintJobForAppCache;,
        Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;,
        Lcom/android/server/print/UserState$ListenerRecord;,
        Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    }
.end annotation


# static fields
.field public static final COMPONENT_NAME_SEPARATOR:C = ':'

.field public static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "UserState"

.field public static final SERVICE_RESTART_DELAY_MILLIS:I = 0x1f4


# instance fields
.field public final mActiveServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public final mDisabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mIsInstantServiceAllowed:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field public mPrintJobStateChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mPrintServiceRecommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/print/UserState$ListenerRecord<",
            "Landroid/printservice/recommendation/IRecommendationsChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

.field public mPrintServicesChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/print/UserState$ListenerRecord<",
            "Landroid/print/IPrintServicesChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

.field public final mQueryIntent:Landroid/content/Intent;

.field public final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field public final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$5SeVoc3K-NMBxJLsvpIx4GXqsFg(Lcom/android/server/print/UserState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/UserState;->handleDispatchPrintServicesChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$XwUreNEP3_90Px3xCJ0jEaO2rrc(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xxim-x_HbBFsxPTy-VhN_YZH85g(Lcom/android/server/print/UserState;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$feJ7RuBuo2Qmw3TqF8KuL8asixw(Lcom/android/server/print/UserState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onConfigurationChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$rz1CpWfdT8BMuTilizDOi52SVDU(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveServices(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/print/UserState;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDestroyed(Lcom/android/server/print/UserState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/print/UserState;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrintJobStateChangeListenerRecords(Lcom/android/server/print/UserState;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrintServiceRecommendationsChangeListenerRecords(Lcom/android/server/print/UserState;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrintServicesChangeListenerRecords(Lcom/android/server/print/UserState;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPrinterDiscoverySession(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveServiceLocked(Lcom/android/server/print/UserState;Lcom/android/server/print/RemotePrintService;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;Z)V
    .registers 7

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    .line 119
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 125
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 128
    new-instance v0, Lcom/android/server/print/UserState$PrintJobForAppCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrintJobForAppCache-IA;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 165
    iput-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 166
    iput p2, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 167
    iput-object p3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {v0, p1, p2, p4, p0}, Lcom/android/server/print/RemotePrintSpooler;-><init>(Landroid/content/Context;IZLcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 170
    monitor-enter p3

    .line 171
    :try_start_40
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 172
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->upgradePersistentStateIfNeeded()V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V

    .line 174
    monitor-exit p3
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_51

    .line 177
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 179
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onConfigurationChanged()V

    return-void

    :catchall_51
    move-exception p0

    .line 174
    :try_start_52
    monitor-exit p3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 570
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_11

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 574
    :cond_11
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/print/UserState$2;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 657
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_20

    .line 658
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 660
    new-instance v1, Lcom/android/server/print/RemotePrintServiceRecommendationService;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 662
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 664
    :cond_20
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/UserState$4;-><init>(Lcom/android/server/print/UserState;Landroid/printservice/recommendation/IRecommendationsChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 614
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_11

    .line 615
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 617
    :cond_11
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/UserState$3;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintServicesChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final addServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 4

    .line 1080
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz p0, :cond_10

    .line 1082
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V

    :cond_10
    return-void
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;I)V
    .registers 5

    .line 340
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object p2

    if-nez p2, :cond_9

    return-void

    .line 346
    :cond_9
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    .line 348
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_36

    .line 349
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 352
    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_23
    iget-object p0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/print/RemotePrintService;

    .line 356
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_33

    if-nez p0, :cond_2f

    return-void

    .line 360
    :cond_2f
    invoke-virtual {p0, p2}, Lcom/android/server/print/RemotePrintService;->onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    goto :goto_3d

    :catchall_33
    move-exception p0

    .line 356
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0

    .line 365
    :cond_36
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 p2, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    :cond_3d
    :goto_3d
    return-void
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->clearCustomPrinterIconCache()V

    .line 459
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 462
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_1a

    .line 464
    new-instance v1, Lcom/android/server/print/UserState$1;

    invoke-direct {v1, p0}, Lcom/android/server/print/UserState$1;-><init>(Lcom/android/server/print/UserState;)V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 471
    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    goto :goto_1d

    .line 474
    :cond_1a
    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 476
    :goto_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public destroyLocked()V
    .registers 3

    .line 808
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 809
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->destroy()V

    .line 810
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 811
    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    goto :goto_12

    .line 813
    :cond_22
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 814
    iget-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 815
    iget-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 816
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_3b

    .line 817
    invoke-virtual {v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    const/4 v0, 0x0

    .line 818
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    :cond_3b
    const/4 v0, 0x1

    .line 820
    iput-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    return-void
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_3
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_9

    .line 483
    monitor-exit v0

    return-void

    .line 486
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 487
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 15

    .line 824
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "user_id"

    const-wide v2, 0x10500000001L

    .line 825
    iget v4, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 827
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v3, v1, :cond_78

    const-string/jumbo v4, "installed_services"

    const-wide v5, 0x20b00000002L

    .line 829
    invoke-virtual {p1, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v4

    .line 831
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/printservice/PrintServiceInfo;

    .line 833
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    const-string v8, "component_name"

    const-wide v9, 0x10b00000001L

    .line 834
    new-instance v11, Landroid/content/ComponentName;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v8, v9, v10, v11}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    const-string/jumbo v7, "settings_activity"

    const-wide v8, 0x10900000002L

    .line 841
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v10

    .line 839
    invoke-static {p1, v7, v8, v9, v10}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    const-string v7, "add_printers_activity"

    const-wide v8, 0x10900000003L

    .line 844
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v10

    .line 842
    invoke-static {p1, v7, v8, v9, v10}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    const-string v7, "advanced_options_activity"

    const-wide v8, 0x10900000004L

    .line 847
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    move-result-object v6

    .line 845
    invoke-static {p1, v7, v8, v9, v6}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 849
    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 852
    :cond_78
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    const-string v4, "disabled_services"

    const-wide v5, 0x20b00000003L

    .line 853
    invoke-static {p1, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    goto :goto_7e

    .line 857
    :cond_95
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_9b
    if-ge v2, v1, :cond_b9

    const-string v3, "actives_services"

    const-wide v4, 0x20b00000004L

    .line 859
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 861
    iget-object v5, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v5, p1}, Lcom/android/server/print/RemotePrintService;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 862
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 865
    :cond_b9
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 867
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v1, :cond_d5

    const-string v1, "discovery_service"

    const-wide v2, 0x20b00000006L

    .line 868
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    .line 870
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 871
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 874
    :cond_d5
    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_3 .. :try_end_d6} :catchall_eb

    const-string/jumbo v0, "print_spooler_state"

    const-wide v1, 0x10b00000007L

    .line 876
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 878
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintSpooler;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 879
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    :catchall_eb
    move-exception p0

    .line 874
    :try_start_ec
    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw p0
.end method

.method public final failActivePrintJobsForService(Landroid/content/ComponentName;)V
    .registers 4

    .line 1102
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1103
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1e

    .line 1106
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    :goto_1e
    return-void
.end method

.method public final failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V
    .registers 11

    .line 1111
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v1, -0x4

    const/4 v2, -0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    .line 1116
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1118
    :try_start_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_32

    .line 1120
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintJobInfo;

    .line 1121
    iget-object v5, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v8, 0x1040b5e

    .line 1122
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1121
    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_36

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1125
    :cond_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    throw p0
.end method

.method public getBindInstantServiceAllowed()Z
    .registers 1

    .line 1209
    iget-boolean p0, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    return p0
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .registers 4

    .line 327
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1}, Lcom/android/server/print/RemotePrintSpooler;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_19

    .line 330
    iget-object p0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/print/RemotePrintService;

    if-eqz p0, :cond_19

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    :cond_19
    return-object v0
.end method

.method public final getInstalledComponents()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2b

    .line 1012
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1013
    new-instance v4, Landroid/content/ComponentName;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2b
    return-object v0
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    if-nez v0, :cond_e

    .line 306
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    :cond_e
    if-eqz v0, :cond_17

    const/4 p0, 0x0

    .line 311
    invoke-virtual {v0, p0}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, p0}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    :cond_17
    return-object v0
.end method

.method public getPrintJobInfos(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJobs(I)Ljava/util/List;

    move-result-object v0

    .line 271
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 275
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    const/4 v5, 0x0

    if-ge v4, v2, :cond_2a

    .line 277
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/print/PrintJobInfo;

    .line 278
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v6, v5}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v6, v5}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 286
    :cond_2a
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v0, -0x1

    invoke-virtual {p0, v5, v0, p1}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4f

    .line 289
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :goto_37
    if-ge v3, p1, :cond_4f

    .line 291
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 292
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {v0, v5}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, v5}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 300
    :cond_4f
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public getPrintServiceRecommendations()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    return-object p0
.end method

.method public getPrintServices(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 380
    :try_start_4
    iget-object v2, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_50

    .line 382
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/printservice/PrintServiceInfo;

    .line 384
    new-instance v5, Landroid/content/ComponentName;

    .line 385
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 386
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v6, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/printservice/PrintServiceInfo;->setIsEnabled(Z)V

    .line 391
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3e

    and-int/lit8 v5, p1, 0x1

    if-nez v5, :cond_43

    goto :goto_4d

    :cond_3e
    and-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_43

    goto :goto_4d

    :cond_43
    if-nez v1, :cond_4a

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 404
    :cond_4a
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 406
    :cond_50
    monitor-exit v0

    return-object v1

    :catchall_52
    move-exception p0

    .line 407
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public final handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V
    .registers 8

    .line 1137
    invoke-interface {p2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p2

    .line 1139
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1140
    :try_start_7
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_d

    .line 1141
    monitor-exit v0

    return-void

    .line 1143
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1144
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3b

    .line 1145
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, p0, :cond_3a

    .line 1147
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 1148
    iget v3, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_29

    if-ne v3, p2, :cond_37

    .line 1151
    :cond_29
    :try_start_29
    iget-object v2, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v2, p1}, Landroid/print/IPrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception v2

    const-string v3, "UserState"

    const-string v4, "Error notifying for print job state change"

    .line 1153
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_3a
    return-void

    :catchall_3b
    move-exception p0

    .line 1144
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public final handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1182
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_9

    .line 1184
    monitor-exit v0

    return-void

    .line 1186
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1188
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    .line 1189
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_34

    .line 1190
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_18
    if-ge p1, p0, :cond_33

    .line 1192
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/UserState$ListenerRecord;

    .line 1195
    :try_start_20
    iget-object v0, v0, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v0, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {v0}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->onRecommendationsChanged()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28

    goto :goto_30

    :catch_28
    move-exception v0

    const-string v2, "UserState"

    const-string v3, "Error notifying for print service recommendations change"

    .line 1197
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    :cond_33
    return-void

    :catchall_34
    move-exception p0

    .line 1189
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final handleDispatchPrintServicesChanged()V
    .registers 6

    .line 1161
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1162
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_9

    .line 1163
    monitor-exit v0

    return-void

    .line 1165
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1166
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_32

    .line 1167
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_16
    if-ge v0, p0, :cond_31

    .line 1169
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/UserState$ListenerRecord;

    .line 1172
    :try_start_1e
    iget-object v2, v2, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v2, Landroid/print/IPrintServicesChangeListener;

    invoke-interface {v2}, Landroid/print/IPrintServicesChangeListener;->onPrintServicesChanged()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception v2

    const-string v3, "UserState"

    const-string v4, "Error notifying for print services change"

    .line 1174
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_31
    return-void

    :catchall_32
    move-exception p0

    .line 1166
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public increasePriority()V
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->increasePriority()V

    return-void
.end method

.method public isPrintServiceEnabled(Landroid/content/ComponentName;)Z
    .registers 3

    .line 441
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_3
    iget-object p0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x0

    .line 443
    monitor-exit v0

    return p0

    :cond_e
    const/4 p0, 0x1

    .line 445
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 446
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 209
    iget-object p0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/print/RemotePrintService;

    .line 210
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    if-eqz p0, :cond_14

    .line 212
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    :cond_14
    return-void

    :catchall_15
    move-exception p0

    .line 210
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final onConfigurationChanged()V
    .registers 2

    .line 1203
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1204
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 1205
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final onConfigurationChangedLocked()V
    .registers 11

    .line 1044
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    move-result-object v0

    .line 1046
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_43

    .line 1048
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/ComponentName;

    .line 1050
    iget-object v3, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 1051
    iget-object v3, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 1052
    new-instance v3, Lcom/android/server/print/RemotePrintService;

    iget-object v5, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/server/print/UserState;->mUserId:I

    iget-object v8, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    move-object v4, v3

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/print/RemotePrintService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V

    .line 1054
    invoke-virtual {p0, v3}, Lcom/android/server/print/UserState;->addServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_40

    .line 1057
    :cond_33
    iget-object v3, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/RemotePrintService;

    if-eqz v3, :cond_40

    .line 1059
    invoke-virtual {p0, v3}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1064
    :cond_43
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 1065
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1066
    :cond_4d
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1067
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1068
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1069
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 1070
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 1071
    invoke-virtual {p0, v2}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1072
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4d

    .line 1076
    :cond_72
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onPrintServicesChanged()V

    return-void
.end method

.method public onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .registers 4

    .line 761
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V

    .line 763
    iget-object p2, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 764
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 767
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_11

    .line 768
    monitor-exit p2

    return-void

    .line 770
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onCustomPrinterIconLoadedLocked(Landroid/print/PrinterId;)V

    .line 771
    monitor-exit p2

    return-void

    :catchall_16
    move-exception p0

    monitor-exit p2
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 191
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 193
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_31

    if-eqz v1, :cond_1d

    .line 195
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    goto :goto_30

    .line 199
    :cond_1d
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object p1

    const/4 v1, 0x6

    iget-object p0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v2, 0x1040b5e

    .line 200
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 199
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    :goto_30
    return-void

    :catchall_31
    move-exception p0

    .line 193
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 5

    .line 708
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    .line 709
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>()V

    .line 711
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    .line 712
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object p1

    .line 709
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 722
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPrintServicesChanged()V
    .registers 3

    .line 716
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPrintersAdded(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 732
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 733
    monitor-exit v0

    return-void

    .line 736
    :cond_10
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_16

    .line 737
    monitor-exit v0

    return-void

    .line 739
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersAddedLocked(Ljava/util/List;)V

    .line 740
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public onPrintersRemoved(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 748
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 749
    monitor-exit v0

    return-void

    .line 752
    :cond_10
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_16

    .line 753
    monitor-exit v0

    return-void

    .line 755
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersRemovedLocked(Ljava/util/List;)V

    .line 756
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public onServiceDied(Lcom/android/server/print/RemotePrintService;)V
    .registers 7

    .line 776
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 779
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 780
    monitor-exit v0

    return-void

    .line 783
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 784
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 786
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 794
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_3b

    .line 795
    monitor-exit v0

    return-void

    .line 797
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceDiedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 798
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 16

    const-string v0, "android.print.intent.extra.EXTRA_PRINT_JOB"

    .line 224
    new-instance v1, Landroid/print/PrintJobInfo;

    invoke-direct {v1}, Landroid/print/PrintJobInfo;-><init>()V

    .line 225
    new-instance v2, Landroid/print/PrintJobId;

    invoke-direct {v2}, Landroid/print/PrintJobId;-><init>()V

    invoke-virtual {v1, v2}, Landroid/print/PrintJobInfo;->setId(Landroid/print/PrintJobId;)V

    .line 226
    invoke-virtual {v1, p5}, Landroid/print/PrintJobInfo;->setAppId(I)V

    .line 227
    invoke-virtual {v1, p1}, Landroid/print/PrintJobInfo;->setLabel(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1, p3}, Landroid/print/PrintJobInfo;->setAttributes(Landroid/print/PrintAttributes;)V

    const/4 p1, 0x1

    .line 229
    invoke-virtual {v1, p1}, Landroid/print/PrintJobInfo;->setState(I)V

    .line 230
    invoke-virtual {v1, p1}, Landroid/print/PrintJobInfo;->setCopies(I)V

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/print/PrintJobInfo;->setCreationTime(J)V

    .line 234
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p1, p3, p5, v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_34

    return-object p3

    .line 240
    :cond_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 242
    :try_start_38
    new-instance v6, Landroid/content/Intent;

    const-string p1, "android.print.PRINT_DIALOG"

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "printjob"

    .line 243
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object p5

    invoke-virtual {p5}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5, p3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

    .line 244
    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 245
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.PACKAGE_NAME"

    .line 246
    invoke-virtual {v6, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x54000000

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-direct {v9, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    .line 253
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 254
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    .line 255
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_84
    .catchall {:try_start_38 .. :try_end_84} :catchall_88

    .line 259
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_88
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 260
    throw p0
.end method

.method public prunePrintServices()V
    .registers 4

    .line 1028
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1029
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    move-result-object v1

    .line 1032
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1034
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-virtual {p0, v2}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 1036
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    .line 1039
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p0, v1}, Lcom/android/server/print/RemotePrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V

    return-void

    :catchall_1b
    move-exception p0

    .line 1036
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final readConfigurationLocked()V
    .registers 1

    .line 883
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 884
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V

    return-void
.end method

.method public final readDisabledPrintServicesLocked()V
    .registers 3

    .line 958
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "disabled_print_services"

    .line 959
    invoke-virtual {p0, v1, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 961
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 962
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 963
    iget-object p0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1c
    return-void
.end method

.method public final readInstalledPrintServicesLocked()V
    .registers 9

    .line 888
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 892
    iget-boolean v1, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    if-eqz v1, :cond_d

    const v1, 0x10800084

    goto :goto_10

    :cond_d
    const v1, 0x10000084

    .line 896
    :goto_10
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 897
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 899
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v2, :cond_71

    .line 901
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 902
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v6, "android.permission.BIND_PRINT_SERVICE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    .line 904
    new-instance v5, Landroid/content/ComponentName;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping print service "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " since it does not require permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserState"

    .line 907
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 913
    :cond_65
    iget-object v5, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/printservice/PrintServiceInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 916
    :cond_71
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 917
    iget-object p0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 969
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 971
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 972
    iget-object p0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 973
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 974
    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 975
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    .line 976
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_17

    .line 979
    :cond_28
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 981
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_32
    return-void
.end method

.method public removeObsoletePrintJobs()V
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->removeObsoletePrintJobs()V

    return-void
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    .registers 8

    .line 589
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 591
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_c

    .line 592
    monitor-exit v0

    return-void

    .line 594
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_37

    .line 596
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 597
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 598
    iget-object v4, v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v4}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 599
    invoke-virtual {v3}, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->destroy()V

    .line 600
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_37

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 604
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_42

    const/4 p1, 0x0

    .line 605
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 607
    :cond_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .registers 8

    .line 680
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 682
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_c

    .line 683
    monitor-exit v0

    return-void

    .line 685
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_39

    .line 687
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 688
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 689
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {v4}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 690
    invoke-virtual {v3}, Lcom/android/server/print/UserState$ListenerRecord;->destroy()V

    .line 691
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_39

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 695
    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4d

    const/4 p1, 0x0

    .line 696
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 698
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    .line 700
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    .line 701
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 703
    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .registers 8

    .line 632
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 634
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_c

    .line 635
    monitor-exit v0

    return-void

    .line 637
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_39

    .line 639
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 640
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 641
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/print/IPrintServicesChangeListener;

    invoke-interface {v4}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 642
    invoke-virtual {v3}, Lcom/android/server/print/UserState$ListenerRecord;->destroy()V

    .line 643
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_39

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 647
    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 p1, 0x0

    .line 648
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 650
    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 3

    .line 1088
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 1090
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz p0, :cond_f

    .line 1091
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_12

    .line 1094
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    :goto_12
    return-void
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;I)V
    .registers 4

    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 371
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getState()I

    move-result p2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_e

    goto :goto_15

    .line 374
    :cond_e
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    :cond_15
    :goto_15
    return-void
.end method

.method public setBindInstantServiceAllowed(Z)V
    .registers 3

    .line 1213
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1214
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    .line 1216
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 1217
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    .registers 9

    .line 411
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_e

    .line 414
    :try_start_7
    iget-object v3, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_34

    .line 417
    :cond_e
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_15
    if-ge v4, v3, :cond_33

    .line 419
    iget-object v5, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/printservice/PrintServiceInfo;

    .line 421
    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 422
    iget-object v3, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move p1, v1

    goto :goto_34

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_33
    move p1, v2

    :goto_34
    if-eqz p1, :cond_48

    .line 430
    iget-object p1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 432
    iget-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const/16 v3, 0x1ff

    if-eqz p2, :cond_42

    move v1, v2

    :cond_42
    invoke-static {p1, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 435
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 437
    :cond_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 496
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_c

    .line 497
    monitor-exit v0

    return-void

    .line 500
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 502
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4

    .line 535
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 538
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 539
    monitor-exit v0

    return-void

    .line 542
    :cond_10
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_16

    .line 543
    monitor-exit v0

    return-void

    .line 546
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 547
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 3

    .line 506
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 510
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_c

    .line 511
    monitor-exit v0

    return-void

    .line 514
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 515
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4

    .line 551
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 554
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 555
    monitor-exit v0

    return-void

    .line 558
    :cond_10
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_16

    .line 559
    monitor-exit v0

    return-void

    .line 562
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 563
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final throwIfDestroyedLocked()V
    .registers 2

    .line 1130
    iget-boolean p0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    if-nez p0, :cond_5

    return-void

    .line 1131
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot interact with a destroyed instance."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateIfNeededLocked()V
    .registers 1

    .line 802
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 803
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readConfigurationLocked()V

    .line 804
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    return-void
.end method

.method public final upgradePersistentStateIfNeeded()V
    .registers 8

    .line 924
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/print/UserState;->mUserId:I

    const-string v2, "enabled_print_services"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 930
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 931
    invoke-virtual {p0, v2, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 934
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 935
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v3, :cond_3e

    .line 937
    iget-object v5, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 938
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 939
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 943
    :cond_3e
    invoke-virtual {p0, v1}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 947
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget p0, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_4d
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 522
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 523
    monitor-exit v0

    return-void

    .line 526
    :cond_10
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez p0, :cond_16

    .line 527
    monitor-exit v0

    return-void

    .line 530
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->validatePrintersLocked(Ljava/util/List;)V

    .line 531
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final writeDisabledPrintServicesLocked(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 993
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_20

    const/16 v2, 0x3a

    .line 994
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 996
    :cond_20
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 998
    :cond_28
    iget-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 999
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/server/print/UserState;->mUserId:I

    const-string v1, "disabled_print_services"

    .line 998
    invoke-static {p1, v1, v0, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

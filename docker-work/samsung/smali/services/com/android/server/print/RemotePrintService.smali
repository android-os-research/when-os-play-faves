.class public final Lcom/android/server/print/RemotePrintService;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;,
        Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;,
        Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "RemotePrintService"


# instance fields
.field public mBinding:Z

.field public final mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public mDiscoveryPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field public mHasActivePrintJobs:Z

.field public mHasPrinterDiscoverySession:Z

.field public final mIntent:Landroid/content/Intent;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mPrintService:Landroid/printservice/IPrintService;

.field public final mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

.field public final mServiceConnection:Landroid/content/ServiceConnection;

.field public mServiceDied:Z

.field public final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field public mTrackedPrinterList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$ALgKZL5GyqWfHstGFm2FsaAGa1c(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EJZkn9Rh5O1N3msjTKWBy23RZEQ(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroy()V

    return-void
.end method

.method public static synthetic $r8$lambda$FMyFSSsKGLlOfgudWm5UPa3lpxo(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V

    return-void
.end method

.method public static synthetic $r8$lambda$HmLPoe1zsIQO7Qa6crAtFOagD1Y(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    return-void
.end method

.method public static synthetic $r8$lambda$JFPYrRyXsQ_rKO0JzAePzCgMYzo(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    return-void
.end method

.method public static synthetic $r8$lambda$_CDB4SzMmZbA3FqTXUWF2gRhyWk(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h8g8HhDY83uWvGG37YDXUXap48c(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->lambda$handleRequestCustomPrinterIcon$0(Landroid/print/PrinterId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iPMu1ImcyLsTKkvxItQDyRiZlHM(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j3YloyXJsRQceeTVuSf2oOMCAe4(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleRequestCustomPrinterIcon(Landroid/print/PrinterId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j3yKq5GrFWDLNxTziDZmV8YchlY(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    return-void
.end method

.method public static synthetic $r8$lambda$kCH_B4ONDbwCDioVop95bcssb3s(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kxsXiEccrHPSWZynZRPilSRACt0(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    return-void
.end method

.method public static synthetic $r8$lambda$ppBvbpXAt559zRyKKo1I6q5aINk(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ssNGvMcrnbZQPteuOxztgloFRgw(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBinding(Lcom/android/server/print/RemotePrintService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmComponentName(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/print/RemotePrintService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDestroyed(Lcom/android/server/print/RemotePrintService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiscoveryPriorityList(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasActivePrintJobs(Lcom/android/server/print/RemotePrintService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasPrinterDiscoverySession(Lcom/android/server/print/RemotePrintService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/print/RemotePrintService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingCommands(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrintService(Lcom/android/server/print/RemotePrintService;)Landroid/printservice/IPrintService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrintServiceClient(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceConnection(Lcom/android/server/print/RemotePrintService;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceDied(Lcom/android/server/print/RemotePrintService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpooler(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrackedPrinterList(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBinding(Lcom/android/server/print/RemotePrintService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPrintService(Lcom/android/server/print/RemotePrintService;Landroid/printservice/IPrintService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmServiceDied(Lcom/android/server/print/RemotePrintService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mensureUnbound(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBinderDied(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleCreatePrinterDiscoverySession(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDestroyPrinterDiscoverySession(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnAllPrintJobsHandled(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnPrintJobQueued(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRequestCancelPrintJob(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStartPrinterDiscovery(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStartPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStopPrinterDiscovery(Lcom/android/server/print/RemotePrintService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStopPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleValidatePrinters(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V
    .registers 8

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton-IA;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 122
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    .line 123
    iput-object p5, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    .line 124
    iput-object p2, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    .line 125
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    .line 126
    iput p3, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    .line 127
    iput-object p4, p0, Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 128
    new-instance p1, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    invoke-direct {p1, p0}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;-><init>(Lcom/android/server/print/RemotePrintService;)V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    return-void
.end method

.method private synthetic lambda$handleRequestCustomPrinterIcon$0(Landroid/print/PrinterId;)V
    .registers 2

    .line 442
    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleRequestCustomPrinterIcon(Landroid/print/PrinterId;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 163
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public createPrinterDiscoverySession()V
    .registers 3

    .line 264
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 136
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public destroyPrinterDiscoverySession()V
    .registers 3

    .line 291
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 9

    const-string v0, "component_name"

    .line 537
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    const-wide v2, 0x10b00000001L

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    const-string/jumbo v0, "is_destroyed"

    .line 540
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    const-wide v2, 0x10800000002L

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v0, "is_bound"

    .line 541
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    const-wide v2, 0x10800000003L

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v0, "has_discovery_session"

    .line 542
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    const-wide v2, 0x10800000004L

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v0, "has_active_print_jobs"

    .line 544
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v0, "is_discovering_printers"

    .line 546
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    const/4 v1, 0x1

    goto :goto_4d

    :cond_4c
    move v1, v2

    :goto_4d
    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v0, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 549
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_58
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-eqz v1, :cond_78

    .line 551
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_60
    if-ge v2, v1, :cond_78

    const-string/jumbo v3, "tracked_printers"

    const-wide v4, 0x20b00000007L

    .line 553
    iget-object v6, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 554
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/print/PrinterId;

    .line 553
    invoke-static {p1, v3, v4, v5, v6}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 557
    :cond_78
    monitor-exit v0

    return-void

    :catchall_7a
    move-exception p0

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_58 .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public final ensureBound()V
    .registers 7

    .line 565
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    if-eqz v0, :cond_b

    goto :goto_2e

    :cond_b
    const/4 v0, 0x1

    .line 571
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 573
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    const v3, 0x4401001

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    .line 582
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 584
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-nez v0, :cond_2e

    .line 585
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final ensureUnbound()V
    .registers 4

    .line 591
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 597
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 598
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 599
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 600
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    const/4 v1, 0x0

    .line 601
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 603
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 604
    :try_start_1d
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 605
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_3e

    .line 607
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 609
    :try_start_26
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v2, v1}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2b

    .line 613
    :catch_2b
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v2}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 614
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 615
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_3d
    return-void

    :catchall_3e
    move-exception p0

    .line 605
    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final handleBinderDied()V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    if-eqz v0, :cond_c

    .line 169
    invoke-interface {v0}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_c
    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    .line 174
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    invoke-interface {v0, p0}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onServiceDied(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method

.method public final handleCreatePrinterDiscoverySession()V
    .registers 3

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_17

    .line 271
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 272
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$4;

    invoke-direct {v1, p0}, Lcom/android/server/print/RemotePrintService$4;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 283
    :cond_17
    :try_start_17
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0}, Landroid/printservice/IPrintService;->createPrinterDiscoverySession()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception p0

    const-string v0, "RemotePrintService"

    const-string v1, "Error creating printer discovery session."

    .line 285
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public final handleDestroy()V
    .registers 2

    .line 142
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    .line 145
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 146
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    .line 150
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-eqz v0, :cond_11

    .line 151
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    .line 155
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    return-void
.end method

.method public final handleDestroyPrinterDiscoverySession()V
    .registers 4

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 297
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_23

    .line 300
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    if-nez v0, :cond_15

    .line 301
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    return-void

    .line 304
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 305
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$5;

    invoke-direct {v1, p0}, Lcom/android/server/print/RemotePrintService$5;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 316
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0}, Landroid/printservice/IPrintService;->destroyPrinterDiscoverySession()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_31

    :catch_29
    move-exception v0

    const-string v1, "RemotePrintService"

    const-string v2, "Error destroying printer dicovery session."

    .line 318
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    :goto_31
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    if-nez v0, :cond_38

    .line 323
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    :cond_38
    :goto_38
    return-void
.end method

.method public final handleOnAllPrintJobsHandled()V
    .registers 3

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_23

    .line 187
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-nez v0, :cond_15

    .line 188
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    return-void

    .line 191
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 192
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$1;

    invoke-direct {v1, p0}, Lcom/android/server/print/RemotePrintService$1;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 204
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-nez v0, :cond_2a

    .line 205
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 4

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 243
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_17

    .line 244
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 245
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$3;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 256
    :cond_17
    :try_start_17
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception p0

    const-string p1, "RemotePrintService"

    const-string v0, "Error announcing queued pring job."

    .line 258
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public final handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .registers 4

    .line 216
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_14

    .line 217
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 218
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$2;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 229
    :cond_14
    :try_start_14
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception p0

    const-string p1, "RemotePrintService"

    const-string v0, "Error canceling a pring job."

    .line 231
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method

.method public final handleRequestCustomPrinterIcon(Landroid/print/PrinterId;)V
    .registers 4

    .line 440
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_14

    .line 441
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 442
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 449
    :cond_14
    :try_start_14
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_31

    :catch_1a
    move-exception p0

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error requesting icon for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemotePrintService"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return-void
.end method

.method public final handleStartPrinterDiscovery(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    if-eqz p1, :cond_c

    .line 337
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_20

    .line 340
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 341
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$6;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 352
    :cond_20
    :try_start_20
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->startPrinterDiscovery(Ljava/util/List;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception p0

    const-string p1, "RemotePrintService"

    const-string v0, "Error starting printer dicovery."

    .line 354
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    return-void
.end method

.method public final handleStartPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-nez v1, :cond_e

    .line 460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 462
    :cond_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_37

    .line 465
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_28

    .line 466
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 467
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$9;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 478
    :cond_28
    :try_start_28
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    goto :goto_36

    :catch_2e
    move-exception p0

    const-string p1, "RemotePrintService"

    const-string v0, "Error requesting start printer tracking."

    .line 480
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    return-void

    :catchall_37
    move-exception p0

    .line 463
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final handleStopPrinterDiscovery()V
    .registers 3

    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 367
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_17

    .line 368
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 369
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$7;

    invoke-direct {v1, p0}, Lcom/android/server/print/RemotePrintService$7;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 381
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    .line 384
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0}, Landroid/printservice/IPrintService;->stopPrinterDiscovery()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_28

    :catch_20
    move-exception p0

    const-string v0, "RemotePrintService"

    const-string v1, "Error stopping printer discovery."

    .line 386
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-void
.end method

.method public final handleStopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4

    .line 491
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-eqz v1, :cond_3d

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3d

    .line 496
    :cond_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    .line 497
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 499
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3f

    .line 501
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 502
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 503
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$10;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 514
    :cond_2e
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_34

    goto :goto_3c

    :catch_34
    move-exception p0

    const-string p1, "RemotePrintService"

    const-string v0, "Error requesting stop printer tracking."

    .line 516
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3c
    return-void

    .line 494
    :cond_3d
    :goto_3d
    :try_start_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    .line 499
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public final handleValidatePrinters(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_14

    .line 398
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 399
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$8;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 410
    :cond_14
    :try_start_14
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->validatePrinters(Ljava/util/List;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception p0

    const-string p1, "RemotePrintService"

    const-string v0, "Error requesting printers validation."

    .line 412
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method

.method public final isBound()Z
    .registers 1

    .line 561
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onAllPrintJobsHandled()V
    .registers 3

    .line 178
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 4

    .line 237
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .registers 4

    .line 211
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    .registers 4

    .line 429
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startPrinterDiscovery(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 329
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4

    .line 418
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopPrinterDiscovery()V
    .registers 3

    .line 360
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4

    .line 486
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final stopTrackingAllPrinters()V
    .registers 6

    .line 522
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-nez v1, :cond_9

    .line 524
    monitor-exit v0

    return-void

    .line 526
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_2b

    .line 528
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 529
    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 530
    invoke-virtual {p0, v2}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 533
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
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

    .line 392
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

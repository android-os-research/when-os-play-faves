.class public Lcom/android/server/appprediction/AppPredictionManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "AppPredictionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/appprediction/AppPredictionManagerService;",
        "Lcom/android/server/appprediction/AppPredictionPerUserService;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_TEMP_SERVICE_DURATION_MS:I = 0x1d4c0

.field public static final TAG:Ljava/lang/String; = "AppPredictionManagerService"


# instance fields
.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/appprediction/AppPredictionManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/appprediction/AppPredictionManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 67
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040313

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 70
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/appprediction/AppPredictionManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/appprediction/AppPredictionManagerService;)Ljava/lang/Object;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/server/appprediction/AppPredictionManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public enforceCallingPermissionForManagement()V
    .registers 3

    .line 85
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/server/appprediction/AppPredictionManagerService;->TAG:Ljava/lang/String;

    const-string v1, "android.permission.MANAGE_APP_PREDICTIONS"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getMaximumTemporaryServiceDurationMs()I
    .registers 1

    const p0, 0x1d4c0

    return p0
.end method

.method public newServiceLocked(IZ)Lcom/android/server/appprediction/AppPredictionPerUserService;
    .registers 4

    .line 75
    new-instance p2, Lcom/android/server/appprediction/AppPredictionPerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionManagerService;->newServiceLocked(IZ)Lcom/android/server/appprediction/AppPredictionPerUserService;

    move-result-object p0

    return-object p0
.end method

.method public onServicePackageRestartedLocked(I)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    if-eqz p0, :cond_b

    .line 100
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onPackageRestartedLocked()V

    :cond_b
    return-void
.end method

.method public onServicePackageUpdatedLocked(I)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    if-eqz p0, :cond_b

    .line 92
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onPackageUpdatedLocked()V

    :cond_b
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 80
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub-IA;)V

    const-string v1, "app_prediction"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

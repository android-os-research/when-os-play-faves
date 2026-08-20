.class Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;
.super Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;
.source "ActivityTaskManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshRateBlockList"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;


# direct methods
.method public static synthetic $r8$lambda$wk4BKyfaZ5ftDii7CxRM3w5KXpc(Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;->lambda$onPackageFeatureDataChanged$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Lcom/samsung/android/server/packagefeature/PackageFeature;)V
    .registers 3

    .line 743
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;->this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 744
    invoke-direct {p0, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    return-void
.end method

.method private synthetic lambda$onPackageFeatureDataChanged$0()V
    .registers 2

    .line 752
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;->this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 753
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;->this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 754
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .registers 3

    .line 749
    invoke-super {p0, p1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V

    .line 751
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;->this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class public Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DesiredDisplayModeSpecsObserver"
.end annotation


# instance fields
.field public mChanged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSyncRoot"
        }
    .end annotation
.end field

.field public final mSpecsChangedConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public static synthetic $r8$lambda$6bjUABL-DhIWqb01evzoiWZK2dA(Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->lambda$onDesiredDisplayModeSpecsChanged$1(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ioXYqhD1SSriwY1Kx_huCTZKwXE(Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->lambda$new$0(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 5962
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5965
    new-instance p1, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mSpecsChangedConsumer:Ljava/util/function/Consumer;

    const/4 p1, 0x0

    .line 5987
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/display/LogicalDisplay;)V
    .registers 5

    .line 5966
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 5967
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayModeDirector(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayModeDirector;

    move-result-object v1

    .line 5968
    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v1

    .line 5970
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDesiredDisplayModeSpecsLocked()Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v2

    .line 5976
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 5977
    invoke-virtual {p1, v1}, Lcom/android/server/display/LogicalDisplay;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    const/4 p1, 0x1

    .line 5978
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    .line 5980
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz p1, :cond_2b

    .line 5981
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayModeDirector(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayModeDirector;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayModeDirector;->logCurrentState(ILcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)Z

    :cond_2b
    return-void
.end method

.method private synthetic lambda$onDesiredDisplayModeSpecsChanged$1(Lcom/android/server/display/LogicalDisplay;)V
    .registers 4

    .line 6001
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 6002
    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 6003
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public onDesiredDisplayModeSpecsChanged()V
    .registers 5

    .line 5991
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 5992
    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    .line 5993
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mSpecsChangedConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 5994
    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    if-eqz v2, :cond_20

    .line 5995
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mscheduleTraversalLocked(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 5996
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    .line 5999
    :cond_20
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayModeDirector(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayModeDirector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector;->consumeUpdateRefreshRateMode()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 6000
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 6008
    :cond_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_40

    throw p0
.end method

.class final Lcom/android/server/display/DisplayManagerService$LocalService;
.super Landroid/hardware/display/DisplayManagerInternal;
.source "DisplayManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 5432
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDualScreenPolicy(Z)V
    .registers 2

    .line 5957
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->applyDualScreenPolicyInternal(Z)V

    return-void
.end method

.method public createSpegVirtualDisplay(Ljava/lang/String;ILandroid/hardware/display/IVirtualDisplayCallback;)I
    .registers 4

    .line 5764
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mcreateSpegVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;ILandroid/hardware/display/IVirtualDisplayCallback;)I

    move-result p0

    return p0
.end method

.method public createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I
    .registers 13

    .line 5462
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mcreateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getBrightnessLearningMaxLimitCount()[I
    .registers 3

    .line 5882
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5883
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 5884
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessLearningMaxLimitCount()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    .line 5885
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getCurrentScreenBrightness()F
    .registers 3

    .line 5854
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5855
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 5856
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getCurrentScreenBrightness()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 5857
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 4

    .line 5526
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v0, :cond_13

    .line 5527
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDisplayInfoInternal(Lcom/android/server/display/DisplayManagerService;III)Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0

    .line 5530
    :cond_13
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDisplayInfoInternal(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayPosition(I)Landroid/graphics/Point;
    .registers 3

    .line 5583
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5584
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 5586
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayPosition()Landroid/graphics/Point;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_19
    const/4 p0, 0x0

    .line 5588
    monitor-exit v0

    return-object p0

    :catchall_1c
    move-exception p0

    .line 5589
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public getDisplaySurfaceDefaultSize(I)Landroid/graphics/Point;
    .registers 3

    .line 5781
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5782
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDeviceForDisplayLocked(Lcom/android/server/display/DisplayManagerService;I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 5784
    monitor-exit v0

    return-object p0

    .line 5786
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplaySurfaceDefaultSizeLocked()Landroid/graphics/Point;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    .line 5787
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public getDisplayWindowPolicyController(I)Landroid/window/DisplayWindowPolicyController;
    .registers 4

    .line 5797
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5798
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 5799
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/window/DisplayWindowPolicyController;

    monitor-exit v0

    return-object p0

    :cond_21
    const/4 p0, 0x0

    .line 5801
    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    .line 5802
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 12

    .line 5696
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->getDisplayedContentSampleInternal(IJJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayedContentSamplingAttributes(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 2

    .line 5683
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayedContentSamplingAttributesInternal(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getLastAnimationTarget()F
    .registers 3

    .line 5872
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5873
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 5874
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getLastAnimationTarget()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 5875
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getLastAutomaticScreenBrightness()F
    .registers 3

    .line 5846
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5847
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 5848
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getLastAutomaticScreenBrightness()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 5849
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getLastUserSetScreenBrightnessTime()J
    .registers 4

    .line 5862
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5863
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 5864
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getLastUserSetScreenBrightnessTime()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_1a
    move-exception p0

    .line 5865
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V
    .registers 3

    .line 5617
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetNonOverrideDisplayInfoInternal(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method public getPossibleDisplayInfo(I)Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation

    .line 5536
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5538
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v1

    .line 5539
    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_36

    const-string p0, "DisplayManagerService"

    .line 5541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get possible display info since display group for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5544
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    monitor-exit v0

    return-object p0

    .line 5548
    :cond_36
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 5549
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 5551
    :goto_47
    invoke-virtual {v3}, Lcom/android/server/display/DisplayGroup;->getSizeLocked()I

    move-result v6

    if-ge v5, v6, :cond_86

    .line 5552
    invoke-virtual {v3, v5}, Lcom/android/server/display/DisplayGroup;->getIdLocked(I)I

    move-result v6

    .line 5553
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v7}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v7

    if-nez v7, :cond_7c

    const-string v7, "DisplayManagerService"

    .line 5555
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t get possible display info since logical display for display id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " does not exist, as part of group "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 5560
    :cond_7c
    invoke-virtual {v7}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_83
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 5566
    :cond_86
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDeviceStateManager(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/devicestate/DeviceStateManagerInternal;

    move-result-object v3

    if-nez v3, :cond_96

    const-string p0, "DisplayManagerService"

    const-string p1, "Can\'t get supported states since DeviceStateManager not ready"

    .line 5567
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 5569
    :cond_96
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDeviceStateManager(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/devicestate/DeviceStateManagerInternal;

    move-result-object v3

    .line 5570
    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceStateManagerInternal;->getSupportedStateIdentifiers()[I

    move-result-object v3

    .line 5571
    array-length v5, v3

    :goto_a1
    if-ge v4, v5, :cond_b5

    aget v6, v3, v4

    .line 5572
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v7}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v7

    .line 5573
    invoke-virtual {v7, v6, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayInfoForStateLocked(III)Ljava/util/Set;

    move-result-object v6

    .line 5572
    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a1

    .line 5577
    :cond_b5
    :goto_b5
    monitor-exit v0

    return-object v2

    :catchall_b7
    move-exception p0

    .line 5578
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_7 .. :try_end_b9} :catchall_b7

    throw p0
.end method

.method public getRealDisplayToken(I)Landroid/os/IBinder;
    .registers 2

    .line 5948
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDisplayToken(Lcom/android/server/display/DisplayManagerService;I)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getRefreshRateForDisplayAndSensor(ILjava/lang/String;Ljava/lang/String;)Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    .registers 7

    .line 5714
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5715
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSensorManager(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/SensorManager;

    move-result-object v1

    .line 5716
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_55

    const/4 v0, 0x0

    if-nez v1, :cond_12

    return-object v0

    :cond_12
    const/4 v2, 0x0

    .line 5722
    invoke-static {v1, p3, p2, v2}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_1a

    return-object v0

    .line 5728
    :cond_1a
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 5729
    :try_start_21
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-nez p0, :cond_2f

    .line 5731
    monitor-exit v1

    return-object v0

    .line 5733
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-nez p0, :cond_37

    .line 5735
    monitor-exit v1

    return-object v0

    .line 5737
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    .line 5738
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getProximitySensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    move-result-object p0

    .line 5739
    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 5740
    new-instance p1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget p2, p0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->minRefreshRate:F

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->maxRefreshRate:F

    invoke-direct {p1, p2, p0}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    monitor-exit v1

    return-object p1

    .line 5743
    :cond_50
    monitor-exit v1

    return-object v0

    :catchall_52
    move-exception p0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_21 .. :try_end_54} :catchall_52

    throw p0

    :catchall_55
    move-exception p0

    .line 5716
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public getRefreshRateLimitations(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;",
            ">;"
        }
    .end annotation

    .line 5750
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5751
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDeviceForDisplayLocked(Lcom/android/server/display/DisplayManagerService;I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 5753
    monitor-exit v0

    return-object p0

    .line 5755
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    .line 5756
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1c

    .line 5757
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateLimitations()Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_1c
    move-exception p0

    .line 5756
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public getRefreshRateSwitchingType()I
    .registers 1

    .line 5707
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getRefreshRateSwitchingTypeInternal()I

    move-result p0

    return p0
.end method

.method public hideCutoutForFoldable(Z)V
    .registers 2

    .line 5827
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->hideCutoutForFoldableInternal(Z)V

    return-void
.end method

.method public ignoreProximitySensorUntilChanged()V
    .registers 2

    .line 5701
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 5702
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->ignoreProximitySensorUntilChanged()V

    return-void
.end method

.method public initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    .registers 6

    .line 5438
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5439
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmDisplayPowerCallbacks(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    .line 5440
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1, p3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmSensorManager(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/SensorManager;)V

    .line 5441
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmPowerHandler(Lcom/android/server/display/DisplayManagerService;Landroid/os/Handler;)V

    .line 5442
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$minitializeDisplayPowerControllersLocked(Lcom/android/server/display/DisplayManagerService;)V

    .line 5453
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_27

    .line 5455
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_27
    move-exception p0

    .line 5453
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public isDualSwitchEnabled()Z
    .registers 3

    .line 5818
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5819
    :try_start_7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v1, :cond_19

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDexEmulator(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DexEmulator;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->-$$Nest$fgetmDualSwitchEnabled(Lcom/android/server/display/DisplayManagerService$DexEmulator;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    .line 5820
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public isProximitySensorAvailable()Z
    .registers 3

    .line 5497
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5498
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 5499
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorAvailable()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 5500
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public onEarlyInteractivityChange(Z)V
    .registers 2

    .line 5792
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->onEarlyInteractivityChange(Z)V

    return-void
.end method

.method public onOverlayChanged()V
    .registers 5

    .line 5664
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android"

    const/16 v2, 0x400

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5666
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 5667
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleSystemApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_23

    .line 5675
    :catch_23
    :cond_23
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5676
    :try_start_2a
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayDeviceRepo(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayDeviceRepository;

    move-result-object p0

    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/DisplayManagerService$LocalService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 5677
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public performTraversal(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 5622
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->performTraversalInternal(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public persistBrightnessTrackerState()V
    .registers 3

    .line 5652
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5653
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 5654
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->persistBrightnessTrackerState()V

    .line 5655
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V
    .registers 4

    .line 5892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerDisplayBrightnessListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1f

    .line 5897
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mregisterDisplayBrightnessListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V

    return-void

    .line 5894
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerDisplayGroupListener(Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;)V
    .registers 2

    .line 5505
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayGroupListeners(Lcom/android/server/display/DisplayManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 4

    .line 5915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerDisplayStateListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1f

    .line 5920
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mregisterDisplayStateListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void

    .line 5917
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 5598
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mregisterDisplayTransactionListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void

    .line 5595
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestPowerState(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .registers 10

    .line 5469
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5470
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_16

    .line 5473
    monitor-exit v0

    return v1

    .line 5476
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/display/DisplayGroup;->getSizeLocked()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_4d

    .line 5479
    invoke-virtual {p1, v3}, Lcom/android/server/display/DisplayGroup;->getIdLocked(I)I

    move-result v4

    .line 5480
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v5

    .line 5481
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    .line 5482
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    iget v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_4a

    .line 5484
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    .line 5485
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayPowerController;

    .line 5486
    invoke-virtual {v4, p2, p3}, Lcom/android/server/display/DisplayPowerController;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v4

    and-int/2addr v1, v4

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 5491
    :cond_4d
    monitor-exit v0

    return v1

    :catchall_4f
    move-exception p0

    .line 5492
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public setDisplayAccessUIDs(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;)V"
        }
    .end annotation

    .line 5647
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayAccessUIDsInternal(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;)V

    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
    .registers 3

    .line 5612
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method public setDisplayOffsets(III)V
    .registers 4

    .line 5637
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayOffsetsInternal(Lcom/android/server/display/DisplayManagerService;III)V

    return-void
.end method

.method public setDisplayProperties(IZFIFFZZ)V
    .registers 18

    move-object v0, p0

    .line 5630
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayPropertiesInternal(Lcom/android/server/display/DisplayManagerService;IZFIFFZZ)V

    return-void
.end method

.method public setDisplayScalingDisabled(IZ)V
    .registers 3

    .line 5642
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayScalingDisabledInternal(Lcom/android/server/display/DisplayManagerService;IZ)V

    return-void
.end method

.method public setDisplayStateLimit(Landroid/os/IBinder;I)V
    .registers 5

    .line 5937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setDisplayStateLimit(l): stateLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5938
    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    .line 5937
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5940
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayStateLimitInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V

    return-void
.end method

.method public setDisplayedContentSamplingEnabled(IZII)Z
    .registers 5

    .line 5689
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->setDisplayedContentSamplingEnabledInternal(IZII)Z

    move-result p0

    return p0
.end method

.method public setWindowManagerMirroring(IZ)V
    .registers 4

    .line 5770
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5771
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDeviceForDisplayLocked(Lcom/android/server/display/DisplayManagerService;I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 5773
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayDevice;->setWindowManagerMirroringLocked(Z)V

    .line 5775
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public startWindowManagerMirroring(I)V
    .registers 3

    .line 5834
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5835
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDeviceForDisplayLocked(Lcom/android/server/display/DisplayManagerService;I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 5837
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->startWindowManagerMirroring()V

    .line 5839
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public systemScreenshot(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 2

    .line 5515
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msystemScreenshotInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public unregisterDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V
    .registers 4

    .line 5903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterDisplayBrightnessListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1f

    .line 5908
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$munregisterDisplayBrightnessListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V

    return-void

    .line 5905
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterDisplayGroupListener(Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;)V
    .registers 2

    .line 5510
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayGroupListeners(Lcom/android/server/display/DisplayManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 4

    .line 5925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterDisplayStateListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1f

    .line 5930
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$munregisterDisplayStateListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void

    .line 5927
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 5607
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$munregisterDisplayTransactionListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void

    .line 5604
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateDexDisplayState(Z)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public userScreenshot(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 2

    .line 5520
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$muserScreenshotInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

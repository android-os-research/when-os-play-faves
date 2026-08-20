.class public final Lcom/android/server/display/DisplayModeDirector$DisplayObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayObserver"
.end annotation


# static fields
.field public static final INVALID:I = -0x1


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsSubScreen:Z

.field public final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsSubScreen(Lcom/android/server/display/DisplayModeDirector$DisplayObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mIsSubScreen:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 1692
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1693
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mContext:Landroid/content/Context;

    .line 1694
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public observe()V
    .registers 10

    .line 1706
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1707
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1710
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1711
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1712
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 1713
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 1714
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_25
    if-ge v6, v4, :cond_3f

    aget-object v7, v0, v6

    .line 1715
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    .line 1716
    invoke-virtual {v7, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1717
    iget-object v7, v3, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v1, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1718
    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 1720
    :cond_3f
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1721
    :try_start_46
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_4a
    if-ge v5, v3, :cond_75

    .line 1723
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/view/Display$Mode;

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1724
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Display$Mode;

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 1726
    :cond_75
    monitor-exit v0

    return-void

    :catchall_77
    move-exception p0

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_46 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public onDisplayAdded(I)V
    .registers 2

    .line 1731
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->updateDisplayModes(I)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4

    .line 1744
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->updateDisplayModes(I)V

    .line 1747
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    .line 1748
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateDefaultDisplayToken(Lcom/android/server/display/DisplayModeDirector;)Z

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1751
    :goto_11
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v1, :cond_52

    if-nez p1, :cond_52

    .line 1752
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSubScreen()Z

    move-result p1

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mIsSubScreen:Z

    if-eq p1, v1, :cond_52

    .line 1753
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSubScreen()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mIsSubScreen:Z

    .line 1754
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/display/DisplayModeDirector;->setModeSwitchingType(I)V

    .line 1756
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1757
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateRefreshRateModeLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;Z)V

    .line 1758
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$monBrightnessChangedLocked(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    .line 1759
    monitor-exit p1

    goto :goto_52

    :catchall_4f
    move-exception p0

    monitor-exit p1
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_4f

    throw p0

    :cond_52
    :goto_52
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 1736
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1737
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1738
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1739
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final updateDisplayModes(I)V
    .registers 8

    .line 1765
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 1772
    :cond_11
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 1773
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    const/4 v0, 0x0

    .line 1775
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1776
    :try_start_21
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_42

    .line 1777
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v3, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v4

    .line 1780
    :cond_42
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 1782
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_65

    :cond_64
    move v4, v0

    :goto_65
    if-eqz v4, :cond_6c

    .line 1785
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/DisplayModeDirector;)V

    .line 1787
    :cond_6c
    monitor-exit v2

    return-void

    :catchall_6e
    move-exception p0

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_21 .. :try_end_70} :catchall_6e

    throw p0
.end method

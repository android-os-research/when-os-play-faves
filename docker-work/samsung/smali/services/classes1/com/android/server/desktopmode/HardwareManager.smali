.class public Lcom/android/server/desktopmode/HardwareManager;
.super Ljava/lang/Object;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/HardwareManager$DockState;,
        Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;,
        Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final sSupportedDockUsbpdIdRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/util/Range<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final sSupportedDockUsbpdIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mConnectedMouse:Landroid/view/InputDevice;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplays:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/desktopmode/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mForcedInternalScreenModeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mIDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public final mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mIsBtMouseDeepSleep:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsExternalDisplayConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsMouseConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsPogoKeyboardConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mPogoKeyboardChangedListener:Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mRawDockState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mRawDockUsbpdIds:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public final mUEventHostDeviceObserver:Landroid/os/UEventObserver;

.field public final mUEventObserver:Landroid/os/UEventObserver;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$g3L0HI9l5Olhc3uz6OK9_FSxkpE(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/HardwareManager;->lambda$checkExternalDisplayConnectedLocked$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/desktopmode/HardwareManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/android/server/desktopmode/HardwareManager;)Landroid/hardware/display/DisplayManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplays(Lcom/android/server/desktopmode/HardwareManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsExternalDisplayConnected(Lcom/android/server/desktopmode/HardwareManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsMouseConnected(Lcom/android/server/desktopmode/HardwareManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/desktopmode/HardwareManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManagerInternal(Lcom/android/server/desktopmode/HardwareManager;)Landroid/os/PowerManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsBtMouseDeepSleep(Lcom/android/server/desktopmode/HardwareManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLowRefreshRate(Lcom/android/server/desktopmode/HardwareManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->setLowRefreshRate(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRawDockStateLocked(Lcom/android/server/desktopmode/HardwareManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockStateLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRawDockUsbpdIdsLocked(Lcom/android/server/desktopmode/HardwareManager;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockUsbpdIdsLocked(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDockStatusLocked(Lcom/android/server/desktopmode/HardwareManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatusLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateExternalDisplayStatus(Lcom/android/server/desktopmode/HardwareManager;ZI)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/HardwareManager;->updateExternalDisplayStatus(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateInputDeviceStatusLocked(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateInputDeviceStatusLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePogoKeyboardStatus(Lcom/android/server/desktopmode/HardwareManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->updatePogoKeyboardStatus(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smresolveDockType(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->resolveDockType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 6

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    const/16 v1, 0x2718

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "04e8:a027"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2714

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "04e8:a029"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2719

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "04e8:a025"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2711

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "04e8:a020"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2717

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "04b4:2122"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2716

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "04b4:f645"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x271a

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "04e8:a048"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x271b

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "04e8:a056"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x271d

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "04e8:a066"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIdRanges:Ljava/util/List;

    .line 94
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/util/Range;

    const-string v3, "04e8:a02a"

    const-string v4, "04e8:a02e"

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/16 v3, 0x2715

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/util/Range;

    const-string v3, "04e8:a02f"

    const-string v4, "04e8:a033"

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/16 v3, 0x271e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/util/Range;

    const-string v3, "1048:4007"

    const-string v4, "1048:4012"

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/16 v3, 0x271c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/util/Range;

    const-string v4, "1048:5006"

    const-string v5, "1048:5013"

    invoke-direct {v2, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/util/Range;

    const-string v4, "1048:6000"

    const-string v5, "1048:6fff"

    invoke-direct {v2, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Landroid/hardware/input/InputManager;Landroid/hardware/display/DisplayManager;Landroid/os/PowerManagerInternal;Lcom/android/server/wm/WindowManagerService;Lcom/samsung/android/vr/GearVrManagerInternal;Landroid/hardware/display/IDisplayManager;)V
    .registers 23

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    const/4 v4, 0x0

    .line 101
    iput-boolean v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    .line 103
    iput-boolean v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    .line 105
    iput-boolean v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    .line 107
    iput-boolean v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mIsPogoKeyboardConnected:Z

    .line 109
    iput-boolean v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    const/4 v4, -0x1

    .line 111
    iput v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    const-string v4, ""

    .line 113
    iput-object v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    .line 115
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    .line 121
    new-instance v4, Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-direct {v4}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    iput-object v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 129
    new-instance v4, Lcom/android/server/desktopmode/HardwareManager$1;

    invoke-direct {v4, p0}, Lcom/android/server/desktopmode/HardwareManager$1;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    iput-object v4, v0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 158
    new-instance v5, Lcom/android/server/desktopmode/HardwareManager$2;

    invoke-direct {v5, p0}, Lcom/android/server/desktopmode/HardwareManager$2;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    iput-object v5, v0, Lcom/android/server/desktopmode/HardwareManager;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 178
    new-instance v6, Lcom/android/server/desktopmode/HardwareManager$3;

    invoke-direct {v6, p0}, Lcom/android/server/desktopmode/HardwareManager$3;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    iput-object v6, v0, Lcom/android/server/desktopmode/HardwareManager;->mUEventObserver:Landroid/os/UEventObserver;

    .line 194
    new-instance v7, Lcom/android/server/desktopmode/HardwareManager$4;

    invoke-direct {v7, p0}, Lcom/android/server/desktopmode/HardwareManager$4;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    iput-object v7, v0, Lcom/android/server/desktopmode/HardwareManager;->mUEventHostDeviceObserver:Landroid/os/UEventObserver;

    .line 227
    new-instance v8, Lcom/android/server/desktopmode/HardwareManager$5;

    invoke-direct {v8, p0}, Lcom/android/server/desktopmode/HardwareManager$5;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    iput-object v8, v0, Lcom/android/server/desktopmode/HardwareManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    move-object v9, p1

    .line 282
    iput-object v9, v0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    .line 283
    new-instance v10, Landroid/os/HandlerThread;

    const-string v11, "desktopmode_hw"

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 285
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 286
    new-instance v11, Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v11, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v11, v0, Lcom/android/server/desktopmode/HardwareManager;->mHandler:Landroid/os/Handler;

    .line 287
    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 288
    invoke-interface {p2, v8}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    move-object/from16 v1, p6

    .line 289
    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v1, p7

    .line 291
    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 293
    iput-object v2, v0, Lcom/android/server/desktopmode/HardwareManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 294
    invoke-virtual {v2, v5, v11}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 296
    iput-object v3, v0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 297
    invoke-virtual {v3, v4, v11}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    move-object/from16 v1, p9

    .line 298
    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    const-string v1, "DEVPATH=/devices/virtual/sec/ccic"

    .line 300
    invoke-virtual {v6, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v1, "DEVTYPE=usb_interface"

    .line 301
    invoke-virtual {v7, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    move-object/from16 v1, p3

    .line 303
    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    move-object/from16 v1, p8

    .line 306
    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    .line 309
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v1, :cond_ba

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.cover"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 311
    new-instance v1, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;-><init>(Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener-IA;)V

    iput-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mPogoKeyboardChangedListener:Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;

    .line 312
    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;->-$$Nest$mregister(Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;)V

    .line 315
    :cond_ba
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 316
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    new-instance v2, Lcom/android/server/desktopmode/HardwareManager$6;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/HardwareManager$6;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p0, p1

    move-object p1, v2

    move-object p2, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    invoke-virtual/range {p0 .. p5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static isSupportedDisplayType(I)Z
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_e

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    return p0
.end method

.method private synthetic lambda$checkExternalDisplayConnectedLocked$0()V
    .registers 4

    .line 650
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 651
    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/DisplayInfo;

    .line 652
    invoke-virtual {v2}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/desktopmode/HardwareManager;->isSupportedDisplayType(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-void

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 656
    :cond_1f
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    const-string v1, "checkExternalDisplayConnectedLocked(), Reconnection time out!"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->checkExternalDisplayConnectedLocked()V

    return-void
.end method

.method public static resolveDockType(Ljava/lang/String;)I
    .registers 4

    .line 683
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 684
    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 686
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 689
    :cond_15
    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIdRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 690
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2, p0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 691
    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3a
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final checkExternalDisplayConnectedLocked()V
    .registers 5

    const-string v0, "/sys/class/dp_sec/dex"

    .line 644
    invoke-static {v0}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 647
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->setExternalDisplayConnectedLocked(ZLcom/android/server/desktopmode/DisplayInfo;)V

    goto :goto_1a

    .line 649
    :cond_e
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/HardwareManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/HardwareManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1a
    return-void
.end method

.method public command(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .registers 7

    .line 719
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "on"

    .line 720
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    .line 721
    invoke-virtual {p0, v2, p1}, Lcom/android/server/desktopmode/HardwareManager;->setForcedInternalScreenModeLocked(ZLjava/io/PrintWriter;)V

    .line 722
    monitor-exit v0

    return v3

    :cond_13
    const-string/jumbo v1, "off"

    .line 723
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 724
    invoke-virtual {p0, v3, p1}, Lcom/android/server/desktopmode/HardwareManager;->setForcedInternalScreenModeLocked(ZLjava/io/PrintWriter;)V

    .line 725
    monitor-exit v0

    return v3

    :cond_21
    const-string/jumbo v1, "toggle"

    .line 726
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 727
    iget-boolean p2, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    if-nez p2, :cond_2f

    goto :goto_30

    :cond_2f
    move v2, v3

    :goto_30
    invoke-virtual {p0, v2, p1}, Lcom/android/server/desktopmode/HardwareManager;->setForcedInternalScreenModeLocked(ZLjava/io/PrintWriter;)V

    .line 728
    monitor-exit v0

    return v3

    :cond_35
    const/4 p0, -0x1

    .line 730
    monitor-exit v0

    return p0

    :catchall_38
    move-exception p0

    .line 731
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 700
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConnectedDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConnectedMouse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedMouse:Landroid/view/InputDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisplays="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mForcedInternalScreenModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsBtMouseDeepSleep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsExternalDisplayConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsMouseConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsPogoKeyboardConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsPogoKeyboardConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRawDockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/Utils;->dockStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRawDockUsbpdIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 715
    monitor-exit v0

    return-void

    :catchall_12b
    move-exception p0

    monitor-exit v0
    :try_end_12d
    .catchall {:try_start_3 .. :try_end_12d} :catchall_12b

    throw p0
.end method

.method public final getBatteryChangedIntent()Landroid/content/Intent;
    .registers 7

    .line 633
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryLevel()I
    .registers 3

    .line 623
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->getBatteryChangedIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_f

    const-string/jumbo v1, "level"

    .line 625
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_f
    return v0
.end method

.method public final getCoverType(Lcom/android/server/desktopmode/State;)I
    .registers 2

    .line 596
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz p0, :cond_f

    .line 598
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public initialize()V
    .registers 4

    .line 354
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initialize()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_c
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatusLocked()Z

    .line 359
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/HardwareManager;->initializeExternalDisplayStatusLocked([Landroid/view/Display;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateInputDeviceStatusLocked()V

    .line 361
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "dock_usbpd_ids"

    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 362
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result p0

    .line 361
    invoke-static {v0, v2, p0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 363
    monitor-exit v1

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_15 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final initializeExternalDisplayStatusLocked([Landroid/view/Display;)V
    .registers 10

    .line 466
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :goto_5
    const/4 v4, 0x1

    if-ge v1, v0, :cond_27

    aget-object v5, p1, v1

    .line 467
    new-instance v6, Lcom/android/server/desktopmode/DisplayInfo;

    invoke-direct {v6, v5}, Lcom/android/server/desktopmode/DisplayInfo;-><init>(Landroid/view/Display;)V

    .line 468
    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/android/server/desktopmode/DisplayInfo;->getDisplayId()I

    move-result v7

    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    invoke-virtual {v6}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/desktopmode/HardwareManager;->isSupportedDisplayType(I)Z

    move-result v5

    if-eqz v5, :cond_24

    move v2, v4

    move-object v3, v6

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_27
    if-eqz v2, :cond_32

    .line 475
    iput-boolean v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    .line 476
    iput-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 477
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1, v4, v3}, Lcom/android/server/desktopmode/IStateManager;->setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V

    .line 479
    :cond_32
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_4f

    sget-object p1, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initializeExternalDisplayStatusLocked(), mDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return-void
.end method

.method public final isHmtDeviceConnected()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isMouse(Landroid/view/InputDevice;)Z
    .registers 2

    .line 566
    invoke-virtual {p1}, Landroid/view/InputDevice;->getSources()I

    move-result p0

    and-int/lit8 p0, p0, 0xe

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public logConnectedAccessoryInformationLocked(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->getCoverType(Lcom/android/server/desktopmode/State;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_30

    sget-object p1, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log extra data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_30
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    .line 592
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LCAI"

    .line 591
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeLogger;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setExternalDisplayConnectedLocked(ZLcom/android/server/desktopmode/DisplayInfo;)V
    .registers 3

    .line 638
    iput-boolean p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    .line 639
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatusLocked()Z

    .line 640
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, p1, p2}, Lcom/android/server/desktopmode/IStateManager;->setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V

    return-void
.end method

.method public final setForcedInternalScreenModeLocked(ZLjava/io/PrintWriter;)V
    .registers 6

    .line 606
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADB command received; setForcedInternalScreenModeLocked(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz p2, :cond_59

    .line 609
    iget-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    if-ne p1, v0, :cond_3e

    .line 610
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Internal screen DeX mode is already turned "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_30

    const-string/jumbo p1, "on!"

    goto :goto_33

    :cond_30
    const-string/jumbo p1, "off!"

    .line 611
    :goto_33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 610
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 614
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_48

    const-string v1, "Entering"

    goto :goto_4a

    :cond_48
    const-string v1, "Exiting"

    :goto_4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " internal screen DeX mode..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    :cond_59
    iput-boolean p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    .line 618
    iget-object p2, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p2, p1}, Lcom/android/server/desktopmode/IStateManager;->setForcedInternalScreenModeEnabled(Z)V

    .line 619
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatusLocked()Z

    return-void
.end method

.method public final setLowRefreshRate(Z)V
    .registers 5

    .line 663
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLowRefreshRate(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v0, 0x0

    if-eqz p1, :cond_32

    .line 666
    :try_start_1e
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    sget-object v1, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/hardware/display/IDisplayManager;->acquireLowRefreshRateToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    goto :goto_44

    :catch_29
    move-exception p0

    .line 668
    sget-object p1, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    const-string v0, "RemoteException is occurred"

    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    .line 672
    :cond_32
    :try_start_32
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-eqz p1, :cond_44

    .line 673
    invoke-interface {p1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    .line 674
    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3c

    goto :goto_44

    :catch_3c
    move-exception p0

    .line 677
    sget-object p1, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    const-string v0, "LowRefreshRate() release failed"

    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    :goto_44
    return-void
.end method

.method public final setRawDockStateLocked(I)V
    .registers 5

    .line 367
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRawDockStateLocked(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/desktopmode/Utils;->dockStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1f
    iput p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    return-void
.end method

.method public final setRawDockUsbpdIdsLocked(Ljava/lang/String;)V
    .registers 5

    .line 372
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRawDockUsbpdIdsLocked(), usbpdIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_1b
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    return-void
.end method

.method public final updateDockStatusLocked()Z
    .registers 8

    .line 377
    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1a

    const-string v0, "/sys/class/sec/ccic/usbpd_type"

    .line 378
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockStateLocked(I)V

    const-string v0, "/sys/class/sec/ccic/usbpd_ids"

    const-string v3, ""

    .line 379
    invoke-static {v0, v3}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockUsbpdIdsLocked(Ljava/lang/String;)V

    .line 382
    :cond_1a
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 385
    iget v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    if-nez v3, :cond_22

    move v3, v2

    goto :goto_28

    :cond_22
    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/desktopmode/HardwareManager;->resolveDockType(Ljava/lang/String;)I

    move-result v3

    .line 387
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->isHmtDeviceConnected()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_39

    .line 388
    new-instance v2, Lcom/android/server/desktopmode/HardwareManager$DockState;

    const/16 v3, 0x271f

    iget-object v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;Z)V

    goto :goto_83

    :cond_39
    if-eq v3, v2, :cond_58

    const/16 v2, 0x2711

    if-eq v3, v2, :cond_50

    const/16 v2, 0x2714

    if-eq v3, v2, :cond_50

    const/16 v2, 0x2716

    if-ne v3, v2, :cond_48

    goto :goto_50

    .line 395
    :cond_48
    new-instance v2, Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;Z)V

    goto :goto_83

    .line 393
    :cond_50
    :goto_50
    new-instance v2, Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;)V

    goto :goto_83

    .line 399
    :cond_58
    iget-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    if-eqz v2, :cond_7e

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v2

    const/16 v3, 0x2712

    if-nez v2, :cond_6a

    .line 400
    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v2

    if-ne v2, v3, :cond_7e

    :cond_6a
    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz v2, :cond_7e

    .line 402
    invoke-virtual {v2}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v2

    const/16 v4, 0x3e9

    if-eq v2, v4, :cond_7e

    .line 403
    new-instance v2, Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;Z)V

    goto :goto_83

    .line 407
    :cond_7e
    new-instance v2, Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-direct {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    .line 409
    :goto_83
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_a6

    sget-object v3, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDockStatusLocked(), new="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", old="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_a6
    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v0

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v3

    if-eq v0, v3, :cond_f9

    .line 413
    iput-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 414
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, v2}, Lcom/android/server/desktopmode/IStateManager;->setDockState(Lcom/android/server/desktopmode/HardwareManager$DockState;)V

    .line 417
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SFC:Z

    if-eqz v0, :cond_d2

    .line 418
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_d2

    .line 420
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSuperFastCharging(ZI)V

    .line 423
    :cond_d2
    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e3

    .line 424
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;

    if-eqz v0, :cond_ed

    .line 425
    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->unregister()V

    .line 426
    iput-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;

    goto :goto_ed

    .line 429
    :cond_e3
    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;-><init>(Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener-IA;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;

    .line 430
    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->register()V

    .line 432
    :cond_ed
    :goto_ed
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mResolver:Landroid/content/ContentResolver;

    .line 433
    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v0

    const-string v1, "dock_usbpd_ids"

    .line 432
    invoke-static {p0, v1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    move v1, v5

    :cond_f9
    return v1
.end method

.method public final updateExternalDisplayStatus(ZI)V
    .registers 10

    const/4 v0, 0x1

    if-eqz p1, :cond_36

    .line 484
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 485
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_31

    .line 487
    :try_start_e
    new-instance v2, Lcom/android/server/desktopmode/DisplayInfo;

    invoke-direct {v2, p1}, Lcom/android/server/desktopmode/DisplayInfo;-><init>(Landroid/view/Display;)V

    .line 488
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    invoke-virtual {v2}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/desktopmode/HardwareManager;->isSupportedDisplayType(I)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 490
    iput-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 491
    iget-boolean p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    if-nez p1, :cond_2c

    .line 492
    invoke-virtual {p0, v0, v2}, Lcom/android/server/desktopmode/HardwareManager;->setExternalDisplayConnectedLocked(ZLcom/android/server/desktopmode/DisplayInfo;)V

    goto :goto_31

    .line 494
    :cond_2c
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1, v2}, Lcom/android/server/desktopmode/IStateManager;->setExternalDisplayUpdated(Lcom/android/server/desktopmode/DisplayInfo;)V

    .line 498
    :cond_31
    :goto_31
    monitor-exit v1

    goto :goto_8d

    :catchall_33
    move-exception p0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_33

    throw p0

    .line 500
    :cond_36
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 501
    :try_start_39
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz p2, :cond_8c

    .line 503
    invoke-virtual {p2}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager;->isSupportedDisplayType(I)Z

    move-result v1

    if-eqz v1, :cond_8c

    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    if-eqz v1, :cond_8c

    .line 508
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_59
    const/4 v4, 0x0

    if-ge v3, v1, :cond_72

    .line 509
    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/desktopmode/DisplayInfo;

    .line 510
    invoke-virtual {v5}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/desktopmode/HardwareManager;->isSupportedDisplayType(I)Z

    move-result v6

    if-eqz v6, :cond_6f

    goto :goto_74

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_72
    move v0, v2

    move-object v5, v4

    .line 516
    :goto_74
    iput-object v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz v0, :cond_7e

    .line 518
    iget-object p2, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p2, v5}, Lcom/android/server/desktopmode/IStateManager;->setExternalDisplayUpdated(Lcom/android/server/desktopmode/DisplayInfo;)V

    goto :goto_8c

    .line 519
    :cond_7e
    invoke-virtual {p2}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_89

    .line 520
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->checkExternalDisplayConnectedLocked()V

    goto :goto_8c

    .line 522
    :cond_89
    invoke-virtual {p0, v2, v4}, Lcom/android/server/desktopmode/HardwareManager;->setExternalDisplayConnectedLocked(ZLcom/android/server/desktopmode/DisplayInfo;)V

    .line 525
    :cond_8c
    :goto_8c
    monitor-exit p1
    :try_end_8d
    .catchall {:try_start_39 .. :try_end_8d} :catchall_ab

    .line 527
    :goto_8d
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_aa

    sget-object p1, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateExternalDisplayStatus(), mDisplays="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    return-void

    :catchall_ab
    move-exception p0

    .line 525
    :try_start_ac
    monitor-exit p1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw p0
.end method

.method public final updateInputDeviceStatusLocked()V
    .registers 10

    .line 531
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 534
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_a
    if-ge v3, v1, :cond_42

    aget v5, v0, v3

    .line 535
    iget-object v6, p0, Lcom/android/server/desktopmode/HardwareManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v6, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_3f

    .line 536
    invoke-virtual {v5}, Landroid/view/InputDevice;->isExternal()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 537
    invoke-virtual {p0, v5}, Lcom/android/server/desktopmode/HardwareManager;->isMouse(Landroid/view/InputDevice;)Z

    move-result v6

    or-int/2addr v4, v6

    if-eqz v6, :cond_3f

    .line 541
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_3d

    sget-object v6, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connected mouse="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_3d
    iput-object v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedMouse:Landroid/view/InputDevice;

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 547
    :cond_42
    iget-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    const/4 v1, 0x1

    if-eq v0, v4, :cond_49

    move v0, v1

    goto :goto_4a

    :cond_49
    move v0, v2

    .line 548
    :goto_4a
    iput-boolean v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    .line 550
    iget-boolean v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    if-eqz v3, :cond_5f

    .line 551
    iput-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    .line 552
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_5d

    sget-object v1, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    const-string v3, "Enter the BT mouse deep sleep routine in updateInputDeviceStatusLocked()"

    invoke-static {v1, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_5d
    iput-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    :cond_5f
    if-eqz v0, :cond_66

    .line 558
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, v4}, Lcom/android/server/desktopmode/IStateManager;->setMouseConnected(Z)V

    .line 561
    :cond_66
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_83

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInputDeviceStatusLocked(), mIsMouseConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    return-void
.end method

.method public final updatePogoKeyboardStatus(Z)V
    .registers 2

    .line 582
    iput-boolean p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsPogoKeyboardConnected:Z

    .line 583
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->setPogoKeyboardConnected(Z)V

    return-void
.end method

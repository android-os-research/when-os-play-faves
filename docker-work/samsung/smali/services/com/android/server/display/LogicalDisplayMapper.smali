.class public Lcom/android/server/display/LogicalDisplayMapper;
.super Ljava/lang/Object;
.source "LogicalDisplayMapper.java"

# interfaces
.implements Lcom/android/server/display/DisplayDeviceRepository$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;,
        Lcom/android/server/display/LogicalDisplayMapper$Listener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DISPLAY_GROUP_EVENT_ADDED:I = 0x1

.field public static final DISPLAY_GROUP_EVENT_CHANGED:I = 0x2

.field public static final DISPLAY_GROUP_EVENT_REMOVED:I = 0x3

.field public static final LOGICAL_DISPLAY_EVENT_ADDED:I = 0x1

.field public static final LOGICAL_DISPLAY_EVENT_CHANGED:I = 0x2

.field public static final LOGICAL_DISPLAY_EVENT_DEVICE_STATE_TRANSITION:I = 0x6

.field public static final LOGICAL_DISPLAY_EVENT_FRAME_RATE_OVERRIDES_CHANGED:I = 0x5

.field public static final LOGICAL_DISPLAY_EVENT_REMOVED:I = 0x3

.field public static final LOGICAL_DISPLAY_EVENT_SWAPPED:I = 0x4

.field public static final MSG_TRANSITION_TO_PENDING_DEVICE_STATE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "LogicalDisplayMapper"

.field public static final TIMEOUT_STATE_TRANSITION_MILLIS:I = 0x1f4

.field public static final UPDATE_STATE_DISABLED:I = 0x2

.field public static final UPDATE_STATE_FLAG_TRANSITION:I = 0x100

.field public static final UPDATE_STATE_MASK:I = 0x3

.field public static final UPDATE_STATE_NEW:I = 0x0

.field public static final UPDATE_STATE_UPDATED:I = 0x1


# instance fields
.field public mBootCompleted:Z

.field public mCurrentLayout:Lcom/android/server/display/layout/Layout;

.field public mDeviceState:I

.field public final mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

.field public final mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

.field public final mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

.field public final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field public final mDisplayGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

.field public mDualScreenPolicyRequested:Z

.field public final mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

.field public mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

.field public mInteractive:Z

.field public final mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

.field public final mLogicalDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field public final mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

.field public mNextNonDefaultGroupId:I

.field public mPendingDeviceState:I

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSingleDisplayDemoMode:Z

.field public final mSupportsConcurrentInternalDisplays:Z

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field public final mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public final mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

.field public final mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;


# direct methods
.method public static synthetic $r8$lambda$2FiQZS0E0-V9mPz_0W2IiOFKMHo(Lcom/android/server/display/LogicalDisplayMapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->lambda$setDeviceStateLocked$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$TB-cAdkvnurYOpjxa2dQo8OHHb8(Lcom/android/server/display/LogicalDisplayMapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->lambda$setDeviceStateLocked$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncRoot(Lcom/android/server/display/LogicalDisplayMapper;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfinishStateTransitionLocked(Lcom/android/server/display/LogicalDisplayMapper;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/DeviceStateToLayoutMap;)V
    .registers 9

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 102
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 156
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 165
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 170
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 175
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    .line 177
    iput v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 180
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    const/4 v0, -0x1

    .line 181
    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 182
    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 187
    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDualScreenPolicyRequested:Z

    .line 193
    iput-object p4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 194
    const-class p4, Landroid/os/PowerManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/PowerManager;

    iput-object p4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    .line 195
    invoke-virtual {p4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 196
    new-instance p4, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p0, p5}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;-><init>(Lcom/android/server/display/LogicalDisplayMapper;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 197
    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 198
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    const-string/jumbo p3, "persist.demo.singledisplay"

    .line 199
    invoke-static {p3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x11101d2

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSupportsConcurrentInternalDisplays:Z

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x10700a3

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/server/display/LogicalDisplayMapper;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10700a2

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

    .line 206
    invoke-virtual {p2, p0}, Lcom/android/server/display/DisplayDeviceRepository;->addListener(Lcom/android/server/display/DisplayDeviceRepository$Listener;)V

    .line 207
    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    return-void
.end method

.method private synthetic lambda$setDeviceStateLocked$0()V
    .registers 5

    .line 493
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xc

    const-string/jumbo v3, "server.display:unfold"

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setDeviceStateLocked$1()V
    .registers 5

    .line 499
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method


# virtual methods
.method public applyDualScreenPolicy(Z)V
    .registers 6

    .line 1307
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDualScreenPolicyRequested:Z

    if-eq v0, p1, :cond_5b

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyDualScreenPolicy, dualScreenPolicyRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogicalDisplayMapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDualScreenPolicyRequested:Z

    .line 1311
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_26

    .line 1312
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    goto :goto_5b

    .line 1314
    :cond_26
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_PHASE_LAYOUT_TRANSITION:Z

    if-eqz p1, :cond_58

    .line 1315
    invoke-virtual {p0, v1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_5b

    const/4 v0, 0x0

    .line 1318
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V

    .line 1320
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 1321
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    .line 1320
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1322
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    or-int/lit16 v0, v0, 0x100

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1325
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 1326
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 1327
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5b

    .line 1332
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final applyLayoutLocked()V
    .registers 9

    .line 1057
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 1058
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    iget v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Previous layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogicalDisplayMapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v0}, Lcom/android/server/display/layout/Layout;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v0, :cond_8c

    .line 1064
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v3, v2}, Lcom/android/server/display/layout/Layout;->getAt(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v3

    .line 1070
    invoke-virtual {v3}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v4

    .line 1071
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v5, v4}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    if-nez v5, :cond_66

    .line 1073
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The display device ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "), is not available for the display state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 1080
    :cond_66
    invoke-virtual {v3}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v4

    const/4 v6, 0x1

    .line 1082
    invoke-virtual {p0, v4, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v7

    if-nez v7, :cond_76

    const/4 v7, 0x0

    .line 1084
    invoke-virtual {p0, v7, v4}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v7

    .line 1089
    :cond_76
    invoke-virtual {p0, v5, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    if-eq v7, v4, :cond_7f

    .line 1091
    invoke-virtual {v7, v4}, Lcom/android/server/display/LogicalDisplay;->swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1106
    :cond_7f
    invoke-virtual {v3}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_89

    const/4 v3, -0x1

    .line 1107
    invoke-virtual {p0, v7, v3}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V

    :cond_89
    :goto_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_8c
    return-void
.end method

.method public final areAllTransitioningDisplaysOffLocked()Z
    .registers 7

    .line 572
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2c

    .line 574
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 575
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_29

    .line 579
    :cond_1a
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 581
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v4

    .line 582
    iget v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-eq v4, v3, :cond_29

    return v1

    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2c
    return v3
.end method

.method public final assignDisplayGroupIdLocked(Z)I
    .registers 3

    if-eqz p1, :cond_9

    .line 1155
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public final assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 9

    .line 929
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 932
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v1

    .line 933
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v2

    .line 936
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 937
    iget v3, v3, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v4, v3, 0x100

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1a

    move v4, v5

    goto :goto_1b

    :cond_1a
    move v4, v6

    :goto_1b
    if-eqz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v5, v6

    :goto_1f
    const/4 v6, -0x1

    if-eq v1, v6, :cond_24

    if-eq v5, v4, :cond_32

    .line 944
    :cond_24
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->CARLIFE_DISPLAY_GROUP:Z

    if-eqz v1, :cond_2e

    and-int/lit16 v1, v3, 0x1000

    if-eqz v1, :cond_2e

    const/4 v1, 0x4

    goto :goto_32

    .line 949
    :cond_2e
    invoke-virtual {p0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupIdLocked(Z)I

    move-result v1

    .line 954
    :cond_32
    :goto_32
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v3

    if-nez v3, :cond_42

    .line 956
    new-instance v3, Lcom/android/server/display/DisplayGroup;

    invoke-direct {v3, v1}, Lcom/android/server/display/DisplayGroup;-><init>(I)V

    .line 957
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_42
    if-eq v2, v3, :cond_83

    if-eqz v2, :cond_49

    .line 961
    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 963
    :cond_49
    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayGroup;->addDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 964
    invoke-virtual {p1, v1}, Lcom/android/server/display/LogicalDisplay;->updateDisplayGroupIdLocked(I)V

    .line 965
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Setting new display group "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for display "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", from previous group: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_74

    .line 967
    invoke-virtual {v2}, Lcom/android/server/display/DisplayGroup;->getGroupId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_77

    :cond_74
    const-string/jumbo p1, "null"

    :goto_77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LogicalDisplayMapper"

    .line 965
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    return-void
.end method

.method public final assignLayerStackLocked(I)I
    .registers 2

    return p1
.end method

.method public final canMoveToDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .registers 5

    .line 1206
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    goto :goto_35

    .line 1210
    :cond_b
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_13

    return v1

    .line 1215
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1216
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 1217
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    .line 1218
    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    move v0, v2

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    if-eqz v0, :cond_2c

    return v1

    .line 1227
    :cond_2c
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 1228
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceRepository;->isExternalDisplayDeviceForDexLocked(Lcom/android/server/display/DisplayDeviceInfo;)Z

    move-result p0

    if-eqz p0, :cond_35

    move v1, v2

    :cond_35
    :goto_35
    return v1
.end method

.method public final createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;
    .registers 5

    .line 1124
    invoke-virtual {p0, p2}, Lcom/android/server/display/LogicalDisplayMapper;->assignLayerStackLocked(I)I

    move-result v0

    .line 1125
    new-instance v1, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {v1, p2, v0, p1}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;)V

    .line 1126
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V

    .line 1127
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 1128
    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V

    return-object v1
.end method

.method public final displayEventToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_1a

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "transition"

    return-object p0

    :pswitch_9
    const-string p0, "framerate_override"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "swapped"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "removed"

    return-object p0

    :pswitch_14
    const-string p0, "changed"

    return-object p0

    :pswitch_17
    const-string p0, "added"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, "LogicalDisplayMapper:"

    .line 430
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 434
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSingleDisplayDemoMode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentLayout="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceStatesOnWhichToWakeUp="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceStatesOnWhichToSleep="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mInteractive="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 440
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 441
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logical Displays: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_a0
    if-ge v1, p1, :cond_d8

    .line 444
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 445
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 448
    invoke-virtual {v3, v0}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 449
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 450
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    .line 452
    :cond_d8
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final finishStateTransitionLocked(Z)V
    .registers 7

    .line 599
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 603
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 604
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    if-eqz v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    .line 606
    :goto_25
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

    iget v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

    iget v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 607
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_43

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    if-eqz v3, :cond_43

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    if-eqz v3, :cond_43

    move v3, v2

    goto :goto_44

    :cond_43
    move v3, v1

    .line 610
    :goto_44
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result v4

    if-eqz v4, :cond_4f

    if-nez v0, :cond_4f

    if-nez v3, :cond_4f

    move v1, v2

    :cond_4f
    if-nez v1, :cond_53

    if-eqz p1, :cond_5b

    .line 615
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    .line 616
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5b
    return-void
.end method

.method public forEachLocked(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;)V"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 325
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 326
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_1b

    .line 331
    :cond_18
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public getDexLogicalDisplayLocked()Lcom/android/server/display/LogicalDisplay;
    .registers 2

    .line 1263
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LogicalDisplay;

    return-object p0
.end method

.method public getDisplayGroupIdFromDisplayIdLocked(I)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(IZ)I

    move-result p0

    return p0
.end method

.method public getDisplayGroupIdFromDisplayIdLocked(IZ)I
    .registers 6

    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_8

    return p2

    .line 358
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_29

    .line 360
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayGroup;

    .line 361
    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayGroup;->containsLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 362
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_29
    return p2
.end method

.method public getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;
    .registers 2

    .line 370
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayGroup;

    return-object p0
.end method

.method public getDisplayIdsLocked(I)[I
    .registers 3

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayIdsLocked(IZ)[I

    move-result-object p0

    return-object p0
.end method

.method public getDisplayIdsLocked(IZ)[I
    .registers 10

    .line 298
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 299
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_b
    if-ge v3, v0, :cond_36

    .line 302
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    if-nez p2, :cond_1e

    .line 303
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_33

    .line 311
    :cond_1e
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 312
    invoke-virtual {v5, p1}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v5

    if-eqz v5, :cond_33

    add-int/lit8 v5, v4, 0x1

    .line 313
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v1, v4

    move v4, v5

    :cond_33
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_36
    if-eq v4, v0, :cond_3c

    .line 317
    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    :cond_3c
    return-object v1
.end method

.method public getDisplayInfoForStateLocked(III)Ljava/util/Set;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Set<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation

    .line 385
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 386
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v1

    .line 387
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_80

    .line 389
    invoke-virtual {v1, v3}, Lcom/android/server/display/layout/Layout;->getAt(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v4

    if-nez v4, :cond_19

    goto :goto_7d

    .line 398
    :cond_19
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    .line 399
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    const-string v7, "), is not available for the display state "

    const-string v8, "LogicalDisplayMapper"

    if-nez v6, :cond_44

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The display device ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 407
    :cond_44
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v4

    const/4 v6, 0x1

    .line 409
    invoke-virtual {p0, v4, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    if-nez v4, :cond_6a

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The logical display ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 415
    :cond_6a
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 416
    new-instance v5, Landroid/view/DisplayInfo;

    invoke-direct {v5, v4}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 417
    iget v4, v5, Landroid/view/DisplayInfo;->displayGroupId:I

    if-eq v4, p3, :cond_78

    goto :goto_7d

    .line 423
    :cond_78
    iput p2, v5, Landroid/view/DisplayInfo;->displayId:I

    .line 424
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_80
    return-object v0
.end method

.method public getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;
    .registers 3

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;
    .registers 3

    .line 248
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LogicalDisplay;

    if-eqz p0, :cond_14

    .line 249
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_13

    if-nez p2, :cond_13

    goto :goto_14

    :cond_13
    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .registers 3

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 273
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_28

    .line 275
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 276
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    if-ne v4, p1, :cond_25

    .line 277
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_24

    if-nez p2, :cond_24

    return-object v0

    :cond_24
    return-object v3

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_28
    return-object v0
.end method

.method public getHiddenDisplayLocked()Lcom/android/server/display/LogicalDisplay;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public final handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 6

    .line 625
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 630
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    .line 631
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->initializeDefaultDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 640
    :cond_d
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v3, v1

    if-eqz v3, :cond_19

    const/4 v0, 0x4

    .line 642
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    goto :goto_34

    :cond_19
    const/high16 v3, 0x800000

    and-int/2addr v1, v3

    if-eqz v1, :cond_22

    .line 645
    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    goto :goto_34

    :cond_22
    const/4 v1, 0x0

    .line 650
    invoke-static {v1}, Lcom/android/server/display/layout/Layout;->assignDisplayIdLocked(Z)I

    move-result v1

    .line 649
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    .line 652
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_34

    .line 653
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 658
    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 659
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    return-void
.end method

.method public final handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 8

    .line 663
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    const/4 v1, 0x0

    .line 664
    invoke-virtual {v0, v1}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v2

    if-nez v2, :cond_f

    return-void

    .line 668
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    .line 670
    invoke-virtual {v2}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 671
    invoke-virtual {v0, v1}, Lcom/android/server/display/layout/Layout;->removeDisplayLocked(I)V

    .line 674
    :goto_22
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 675
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 676
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    if-nez v2, :cond_39

    goto :goto_56

    .line 680
    :cond_39
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    .line 682
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_56

    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iget-object v5, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 684
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 685
    iget-object p1, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v0, p1, v4, v4}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZ)Lcom/android/server/display/layout/Layout$Display;

    .line 687
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    return-void

    :cond_56
    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_59
    return-void
.end method

.method public final initializeDefaultDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 3

    .line 1163
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object p0

    const/4 v0, 0x0

    .line 1164
    invoke-virtual {p0, v0}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v0

    if-eqz v0, :cond_f

    return-void

    .line 1168
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    .line 1169
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZ)Lcom/android/server/display/layout/Layout$Display;

    return-void
.end method

.method public isDualScreenPolicyRequested()Z
    .registers 1

    .line 1339
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDualScreenPolicyRequested:Z

    return p0
.end method

.method public final moveToNewDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 8

    .line 1232
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1233
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1234
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    .line 1235
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v2

    .line 1236
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v3

    .line 1238
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayDeviceRepository;->isDexDisplayDeviceEnabledLocked()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_21

    if-nez v2, :cond_21

    move v2, v5

    goto :goto_2f

    :cond_21
    if-nez v4, :cond_27

    if-ne v2, v5, :cond_27

    const/4 v2, 0x0

    goto :goto_2f

    .line 1243
    :cond_27
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v0, v4

    if-eqz v0, :cond_2f

    const/4 v2, 0x4

    .line 1247
    :cond_2f
    :goto_2f
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object p0

    if-eqz p0, :cond_77

    if-eq v3, p0, :cond_77

    if-eqz v3, :cond_3c

    .line 1250
    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 1252
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayGroup;->addDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1253
    invoke-virtual {p1, v2}, Lcom/android/server/display/LogicalDisplay;->updateDisplayGroupIdLocked(I)V

    .line 1254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "moveToDisplayGroupLocked: new display group "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for display "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", from previous group: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_68

    .line 1256
    invoke-virtual {v3}, Lcom/android/server/display/DisplayGroup;->getGroupId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_6b

    :cond_68
    const-string/jumbo p1, "null"

    :goto_6b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LogicalDisplayMapper"

    .line 1254
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    return-void
.end method

.method public needToIncludeDisabledDisplay(I)Z
    .registers 2

    .line 1297
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_PHASE_LAYOUT_TRANSITION_NONE:Z

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    if-ne p1, p0, :cond_8

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public onBootCompleted()V
    .registers 3

    .line 510
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, 0x1

    .line 511
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 512
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public onDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_19

    const/4 v0, 0x2

    if-eq p2, v0, :cond_11

    const/4 v0, 0x3

    if-eq p2, v0, :cond_a

    goto :goto_1c

    .line 232
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    goto :goto_1c

    :cond_11
    const/4 p1, 0x0

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    goto :goto_1c

    .line 217
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    :goto_1c
    return-void
.end method

.method public onEarlyInteractivityChange(Z)V
    .registers 4

    .line 516
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 517
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    if-eq v1, p1, :cond_d

    .line 518
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    const/4 p1, 0x0

    .line 519
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    .line 521
    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onTraversalRequested()V
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {p0}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onTraversalRequested()V

    return-void
.end method

.method public final resetLayoutLocked(III)V
    .registers 16
    .param p3    # I
        .annotation build Lcom/android/server/display/LogicalDisplay$DisplayPhase;
        .end annotation
    .end param

    .line 984
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object p1

    .line 985
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v0, p2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object p2

    .line 987
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_b2

    .line 989
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 990
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v4

    .line 991
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    if-nez v5, :cond_2a

    goto/16 :goto_ae

    .line 999
    :cond_2a
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    const/4 v6, 0x0

    if-eqz v5, :cond_38

    .line 1003
    invoke-virtual {p1, v5}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v7

    goto :goto_39

    :cond_38
    move-object v7, v6

    :goto_39
    if-eqz v5, :cond_3f

    .line 1005
    invoke-virtual {p2, v5}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v6

    :cond_3f
    const/4 v5, 0x1

    if-eqz v7, :cond_4b

    .line 1009
    invoke-virtual {v7}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_49

    goto :goto_4b

    :cond_49
    move v8, v1

    goto :goto_4c

    :cond_4b
    :goto_4b
    move v8, v5

    :goto_4c
    if-eqz v6, :cond_57

    .line 1010
    invoke-virtual {v6}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_55

    goto :goto_57

    :cond_55
    move v9, v1

    goto :goto_58

    :cond_57
    :goto_57
    move v9, v5

    :goto_58
    if-eqz v7, :cond_68

    if-eqz v6, :cond_68

    .line 1013
    invoke-virtual {v7}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v10

    invoke-virtual {v6}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v11

    if-eq v10, v11, :cond_68

    move v10, v5

    goto :goto_69

    :cond_68
    move v10, v1

    .line 1022
    :goto_69
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v11

    if-eqz v11, :cond_76

    if-ne v8, v9, :cond_76

    if-eqz v10, :cond_74

    goto :goto_76

    :cond_74
    move v8, v1

    goto :goto_77

    :cond_76
    :goto_76
    move v8, v5

    :goto_77
    if-eqz v8, :cond_ae

    .line 1028
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_PHASE_LAYOUT_TRANSITION_NONE:Z

    if-eqz v8, :cond_98

    if-eqz v10, :cond_98

    .line 1029
    invoke-virtual {v7}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v7

    if-eqz v7, :cond_8b

    .line 1030
    invoke-virtual {v6}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v6

    if-nez v6, :cond_98

    .line 1032
    :cond_8b
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1033
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    or-int/2addr v3, v5

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_ae

    .line 1036
    :cond_98
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    .line 1038
    invoke-virtual {p0, v3, p3}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V

    if-eqz p3, :cond_a1

    goto :goto_ae

    .line 1046
    :cond_a1
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1047
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    or-int/lit16 v3, v3, 0x100

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_ae
    :goto_ae
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    :cond_b2
    return-void
.end method

.method public final sendUpdatesForDisplaysLocked(I)V
    .registers 7

    .line 880
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_40

    .line 881
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-eq v2, p1, :cond_13

    goto :goto_3d

    .line 886
    :cond_13
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 887
    invoke-virtual {p0, v2, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    .line 894
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v4, v3, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onLogicalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    const/4 v4, 0x3

    if-ne p1, v4, :cond_3d

    .line 895
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 898
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 900
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    if-ne v3, v2, :cond_3d

    const/4 v2, 0x0

    .line 901
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_40
    return-void
.end method

.method public final sendUpdatesForGroupsLocked(I)V
    .registers 5

    .line 912
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_29

    .line 913
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-eq v1, p1, :cond_13

    goto :goto_26

    .line 918
    :cond_13
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 919
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v2, v1, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onDisplayGroupEventLocked(II)V

    const/4 v2, 0x3

    if-ne p1, v2, :cond_26

    .line 923
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    :cond_26
    :goto_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_29
    return-void
.end method

.method public setDeviceStateLocked(IZ)V
    .registers 9

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting Transition to state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", from state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interactive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogicalDisplayMapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    goto :goto_34

    :cond_30
    const/4 v1, 0x0

    .line 464
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(III)V

    .line 466
    :goto_34
    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 467
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBeWoken(IIZZ)Z

    move-result p1

    .line 469
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    iget v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBePutToSleep(IIZZZ)Z

    move-result p2

    .line 475
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result v0

    if-eqz v0, :cond_5c

    if-nez p1, :cond_5c

    if-nez p2, :cond_5c

    .line 476
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    return-void

    .line 485
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    if-nez p1, :cond_63

    if-eqz p2, :cond_7c

    :cond_63
    if-eqz p1, :cond_70

    .line 492
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    new-instance p2, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/LogicalDisplayMapper;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7c

    :cond_70
    if-eqz p2, :cond_7c

    .line 498
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    new-instance p2, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/LogicalDisplayMapper;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 505
    :cond_7c
    :goto_7c
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    const/4 p1, 0x1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V
    .registers 5
    .param p2    # I
        .annotation build Lcom/android/server/display/LogicalDisplay$DisplayPhase;
        .end annotation
    .end param

    .line 1133
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    .line 1134
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1136
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_11

    iget p0, v0, Landroid/view/DisplayInfo;->type:I

    if-eq p0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    const/4 p0, -0x1

    if-eq p2, p0, :cond_32

    if-eqz v1, :cond_32

    .line 1139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not creating a logical display for a secondary display because single display demo mode is enabled: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LogicalDisplayMapper"

    .line 1139
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p2, p0

    .line 1151
    :cond_32
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setPhase(I)V

    return-void
.end method

.method public shouldDeviceBePutToSleep(IIZZZ)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSleep:Landroid/util/SparseBooleanArray;

    .line 566
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_18

    if-nez p3, :cond_18

    if-eqz p4, :cond_18

    if-eqz p5, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public shouldDeviceBeWoken(IIZZ)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 541
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_16

    if-nez p3, :cond_16

    if-eqz p4, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public final toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;
    .registers 5

    .line 1179
    new-instance p0, Landroid/util/SparseBooleanArray;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v0, 0x0

    :goto_7
    if-eqz p1, :cond_15

    .line 1180
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 1181
    aget v1, p1, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return-object p0
.end method

.method public final transitionToPendingStateLocked()V
    .registers 4

    .line 591
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(III)V

    .line 592
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    const/4 v0, -0x1

    .line 593
    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 594
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 595
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    return-void
.end method

.method public final updateLogicalDisplaysLocked()V
    .registers 16

    .line 704
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ltz v0, :cond_16d

    .line 705
    iget-object v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 706
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/LogicalDisplay;

    .line 708
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 709
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v9, v10}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 711
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v9, v10}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V

    .line 712
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 714
    iget-object v11, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v8, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    and-int/lit8 v12, v11, 0x3

    and-int/lit16 v11, v11, 0x100

    if-eqz v11, :cond_43

    move v11, v1

    goto :goto_44

    :cond_43
    move v11, v5

    :goto_44
    if-ne v12, v1, :cond_47

    move v5, v1

    .line 720
    :cond_47
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v13

    const-string v14, "LogicalDisplayMapper"

    if-nez v13, :cond_85

    .line 721
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->delete(I)V

    .line 725
    invoke-virtual {p0, v8, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(IZ)I

    move-result v2

    .line 724
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 731
    invoke-virtual {v2, v9}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    :cond_61
    if-eqz v5, :cond_7e

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_169

    .line 741
    :cond_7e
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto/16 :goto_169

    .line 753
    :cond_85
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_13b

    .line 754
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v13

    if-nez v13, :cond_95

    if-ne v12, v7, :cond_95

    goto/16 :goto_13b

    :cond_95
    const-string v6, ": "

    if-nez v5, :cond_bc

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding new display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual {p0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 785
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_128

    .line 788
    :cond_bc
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v5, v5, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v12, v10, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v5, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_eb

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Swapping new display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {p0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 797
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_128

    .line 800
    :cond_eb
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v10}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_fc

    .line 802
    invoke-virtual {p0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 803
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_128

    :cond_fc
    if-eqz v11, :cond_104

    .line 807
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_128

    .line 811
    :cond_104
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getPendingFrameRateOverrideUids()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_114

    .line 812
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_128

    .line 820
    :cond_114
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v9, v2}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 821
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_128

    .line 822
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 827
    :cond_128
    :goto_128
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->CARLIFE_DISPLAY_GROUP:Z

    if-eqz v2, :cond_135

    .line 828
    invoke-virtual {p0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->canMoveToDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v2

    if-eqz v2, :cond_135

    .line 829
    invoke-virtual {p0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->moveToNewDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 833
    :cond_135
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_169

    .line 759
    :cond_13b
    :goto_13b
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    if-nez v5, :cond_143

    goto :goto_169

    .line 768
    :cond_143
    invoke-virtual {p0, v8, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(IZ)I

    move-result v2

    .line 767
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v2

    if-eqz v2, :cond_150

    .line 774
    invoke-virtual {v2, v9}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 777
    :cond_150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing (disabled) display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    :goto_169
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 840
    :cond_16d
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_174
    if-ltz v0, :cond_1c4

    .line 841
    iget-object v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 842
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/DisplayGroup;

    .line 843
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_18f

    move v10, v1

    goto :goto_190

    :cond_18f
    move v10, v5

    .line 844
    :goto_190
    invoke-virtual {v9}, Lcom/android/server/display/DisplayGroup;->getChangeCountLocked()I

    move-result v11

    .line 846
    invoke-virtual {v9}, Lcom/android/server/display/DisplayGroup;->isEmptyLocked()Z

    move-result v9

    if-eqz v9, :cond_1a7

    .line 847
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->delete(I)V

    if-eqz v10, :cond_1c1

    .line 849
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1c1

    :cond_1a7
    if-nez v10, :cond_1af

    .line 853
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1bc

    .line 854
    :cond_1af
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-eq v9, v11, :cond_1bc

    .line 855
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 857
    :cond_1bc
    :goto_1bc
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1c1
    :goto_1c1
    add-int/lit8 v0, v0, -0x1

    goto :goto_174

    .line 862
    :cond_1c4
    invoke-virtual {p0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 863
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 864
    invoke-virtual {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 865
    invoke-virtual {p0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 866
    invoke-virtual {p0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 867
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 868
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 869
    invoke-virtual {p0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 870
    invoke-virtual {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 872
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 873
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

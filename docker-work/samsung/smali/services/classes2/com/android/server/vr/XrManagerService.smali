.class public Lcom/android/server/vr/XrManagerService;
.super Lcom/android/server/SystemService;
.source "XrManagerService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/XrManagerService$GearVrHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final DELAY_LOW_PERSISTENCE_MODE:I = 0x96

.field public static final MESSAGE_AR_STATE_CHANGE:I = 0x65

.field public static final MESSAGE_HIDE_CUTOUT:I = 0xb

.field public static final MESSAGE_LOW_PERSISTENCE_ALLOWED_CHANGE:I = 0x3

.field public static final MESSAGE_LOW_PERSISTENCE_STATE_CHANGE:I = 0x2

.field public static final MESSAGE_VR_STATE_CHANGE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "XrManagerService"


# instance fields
.field public mARStateCallbacksController:Lcom/android/server/vr/ARStateCallbacksController;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mBootCompleted:Z

.field public mBootsToXr:Z

.field public mContext:Landroid/content/Context;

.field public mDeviceController:Lcom/android/server/vr/DeviceController;

.field public mDeviceId:Ljava/lang/String;

.field public mDocked:Z

.field public mGearVrStateCallbacksController:Lcom/android/server/vr/GearVrStateCallbacksController;

.field public final mHandler:Landroid/os/Handler;

.field public mHideCutout:Z

.field public mHideCutoutAllowed:Z

.field public mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

.field public mHmtManager:Lcom/android/server/vr/HmtManager;

.field public mIsArDeveloperMode:Z

.field public mIsAwake:Z

.field public final mIsConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsMount:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mKeyguardUnlocked:Z

.field public final mLock:Ljava/lang/Object;

.field public mLowPersistenceMode:Z

.field public mLowPersistenceModeAllowed:Z

.field public mOverlayRectrictionController:Lcom/android/server/vr/OverlayRestrictionController;

.field public mPersistentVrMode:Z

.field public mPersistentVrModeEnabled:Z

.field public mProximityNear:Z

.field public mReady:Z

.field public mRefreshRateModeController:Lcom/android/server/vr/RefreshRateModeController;

.field public mScreenOn:Z

.field public mShowMetaScreen:Z

.field public mUserUnlocked:Z

.field public mVrImmersiveMode:Z

.field public mVrImmersiveModeAllowed:Z

.field public mVrModeAllowed:Z

.field public mVrModes:Landroid/util/SparseBooleanArray;

.field public mVrPackageHelper:Lcom/android/server/vr/XrPackageHelper;

.field public mWindowManager:Landroid/view/IWindowManager;

.field public mXrActivityInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vr/XrActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

.field public mXrSettings:Lcom/android/server/vr/XrSettings;

.field public mXrStateCallbacksController:Lcom/android/server/vr/XrStateCallbacksController;


# direct methods
.method public static synthetic $r8$lambda$TcctBs5eg4u6LdpqULq1-2cdtCQ(Lcom/android/server/vr/XrManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/XrManagerService;->lambda$onBootPhase$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dMULj0D_tnYB_k09KZuH8GxzXIo(Lcom/android/server/vr/XrManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vr/XrManagerService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/android/server/vr/XrManagerService;)Landroid/view/IWindowManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mWindowManager:Landroid/view/IWindowManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmUserUnlocked(Lcom/android/server/vr/XrManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/vr/XrManagerService;->mUserUnlocked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleARStateChange(Lcom/android/server/vr/XrManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/XrManagerService;->handleARStateChange(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleVrStateChange(Lcom/android/server/vr/XrManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/XrManagerService;->handleVrStateChange(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateReadyLocked(Lcom/android/server/vr/XrManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateReadyLocked()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 82
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/vr/XrManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mLowPersistenceModeAllowed:Z

    .line 113
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/vr/XrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    .line 116
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mVrModeAllowed:Z

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrMode:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrModeEnabled:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mIsAwake:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mKeyguardUnlocked:Z

    .line 129
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/vr/XrManagerService;->mIsConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/vr/XrManagerService;->mIsMount:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mVrImmersiveModeAllowed:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mHideCutoutAllowed:Z

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/XrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    .line 154
    iput-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mIsArDeveloperMode:Z

    .line 201
    iput-object p1, p0, Lcom/android/server/vr/XrManagerService;->mContext:Landroid/content/Context;

    .line 202
    new-instance v0, Lcom/android/server/vr/XrManagerService$GearVrHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/vr/XrManagerService$GearVrHandler;-><init>(Lcom/android/server/vr/XrManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/vr/XrManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onBootPhase$0()V
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateReadyLocked()V

    .line 307
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method private synthetic lambda$onBootPhase$1(Z)V
    .registers 5

    const-string v0, "XrManagerService"

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVrServicePackageChanged available="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 316
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateReadyLocked()V

    .line 317
    monitor-exit p1

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw p0
.end method


# virtual methods
.method public changeRefreshRateByVrMode(Z)V
    .registers 2

    .line 607
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mRefreshRateModeController:Lcom/android/server/vr/RefreshRateModeController;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/RefreshRateModeController;->changeRefreshRate(Z)V

    return-void
.end method

.method public changeXrActivityInfo(ILcom/android/server/vr/XrActivityInfo;)Z
    .registers 5

    .line 537
    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->isVrMode(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_c

    .line 539
    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 541
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateVrModeLocked()V

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->isVrMode(I)Z

    move-result p1

    if-nez p1, :cond_1e

    if-nez v0, :cond_1e

    .line 543
    iget-boolean p0, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrMode:Z

    if-eqz p0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    .line 544
    :goto_1f
    sget-boolean p1, Lcom/android/server/vr/XrManagerService;->DEBUG:Z

    if-eqz p1, :cond_3b

    if-eqz p0, :cond_3b

    .line 545
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeXrActivityInfo xrActivityInfo="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XrManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string p1, "\n##### XrManagerService #####"

    .line 788
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "********* Dump of XrManagerService *********"

    .line 789
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "VR API Version:"

    .line 790
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    XRAPI=1"

    .line 791
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "State:"

    .line 793
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mBootsToXr="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mBootsToXr:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mBootCompleted="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mBootCompleted:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 797
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mUserUnlocked="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mUserUnlocked:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsAwake="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mIsAwake:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mKeyguardUnlocked="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mKeyguardUnlocked:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mScreenOn="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mScreenOn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 802
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mReady="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mReady:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mDocked="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mDocked:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mDeviceId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/vr/XrManagerService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mHmtDevice="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/vr/XrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 807
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mLowPersistenceModeAllowed="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mLowPersistenceModeAllowed:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " mLowPersistenceMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mLowPersistenceMode:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 809
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mHideCutoutAllowed="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mHideCutoutAllowed:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " mHideCutout="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mHideCutout:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mVrImmersiveModeAllowed="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mVrImmersiveModeAllowed:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " mVrImmersiveMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mVrImmersiveMode:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mShowMetaScreen="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mShowMetaScreen:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "    mVrModes:"

    .line 813
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    .line 814
    :goto_184
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const-string v1, "        displayId="

    if-ge p3, v0, :cond_1b7

    .line 815
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vrMode="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_184

    .line 819
    :cond_1b7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mVrModeAllowed="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mVrModeAllowed:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p3, "    mXrActivityInfos:"

    .line 821
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    :goto_1d5
    iget-object p3, p0, Lcom/android/server/vr/XrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_208

    .line 823
    iget-object p3, p0, Lcom/android/server/vr/XrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    .line 824
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/XrActivityInfo;

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " xrActivityInfo="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1d5

    .line 827
    :cond_208
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 828
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mPersistentVrMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrMode:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mPersistentVrModeEnabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrModeEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    invoke-virtual {p1, p2}, Lcom/android/server/vr/DeviceController;->dump(Ljava/io/PrintWriter;)V

    .line 832
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 833
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p1, p2}, Lcom/android/server/vr/HmtManager;->dump(Ljava/io/PrintWriter;)V

    .line 834
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 835
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mRefreshRateModeController:Lcom/android/server/vr/RefreshRateModeController;

    invoke-virtual {p1, p2}, Lcom/android/server/vr/RefreshRateModeController;->dump(Ljava/io/PrintWriter;)V

    .line 836
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 837
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mVrPackageHelper:Lcom/android/server/vr/XrPackageHelper;

    invoke-virtual {p1, p2}, Lcom/android/server/vr/XrPackageHelper;->dump(Ljava/io/PrintWriter;)V

    .line 838
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 839
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

    invoke-virtual {p1, p2}, Lcom/android/server/vr/XrDisplayManager;->dump(Ljava/io/PrintWriter;)V

    .line 840
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 841
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mXrSettings:Lcom/android/server/vr/XrSettings;

    invoke-virtual {p1, p2}, Lcom/android/server/vr/XrSettings;->dump(Ljava/io/PrintWriter;)V

    .line 842
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 843
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mXrStateCallbacksController:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-virtual {p1, p2}, Lcom/android/server/vr/XrStateCallbacksController;->dump(Ljava/io/PrintWriter;)V

    .line 844
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 845
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mGearVrStateCallbacksController:Lcom/android/server/vr/GearVrStateCallbacksController;

    invoke-virtual {p0, p2}, Lcom/android/server/vr/GearVrStateCallbacksController;->dump(Ljava/io/PrintWriter;)V

    .line 846
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getHmtDevice()Lcom/samsung/android/vr/HmtDevice;
    .registers 1

    .line 525
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    return-object p0
.end method

.method public getMetaScreenDisplayId()I
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

    invoke-virtual {p0}, Lcom/android/server/vr/XrDisplayManager;->getMetaScreenDisplayId()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 619
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getPreferredXrDisplayId()I
    .registers 2

    .line 611
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    .line 612
    :try_start_4
    monitor-exit p0

    return v0

    :catchall_6
    move-exception v0

    .line 613
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public final handleARStateChange(II)V
    .registers 5

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleARStateChange state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mARStateCallbacksController:Lcom/android/server/vr/ARStateCallbacksController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/ARStateCallbacksController;->broadcastRemoteCallbacks(II)V

    return-void
.end method

.method public final handleVrStateChange(II)V
    .registers 5

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVrStateChange state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mGearVrStateCallbacksController:Lcom/android/server/vr/GearVrStateCallbacksController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/GearVrStateCallbacksController;->broadcastRemoteCallbacks(II)V

    return-void
.end method

.method public isARServiceInstalled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isArDeveloperMode()Z
    .registers 2

    .line 775
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/vr/XrManagerService;->mIsArDeveloperMode:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 777
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isConnect()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isDock()Z
    .registers 2

    .line 661
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 663
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isHmtDevice(Ljava/lang/String;)Z
    .registers 2

    .line 753
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/HmtManager;->isDeviceMatched(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isLowPersistenceMode()Z
    .registers 2

    .line 757
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/vr/XrManagerService;->mLowPersistenceMode:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 759
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isLowPersistenceModeAllowed()Z
    .registers 2

    .line 763
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/vr/XrManagerService;->mLowPersistenceModeAllowed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 765
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isMount()Z
    .registers 3

    .line 667
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isDock()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean p0, p0, Lcom/android/server/vr/XrManagerService;->mProximityNear:Z

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 669
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public isMounted()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isPersistentVrMode()Z
    .registers 2

    .line 747
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 748
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrMode:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 749
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isReady()Z
    .registers 5

    .line 651
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mVrPackageHelper:Lcom/android/server/vr/XrPackageHelper;

    invoke-virtual {v1}, Lcom/android/server/vr/XrPackageHelper;->isVrServicePackageAvailable()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mContext:Landroid/content/Context;

    .line 653
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mUserUnlocked:Z

    if-eqz v1, :cond_2d

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mXrSettings:Lcom/android/server/vr/XrSettings;

    .line 656
    invoke-virtual {p0}, Lcom/android/server/vr/XrSettings;->isDeviceProvisoned()Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    monitor-exit v0

    return p0

    :catchall_30
    move-exception p0

    .line 657
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public isVrMode()Z
    .registers 3

    .line 733
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->getPreferredXrDisplayId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/vr/XrManagerService;->isVrMode(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 735
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public isVrMode(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 741
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isVrServiceInstalled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public notifyActivityResumeChanged(ILcom/android/server/vr/XrActivityInfo;)Z
    .registers 5

    .line 529
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mXrStateCallbacksController:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/vr/XrStateCallbacksController;->notifyActivityResumeChanged(ILcom/android/server/vr/XrActivityInfo;)V

    .line 531
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/XrManagerService;->changeXrActivityInfo(ILcom/android/server/vr/XrActivityInfo;)Z

    move-result p0

    .line 532
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 533
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V
    .registers 7

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyHmtEventChanged event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {p1}, Lcom/samsung/android/vr/HmtEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_50

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_45

    const/16 v3, 0xb

    if-eq v0, v3, :cond_42

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3f

    .line 519
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown device state="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 515
    :cond_3f
    iput-boolean v4, p0, Lcom/android/server/vr/XrManagerService;->mProximityNear:Z

    goto :goto_61

    .line 511
    :cond_42
    iput-boolean v2, p0, Lcom/android/server/vr/XrManagerService;->mProximityNear:Z

    goto :goto_61

    :cond_45
    const/4 p1, 0x0

    .line 505
    iput-object p1, p0, Lcom/android/server/vr/XrManagerService;->mDeviceId:Ljava/lang/String;

    .line 506
    iput-object p1, p0, Lcom/android/server/vr/XrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    .line 507
    iput-boolean v4, p0, Lcom/android/server/vr/XrManagerService;->mProximityNear:Z

    .line 508
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateDockStateLocked()V

    goto :goto_61

    .line 500
    :cond_50
    invoke-virtual {p1}, Lcom/samsung/android/vr/HmtEvent;->getIds()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vr/XrManagerService;->mDeviceId:Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/HmtManager;->findHmtDevice(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vr/XrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    .line 502
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateDockStateLocked()V

    :goto_61
    return-void
.end method

.method public onAwakeStateChanged(Z)V
    .registers 2

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->setAwakeState(Z)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 6

    const-string v0, "XrManagerService"

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- XrManagerService onBootPhase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_dc

    .line 231
    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->onInit()V

    const-string/jumbo p1, "window"

    .line 234
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vr/XrManagerService;->mWindowManager:Landroid/view/IWindowManager;

    .line 235
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/vr/XrManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 236
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 238
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

    new-instance v2, Lcom/android/server/vr/XrManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/vr/XrManagerService$1;-><init>(Lcom/android/server/vr/XrManagerService;)V

    invoke-virtual {p1, v2}, Lcom/android/server/vr/XrDisplayManager;->setOnXrDisplayListener(Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;)V

    .line 262
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

    invoke-virtual {p1}, Lcom/android/server/vr/XrDisplayManager;->register()V

    .line 264
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 265
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "sec.app.policy.UPDATE.HmtThridPartyDevicePolicy"

    .line 266
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.scpm.policy.UPDATE.HmtThirdPartyDevicePolicy"

    .line 267
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 268
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/android/server/vr/XrManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/vr/XrManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/vr/XrManagerService$2;-><init>(Lcom/android/server/vr/XrManagerService;)V

    invoke-virtual {v2, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mXrSettings:Lcom/android/server/vr/XrSettings;

    new-instance v2, Lcom/android/server/vr/XrManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/vr/XrManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vr/XrManagerService;)V

    invoke-virtual {p1, v2}, Lcom/android/server/vr/XrSettings;->setXrSettingsListener(Lcom/android/server/vr/XrSettings$OnXrSettingsListener;)V

    .line 309
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mXrSettings:Lcom/android/server/vr/XrSettings;

    invoke-virtual {p1}, Lcom/android/server/vr/XrSettings;->updateSettingsLocked()V

    .line 311
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mRefreshRateModeController:Lcom/android/server/vr/RefreshRateModeController;

    invoke-virtual {p1}, Lcom/android/server/vr/RefreshRateModeController;->onSystemServiceReady()V

    .line 313
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mVrPackageHelper:Lcom/android/server/vr/XrPackageHelper;

    new-instance v2, Lcom/android/server/vr/XrManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/vr/XrManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vr/XrManagerService;)V

    invoke-virtual {p1, v2}, Lcom/android/server/vr/XrPackageHelper;->setOnVrServicePackageListener(Lcom/android/server/vr/XrPackageHelper$OnVrServicePackageListener;)V

    .line 319
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mVrPackageHelper:Lcom/android/server/vr/XrPackageHelper;

    invoke-virtual {p1}, Lcom/android/server/vr/XrPackageHelper;->register()V

    .line 322
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p1}, Lcom/android/server/vr/HmtManager;->loadSupportedHmtDevices()V

    const-string/jumbo p1, "ro.boot.xr"

    const/4 v2, 0x0

    .line 325
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/vr/XrManagerService;->mBootsToXr:Z

    if-eqz p1, :cond_d7

    const-string p1, "XrManagerService"

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBootsToXr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/XrManagerService;->mBootsToXr:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/vr/XrManagerService;->mDeviceId:Ljava/lang/String;

    .line 329
    iget-object v2, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {v2, p1}, Lcom/android/server/vr/HmtManager;->findHmtDevice(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vr/XrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    const-string/jumbo p1, "persist.demo.boot.persistent_vr_mode_enabled"

    .line 330
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrModeEnabled:Z

    .line 331
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updatePersistentVrModeLocked()V

    .line 333
    :cond_d7
    monitor-exit v1

    goto :goto_ed

    :catchall_d9
    move-exception p0

    monitor-exit v1
    :try_end_db
    .catchall {:try_start_23 .. :try_end_db} :catchall_d9

    throw p0

    :cond_dc
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_ed

    .line 335
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 336
    :try_start_e3
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mBootCompleted:Z

    .line 337
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateReadyLocked()V

    .line 338
    monitor-exit p1

    goto :goto_ed

    :catchall_ea
    move-exception p0

    monitor-exit p1
    :try_end_ec
    .catchall {:try_start_e3 .. :try_end_ec} :catchall_ea

    throw p0

    :cond_ed
    :goto_ed
    return-void
.end method

.method public onInit()V
    .registers 3

    .line 206
    new-instance v0, Lcom/android/server/vr/XrPackageHelper;

    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/vr/XrPackageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/vr/XrManagerService;->mVrPackageHelper:Lcom/android/server/vr/XrPackageHelper;

    .line 207
    new-instance v0, Lcom/android/server/vr/HmtManager;

    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/vr/HmtManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    .line 208
    new-instance v0, Lcom/android/server/vr/DeviceController;

    invoke-direct {v0, p0}, Lcom/android/server/vr/DeviceController;-><init>(Lcom/android/server/vr/XrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/XrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    .line 209
    new-instance v0, Lcom/android/server/vr/XrSettings;

    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/vr/XrSettings;-><init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/XrManagerService;->mXrSettings:Lcom/android/server/vr/XrSettings;

    .line 210
    new-instance v0, Lcom/android/server/vr/RefreshRateModeController;

    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/vr/RefreshRateModeController;-><init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/XrManagerService;->mRefreshRateModeController:Lcom/android/server/vr/RefreshRateModeController;

    .line 211
    new-instance v0, Lcom/android/server/vr/OverlayRestrictionController;

    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/vr/OverlayRestrictionController;-><init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/XrManagerService;->mOverlayRectrictionController:Lcom/android/server/vr/OverlayRestrictionController;

    .line 212
    new-instance v0, Lcom/android/server/vr/XrStateCallbacksController;

    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/vr/XrStateCallbacksController;-><init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/XrManagerService;->mXrStateCallbacksController:Lcom/android/server/vr/XrStateCallbacksController;

    .line 213
    new-instance v0, Lcom/android/server/vr/GearVrStateCallbacksController;

    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/vr/GearVrStateCallbacksController;-><init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/XrManagerService;->mGearVrStateCallbacksController:Lcom/android/server/vr/GearVrStateCallbacksController;

    .line 214
    new-instance v0, Lcom/android/server/vr/ARStateCallbacksController;

    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/vr/ARStateCallbacksController;-><init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/XrManagerService;->mARStateCallbacksController:Lcom/android/server/vr/ARStateCallbacksController;

    .line 215
    new-instance v0, Lcom/android/server/vr/XrDisplayManager;

    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/vr/XrDisplayManager;-><init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/XrManagerService;->mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 2

    xor-int/lit8 p1, p1, 0x1

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->setKeyguardUnlocked(Z)V

    return-void
.end method

.method public onStart()V
    .registers 3

    const-string v0, "XrManagerService"

    const-string v1, "---- XrManagerService onStart ----"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-class v0, Lcom/android/server/vr/XrManagerInternal;

    new-instance v1, Lcom/android/server/vr/XrManagerInternalImpl;

    invoke-direct {v1, p0}, Lcom/android/server/vr/XrManagerInternalImpl;-><init>(Lcom/android/server/vr/XrManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 222
    const-class v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    new-instance v1, Lcom/android/server/vr/GearVrManagerInternalImpl;

    invoke-direct {v1, p0}, Lcom/android/server/vr/GearVrManagerInternalImpl;-><init>(Lcom/android/server/vr/XrManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 223
    new-instance v0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;

    invoke-direct {v0, p0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;-><init>(Lcom/android/server/vr/XrManagerService;)V

    invoke-virtual {v0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string/jumbo v1, "vr"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public removeVrMode(I)V
    .registers 4

    .line 589
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 591
    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 592
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateVrModeLocked()V

    .line 593
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public sendVrStateChangeMessage(II)V
    .registers 4

    .line 493
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setArDeveloperMode(Z)V
    .registers 3

    .line 769
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/vr/XrManagerService;->mIsArDeveloperMode:Z

    .line 771
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setAwakeState(Z)V
    .registers 4

    .line 623
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mIsAwake:Z

    if-eq v1, p1, :cond_c

    .line 625
    iput-boolean p1, p0, Lcom/android/server/vr/XrManagerService;->mIsAwake:Z

    .line 626
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateLowPersistenceModeLocked()V

    .line 628
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setConnect(Z)V
    .registers 4

    .line 723
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mIsConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_a

    const/16 p1, 0x1001

    goto :goto_c

    :cond_a
    const/16 p1, 0x1002

    .line 725
    :goto_c
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setHideCutOutAllowed(Z)V
    .registers 4

    .line 446
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mHideCutoutAllowed:Z

    if-eq v1, p1, :cond_c

    .line 448
    iput-boolean p1, p0, Lcom/android/server/vr/XrManagerService;->mHideCutoutAllowed:Z

    .line 449
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateHideCutoutLocked()V

    .line 451
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setKeyguardUnlocked(Z)V
    .registers 4

    .line 632
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mKeyguardUnlocked:Z

    if-eq v1, p1, :cond_c

    .line 634
    iput-boolean p1, p0, Lcom/android/server/vr/XrManagerService;->mKeyguardUnlocked:Z

    .line 635
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateLowPersistenceModeLocked()V

    .line 637
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setMount(Z)V
    .registers 2

    .line 729
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mIsMount:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setPersistentVrMode(Z)V
    .registers 4

    .line 597
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrModeEnabled:Z

    if-eq v1, p1, :cond_c

    .line 600
    iput-boolean p1, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrModeEnabled:Z

    .line 601
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updatePersistentVrModeLocked()V

    .line 603
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setScreenState(Z)V
    .registers 4

    .line 641
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mScreenOn:Z

    if-eq v1, p1, :cond_c

    .line 643
    iput-boolean p1, p0, Lcom/android/server/vr/XrManagerService;->mScreenOn:Z

    .line 644
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateLowPersistenceModeLocked()V

    .line 646
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setVrImmersiveModeAllowed(Z)V
    .registers 4

    .line 465
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mVrImmersiveModeAllowed:Z

    if-eq v1, p1, :cond_c

    .line 467
    iput-boolean p1, p0, Lcom/android/server/vr/XrManagerService;->mVrImmersiveModeAllowed:Z

    .line 468
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateVrImmersiveModeLocked()V

    .line 470
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setVrMode(IZ)V
    .registers 6

    .line 574
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vr/XrActivityInfo;

    if-nez v1, :cond_18

    .line 577
    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/vr/XrActivityInfo;

    invoke-direct {v2}, Lcom/android/server/vr/XrActivityInfo;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    :cond_18
    if-eqz p2, :cond_21

    .line 580
    iget p1, v1, Lcom/android/server/vr/XrActivityInfo;->xrFlags:I

    or-int/lit8 p1, p1, 0x3

    iput p1, v1, Lcom/android/server/vr/XrActivityInfo;->xrFlags:I

    goto :goto_27

    .line 582
    :cond_21
    iget p1, v1, Lcom/android/server/vr/XrActivityInfo;->xrFlags:I

    and-int/lit8 p1, p1, -0x4

    iput p1, v1, Lcom/android/server/vr/XrActivityInfo;->xrFlags:I

    .line 584
    :goto_27
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateVrModeLocked()V

    .line 585
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public setVrMode(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 570
    invoke-virtual {p0, v0, p1}, Lcom/android/server/vr/XrManagerService;->setVrMode(IZ)V

    return-void
.end method

.method public setVrModeAllowed(Z)V
    .registers 4

    .line 561
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mVrModeAllowed:Z

    if-eq v1, p1, :cond_c

    .line 563
    iput-boolean p1, p0, Lcom/android/server/vr/XrManagerService;->mVrModeAllowed:Z

    .line 564
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateVrModeLocked()V

    .line 566
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final updateDockStateLocked()V
    .registers 6

    .line 368
    iget-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isDock()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 369
    :goto_f
    iget-boolean v3, p0, Lcom/android/server/vr/XrManagerService;->mDocked:Z

    if-eq v3, v0, :cond_74

    .line 370
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mDocked:Z

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDockStateLocked docked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mHmtDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vr/XrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mDeviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vr/XrManagerService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XrManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_44

    move v3, v2

    goto :goto_45

    :cond_44
    const/4 v3, 0x2

    .line 374
    :goto_45
    iget-object v4, p0, Lcom/android/server/vr/XrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    if-eqz v4, :cond_4d

    invoke-virtual {v4}, Lcom/samsung/android/vr/HmtDevice;->getDeviceId()I

    move-result v1

    .line 375
    :cond_4d
    iget-object v4, p0, Lcom/android/server/vr/XrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 377
    new-instance v1, Landroid/content/Intent;

    if-eqz v0, :cond_5d

    const-string v0, "com.samsung.intent.action.HMT_CONNECTED"

    goto :goto_5f

    :cond_5d
    const-string v0, "com.samsung.intent.action.HMT_DISCONNECTED"

    :goto_5f
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10000020

    .line 378
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.hmt.vrsvc"

    .line 379
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.permission.HMT_STATE_UPDATE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_74
    return-void
.end method

.method public updateHideCutoutLocked()V
    .registers 5

    .line 455
    iget-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mHideCutoutAllowed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isPersistentVrMode()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, v1}, Lcom/android/server/vr/XrManagerService;->isVrMode(I)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    move v0, v1

    .line 456
    :goto_14
    iget-boolean v2, p0, Lcom/android/server/vr/XrManagerService;->mHideCutout:Z

    if-eq v2, v0, :cond_43

    .line 457
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mHideCutout:Z

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHideCutoutLocked hideCutout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XrManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 460
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean p0, p0, Lcom/android/server/vr/XrManagerService;->mHideCutout:Z

    invoke-virtual {v0, v2, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_43
    return-void
.end method

.method public updateLowPersistenceModeAllowedLocked()V
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mRefreshRateModeController:Lcom/android/server/vr/RefreshRateModeController;

    invoke-virtual {v0}, Lcom/android/server/vr/RefreshRateModeController;->isNormalRefreshRate()Z

    move-result v0

    .line 400
    iget-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mLowPersistenceModeAllowed:Z

    if-eq v1, v0, :cond_3c

    .line 401
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mLowPersistenceModeAllowed:Z

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLowPersistenceModeAllowed isLowPersistenceModeAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XrManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_28

    const/high16 v0, 0x40000

    goto :goto_2a

    :cond_28
    const/high16 v0, 0x80000

    .line 404
    :goto_2a
    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3c
    return-void
.end method

.method public updateLowPersistenceModeLocked()V
    .registers 7

    .line 385
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isPersistentVrMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/XrActivityInfo;

    invoke-virtual {v0}, Lcom/android/server/vr/XrActivityInfo;->isLowPersistenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    move v0, v2

    goto :goto_22

    :cond_21
    :goto_21
    move v0, v1

    .line 386
    :goto_22
    iget-boolean v3, p0, Lcom/android/server/vr/XrManagerService;->mIsAwake:Z

    if-eqz v3, :cond_2c

    iget-boolean v3, p0, Lcom/android/server/vr/XrManagerService;->mScreenOn:Z

    if-eqz v3, :cond_2c

    move v3, v1

    goto :goto_2d

    :cond_2c
    move v3, v2

    :goto_2d
    if-eqz v3, :cond_32

    if-eqz v0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    .line 389
    :goto_33
    iget-boolean v4, p0, Lcom/android/server/vr/XrManagerService;->mLowPersistenceMode:Z

    if-eq v4, v1, :cond_78

    .line 390
    iput-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mLowPersistenceMode:Z

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLowPersistenceMode isLowPersistenceMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isInteractive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isRunning="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "XrManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_65

    const/high16 v0, 0x10000

    goto :goto_67

    :cond_65
    const/high16 v0, 0x20000

    .line 393
    :goto_67
    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_78
    return-void
.end method

.method public updateMetaScreenLocked()V
    .registers 5

    .line 483
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->getPreferredXrDisplayId()I

    move-result v0

    .line 484
    iget-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mReady:Z

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isPersistentVrMode()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->getMetaScreenDisplayId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_25

    iget-object v1, p0, Lcom/android/server/vr/XrManagerService;->mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

    invoke-virtual {v1}, Lcom/android/server/vr/XrDisplayManager;->isMetaScreenDisplayOn()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0, v0}, Lcom/android/server/vr/XrManagerService;->isVrMode(I)Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 485
    :goto_26
    iget-boolean v2, p0, Lcom/android/server/vr/XrManagerService;->mShowMetaScreen:Z

    if-eq v2, v1, :cond_55

    .line 486
    iput-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mShowMetaScreen:Z

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMetaScreenLocked showMetaScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " preferredXrDisplayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XrManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_50

    const/high16 v1, 0x1000000

    goto :goto_52

    :cond_50
    const/high16 v1, 0x2000000

    .line 488
    :goto_52
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vr/XrManagerService;->sendVrStateChangeMessage(II)V

    :cond_55
    return-void
.end method

.method public updatePersistentVrModeLocked()V
    .registers 5

    .line 431
    iget-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 432
    :goto_c
    iget-boolean v2, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrMode:Z

    if-eq v2, v0, :cond_40

    .line 433
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrMode:Z

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePersistentVrModeLocked mPersistentVrMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XrManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mPersistentVrMode:Z

    if-eqz v0, :cond_32

    const/high16 v0, 0x100000

    goto :goto_34

    :cond_32
    const/high16 v0, 0x200000

    .line 437
    :goto_34
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/XrManagerService;->sendVrStateChangeMessage(II)V

    .line 439
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateLowPersistenceModeLocked()V

    .line 440
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateHideCutoutLocked()V

    .line 441
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateMetaScreenLocked()V

    :cond_40
    return-void
.end method

.method public final updateReadyLocked()V
    .registers 3

    .line 353
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isReady()Z

    move-result v0

    .line 355
    iget-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mReady:Z

    if-eq v1, v0, :cond_35

    .line 356
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mReady:Z

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateReadyLocked mReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/XrManagerService;->mReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mReady:Z

    if-eqz v0, :cond_2c

    .line 359
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {v0}, Lcom/android/server/vr/HmtManager;->loadSupportedHmtDevices()V

    .line 361
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateDockStateLocked()V

    .line 362
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateVrModeLocked()V

    .line 363
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updatePersistentVrModeLocked()V

    :cond_35
    return-void
.end method

.method public updateVrImmersiveModeLocked()V
    .registers 5

    .line 474
    iget-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mVrImmersiveModeAllowed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v1}, Lcom/android/server/vr/XrManagerService;->isVrMode(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    .line 475
    :goto_e
    iget-boolean v2, p0, Lcom/android/server/vr/XrManagerService;->mVrImmersiveMode:Z

    if-eq v2, v0, :cond_35

    .line 476
    iput-boolean v0, p0, Lcom/android/server/vr/XrManagerService;->mVrImmersiveMode:Z

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVrImmersiveModeLocked vrImmersiveMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XrManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_30

    const/high16 v0, 0x400000

    goto :goto_32

    :cond_30
    const/high16 v0, 0x800000

    .line 478
    :goto_32
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/XrManagerService;->sendVrStateChangeMessage(II)V

    :cond_35
    return-void
.end method

.method public updateVrModeLocked()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 410
    :goto_2
    iget-object v2, p0, Lcom/android/server/vr/XrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7a

    .line 411
    iget-object v2, p0, Lcom/android/server/vr/XrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 412
    iget-object v3, p0, Lcom/android/server/vr/XrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vr/XrActivityInfo;

    if-eqz v3, :cond_72

    .line 414
    iget-boolean v4, p0, Lcom/android/server/vr/XrManagerService;->mVrModeAllowed:Z

    if-eqz v4, :cond_26

    invoke-virtual {v3}, Lcom/android/server/vr/XrActivityInfo;->isXrActivity()Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    goto :goto_27

    :cond_26
    move v3, v0

    .line 415
    :goto_27
    iget-object v4, p0, Lcom/android/server/vr/XrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_37

    iget-object v4, p0, Lcom/android/server/vr/XrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eq v4, v3, :cond_77

    .line 416
    :cond_37
    iget-object v4, p0, Lcom/android/server/vr/XrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVrModeLocked vrMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "XrManagerService"

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_60

    const/16 v2, 0x40

    goto :goto_62

    :cond_60
    const/16 v2, 0x80

    .line 418
    :goto_62
    invoke-virtual {p0, v2, v0}, Lcom/android/server/vr/XrManagerService;->sendVrStateChangeMessage(II)V

    .line 419
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateLowPersistenceModeLocked()V

    .line 420
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateVrImmersiveModeLocked()V

    .line 421
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateHideCutoutLocked()V

    .line 422
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateMetaScreenLocked()V

    goto :goto_77

    .line 425
    :cond_72
    iget-object v3, p0, Lcom/android/server/vr/XrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_77
    :goto_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7a
    return-void
.end method

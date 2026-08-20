.class public final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalDisplayDevice"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public mActiveColorMode:I

.field public mActiveDisplayModeAtStartId:I

.field public mActiveModeId:I

.field public mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

.field public mAllmRequested:Z

.field public mAllmSupported:Z

.field public final mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

.field public mBrightnessState:F

.field public mDefaultModeGroup:I

.field public mDefaultModeId:I

.field public final mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

.field public mDisplayModeSpecsInvalid:Z

.field public mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public mGameContentTypeRequested:Z

.field public mGameContentTypeSupported:Z

.field public mHavePendingChanges:Z

.field public mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mIsFirstDisplay:Z

.field public mLastBrightnessRequestedTime:J

.field public final mPhysicalDisplayId:J

.field public mRequestedState:I

.field public mSdrBrightnessState:F

.field public mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

.field public mSidekickActive:Z

.field public final mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

.field public mState:I

.field public mStateLimit:I

.field public mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

.field public final mSupportedColorModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSupportedModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemPreferredModeId:I

.field public mUserPreferredMode:Landroid/view/Display$Mode;

.field public mUserPreferredModeId:I

.field public final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public static synthetic $r8$lambda$EOXExeq_wbXgB8nuib8iUDMTVbw(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setDesiredDisplayModeSpecsAsync(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JyCOrIHqSTXLh0QKmyuzTcizTVQ(Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;IIILandroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->lambda$notifyStateChangeFinish$1(Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;IIILandroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S3L01-zgGaZXxx_-Nx-TCnzMXy0(Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;IIILandroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->lambda$notifyStateChangeStart$0(Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;IIILandroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aoZ18IxnXBHvS5u359QFOJoVm7o(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/os/IBinder;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestColorModeAsync(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBacklightAdapter(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestedState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRequestedState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSidekickInternal(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastBrightnessRequestedTime(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastBrightnessRequestedTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRequestedState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRequestedState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSdrBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyStateChangeFinish(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Ljava/util/ArrayList;III)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->notifyStateChangeFinish(Ljava/util/ArrayList;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyStateChangeStart(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Ljava/util/ArrayList;III)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->notifyStateChangeStart(Ljava/util/ArrayList;III)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;Z)V
    .registers 11

    .line 309
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "local:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 310
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;)V

    .line 262
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    const/4 v0, 0x0

    .line 272
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 274
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    .line 275
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    const/4 v1, -0x1

    .line 276
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 277
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    .line 279
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 282
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveDisplayModeAtStartId:I

    .line 284
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    new-array v1, v0, [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 299
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 302
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateLimit:I

    .line 303
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRequestedState:I

    const-wide/16 v0, -0x1

    .line 304
    iput-wide v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastBrightnessRequestedTime:J

    .line 312
    iput-wide p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 313
    iput-boolean p8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    .line 314
    invoke-virtual {p0, p5, p6, p7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    .line 315
    const-class p3, Landroid/hardware/sidekick/SidekickInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/sidekick/SidekickInternal;

    iput-object p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    .line 316
    new-instance p3, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object p1

    invoke-direct {p3, p2, p8, p1}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;-><init>(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;)V

    iput-object p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    .line 318
    iget p1, p6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveDisplayModeAtStartId:I

    return-void
.end method

.method public static synthetic lambda$notifyStateChangeFinish$1(Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;IIILandroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 5

    .line 1556
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->resetStartTime()V

    .line 1557
    invoke-interface {p4, p1, p2, p3}, Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;->onFinish(III)V

    .line 1558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "notifyStateChangeFinish: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalDisplayAdapter"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$notifyStateChangeStart$0(Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;IIILandroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V
    .registers 5

    .line 1542
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->resetStartTime()V

    .line 1543
    invoke-interface {p4, p1, p2, p3}, Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;->onStart(III)V

    .line 1544
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "notifyStateChangeStart: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalDisplayAdapter"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .registers 2

    .line 696
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 697
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v0, 0x0

    .line 698
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    :cond_a
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 9

    .line 1394
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPhysicalDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayModeSpecs={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayModeSpecsInvalid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDefaultModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserPreferredModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBrightnessState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBacklightAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllmSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllmRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGameContentTypeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGameContentTypeRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mStaticDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mSfDisplayModes="

    .line 1410
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1411
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_171
    const-string v4, "  "

    if-ge v3, v1, :cond_18c

    aget-object v5, v0, v3

    .line 1412
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_171

    .line 1414
    :cond_18c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveSfDisplayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mSupportedModes="

    .line 1415
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    :goto_1a9
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_1cc

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a9

    .line 1419
    :cond_1cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSupportedColorModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayDeviceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsFirstDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findDisplayModeRecord(Landroid/view/SurfaceControl$DisplayMode;Ljava/util/List;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$DisplayMode;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 671
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 672
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 673
    invoke-virtual {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 675
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v2

    .line 674
    invoke-virtual {p0, p2, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->refreshRatesEquals(Ljava/util/List;[F)Z

    move-result v2

    if-eqz v2, :cond_24

    return-object v1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findMatchingModeIdLocked(I)I
    .registers 6

    .line 1486
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_20

    .line 1488
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid display mode ID "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_20
    const/4 p1, 0x0

    .line 1491
    :goto_21
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p1, v2, :cond_41

    .line 1492
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 1493
    invoke-virtual {v2, v0}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1494
    iget-object p0, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_3e
    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    :cond_41
    return v1
.end method

.method public final findMode(I)Landroid/view/Display$Mode;
    .registers 5

    const/4 v0, 0x0

    .line 1450
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1451
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1452
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    if-ne v2, p1, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findMode(IIF)Landroid/view/Display$Mode;
    .registers 7

    const/4 v0, 0x0

    .line 1462
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1463
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1464
    invoke-virtual {v1, p1, p2, p3}, Landroid/view/Display$Mode;->matchesIfValid(IIF)Z

    move-result v2

    if-eqz v2, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findSfDisplayModeIdLocked(II)I
    .registers 9

    .line 1430
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    const/4 v0, -0x1

    if-eqz p1, :cond_29

    .line 1432
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    :goto_10
    if-ge v2, v1, :cond_28

    aget-object v4, p0, v2

    .line 1433
    invoke-virtual {p1, v4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v5

    if-eqz v5, :cond_25

    if-ne v3, v0, :cond_1e

    .line 1435
    iget v3, v4, Landroid/view/SurfaceControl$DisplayMode;->id:I

    .line 1439
    :cond_1e
    iget v5, v4, Landroid/view/SurfaceControl$DisplayMode;->group:I

    if-ne v5, p2, :cond_25

    .line 1440
    iget p0, v4, Landroid/view/SurfaceControl$DisplayMode;->id:I

    return p0

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_28
    move v0, v3

    :cond_29
    return v0
.end method

.method public final findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I
    .registers 7

    if-eqz p1, :cond_2f

    const/4 v0, 0x0

    .line 1473
    :goto_3
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 1474
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1475
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    .line 1476
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    .line 1477
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    .line 1475
    invoke-virtual {p1, v2, v3, v4}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1478
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2f
    const/4 p0, -0x1

    return p0
.end method

.method public getActiveDisplayModeAtStartLocked()Landroid/view/Display$Mode;
    .registers 2

    .line 332
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveDisplayModeAtStartId:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(I)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;
    .registers 2

    .line 539
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_7

    .line 540
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->loadDisplayDeviceConfig()V

    .line 542
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object p0
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 14

    .line 704
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_1e9

    .line 707
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_RESOLUTION_POLICY:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v0, v0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v0, :cond_1d

    .line 708
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 709
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result v1

    .line 708
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v0

    goto :goto_1f

    .line 710
    :cond_1d
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 712
    :goto_1f
    new-instance v1, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 713
    iget v2, v0, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 714
    iget v2, v0, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 715
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 716
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 717
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 718
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 719
    iget-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    iput-boolean v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    .line 720
    iget-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    iput-boolean v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    .line 721
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 722
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    const/4 v1, 0x0

    move v2, v1

    .line 723
    :goto_5c
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_79

    .line 724
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 726
    :cond_79
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 727
    iget-wide v3, v0, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    iput-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 728
    iget-wide v3, v0, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    iput-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 729
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 730
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 731
    iget-wide v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 732
    invoke-static {v2, v3}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v2

    .line 733
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput-object v2, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 734
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getLogicalDensity()I

    move-result v4

    iput v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 735
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v4, v0, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    iput v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 736
    iget v0, v0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    iput v0, v3, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 737
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-object v4, v0, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 741
    iget-boolean v0, v0, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    if-eqz v0, :cond_b9

    const/16 v0, 0xc

    .line 742
    iput v0, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 746
    :cond_b9
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 749
    iget-boolean v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    const/4 v11, 0x1

    if-nez v3, :cond_c9

    goto :goto_d0

    .line 755
    :cond_c9
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v5, v11

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :goto_d0
    if-eqz v3, :cond_f1

    const v2, 0x1110182

    .line 760
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_e8

    sget-boolean v2, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v2, :cond_129

    const-string/jumbo v2, "ro.emulator.circular"

    .line 762
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_129

    .line 763
    :cond_e8
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_129

    .line 772
    :cond_f1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v1, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v1, :cond_10a

    .line 774
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const v3, 0x8000c0

    or-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 778
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_SUPPORT_SUB_HOME:Z

    if-eqz v3, :cond_129

    or-int/lit16 v2, v2, 0x1000

    .line 779
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_129

    :cond_10a
    const v1, 0x111017b

    .line 792
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_11b

    .line 794
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 797
    :cond_11b
    invoke-virtual {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z

    move-result v1

    if-eqz v1, :cond_129

    .line 798
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 802
    :cond_129
    :goto_129
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/DisplayCutout;->getMaskBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 803
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 806
    :cond_13b
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 807
    invoke-static {v1}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v1

    if-nez v1, :cond_14a

    .line 809
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_14e

    :cond_14a
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    :goto_14e
    if-nez v1, :cond_155

    .line 811
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_159

    :cond_155
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    .line 813
    :goto_159
    iget-boolean v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    if-nez v3, :cond_15e

    goto :goto_172

    .line 816
    :cond_15e
    iget-object v12, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v4, v12, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v7, v12, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v8, v12, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v9, v12, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    const/4 v10, 0x0

    move-object v3, v0

    move v5, v2

    move v6, v1

    invoke-static/range {v3 .. v10}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIIIIZ)Landroid/view/DisplayCutout;

    move-result-object v3

    iput-object v3, v12, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 826
    :goto_172
    iget-boolean v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    if-eqz v3, :cond_187

    .line 828
    iget-object v9, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v4, v9, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v7, v9, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v8, v9, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    move-object v3, v0

    move v5, v2

    move v6, v1

    invoke-static/range {v3 .. v8}, Landroid/view/RoundedCorners;->fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/RoundedCorners;

    move-result-object v1

    iput-object v1, v9, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 831
    :cond_187
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget v3, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    .line 833
    iget-boolean v2, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_1af

    .line 834
    iput v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 836
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v4, v2

    if-eqz v4, :cond_1a0

    .line 838
    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    goto :goto_1a2

    .line 841
    :cond_1a0
    iput v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    :goto_1a2
    or-int/2addr v2, v3

    .line 843
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const v2, 0x1040453

    .line 844
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    goto :goto_1cc

    .line 847
    :cond_1af
    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 848
    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 849
    iget v0, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 850
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040454

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 853
    :goto_1cc
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 856
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v1, 0x0

    .line 857
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 858
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    .line 859
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessDefault()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    .line 861
    :cond_1e9
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object p0
.end method

.method public final getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;",
            ">;)[",
            "Landroid/view/Display$Mode;"
        }
    .end annotation

    .line 1506
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    .line 1507
    new-array v0, p0, [Landroid/view/Display$Mode;

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p0, :cond_16

    .line 1509
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 1510
    iget-object v2, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    return-object v0
.end method

.method public final getLogicalDensity()I
    .registers 5

    .line 552
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getDensityMapping()Lcom/android/server/display/DensityMapping;

    move-result-object v0

    if-nez v0, :cond_17

    .line 554
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget p0, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0

    .line 557
    :cond_17
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/DensityMapping;->getDensityForResolution(II)I

    move-result p0

    return p0
.end method

.method public final getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;
    .registers 6

    .line 660
    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_e

    aget-object v1, p1, v0

    .line 661
    iget v2, v1, Landroid/view/SurfaceControl$DisplayMode;->id:I

    if-ne v2, p2, :cond_b

    return-object v1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 665
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t find display mode with id "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPreferredModeId()I
    .registers 3

    .line 546
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_8

    .line 548
    :cond_6
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    :goto_8
    return v0
.end method

.method public getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .registers 2

    .line 1211
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(I)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .registers 1

    .line 1206
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public hasStableUniqueId()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1519
    :cond_4
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10700e4

    .line 1520
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-eqz p0, :cond_28

    .line 1523
    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p1

    .line 1524
    array-length v1, p0

    move v2, v0

    :goto_1d
    if-ge v2, v1, :cond_28

    aget v3, p0, v2

    if-ne v3, p1, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_28
    return v0
.end method

.method public final loadDisplayDeviceConfig()V
    .registers 6

    .line 562
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v0

    .line 567
    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v3, v3, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    invoke-static {v4}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->-$$Nest$fgetmUseSurfaceControlBrightness(Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;)Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/display/DisplayDeviceConfig;->create(Landroid/content/Context;JZZ)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 572
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    const-string v1, "canSetBrightnessViaHwc"

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->hasQuirk(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->setForceSurfaceControl(Z)V

    return-void
.end method

.method public final notifyStateChangeFinish(Ljava/util/ArrayList;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;",
            ">;III)V"
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 1550
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_15

    .line 1554
    :cond_9
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->start()Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;

    move-result-object p0

    .line 1555
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;III)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public final notifyStateChangeStart(Ljava/util/ArrayList;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;",
            ">;III)V"
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 1536
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_15

    .line 1540
    :cond_9
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->start()Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;

    move-result-object p0

    .line 1541
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;III)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public onActiveDisplayModeChangedLocked(I)V
    .registers 2

    .line 1283
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateActiveModeLocked(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_9
    return-void
.end method

.method public onFrameRateOverridesChanged([Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .registers 2

    .line 1290
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateFrameRateOverridesLocked([Landroid/view/DisplayEventReceiver$FrameRateOverride;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1291
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_9
    return-void
.end method

.method public onOverlayChangedLocked()V
    .registers 1

    .line 1279
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void
.end method

.method public final refreshRatesEquals(Ljava/util/List;[F)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;[F)Z"
        }
    .end annotation

    .line 683
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    array-length v0, p2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_9

    return v1

    :cond_9
    move p0, v1

    .line 686
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2a

    .line 687
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    aget v2, p2, p0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_27

    return v1

    :cond_27
    add-int/lit8 p0, p0, 0x1

    goto :goto_a

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method public final requestColorModeAsync(Landroid/os/IBinder;I)V
    .registers 4

    .line 1352
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setActiveColorMode(Landroid/os/IBinder;I)Z

    .line 1353
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 1354
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 1355
    monitor-exit p1

    return-void

    :catchall_15
    move-exception p0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public requestColorModeLocked(I)V
    .registers 5

    .line 1334
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1337
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1338
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find color mode "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring request."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1343
    :cond_2d
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 1344
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;-><init>()V

    .line 1346
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1344
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestDisplayStateLocked(IFF)Ljava/lang/Runnable;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 868
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestDisplayStateLocked(IFFILjava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public requestDisplayStateLocked(IFFILjava/util/ArrayList;)Ljava/lang/Runnable;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFI",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v13, p1

    move/from16 v4, p4

    .line 880
    iget v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v13, :cond_e

    move v5, v3

    goto :goto_f

    :cond_e
    move v5, v2

    .line 881
    :goto_f
    iget v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1e

    iget v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    move v9, v2

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v9, v3

    .line 883
    :goto_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 885
    iget v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateLimit:I

    if-eq v0, v4, :cond_29

    move v6, v3

    goto :goto_2a

    :cond_29
    move v6, v2

    :goto_2a
    if-nez v5, :cond_33

    if-nez v9, :cond_33

    if-eqz v6, :cond_31

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    return-object v0

    .line 889
    :cond_33
    :goto_33
    iget-wide v7, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v16

    .line 891
    iget v12, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 895
    iget-object v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v2, v3, :cond_4c

    .line 896
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-eqz v0, :cond_4a

    const/4 v0, 0x2

    goto :goto_4d

    :cond_4a
    move v10, v3

    goto :goto_4e

    :cond_4c
    const/4 v0, -0x1

    :goto_4d
    move v10, v0

    :goto_4e
    if-eqz v5, :cond_55

    .line 907
    iput v13, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 908
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_55
    if-eqz v6, :cond_59

    .line 913
    iput v4, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateLimit:I

    .line 920
    :cond_59
    new-instance v17, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move v2, v5

    move v3, v6

    move/from16 v4, p4

    move-object/from16 v5, p5

    move v6, v10

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v13, p1

    invoke-direct/range {v0 .. v16}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;ZZILjava/util/ArrayList;IJZFFIIJLandroid/os/IBinder;)V

    return-object v17
.end method

.method public setAutoLowLatencyModeLocked(Z)V
    .registers 3

    .line 1360
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1364
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    .line 1366
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    if-nez v0, :cond_13

    const-string p0, "LocalDisplayAdapter"

    const-string p1, "Unable to set ALLM because the connected display does not support ALLM."

    .line 1367
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1372
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public final setDesiredDisplayModeSpecsAsync(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V
    .registers 5

    .line 1267
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v0, :cond_29

    const v0, 0x13af10

    .line 1268
    invoke-virtual {p2}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDesiredDisplayModeSpecsAsync : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalDisplayAdapter"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_29
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    return-void
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 13

    .line 1222
    iget v0, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-nez v0, :cond_5

    return-void

    .line 1235
    :cond_5
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result v3

    if-gez v3, :cond_29

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring request for invalid base mode id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalDisplayAdapter"

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void

    .line 1249
    :cond_29
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    :cond_35
    const/4 v0, 0x0

    .line 1250
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 1251
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->copyFrom(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 1252
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda1;-><init>()V

    .line 1254
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    new-instance v9, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-boolean v4, v2, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    iget-object v5, v2, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v6, v5, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget v7, v5, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    iget-object v2, v2, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v8, v2, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget v10, v2, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    move-object v2, v9

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v10

    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;-><init>(IZFFFF)V

    .line 1252
    invoke-static {v0, p0, v1, v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6d
    return-void
.end method

.method public setGameContentTypeLocked(Z)V
    .registers 3

    .line 1377
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1381
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    .line 1389
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setGameContentType(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 2

    .line 1216
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestColorModeLocked(I)V

    return-void
.end method

.method public setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V
    .registers 5

    .line 1173
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result v0

    .line 1174
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz p1, :cond_28

    .line 1175
    invoke-virtual {p1}, Landroid/view/Display$Mode;->isRefreshRateSet()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p1}, Landroid/view/Display$Mode;->isResolutionSet()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1177
    :cond_14
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    .line 1178
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    .line 1177
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(IIF)Landroid/view/Display$Mode;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 1180
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 1184
    :cond_28
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 1186
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result p1

    if-ne v0, p1, :cond_37

    return-void

    .line 1189
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 1191
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmIsBootDisplayModeSupported(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result p1

    if-nez p1, :cond_43

    return-void

    .line 1194
    :cond_43
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_56

    .line 1195
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->clearBootDisplayMode(Landroid/os/IBinder;)V

    goto :goto_6f

    .line 1197
    :cond_56
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 1198
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 1197
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result p1

    .line 1199
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setBootDisplayMode(Landroid/os/IBinder;I)V

    :goto_6f
    return-void
.end method

.method public updateActiveModeLocked(I)Z
    .registers 8

    .line 1296
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v0, v0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    return v1

    .line 1299
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 1300
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const/4 v2, -0x1

    const-string v3, "LocalDisplayAdapter"

    if-ne v0, v2, :cond_68

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In unknown mode after setting allowed modes, activeModeId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mSfDisplayModes:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    array-length p1, p0

    :goto_4d
    if-ge v1, p1, :cond_97

    aget-object v0, p0, v1

    .line 1308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 1314
    :cond_68
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz p1, :cond_97

    .line 1315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateActiveModeLocked for d="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mActiveModeId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mActiveSfDisplayMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    const/4 p0, 0x1

    return p0
.end method

.method public final updateAllmSupport(Z)Z
    .registers 3

    .line 643
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 646
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final updateColorModesLocked([II)Z
    .registers 11

    const/4 p2, 0x0

    if-nez p1, :cond_4

    return p2

    .line 589
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    array-length v1, p1

    move v2, p2

    move v3, v2

    :goto_c
    const/4 v4, 0x1

    if-ge v2, v1, :cond_28

    aget v5, p1, v2

    .line 593
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    move v3, v4

    .line 596
    :cond_1e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 600
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_39

    if-eqz v3, :cond_37

    goto :goto_39

    :cond_37
    move p1, p2

    goto :goto_3a

    :cond_39
    :goto_39
    move p1, v4

    :goto_3a
    if-nez p1, :cond_3d

    return p2

    .line 608
    :cond_3d
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 609
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 610
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 613
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_89

    .line 614
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    const-string v0, "LocalDisplayAdapter"

    if-eqz p1, :cond_68

    const-string p1, "Active color mode no longer available, reverting to default mode."

    .line 615
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    goto :goto_89

    .line 619
    :cond_68
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_84

    const-string p1, "Default and active color mode is no longer available! Reverting to first available mode."

    .line 621
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    goto :goto_89

    :cond_84
    const-string p0, "No color modes available!"

    .line 626
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    :goto_89
    return v4
.end method

.method public final updateDeviceInfoLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 1501
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1502
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method

.method public updateDisplayModesLocked([Landroid/view/SurfaceControl$DisplayMode;IILandroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .registers 16

    .line 360
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/SurfaceControl$DisplayMode;

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    .line 361
    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object p3

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 368
    :goto_1b
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v2, v4, :cond_b0

    .line 369
    aget-object v4, p1, v2

    .line 370
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v1

    .line 371
    :goto_27
    array-length v8, p1

    if-ge v7, v8, :cond_59

    .line 372
    aget-object v8, p1, v7

    if-eq v7, v2, :cond_4a

    .line 373
    iget v9, v8, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v10, v4, Landroid/view/SurfaceControl$DisplayMode;->width:I

    if-ne v9, v10, :cond_4a

    iget v9, v8, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iget v10, v4, Landroid/view/SurfaceControl$DisplayMode;->height:I

    if-ne v9, v10, :cond_4a

    iget v9, v8, Landroid/view/SurfaceControl$DisplayMode;->refreshRate:F

    iget v10, v4, Landroid/view/SurfaceControl$DisplayMode;->refreshRate:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_4a

    iget v9, v8, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iget v10, v4, Landroid/view/SurfaceControl$DisplayMode;->group:I

    if-ne v9, v10, :cond_4a

    move v9, v5

    goto :goto_4b

    :cond_4a
    move v9, v1

    :goto_4b
    if-eqz v9, :cond_56

    .line 378
    iget v8, v8, Landroid/view/SurfaceControl$DisplayMode;->refreshRate:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 381
    :cond_59
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 387
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_60
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 388
    invoke-virtual {v8, v4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v9

    if-eqz v9, :cond_60

    iget-object v8, v8, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 390
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v8

    .line 389
    invoke-virtual {p0, v6, v8}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->refreshRatesEquals(Ljava/util/List;[F)Z

    move-result v8

    if-eqz v8, :cond_60

    move v7, v5

    goto :goto_81

    :cond_80
    move v7, v1

    :goto_81
    if-eqz v7, :cond_84

    goto :goto_ac

    .line 401
    :cond_84
    invoke-virtual {p0, v4, v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayModeRecord(Landroid/view/SurfaceControl$DisplayMode;Ljava/util/List;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    move-result-object v7

    if-nez v7, :cond_a9

    .line 403
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    new-array v7, v3, [F

    move v8, v1

    :goto_91
    if-ge v8, v3, :cond_a2

    .line 405
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_91

    .line 407
    :cond_a2
    new-instance v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-direct {v3, v4, v7}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$DisplayMode;[F)V

    move-object v7, v3

    move v3, v5

    .line 410
    :cond_a9
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_ac
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1b

    .line 415
    :cond_b0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_ca

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 416
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {v2, v6}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v6

    if-eqz v6, :cond_b4

    goto :goto_cb

    :cond_ca
    move-object v2, v4

    :goto_cb
    const/4 p1, -0x1

    if-eq p2, p1, :cond_ff

    if-eqz p3, :cond_ff

    .line 426
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 427
    invoke-virtual {v6, p3}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v7

    if-eqz v7, :cond_d4

    move-object v4, v6

    :cond_e7
    if-eqz v4, :cond_ff

    .line 434
    iget-object p2, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getModeId()I

    move-result p2

    .line 435
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v4}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmIsBootDisplayModeSupported(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result v4

    if-eqz v4, :cond_ff

    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    if-eq v4, p2, :cond_ff

    .line 436
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    move p2, v5

    goto :goto_100

    :cond_ff
    move p2, v1

    .line 446
    :goto_100
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const-string v6, "LocalDisplayAdapter"

    if-eq v4, p1, :cond_133

    iget-object v7, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 447
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    move-result v7

    if-eq v4, v7, :cond_133

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The active mode was changed from SurfaceFlinger or the display device to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v4, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    iput v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 452
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    move v4, v5

    goto :goto_134

    :cond_133
    move v4, v1

    .line 457
    :goto_134
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v7, v7, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eq v7, p1, :cond_173

    .line 458
    iget v7, p4, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    invoke-virtual {p0, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v7

    if-eq v7, p1, :cond_16c

    .line 462
    iget-object v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v9, v8, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-ne v9, v7, :cond_16c

    iget-object v7, v8, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v9, v7, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget v10, p4, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMin:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_16c

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    iget v9, p4, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMax:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_16c

    iget-object v7, v8, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v8, v7, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget v9, p4, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMin:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_16c

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    iget p4, p4, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMax:F

    cmpl-float p4, v7, p4

    if-eqz p4, :cond_173

    .line 472
    :cond_16c
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 473
    iget-object p4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p4}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 477
    :cond_173
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p4

    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ne p4, v7, :cond_184

    if-eqz v3, :cond_182

    goto :goto_184

    :cond_182
    move p4, v1

    goto :goto_185

    :cond_184
    :goto_184
    move p4, v5

    :goto_185
    if-nez p4, :cond_18d

    if-nez v4, :cond_18b

    if-eqz p2, :cond_18c

    :cond_18b
    move v1, v5

    :cond_18c
    return v1

    .line 483
    :cond_18d
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 484
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_196
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1ae

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 485
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v1, p4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    invoke-virtual {v0, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_196

    .line 489
    :cond_1ae
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    if-ne p2, p1, :cond_1cf

    .line 490
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    if-eq p2, p1, :cond_1b7

    goto :goto_1bd

    .line 491
    :cond_1b7
    iget-object p2, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getModeId()I

    move-result p2

    :goto_1bd
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 493
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    if-eq p2, p1, :cond_1c8

    if-eqz p3, :cond_1c8

    .line 494
    iget p2, p3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    goto :goto_1cc

    .line 495
    :cond_1c8
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget p2, p2, Landroid/view/SurfaceControl$DisplayMode;->group:I

    :goto_1cc
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    goto :goto_202

    :cond_1cf
    if-eqz v3, :cond_1e7

    if-eqz v4, :cond_1e7

    const-string p2, "New display modes are added and the active mode has changed, use active mode as default mode."

    .line 497
    invoke-static {v6, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object p2, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getModeId()I

    move-result p2

    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 500
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget p2, p2, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    goto :goto_202

    .line 501
    :cond_1e7
    iget p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result p2

    if-gez p2, :cond_202

    const-string p2, "Default display mode no longer available, using currently active mode as default."

    .line 502
    invoke-static {v6, p2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object p2, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getModeId()I

    move-result p2

    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 505
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget p2, p2, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 509
    :cond_202
    :goto_202
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget p3, p3, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_225

    .line 510
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget p2, p2, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eq p2, p1, :cond_219

    const-string p2, "DisplayModeSpecs base mode no longer available, using currently active mode."

    .line 511
    invoke-static {v6, p2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_219
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object p3, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {p3}, Landroid/view/Display$Mode;->getModeId()I

    move-result p3

    iput p3, p2, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 516
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 519
    :cond_225
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz p2, :cond_22f

    .line 520
    invoke-virtual {p0, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I

    move-result p2

    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 524
    :cond_22f
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_248

    .line 525
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    if-eq p2, p1, :cond_242

    const-string p1, "Active display mode no longer available, reverting to default mode."

    .line 526
    invoke-static {v6, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_242
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 533
    :cond_248
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    return v5
.end method

.method public updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .registers 7

    .line 341
    iget-object v0, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    iget v1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->preferredBootDisplayMode:I

    iget v2, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayModesLocked([Landroid/view/SurfaceControl$DisplayMode;IILandroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result p3

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateStaticInfo(Landroid/view/SurfaceControl$StaticDisplayInfo;)Z

    move-result p1

    or-int/2addr p1, p3

    .line 345
    iget-object p3, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedColorModes:[I

    iget v0, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    invoke-virtual {p0, p3, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateColorModesLocked([II)Z

    move-result p3

    or-int/2addr p1, p3

    .line 347
    iget-object p3, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {p0, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateHdrCapabilitiesLocked(Landroid/view/Display$HdrCapabilities;)Z

    move-result p3

    or-int/2addr p1, p3

    .line 348
    iget-boolean p3, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->autoLowLatencyModeSupported:Z

    invoke-virtual {p0, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateAllmSupport(Z)Z

    move-result p3

    or-int/2addr p1, p3

    .line 349
    iget-boolean p2, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->gameContentTypeSupported:Z

    invoke-virtual {p0, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateGameContentTypeSupport(Z)Z

    move-result p2

    or-int/2addr p1, p2

    if-eqz p1, :cond_32

    const/4 p2, 0x1

    .line 352
    iput-boolean p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    :cond_32
    return p1
.end method

.method public updateFrameRateOverridesLocked([Landroid/view/DisplayEventReceiver$FrameRateOverride;)Z
    .registers 3

    .line 1325
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1329
    :cond_a
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    const/4 p0, 0x1

    return p0
.end method

.method public final updateGameContentTypeSupport(Z)Z
    .registers 3

    .line 651
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 654
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final updateHdrCapabilitiesLocked(Landroid/view/Display$HdrCapabilities;)Z
    .registers 3

    .line 635
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 638
    :cond_a
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    const/4 p0, 0x1

    return p0
.end method

.method public final updateStaticInfo(Landroid/view/SurfaceControl$StaticDisplayInfo;)Z
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 580
    :cond_a
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    const/4 p0, 0x1

    return p0
.end method

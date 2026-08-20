.class public Lcom/android/server/desktopmode/StateManager$InternalState;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Lcom/android/server/desktopmode/State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalState"
.end annotation


# instance fields
.field public mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public mCoverSupportState:I

.field public mCurrentUserId:I

.field public mDesktopDisplayId:I

.field public mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

.field public mDisplayResolutionUnsupported:Z

.field public mDockLowChargerState:I

.field public mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

.field public mEmergencyModeEnabled:Z

.field public mForcedInternalScreenModeEnabled:Z

.field public mIsExternalDisplayConnected:Z

.field public mIsMouseConnected:Z

.field public mIsNavBarGestureEnabled:Z

.field public mIsPogoKeyboardConnected:Z

.field public mIsWiredCharging:Z

.field public mModeChangeLocked:Z

.field public mPackageState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

.field public mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

.field public mSeq:I

.field public mSpenEnabled:Z

.field public mTouchpadAvailable:Z

.field public mTouchpadEnabled:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/DisplayInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverSupportState(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDesktopDisplayId(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayResolutionUnsupported(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDockLowChargerState(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDockState(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/HardwareManager$DockState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEmergencyModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsExternalDisplayConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsMouseConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsNavBarGestureEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPogoKeyboardConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsWiredCharging(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModeChangeLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSeq(Lcom/android/server/desktopmode/StateManager$InternalState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpenEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchpadAvailable(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchpadEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/cover/CoverState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverSupportState(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDesktopDisplayId(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDesktopModeState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayResolutionUnsupported(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDockLowChargerState(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDockState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEmergencyModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsExternalDisplayConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsMouseConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsNavBarGestureEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsPogoKeyboardConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsWiredCharging(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmModeChangeLocked(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPackageState(Lcom/android/server/desktopmode/StateManager$InternalState;Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPreviousConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPreviousDockState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSeq(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSpenEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTouchpadAvailable(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTouchpadEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 509
    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    .line 511
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 512
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 513
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 514
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 515
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 516
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 517
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 518
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 519
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 520
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 521
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 522
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    const/4 v0, -0x1

    .line 524
    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    const/4 v1, 0x1

    .line 525
    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/16 v1, -0x2710

    .line 526
    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 527
    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 531
    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-direct {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 532
    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 533
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 534
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 535
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .registers 4

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 509
    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    .line 511
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 512
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 513
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 514
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 515
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 516
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 517
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 518
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 519
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 520
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 521
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 522
    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    const/4 v0, -0x1

    .line 524
    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    const/4 v1, 0x1

    .line 525
    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/16 v1, -0x2710

    .line 526
    iput v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 527
    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 531
    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-direct {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 532
    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 533
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 534
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 535
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 541
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    .line 542
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 543
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 544
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 545
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 546
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 547
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 548
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 549
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 550
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 551
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 552
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 553
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 554
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    .line 556
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 557
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 558
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 560
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 561
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 562
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 563
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 564
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 565
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 566
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-void
.end method


# virtual methods
.method public getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;
    .registers 1

    .line 699
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-object p0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .registers 1

    .line 719
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p0
.end method

.method public getCoverSupportState()I
    .registers 1

    .line 689
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    return p0
.end method

.method public getCurrentUserId()I
    .registers 1

    .line 694
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    return p0
.end method

.method public getDesktopDisplayId()I
    .registers 1

    .line 684
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    return p0
.end method

.method public getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .registers 1

    .line 729
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-object p0
.end method

.method public getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;
    .registers 1

    .line 709
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object p0
.end method

.method public getPackageState()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 724
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    return-object p0
.end method

.method public getPreviousConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;
    .registers 1

    .line 704
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    return-object p0
.end method

.method public getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;
    .registers 1

    .line 714
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    return-object p0
.end method

.method public isCoverSupportStatePartial()Z
    .registers 2

    .line 601
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isDexOnPcConnected()Z
    .registers 2

    .line 649
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz p0, :cond_e

    .line 650
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isDexOnPcOrWirelessDexConnected()Z
    .registers 3

    .line 661
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz v0, :cond_18

    .line 662
    invoke-virtual {v0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_16

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 663
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result p0

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public isDexStationConnectedWithFlipCover()Z
    .registers 2

    .line 644
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager$InternalState;->isCoverSupportStatePartial()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isDisplayResolutionUnsupported()Z
    .registers 1

    .line 674
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    return p0
.end method

.method public isDockLowChargerConnected()Z
    .registers 2

    .line 596
    iget p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isEmergencyModeEnabled()Z
    .registers 1

    .line 606
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    return p0
.end method

.method public isExternalDisplayConnected()Z
    .registers 1

    .line 576
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    return p0
.end method

.method public isForcedInternalScreenModeEnabled()Z
    .registers 1

    .line 571
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    return p0
.end method

.method public isHdmiConnected()Z
    .registers 2

    .line 668
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz p0, :cond_d

    .line 669
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isModeChangeLocked()Z
    .registers 1

    .line 624
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    return p0
.end method

.method public isMouseConnected()Z
    .registers 1

    .line 581
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    return p0
.end method

.method public isNavBarGestureEnabled()Z
    .registers 1

    .line 679
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    return p0
.end method

.method public isPackagesAvailable()Z
    .registers 3

    .line 611
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 614
    :cond_a
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method public isPogoKeyboardConnected()Z
    .registers 1

    .line 586
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    return p0
.end method

.method public isSpenEnabled()Z
    .registers 1

    .line 639
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    return p0
.end method

.method public isTouchpadAvailable()Z
    .registers 1

    .line 629
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    return p0
.end method

.method public isTouchpadEnabled()Z
    .registers 1

    .line 634
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    return p0
.end method

.method public isWiredCharging()Z
    .registers 1

    .line 591
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    return p0
.end method

.method public isWirelessDexConnected()Z
    .registers 2

    .line 655
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz p0, :cond_e

    .line 656
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result p0

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "State{s"

    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user"

    .line 736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 737
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    const/16 v2, 0x20

    if-eqz v1, :cond_29

    .line 738
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 740
    :cond_29
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    const-string v3, " prev/"

    if-eqz v1, :cond_3f

    .line 741
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 742
    invoke-virtual {v1}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_3f
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    if-eqz v1, :cond_48

    const-string v1, " pogoKeyboard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    :cond_48
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    if-eqz v1, :cond_51

    const-string v1, " mouse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_51
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_8a

    const-string v1, " cover.t"

    .line 747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".ft"

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getFriendsType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 749
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v1, :cond_85

    const-string/jumbo v1, "open"

    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :cond_85
    const-string v1, "close"

    .line 753
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_8a
    :goto_8a
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_9b

    .line 757
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 758
    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->coverSupportStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :cond_9b
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v1

    if-nez v1, :cond_ad

    .line 763
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 765
    :cond_ad
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v1

    if-nez v1, :cond_c5

    .line 766
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 767
    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 766
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    :cond_c5
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v1

    if-nez v1, :cond_dd

    .line 770
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 771
    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v1

    .line 770
    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    :cond_dd
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ec

    const-string v1, " desktopDisplay."

    .line 774
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 776
    :cond_ec
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    if-eqz v1, :cond_f5

    const-string v1, " forcedInternalScreenMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_f5
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    if-ne v1, v4, :cond_fe

    const-string v1, " dockLowCharger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    :cond_fe
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    if-eqz v1, :cond_107

    const-string v1, " modeChangeLocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :cond_107
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    if-eqz v1, :cond_110

    const-string v1, " wiredCharging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    :cond_110
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager$InternalState;->isPackagesAvailable()Z

    move-result v1

    if-nez v1, :cond_120

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 781
    :cond_120
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    if-eqz v1, :cond_129

    const-string v1, " touchpadAvailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    :cond_129
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    if-eqz v1, :cond_132

    const-string v1, " touchpadEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_132
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    if-eqz v1, :cond_13b

    const-string v1, " displayResolutionUnsupported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :cond_13b
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    if-eqz v1, :cond_144

    const-string v1, " spenEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :cond_144
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    if-eqz p0, :cond_14d

    const-string p0, " navBarGestureEnabled"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14d
    const/16 p0, 0x7d

    .line 786
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

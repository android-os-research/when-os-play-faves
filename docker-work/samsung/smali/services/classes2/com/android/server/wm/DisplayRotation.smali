.class public Lcom/android/server/wm/DisplayRotation;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayRotation$RotationHistory;,
        Lcom/android/server/wm/DisplayRotation$SettingsObserver;,
        Lcom/android/server/wm/DisplayRotation$OrientationListener;,
        Lcom/android/server/wm/DisplayRotation$AllowAllRotations;,
        Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    }
.end annotation


# static fields
.field public static final ALLOW_ALL_ROTATIONS_DISABLED:I = 0x0

.field public static final ALLOW_ALL_ROTATIONS_ENABLED:I = 0x1

.field public static final ALLOW_ALL_ROTATIONS_UNDEFINED:I = -0x1

.field public static final CAMERA_ROTATION_DISABLED:I = 0x0

.field public static final CAMERA_ROTATION_ENABLED:I = 0x1

.field public static final REMOTE_ROTATION_TIMEOUT_MS:I = 0x320

.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final isDefaultDisplay:Z

.field public mAllowAllRotations:I

.field public mAllowSeamlessRotationDespiteNavBarMoving:Z

.field public mCameraRotationMode:I

.field public final mCarDockRotation:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentAppOrientation:I

.field public mDefaultFixedToUserRotation:Z

.field public mDeferredRotationPauseCount:I

.field public mDemoHdmiRotation:I

.field public mDemoHdmiRotationLock:Z

.field public mDemoRotation:I

.field public mDemoRotationLock:Z

.field public final mDeskDockRotation:I

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public final mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

.field public final mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

.field public mFixedToUserRotation:I

.field public mIsWaitingForRemoteRotation:Z

.field public mLandscapePreferred:Z

.field public mLandscapeRotation:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mLastOrientation:I

.field public mLastSensorRotation:I

.field public final mLidOpenRotation:I

.field public final mLock:Ljava/lang/Object;

.field public mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

.field public mPortraitRotation:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mRemoteRotationCallback:Landroid/view/IDisplayWindowRotationCallback;

.field public mRotatingSeamlessly:Z

.field public mRotation:I

.field public final mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

.field public mSeamlessRotationCount:I

.field public mSeascapeRotation:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

.field public mShowRotationSuggestions:I

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final mSupportAutoRotation:Z

.field public final mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

.field public final mUndockedHdmiRotation:I

.field public mUpsideDownRotation:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mUserRotation:I

.field public mUserRotationMode:I

.field public mUserRotationUpdateCompleted:Z


# direct methods
.method public static synthetic $r8$lambda$7G-70Gj4J4Dw6ps1NVojUdrYpcQ(Lcom/android/server/wm/WindowState;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->lambda$cancelSeamlessRotation$0(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gTLjubg1x23KYG4k_brWSQniMmo(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->lambda$shouldRotateSeamlessly$1(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraRotationMode(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentAppOrientation(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLandscapePreferred(Lcom/android/server/wm/DisplayRotation;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapePreferred:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOrientationListener(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayRotation$OrientationListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRotation(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserRotation(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserRotationMode(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmLandscapePreferred(Lcom/android/server/wm/DisplayRotation;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapePreferred:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcontinueRotation(Lcom/android/server/wm/DisplayRotation;ILandroid/window/WindowContainerTransaction;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->continueRotation(ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misRotationChoicePossible(Lcom/android/server/wm/DisplayRotation;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isRotationChoicePossible(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misValidRotationChoice(Lcom/android/server/wm/DisplayRotation;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isValidRotationChoice(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendProposedRotationChangeToStatusBarInternal(Lcom/android/server/wm/DisplayRotation;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->sendProposedRotationChangeToStatusBarInternal(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/wm/DisplayRotation;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateSettings()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 10

    .line 260
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v5, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 260
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 122
    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotation$RotationHistory;-><init>(Lcom/android/server/wm/DisplayRotation$RotationHistory-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 136
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 156
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    .line 197
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 203
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 208
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    .line 220
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 229
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    .line 231
    new-instance v1, Lcom/android/server/wm/DisplayRotation$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayRotation$1;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    .line 239
    new-instance v1, Lcom/android/server/wm/DisplayRotation$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayRotation$2;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mRemoteRotationCallback:Landroid/view/IDisplayWindowRotationCallback;

    .line 1824
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapePreferred:Z

    const/4 v0, 0x1

    .line 2026
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationUpdateCompleted:Z

    .line 268
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 269
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 270
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 271
    iput-object p4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 272
    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 273
    iput-object p6, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 274
    iget-boolean p1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 277
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x11101c8

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    const p2, 0x10e00b0

    .line 278
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    const p2, 0x10e004d

    .line 279
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    const p2, 0x10e0075

    .line 280
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    const p2, 0x10e012f

    .line 281
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-eqz p1, :cond_96

    .line 284
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 285
    new-instance p2, Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-direct {p2, p0, p5, p1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 286
    iget p3, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {p2, p3}, Lcom/android/server/wm/WindowOrientationListener;->setCurrentRotation(I)V

    .line 287
    new-instance p2, Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    .line 288
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->observe()V

    :cond_96
    return-void
.end method

.method public static allowAllRotationsToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_14

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    .line 1691
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string/jumbo p0, "true"

    return-object p0

    :cond_11
    const-string p0, "false"

    return-object p0

    :cond_14
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method public static getDisplayFromTransition(Lcom/android/server/wm/Transition;)Lcom/android/server/wm/DisplayContent;
    .registers 4

    .line 624
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 625
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 626
    instance-of v2, v1, Lcom/android/server/wm/DisplayContent;

    if-nez v2, :cond_19

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 627
    :cond_19
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    return-object v1

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$cancelSeamlessRotation$0(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 717
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz v0, :cond_a

    .line 718
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->cancelSeamlessRotation()V

    const/4 v0, 0x0

    .line 719
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    :cond_a
    return-void
.end method

.method public static synthetic lambda$shouldRotateSeamlessly$1(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    .line 842
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    return p0
.end method


# virtual methods
.method public applyCurrentRotation(I)V
    .registers 3

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayRotation$RotationHistory;->addRecord(Lcom/android/server/wm/DisplayRotation;I)V

    .line 383
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz p0, :cond_c

    .line 384
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener;->setCurrentRotation(I)V

    :cond_c
    return-void
.end method

.method public canRotateSeamlessly(II)Z
    .registers 5

    .line 853
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    const/4 v1, 0x1

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_15

    :cond_e
    const/4 p0, 0x2

    if-eq p1, p0, :cond_14

    if-eq p2, p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :cond_15
    :goto_15
    return v1
.end method

.method public cancelSeamlessRotation()V
    .registers 4

    .line 713
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    if-nez v0, :cond_5

    return-void

    .line 716
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    const/4 v0, 0x0

    .line 722
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 723
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 724
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    return-void
.end method

.method public configure(II)V
    .registers 9

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a5

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le p1, p2, :cond_23

    .line 323
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 324
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 326
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 327
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_36

    .line 329
    :cond_1e
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 330
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_36

    .line 333
    :cond_23
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 334
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    .line 335
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 336
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 337
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    goto :goto_36

    .line 339
    :cond_32
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 340
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    :goto_36
    const-string/jumbo p1, "persist.demo.hdmirotation"

    .line 346
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "portrait"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 347
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto :goto_4f

    .line 349
    :cond_4b
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    :goto_4f
    const-string/jumbo p1, "persist.demo.hdmirotationlock"

    .line 351
    invoke-static {p1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    const-string/jumbo p1, "persist.demo.remoterotation"

    .line 355
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 356
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto :goto_6e

    .line 358
    :cond_6a
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    :goto_6e
    const-string/jumbo p1, "persist.demo.rotationlock"

    .line 360
    invoke-static {p1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    .line 363
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    .line 366
    iget-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.software.leanback"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-nez p1, :cond_a2

    if-nez p2, :cond_a2

    .line 372
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez p1, :cond_a2

    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 373
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->forceDesktopMode()Z

    move-result p1

    if-nez p1, :cond_a2

    goto :goto_b2

    :cond_a2
    const-string p1, "config.override_forced_orient"

    .line 378
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b2

    goto :goto_b3

    :cond_b2
    :goto_b2
    move v4, v5

    :goto_b3
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    return-void
.end method

.method public final continueRotation(ILandroid/window/WindowContainerTransaction;)V
    .registers 6

    .line 658
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 659
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    if-ne p1, v1, :cond_7a

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    if-nez p1, :cond_11

    goto :goto_7a

    .line 664
    :cond_11
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 665
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    .line 667
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 668
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 671
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 675
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/TransitionController;->collectForDisplayChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    goto :goto_49

    .line 669
    :cond_41
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to rotate outside a transition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 679
    :cond_49
    :goto_49
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 681
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_7f

    .line 683
    :try_start_55
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    if-eqz p2, :cond_65

    .line 685
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_71

    .line 688
    :cond_65
    :try_start_65
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 690
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_7f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_71
    move-exception p1

    .line 688
    :try_start_72
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 689
    throw p1

    .line 662
    :cond_7a
    :goto_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_7f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_7f
    move-exception p0

    .line 690
    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayRotation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCurrentAppOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 1765
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1764
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLastOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeferredRotationPauseCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLandscapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSeascapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mPortraitRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUpsideDownRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mSupportAutoRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_118

    .line 1777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowOrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1779
    :cond_118
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCarDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeskDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserRotationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 1784
    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1783
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCameraRotationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAllowAllRotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->allowAllRotationsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDemoHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDemoHdmiRotationLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUndockedHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLidOpenRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mFixedToUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1795
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_288

    .line 1796
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  RotationHistory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1799
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_278
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_288

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;

    .line 1800
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_278

    .line 1806
    :cond_288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  mRotatingSeamlessly="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1807
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mSeamlessRotationCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 1813
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1814
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1815
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isRotationFrozen()Z

    move-result v0

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1816
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v0

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1817
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1818
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1819
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result p0

    const-wide v0, 0x10800000006L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1820
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public freezeRotation(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 1072
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    :cond_5
    const/4 v0, 0x1

    .line 1073
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    return-void
.end method

.method public final getAllowAllRotations()I
    .registers 3

    .line 1548
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 1553
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ALLOW_ALL_ROTATION:Z

    .line 1554
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 1564
    :cond_9
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    return p0
.end method

.method public getCurrentAppOrientation()I
    .registers 1

    .line 1121
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return p0
.end method

.method public getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .registers 1

    .line 1125
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object p0
.end method

.method public getFixedToUserRotationMode()I
    .registers 1

    .line 1101
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    return p0
.end method

.method public getLandscapeRotation()I
    .registers 1

    .line 1105
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return p0
.end method

.method public getLastOrientation()I
    .registers 1

    .line 400
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    return p0
.end method

.method public getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;
    .registers 1

    .line 1129
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    return-object p0
.end method

.method public getPortraitRotation()I
    .registers 1

    .line 1113
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return p0
.end method

.method public getRotation()I
    .registers 1

    .line 395
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return p0
.end method

.method public getRotationLockOrientation()I
    .registers 5

    .line 2029
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 2030
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationUpdateCompleted:Z

    if-nez v1, :cond_15

    .line 2033
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "user_rotation"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2037
    :cond_15
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x2

    :goto_1e
    return p0
.end method

.method public getSeascapeRotation()I
    .registers 1

    .line 1109
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return p0
.end method

.method public getUpsideDownRotation()I
    .registers 1

    .line 1117
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return p0
.end method

.method public getUserRotation()I
    .registers 1

    .line 1133
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return p0
.end method

.method public getUserRotationMode()I
    .registers 1

    .line 1137
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    return p0
.end method

.method public hasSeamlessRotatingWindow()Z
    .registers 1

    .line 739
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isAllowAllRotations()Z
    .registers 2

    .line 2044
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isAnyPortrait(I)Z
    .registers 3

    .line 1573
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-eq p1, v0, :cond_b

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isFixedToUserRotation()Z
    .registers 4

    .line 1090
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    .line 1096
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    return p0

    :cond_b
    return v1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isLandscapeOrSeascape(I)Z
    .registers 3

    .line 1568
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    if-eq p1, v0, :cond_b

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isRotatingSeamlessly()Z
    .registers 1

    .line 735
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    return p0
.end method

.method public final isRotationChoicePossible(I)Z
    .registers 8

    .line 1609
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    return v2

    .line 1615
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    if-eqz v0, :cond_e

    return v2

    .line 1619
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-ne v0, v1, :cond_1b

    .line 1620
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v0, :cond_1b

    return v2

    .line 1624
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_25

    return v2

    .line 1630
    :cond_25
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1631
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v4

    if-eq v0, v1, :cond_33

    const/4 v5, 0x3

    if-eq v0, v5, :cond_33

    const/4 v5, 0x4

    if-ne v0, v5, :cond_36

    :cond_33
    if-nez v4, :cond_36

    return v2

    .line 1639
    :cond_36
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1640
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v5, :cond_43

    return v2

    :cond_43
    if-eqz v4, :cond_4c

    if-nez v0, :cond_4c

    .line 1643
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v0, :cond_4c

    return v2

    .line 1647
    :cond_4c
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v0, :cond_51

    return v2

    .line 1650
    :cond_51
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_5a

    return v2

    .line 1653
    :cond_5a
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez p0, :cond_5f

    return v2

    :cond_5f
    const/4 p0, -0x1

    if-eq p1, p0, :cond_68

    if-eq p1, v3, :cond_68

    packed-switch p1, :pswitch_data_6a

    return v2

    :cond_68
    :pswitch_68
    return v1

    nop

    :pswitch_data_6a
    .packed-switch 0xb
        :pswitch_68
        :pswitch_68
        :pswitch_68
    .end packed-switch
.end method

.method public isRotationFrozen()Z
    .registers 5

    .line 1081
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 1082
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne p0, v1, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 1085
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v3, "accelerometer_rotation"

    invoke-static {p0, v3, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method

.method public final isValidRotationChoice(I)Z
    .registers 7

    .line 1578
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1d

    if-eq v0, v2, :cond_1d

    packed-switch v0, :pswitch_data_2e

    return v3

    :pswitch_e
    if-ltz p1, :cond_11

    move v3, v4

    :cond_11
    return v3

    .line 1587
    :pswitch_12
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-ne p1, p0, :cond_17

    move v3, v4

    :cond_17
    return v3

    .line 1591
    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result p0

    return p0

    .line 1596
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getAllowAllRotations()I

    move-result p0

    if-ne p0, v4, :cond_27

    if-ltz p1, :cond_26

    move v3, v4

    :cond_26
    return v3

    :cond_27
    if-ltz p1, :cond_2c

    if-eq p1, v2, :cond_2c

    move v3, v4

    :cond_2c
    return v3

    nop

    :pswitch_data_2e
    .packed-switch 0xb
        :pswitch_18
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public isWaitingForRemoteRotation()Z
    .registers 1

    .line 638
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    return p0
.end method

.method public markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V
    .registers 5

    .line 864
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eq p2, v0, :cond_63

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v0, :cond_9

    goto :goto_63

    .line 869
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markForSeamlessRotation, seamlesslyRotated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 870
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    .line 869
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz p2, :cond_3f

    .line 875
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    goto :goto_45

    .line 877
    :cond_3f
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 879
    :goto_45
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    if-eqz p1, :cond_4b

    if-gez p1, :cond_63

    .line 886
    :cond_4b
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_59

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, -0x2256254a

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 889
    :cond_59
    iput-boolean p2, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 890
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 892
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    :cond_63
    :goto_63
    return-void
.end method

.method public final needSensorRunning()Z
    .registers 6

    .line 1233
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->shouldBlockNeedSensorRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string p0, "WindowManager"

    const-string v0, "Blocked OrientationListener.enable by ScreenOffByProximity"

    .line 1234
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1239
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    .line 1245
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_2b

    .line 1246
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq v0, v2, :cond_2a

    const/16 v4, 0xa

    if-eq v0, v4, :cond_2a

    const/4 v4, 0x7

    if-eq v0, v4, :cond_2a

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2b

    :cond_2a
    return v3

    .line 1256
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    .line 1257
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_3c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4b

    :cond_3c
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1259
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_4c

    if-eq v0, v3, :cond_4b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4b

    if-ne v0, v2, :cond_4c

    :cond_4b
    return v3

    .line 1268
    :cond_4c
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v0, v3, :cond_5a

    .line 1280
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-eqz v0, :cond_59

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-ne p0, v3, :cond_59

    move v1, v3

    :cond_59
    return v1

    .line 1283
    :cond_5a
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    return p0
.end method

.method public needsUpdate()Z
    .registers 3

    .line 1294
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 1295
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result p0

    if-eq v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onUserSwitch()V
    .registers 2

    .line 1696
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 1697
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->onChange(Z)V

    :cond_8
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1155
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    return-void
.end method

.method public prepareNormalRotationAnimation()V
    .registers 4

    .line 694
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->cancelSeamlessRotation()V

    .line 702
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    move-result-object v0

    .line 703
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    iget v0, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IILcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public final prepareSeamlessRotation()V
    .registers 2

    const/4 v0, 0x0

    .line 730
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    const/4 v0, 0x1

    .line 731
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    return-void
.end method

.method public final readRotation(I)I
    .registers 2

    .line 294
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_a} :catch_21

    if-eqz p0, :cond_1f

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_1d

    const/16 p1, 0xb4

    if-eq p0, p1, :cond_1b

    const/16 p1, 0x10e

    if-eq p0, p1, :cond_19

    goto :goto_21

    :cond_19
    const/4 p0, 0x3

    return p0

    :cond_1b
    const/4 p0, 0x2

    return p0

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0

    :catch_21
    :goto_21
    const/4 p0, -0x1

    return p0
.end method

.method public resetAllowAllRotations()V
    .registers 2

    const/4 v0, -0x1

    .line 1311
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    return-void
.end method

.method public restoreSettings(III)V
    .registers 8

    .line 995
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 998
    iget-boolean p3, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz p3, :cond_7

    return-void

    :cond_7
    const/4 p3, 0x0

    const-string v0, " for "

    const-string v1, "WindowManager"

    if-eqz p1, :cond_2e

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2e

    .line 1003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p3

    :cond_2e
    if-ltz p2, :cond_33

    const/4 v2, 0x3

    if-le p2, v2, :cond_50

    .line 1008
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p2, p3

    .line 1012
    :cond_50
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 1013
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return-void
.end method

.method public resume()V
    .registers 2

    .line 1160
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-gtz v0, :cond_5

    return-void

    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 1164
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-nez v0, :cond_e

    .line 1166
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    :cond_e
    return-void
.end method

.method public rotationForOrientation(II)I
    .registers 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1329
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_ORIENTATION_enabled:Z

    const/4 v7, 0x7

    const/4 v11, 0x1

    if-eqz v3, :cond_65

    invoke-static/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v12, v1

    invoke-static/range {p2 .. p2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    int-to-long v4, v2

    iget v15, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v15}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iget v8, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    int-to-long v9, v8

    iget v8, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v8, v11, :cond_32

    const-string v8, "USER_ROTATION_LOCKED"

    goto :goto_34

    :cond_32
    const-string v8, ""

    :goto_34
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v11, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v11, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const/4 v3, 0x2

    aput-object v14, v11, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v11, v4

    const/4 v3, 0x4

    aput-object v15, v11, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v11, v4

    const/4 v3, 0x6

    aput-object v8, v11, v3

    const-string/jumbo v3, "rotationForOrientation(orient=%s (%d), last=%s (%d)); user=%s (%d) %s"

    const v4, 0x2e218796

    const/16 v5, 0x444

    invoke-static {v6, v4, v5, v3, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rotationForOrientation, orientationSource="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1350
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    .line 1349
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-eqz v3, :cond_93

    .line 1352
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/OrientationController;->logInRotationForOrientation(Lcom/android/server/wm/DisplayContent;)V

    .line 1363
    :cond_93
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 1364
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v0

    .line 1367
    :cond_9c
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v4, -0x1

    if-eqz v3, :cond_a6

    .line 1368
    invoke-virtual {v3}, Lcom/android/server/wm/WindowOrientationListener;->getProposedRotation()I

    move-result v3

    goto :goto_a7

    :cond_a6
    move v3, v4

    .line 1370
    :goto_a7
    iput v3, v0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    if-gez v3, :cond_ac

    move v3, v2

    .line 1375
    :cond_ac
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v5

    .line 1376
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v6

    .line 1377
    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v8

    .line 1378
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1379
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v9

    .line 1380
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1381
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v10

    .line 1384
    iget-boolean v11, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/16 v12, 0xc

    const/16 v13, 0xb

    if-nez v11, :cond_d6

    .line 1387
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto/16 :goto_191

    :cond_d6
    const/4 v11, 0x1

    if-ne v5, v11, :cond_e0

    .line 1388
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v5, :cond_e0

    :goto_dd
    move v3, v5

    goto/16 :goto_191

    :cond_e0
    const/4 v5, 0x2

    if-ne v6, v5, :cond_f1

    if-nez v9, :cond_e9

    .line 1391
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    if-ltz v5, :cond_f1

    :cond_e9
    if-eqz v9, :cond_ed

    goto/16 :goto_191

    .line 1396
    :cond_ed
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    goto/16 :goto_191

    :cond_f1
    const/4 v5, 0x1

    if-eq v6, v5, :cond_fa

    const/4 v5, 0x3

    if-eq v6, v5, :cond_fa

    const/4 v5, 0x4

    if-ne v6, v5, :cond_102

    :cond_fa
    if-nez v10, :cond_18c

    .line 1397
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    if-ltz v5, :cond_102

    goto/16 :goto_18c

    :cond_102
    if-eqz v8, :cond_10c

    .line 1405
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v5, :cond_10c

    .line 1408
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto/16 :goto_191

    :cond_10c
    if-eqz v8, :cond_115

    if-nez v6, :cond_115

    .line 1409
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v5, :cond_115

    goto :goto_dd

    .line 1416
    :cond_115
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v5, :cond_11d

    .line 1419
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto/16 :goto_191

    .line 1420
    :cond_11d
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_129

    .line 1425
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    goto/16 :goto_191

    :cond_129
    const/16 v5, 0xe

    if-ne v1, v5, :cond_12f

    goto/16 :goto_18a

    .line 1429
    :cond_12f
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v5, :cond_136

    :cond_133
    move v3, v4

    goto/16 :goto_191

    .line 1433
    :cond_136
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/16 v6, 0xd

    const/16 v8, 0xa

    if-nez v5, :cond_14c

    const/4 v9, 0x2

    if-eq v1, v9, :cond_14a

    if-eq v1, v4, :cond_16c

    if-eq v1, v13, :cond_16c

    if-eq v1, v12, :cond_16c

    if-eq v1, v6, :cond_16c

    goto :goto_14c

    :cond_14a
    move v5, v9

    goto :goto_16d

    :cond_14c
    :goto_14c
    const/4 v9, 0x4

    if-eq v1, v9, :cond_16c

    if-eq v1, v8, :cond_16c

    const/4 v9, 0x6

    if-eq v1, v9, :cond_16c

    if-ne v1, v7, :cond_157

    goto :goto_16c

    :cond_157
    const/4 v7, 0x1

    if-ne v5, v7, :cond_133

    const/4 v3, 0x5

    if-eq v1, v3, :cond_133

    if-eqz v1, :cond_133

    if-eq v1, v7, :cond_133

    const/16 v3, 0x8

    if-eq v1, v3, :cond_133

    const/16 v3, 0x9

    if-eq v1, v3, :cond_133

    .line 1479
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto :goto_191

    :cond_16c
    :goto_16c
    const/4 v5, 0x2

    :goto_16d
    if-ne v3, v5, :cond_191

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->getAllowAllRotations()I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_191

    if-eq v1, v8, :cond_191

    if-ne v1, v6, :cond_17b

    goto :goto_191

    .line 1451
    :cond_17b
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-nez v3, :cond_18a

    if-eq v1, v5, :cond_183

    if-ne v1, v4, :cond_18a

    .line 1456
    :cond_183
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapePreferred:Z

    if-eqz v3, :cond_188

    goto :goto_18a

    :cond_188
    const/4 v3, 0x0

    goto :goto_191

    :cond_18a
    :goto_18a
    move v3, v2

    goto :goto_191

    :cond_18c
    :goto_18c
    if-eqz v10, :cond_18f

    goto :goto_191

    .line 1404
    :cond_18f
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    :cond_191
    :goto_191
    if-eqz v1, :cond_1e2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1d8

    if-eq v1, v13, :cond_1c7

    if-eq v1, v12, :cond_1b6

    packed-switch v1, :pswitch_data_1ec

    if-ltz v3, :cond_1a0

    return v3

    :cond_1a0
    const/4 v0, 0x0

    return v0

    .line 1503
    :pswitch_1a2
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1a9

    return v3

    .line 1506
    :cond_1a9
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v0

    .line 1510
    :pswitch_1ac
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_1b3

    return v3

    .line 1513
    :cond_1b3
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v0

    .line 1529
    :cond_1b6
    :pswitch_1b6
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1bd

    return v3

    .line 1532
    :cond_1bd
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1c4

    return v2

    .line 1535
    :cond_1c4
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0

    .line 1518
    :cond_1c7
    :pswitch_1c7
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_1ce

    return v3

    .line 1521
    :cond_1ce
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_1d5

    return v2

    .line 1524
    :cond_1d5
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0

    .line 1489
    :cond_1d8
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1df

    return v3

    .line 1492
    :cond_1df
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0

    .line 1496
    :cond_1e2
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_1e9

    return v3

    .line 1499
    :cond_1e9
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0

    :pswitch_data_1ec
    .packed-switch 0x6
        :pswitch_1c7
        :pswitch_1b6
        :pswitch_1ac
        :pswitch_1a2
    .end packed-switch
.end method

.method public selectDisplayChangeAnimation(I)Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    .registers 3

    .line 956
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_UI_MODE_ANIMATION:Z

    if-eqz v0, :cond_15

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_15

    .line 957
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    const v0, 0x10a00de

    iput v0, p1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    const v0, 0x10a00dd

    .line 958
    iput v0, p1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    goto :goto_1c

    .line 960
    :cond_15
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iput v0, p1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 963
    :goto_1c
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    return-object p0
.end method

.method public final selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    .registers 15

    .line 911
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 912
    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate(Z)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v2

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v1

    .line 913
    :goto_18
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 914
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v4, :cond_4f

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_2d

    const-wide/16 v7, 0x0

    goto :goto_34

    :cond_2d
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    int-to-long v7, v7

    :goto_34
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x78632eed

    const/16 v11, 0x34

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v4, v13, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v13, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v13, v5

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    const v4, 0x10a00c2

    const v7, 0x10a00c1

    if-eqz v0, :cond_5e

    .line 920
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v4, p0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 921
    iput v7, p0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    return-object p0

    :cond_5e
    if-eqz v3, :cond_92

    .line 925
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getRotationAnimationHint()I

    move-result v0

    if-gez v0, :cond_74

    .line 926
    iget-object v8, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->isTopLayoutFullscreen()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 927
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    :cond_74
    if-eq v0, v1, :cond_88

    if-eq v0, v5, :cond_81

    if-eq v0, v6, :cond_88

    .line 941
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iput v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    goto :goto_98

    .line 936
    :cond_81
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v4, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 937
    iput v7, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    goto :goto_98

    .line 932
    :cond_88
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    const v1, 0x10a00c3

    iput v1, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 933
    iput v7, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    goto :goto_98

    .line 945
    :cond_92
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iput v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 947
    :goto_98
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    return-object p0
.end method

.method public final sendProposedRotationChangeToStatusBarInternal(IZ)V
    .registers 4

    .line 1674
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_e

    .line 1675
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1677
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p0, :cond_15

    .line 1678
    invoke-interface {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onProposedRotationChanged(IZ)V

    :cond_15
    return-void
.end method

.method public setFixedToUserRotation(I)V
    .registers 4

    .line 1017
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1021
    :cond_5
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 1022
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V

    .line 1023
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1b

    .line 1027
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1026
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 1029
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    return-void
.end method

.method public setRotation(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 390
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return-void
.end method

.method public setUserRotation(II)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1034
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 1036
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-ne p1, v2, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    const-string p1, "accelerometer_rotation"

    const/4 v0, -0x2

    .line 1039
    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo p1, "user_rotation"

    .line 1041
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    .line 1048
    :cond_1d
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v0, p2, :cond_23

    .line 1049
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationUpdateCompleted:Z

    .line 1055
    :cond_23
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v3, p1, :cond_2b

    .line 1056
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    move v3, v2

    goto :goto_2c

    :cond_2b
    move v3, v1

    :goto_2c
    if-eq v0, p2, :cond_31

    .line 1060
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    move v3, v2

    .line 1063
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v4, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setUserRotation(Lcom/android/server/wm/DisplayContent;II)V

    if-eqz v3, :cond_3f

    .line 1066
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    :cond_3f
    return-void
.end method

.method public final shouldBlockNeedSensorRunning()Z
    .registers 2

    .line 2013
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2014
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v0, :cond_20

    .line 2015
    invoke-virtual {v0}, Lcom/android/server/wm/CoverPolicy;->isLastCoverAppOpened()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2016
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p0, 0x1

    return p0

    .line 2021
    :cond_20
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {p0}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result p0

    return p0
.end method

.method public shouldRotateSeamlessly(IIZ)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 746
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    .line 747
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 748
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 749
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenVisible()Z

    move-result v4

    .line 750
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenStarting()Z

    move-result v0

    if-nez v4, :cond_26

    if-nez v0, :cond_26

    .line 751
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 753
    invoke-virtual {v3, v4}, Lcom/android/server/wm/FreeformController;->hasVisibleFreeformOrBubbleContainer(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_26
    if-eqz v0, :cond_30

    .line 758
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-string/jumbo v3, "reject_seamless_rot(starting)"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(ZLjava/lang/String;)V

    :cond_30
    move v0, v1

    goto :goto_33

    :cond_32
    move v0, v2

    .line 766
    :goto_33
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result v3

    if-eqz v3, :cond_47

    if-eqz v0, :cond_46

    .line 769
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-string/jumbo p1, "reject_seamless_rot"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(ZLjava/lang/String;)V

    return v2

    :cond_46
    return v1

    :cond_47
    if-eqz v0, :cond_4a

    return v2

    .line 784
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 785
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_5b

    return v1

    .line 796
    :cond_5b
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_b9

    .line 797
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v0, v3, :cond_6a

    goto :goto_b9

    .line 803
    :cond_6a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b9

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    if-eqz v3, :cond_7a

    goto :goto_b9

    .line 807
    :cond_7a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->canRotateSeamlessly(II)Z

    move-result p1

    if-nez p1, :cond_88

    .line 817
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAllowedSeamlessRotation()Z

    move-result p1

    if-eqz p1, :cond_87

    goto :goto_88

    :cond_87
    return v2

    .line 828
    :cond_88
    :goto_88
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_93

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result p1

    if-nez p1, :cond_93

    return v2

    .line 834
    :cond_93
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result p1

    if-nez p1, :cond_b9

    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 835
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result p1

    if-eqz p1, :cond_a8

    goto :goto_b9

    :cond_a8
    if-nez p3, :cond_b8

    .line 842
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance p1, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_b8

    return v2

    :cond_b8
    return v1

    :cond_b9
    :goto_b9
    return v2
.end method

.method public final startRemoteRotation(II)V
    .registers 6

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayRotationController:Landroid/view/IDisplayWindowRotationController;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    .line 645
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    .line 647
    :try_start_a
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mRemoteRotationCallback:Landroid/view/IDisplayWindowRotationCallback;

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/view/IDisplayWindowRotationController;->onRotateDisplay(IIILandroid/view/IDisplayWindowRotationCallback;)V

    .line 649
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 650
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    const-wide/16 v0, 0x320

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    const/4 p1, 0x0

    .line 652
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    return-void
.end method

.method public thawRotation()V
    .registers 3

    .line 1077
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    return-void
.end method

.method public updateOrientation(IZ)Z
    .registers 4

    .line 404
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    if-ne p1, v0, :cond_8

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 407
    :cond_8
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 408
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_17

    .line 409
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 410
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz p1, :cond_17

    .line 411
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 414
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result p0

    return p0
.end method

.method public updateOrientationListener()V
    .registers 2

    .line 1141
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1142
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 1143
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final updateOrientationListenerLw()V
    .registers 16

    .line 1182
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_8f

    .line 1187
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    .line 1188
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    .line 1189
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v2

    .line 1190
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v3

    .line 1194
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_67

    iget v4, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    int-to-long v7, v4

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x6f5952a9

    const/16 v11, 0xfdf

    const/4 v12, 0x0

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v6

    const/4 v14, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v13, v14

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v13, v7

    const/4 v4, 0x4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v13, v4

    const/4 v4, 0x5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v13, v4

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_67
    if-eqz v0, :cond_87

    if-nez v1, :cond_73

    .line 1209
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 1210
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener;->shouldStayEnabledWhileDreaming()Z

    move-result v0

    if-eqz v0, :cond_87

    :cond_73
    if-eqz v2, :cond_87

    if-eqz v3, :cond_87

    .line 1212
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->needSensorRunning()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1215
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-nez v1, :cond_88

    .line 1216
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->enable()V

    goto :goto_88

    :cond_87
    move v5, v6

    :cond_88
    :goto_88
    if-eqz v5, :cond_8f

    .line 1222
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->disable()V

    :cond_8f
    :goto_8f
    return-void
.end method

.method public updateRotationAndSendNewConfigIfChanged()Z
    .registers 2

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 425
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    :cond_c
    return v0
.end method

.method public updateRotationUnchecked(Z)Z
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 447
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 449
    invoke-virtual {v2}, Lcom/android/server/wm/ChangeTransitionController;->isFreezingDisplay()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    move v2, v4

    .line 451
    :goto_18
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    const/4 v6, 0x0

    if-nez v1, :cond_71

    .line 453
    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-lez v7, :cond_32

    .line 456
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_31

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x593f0c8c

    invoke-static {v0, v1, v4, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    return v4

    :cond_32
    if-eqz v2, :cond_35

    goto :goto_63

    .line 466
    :cond_35
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 467
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v7

    if-eqz v7, :cond_50

    .line 468
    invoke-virtual {v7}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 472
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x11755f60

    invoke-static {v0, v1, v4, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    return v4

    .line 475
    :cond_50
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v7, :cond_63

    .line 479
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_62

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x7410831a

    invoke-static {v0, v1, v4, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_62
    return v4

    .line 485
    :cond_63
    :goto_63
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->shouldDeferRotation()Z

    move-result v7

    if-eqz v7, :cond_71

    const/4 v1, -0x2

    .line 488
    iput v1, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    return v4

    .line 497
    :cond_71
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v7, :cond_84

    .line 503
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_83

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x429d369a

    invoke-static {v0, v1, v4, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_83
    return v4

    .line 507
    :cond_84
    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 508
    iget v8, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 509
    invoke-virtual {v0, v8, v7}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v9

    .line 512
    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_ORIENTATION_enabled:Z

    if-eqz v10, :cond_ee

    invoke-static {v9}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    int-to-long v11, v9

    int-to-long v13, v5

    invoke-static {v8}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    int-to-long v3, v8

    invoke-static {v7}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    int-to-long v0, v7

    const/16 v19, 0x6

    invoke-static/range {v19 .. v19}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v10, v6, v17

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v6, v11

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v6, v11

    const/4 v10, 0x3

    aput-object v16, v6, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v6, v4

    const/4 v3, 0x5

    aput-object v18, v6, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v19

    const/4 v0, 0x7

    aput-object v20, v6, v0

    const-string v0, "Computed rotation=%s (%d) for display id=%d based on lastOrientation=%s (%d) and oldRotation=%s (%d), caller=%s"

    const v1, -0x6661463c

    const/16 v4, 0x1114

    invoke-static {v15, v1, v4, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 528
    :cond_ee
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_12f

    int-to-long v0, v5

    invoke-static {v8}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    int-to-long v10, v8

    invoke-static {v9}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-long v12, v9

    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v15, -0x2da92224

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object v4, v3, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    aput-object v6, v3, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const/16 v0, 0x111

    const/4 v4, 0x0

    invoke-static {v14, v15, v0, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_130

    :cond_12f
    const/4 v1, 0x0

    :goto_130
    if-ne v7, v9, :cond_133

    return v1

    :cond_133
    move-object/from16 v0, p0

    if-eqz v2, :cond_13e

    .line 539
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/ChangeTransitionController;->unfreezeDisplay()V

    .line 547
    :cond_13e
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 548
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-eqz v1, :cond_149

    .line 550
    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationForDisplayChange()V

    .line 553
    :cond_149
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_17c

    int-to-long v1, v5

    int-to-long v3, v9

    int-to-long v5, v7

    int-to-long v10, v8

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x6720172c

    const/16 v13, 0x55

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v14, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v14, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v14, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v14, v4

    const/4 v1, 0x0

    invoke-static {v8, v12, v13, v1, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17f

    :cond_17c
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 557
    :goto_17f
    invoke-static {v7, v9}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v4

    if-eq v4, v3, :cond_189

    .line 558
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v2, v3, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 561
    :cond_189
    iput v9, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 564
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v2, :cond_198

    .line 565
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v2, v9}, Lcom/android/server/policy/WindowManagerPolicyExt;->setRotation(I)V

    .line 567
    :cond_198
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v2, :cond_1ad

    iget-boolean v2, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v2, :cond_1ad

    .line 568
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TspStateController;->setOrientation(Z)V

    .line 572
    :cond_1ad
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 574
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e5

    .line 575
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v2

    if-eqz v2, :cond_1c8

    move-object v6, v1

    goto :goto_1d5

    .line 577
    :cond_1c8
    new-instance v6, Landroid/window/TransitionRequestInfo$DisplayChange;

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-direct {v6, v1, v7, v3}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(III)V

    .line 579
    :goto_1d5
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3, v6}, Lcom/android/server/wm/DisplayContent;->requestChangeTransitionIfNeeded(ILandroid/window/TransitionRequestInfo$DisplayChange;)V

    if-eqz v2, :cond_1e3

    .line 585
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wm/DisplayRotation;->startRemoteRotation(II)V

    :cond_1e3
    const/4 v1, 0x1

    return v1

    :cond_1e5
    const/4 v1, 0x1

    .line 590
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iput v1, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 591
    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0xb

    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    move/from16 v1, p1

    .line 594
    invoke-virtual {v0, v7, v9, v1}, Lcom/android/server/wm/DisplayRotation;->shouldRotateSeamlessly(IIZ)Z

    move-result v1

    if-eqz v1, :cond_201

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->prepareSeamlessRotation()V

    goto :goto_204

    .line 600
    :cond_201
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->prepareNormalRotationAnimation()V

    .line 604
    :goto_204
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wm/DisplayRotation;->startRemoteRotation(II)V

    .line 608
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerServiceExt;->postRotationInfoForAudioManager()V

    const/4 v0, 0x1

    return v0
.end method

.method public final updateSettings()Z
    .registers 10

    .line 1703
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1706
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1711
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_14

    move v2, v4

    goto :goto_1b

    :cond_14
    const-string/jumbo v2, "show_rotation_suggestions"

    .line 1713
    invoke-static {v0, v2, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1717
    :goto_1b
    iget v6, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-eq v6, v2, :cond_23

    .line 1718
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    move v2, v5

    goto :goto_24

    :cond_23
    move v2, v4

    :goto_24
    const-string/jumbo v6, "user_rotation"

    .line 1723
    invoke-static {v0, v6, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 1726
    iget v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v7, v6, :cond_35

    .line 1729
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationUpdateCompleted:Z

    .line 1732
    iput v6, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    move v6, v5

    goto :goto_36

    :cond_35
    move v6, v4

    :goto_36
    const-string v7, "accelerometer_rotation"

    .line 1736
    invoke-static {v0, v7, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_40

    move v7, v4

    goto :goto_41

    :cond_40
    move v7, v5

    .line 1740
    :goto_41
    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v8, v7, :cond_49

    .line 1741
    iput v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    move v2, v5

    move v6, v2

    :cond_49
    if-eqz v2, :cond_4e

    .line 1747
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    :cond_4e
    const-string v2, "camera_autorotate"

    .line 1750
    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1753
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    if-eq v2, v0, :cond_5b

    .line 1754
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    goto :goto_5c

    :cond_5b
    move v5, v6

    .line 1757
    :goto_5c
    monitor-exit v1

    return v5

    :catchall_5e
    move-exception p0

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_9 .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public updateUserDependentConfiguration(Landroid/content/res/Resources;)V
    .registers 3

    const v0, 0x111001a

    .line 317
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    return-void
.end method

.method public validateRotationAnimation(IIZ)Z
    .registers 6

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_18

    return v0

    :pswitch_5
    const/4 v1, 0x0

    if-eqz p3, :cond_9

    return v1

    .line 987
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    move-result-object p0

    .line 988
    iget p3, p0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    if-ne p1, p3, :cond_16

    iget p0, p0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    if-ne p2, p0, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    return v0

    :pswitch_data_18
    .packed-switch 0x10a00c2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

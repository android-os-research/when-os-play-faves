.class public Lcom/android/server/wm/ScreenshotExecutor;
.super Ljava/lang/Object;
.source "ScreenshotExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;,
        Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;,
        Lcom/android/server/wm/ScreenshotExecutor$KeyNames;,
        Lcom/android/server/wm/ScreenshotExecutor$ScreenshotOrigin;,
        Lcom/android/server/wm/ScreenshotExecutor$ScreenshotDisplay;,
        Lcom/android/server/wm/ScreenshotExecutor$ScreenshotDirection;,
        Lcom/android/server/wm/ScreenshotExecutor$ScreenshotType;
    }
.end annotation


# static fields
.field public static final EXTRA_CALLING_PACKAGE_NAME:Ljava/lang/String; = "callingPackageName"

.field public static final EXTRA_DISPLAY_ID:Ljava/lang/String; = "displayId"

.field public static final EXTRA_RECT:Ljava/lang/String; = "rect"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final INTENT_SCREENSHOT_EXECUTOR:Ljava/lang/String; = "com.samsung.android.capture.ScreenshotExecutor"

.field public static final INTENT_SWEEP_FULL_SCREEN:Ljava/lang/String; = "com.samsung.android.motion.SWEEP_FULL_SCREEN"

.field public static final INTENT_SWEEP_LEFT:Ljava/lang/String; = "com.samsung.android.motion.SWEEP_LEFT"

.field public static final INTENT_SWEEP_RIGHT:Ljava/lang/String; = "com.samsung.android.motion.SWEEP_RIGHT"

.field public static final PERMISSION_CAPTURE:Ljava/lang/String; = "com.samsung.permission.CAPTURE"

.field public static final PERMISSION_PALM_MOTION:Ljava/lang/String; = "com.samsung.permission.PALM_MOTION"

.field public static final SCREENSHOT_SERVICE_CONNECTION_TIMEOUT:I = 0x2710

.field public static final SCREENSHOT_SERVICE_MAX_CONNECTION:I = 0x3

.field public static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_UI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.android.systemui.screenshot.TakeScreenshotService"

.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mPalmMotionReceiver:Landroid/content/BroadcastReceiver;

.field public final mScreenshotLock:Ljava/lang/Object;

.field public mService:Lcom/android/server/wm/WindowManagerService;

.field public mServiceConnections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public final mTakeScreenshotRunnable:Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;

.field public final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$-x0BtY3xc1GvTFJOCUD9XaA8r6s(Lcom/android/server/wm/ScreenshotExecutor;Landroid/content/ServiceConnection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenshotExecutor;->lambda$takeScreenshot$0(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1rJQhfy4ud4M_Aoj430nuuEGaQA(Lcom/android/server/wm/ScreenshotExecutor;[ZIZLcom/android/server/wm/WindowState;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/ScreenshotExecutor;->lambda$findVisibleTargetWindowByType$2([ZIZLcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qfFmq5uHnd6-qzmD9iTmtoZKdVc(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/ScreenshotExecutor;->lambda$unionAllVisibleWindowsInTask$1(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/ScreenshotExecutor;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfromToString(Lcom/android/server/wm/ScreenshotExecutor;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenshotExecutor;->fromToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDexMode(Lcom/android/server/wm/ScreenshotExecutor;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenshotExecutor;->getDexMode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresetScreenshotConnection(Lcom/android/server/wm/ScreenshotExecutor;Landroid/content/ServiceConnection;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenshotExecutor;->resetScreenshotConnection(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendScreenshotMessage(Lcom/android/server/wm/ScreenshotExecutor;Landroid/os/IBinder;Landroid/content/ServiceConnection;Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ScreenshotExecutor;->sendScreenshotMessage(Landroid/os/IBinder;Landroid/content/ServiceConnection;Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendTakeScreenshotRunnable(Lcom/android/server/wm/ScreenshotExecutor;IIIILandroid/os/Bundle;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ScreenshotExecutor;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtakeScreenshot(Lcom/android/server/wm/ScreenshotExecutor;Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenshotExecutor;->takeScreenshot(Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 16

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mHandler:Landroid/os/Handler;

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mScreenshotLock:Ljava/lang/Object;

    .line 172
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mServiceConnections:Ljava/util/HashSet;

    .line 173
    new-instance v0, Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;-><init>(Lcom/android/server/wm/ScreenshotExecutor;Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTakeScreenshotRunnable:Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;

    .line 499
    new-instance v0, Lcom/android/server/wm/ScreenshotExecutor$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ScreenshotExecutor$3;-><init>(Lcom/android/server/wm/ScreenshotExecutor;)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mPalmMotionReceiver:Landroid/content/BroadcastReceiver;

    .line 538
    new-instance v0, Lcom/android/server/wm/ScreenshotExecutor$4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ScreenshotExecutor$4;-><init>(Lcom/android/server/wm/ScreenshotExecutor;)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    iput-object p1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/android/server/wm/ScreenshotExecutor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 180
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "com.samsung.android.motion.SWEEP_LEFT"

    .line 181
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.android.motion.SWEEP_RIGHT"

    .line 182
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    .line 183
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ScreenshotExecutor;->mPalmMotionReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.samsung.permission.PALM_MOTION"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 187
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "com.samsung.android.capture.ScreenshotExecutor"

    .line 188
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v7, p0, Lcom/android/server/wm/ScreenshotExecutor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/wm/ScreenshotExecutor;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v11, "com.samsung.permission.CAPTURE"

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$findVisibleTargetWindowByType$2([ZIZLcom/android/server/wm/WindowState;)Z
    .registers 7

    .line 748
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ScreenshotExecutor;->canBeScreenshotTarget(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_1f

    .line 751
    :cond_e
    aget-boolean p0, p1, v0

    const/4 v1, 0x1

    if-eqz p0, :cond_14

    return v1

    .line 754
    :cond_14
    iget-object p0, p4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne p0, p2, :cond_1f

    if-eqz p3, :cond_1d

    return v1

    .line 758
    :cond_1d
    aput-boolean v1, p1, v0

    :cond_1f
    :goto_1f
    return v0
.end method

.method private synthetic lambda$takeScreenshot$0(Landroid/content/ServiceConnection;)V
    .registers 2

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenshotExecutor;->resetScreenshotConnection(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public static synthetic lambda$unionAllVisibleWindowsInTask$1(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 405
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 408
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 409
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public final adjustCropForOneHandOp(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8

    .line 796
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object p0

    if-nez p0, :cond_7

    return-object p2

    .line 800
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    if-eqz p2, :cond_28

    .line 801
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 802
    iget p1, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 803
    iget p1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int p1, p1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iget p0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int p0, p0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_43

    .line 806
    :cond_28
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v1, v0

    iget v2, p0, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v3, v2

    float-to-int v0, v0

    iget v4, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v4, v4

    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, p0

    float-to-int v4, v4

    add-int/2addr v0, v4

    float-to-int v2, v2

    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    add-int/2addr v2, p0

    invoke-direct {p2, v1, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_43
    return-object p2
.end method

.method public final canBeScreenshotTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 765
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x100000

    and-int/2addr p0, v0

    if-nez p0, :cond_11

    .line 766
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->hasRelativeLayer()Z

    move-result p0

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public cancelPendingTakeScreenshotRunnable()V
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTakeScreenshotRunnable:Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final findTargetSurfaceForAppWindowTarget(Lcom/android/server/wm/DisplayContent;Ljava/lang/StringBuilder;)Landroid/view/SurfaceControl;
    .registers 4

    .line 778
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    const/4 p1, 0x0

    if-nez p0, :cond_b

    const-string p0, "[invalid focusedApp] "

    .line 780
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    .line 783
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_17

    const-string p0, "[invalid mainAppWindow] "

    .line 785
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    .line 788
    :cond_17
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 789
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 790
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0

    .line 792
    :cond_2e
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public final findTargetSurfaceForSystemWindowTarget(Lcom/android/server/wm/DisplayContent;IZLjava/lang/StringBuilder;)Landroid/view/SurfaceControl;
    .registers 5

    .line 734
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ScreenshotExecutor;->findVisibleTargetWindowByType(Lcom/android/server/wm/DisplayContent;IZ)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_d

    const-string p0, "[invalid systemWindow] "

    .line 737
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    return-object p0

    .line 740
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public final findVisibleTargetWindowByType(Lcom/android/server/wm/DisplayContent;IZ)Lcom/android/server/wm/WindowState;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 747
    new-instance v1, Lcom/android/server/wm/ScreenshotExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/server/wm/ScreenshotExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ScreenshotExecutor;[ZIZ)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public final fromToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_1a

    .line 649
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string p0, "FLEX_PANEL"

    return-object p0

    :pswitch_b
    const-string p0, "BIXBY"

    return-object p0

    :pswitch_e
    const-string p0, "DEX"

    return-object p0

    :pswitch_11
    const-string p0, "QUICK_PANEL"

    return-object p0

    :pswitch_14
    const-string p0, "PALM"

    return-object p0

    :pswitch_17
    const-string p0, "KEY"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public final getDexMode()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isAppWindowType(I)Z
    .registers 3

    const/4 p0, 0x1

    if-lt p1, p0, :cond_8

    const/16 v0, 0x7cf

    if-gt p1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isScreenshotAllowedByPolicy(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    .line 719
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getSecureWindowOnScreen()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 721
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isScreenshotAllowedByPolicy: display has secure window, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public final isSystemWindowType(I)Z
    .registers 2

    const/16 p0, 0x7d0

    if-lt p1, p0, :cond_a

    const/16 p0, 0xbb7

    if-gt p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final putCutoutSafeInsets(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 359
    iget-object p0, p2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_4d

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_9

    goto :goto_4d

    .line 363
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_4d

    .line 364
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_4d

    .line 369
    :cond_16
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p0

    .line 368
    invoke-virtual {p2, p0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    .line 369
    invoke-virtual {p0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    .line 370
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_29

    return-void

    .line 374
    :cond_29
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p0

    .line 375
    iget p2, p0, Landroid/graphics/Rect;->left:I

    const-string/jumbo v0, "safeInsetLeft"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    iget p2, p0, Landroid/graphics/Rect;->top:I

    const-string/jumbo v0, "safeInsetTop"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    iget p2, p0, Landroid/graphics/Rect;->right:I

    const-string/jumbo v0, "safeInsetRight"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    const-string/jumbo p2, "safeInsetBottom"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final putFocusedWindowInfo(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)Z
    .registers 5

    .line 382
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    :goto_a
    const/4 v0, 0x0

    if-nez p2, :cond_e

    return v0

    .line 387
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 388
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/ScreenshotExecutor;->unionAllVisibleWindowsInTask(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 389
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    return v0

    .line 393
    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "windowCapture"

    .line 399
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final putStackBounds(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 349
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    :goto_a
    if-eqz p2, :cond_24

    .line 350
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_24

    .line 354
    :cond_13
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 355
    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    const-string/jumbo p2, "stackBounds"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public final putSystemBarHeight(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V
    .registers 7

    .line 320
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 321
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v3, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 324
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 327
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 329
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 330
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 329
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 334
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const-string/jumbo v1, "statusBarHeight"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result p2

    const/4 v0, 0x1

    const-string v1, "navigationBarHeight"

    if-eq p2, v0, :cond_6d

    const/4 v0, 0x2

    if-eq p2, v0, :cond_65

    .line 343
    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_74

    .line 337
    :cond_65
    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_74

    .line 340
    :cond_6d
    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_74
    return-void
.end method

.method public final putSystemBarVisible(Landroid/os/Message;Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 315
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarVisibleLw()Z

    move-result p0

    iput p0, p1, Landroid/os/Message;->arg1:I

    .line 316
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isNavigationBarVisibleLw()Z

    move-result p0

    iput p0, p1, Landroid/os/Message;->arg2:I

    return-void
.end method

.method public resetScreenshotConnection()V
    .registers 5

    .line 429
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 431
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    if-eqz v2, :cond_11

    .line 433
    iget-object v3, p0, Lcom/android/server/wm/ScreenshotExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_11

    .line 436
    :cond_25
    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 438
    :cond_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final resetScreenshotConnection(Landroid/content/ServiceConnection;)V
    .registers 4

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    if-eqz p1, :cond_17

    .line 421
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 422
    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 425
    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final screenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IILandroid/view/SurfaceControl;ZZ)Landroid/graphics/Bitmap;
    .registers 8

    if-eqz p1, :cond_3e

    .line 820
    new-instance p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 822
    invoke-virtual {p0, p6}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object p0

    .line 823
    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 824
    invoke-virtual {p0, p3, p4}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSize(II)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p5, :cond_19

    move-object p5, p1

    .line 825
    :cond_19
    invoke-virtual {p0, p5}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setLayer(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object p0

    .line 826
    invoke-virtual {p0, p7}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 827
    invoke-virtual {p0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object p0

    .line 830
    invoke-static {p0}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    if-nez p0, :cond_2f

    move-object p0, p1

    goto :goto_33

    .line 831
    :cond_2f
    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_33
    if-nez p0, :cond_3d

    const-string p0, "WindowManager"

    const-string p2, "Failed to take screenshot with sourceCrop"

    .line 833
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_3d
    return-object p0

    .line 817
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayToken must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sendScreenshotMessage(Landroid/os/IBinder;Landroid/content/ServiceConnection;Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;)V
    .registers 9

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 272
    monitor-exit v0

    return-void

    .line 275
    :cond_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 276
    invoke-virtual {p3}, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->getType()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 277
    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/android/server/wm/ScreenshotExecutor$2;

    iget-object v4, p0, Lcom/android/server/wm/ScreenshotExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4, p2}, Lcom/android/server/wm/ScreenshotExecutor$2;-><init>(Lcom/android/server/wm/ScreenshotExecutor;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 284
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "sweepDirection"

    .line 285
    invoke-virtual {p3}, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->getSweepDirection()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "capturedDisplay"

    .line 286
    invoke-virtual {p3}, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->getDisplay()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "capturedOrigin"

    .line 287
    invoke-virtual {p3}, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->getOrigin()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "captureSharedBundle"

    .line 288
    invoke-virtual {p3}, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 290
    iget-object v2, p0, Lcom/android/server/wm/ScreenshotExecutor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_d0

    :try_start_58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 291
    iget-object v3, p0, Lcom/android/server/wm/ScreenshotExecutor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p3}, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->getDisplay()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_87

    .line 293
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/ScreenshotExecutor;->putSystemBarVisible(Landroid/os/Message;Lcom/android/server/wm/DisplayContent;)V

    .line 294
    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/ScreenshotExecutor;->putSystemBarHeight(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V

    .line 295
    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/ScreenshotExecutor;->putStackBounds(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V

    .line 296
    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/ScreenshotExecutor;->putCutoutSafeInsets(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V

    .line 297
    invoke-virtual {p3}, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->getType()I

    move-result p3

    const/16 v4, 0x64

    if-ne p3, v4, :cond_a1

    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/ScreenshotExecutor;->putFocusedWindowInfo(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)Z

    move-result p0

    if-nez p0, :cond_a1

    const/4 p0, 0x1

    .line 298
    iput p0, v1, Landroid/os/Message;->what:I

    goto :goto_a1

    :cond_87
    const-string p0, "WindowManager"

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get screenshot display failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->getDisplay()I

    move-result p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_a1
    :goto_a1
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_58 .. :try_end_a2} :catchall_ca

    :try_start_a2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 305
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_d0

    .line 307
    :try_start_a8
    new-instance p0, Landroid/os/Messenger;

    invoke-direct {p0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_b0} :catch_b1
    .catchall {:try_start_a8 .. :try_end_b0} :catchall_d0

    goto :goto_c8

    :catch_b1
    move-exception p0

    :try_start_b2
    const-string p1, "WindowManager"

    .line 309
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Send screenshot message failed, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_c8
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_b2 .. :try_end_c9} :catchall_d0

    return-void

    :catchall_ca
    move-exception p0

    .line 303
    :try_start_cb
    monitor-exit v2
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    :try_start_cc
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_d0
    move-exception p0

    .line 311
    monitor-exit v0
    :try_end_d2
    .catchall {:try_start_cc .. :try_end_d2} :catchall_d0

    throw p0
.end method

.method public sendTakeScreenshotRunnable(II)V
    .registers 9

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    .line 194
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ScreenshotExecutor;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public final sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V
    .registers 13

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTakeScreenshotRunnable:Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTakeScreenshotRunnable:Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;

    iget-object v1, v0, Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;->info:Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->set(IIIILandroid/os/Bundle;)V

    .line 202
    iget-object p1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mTakeScreenshotRunnable:Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final takeScreenshot(Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;)V
    .registers 8

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2a

    const-string p1, "WindowManager"

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many screenshot service connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor;->mServiceConnections:Ljava/util/HashSet;

    .line 213
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 212
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    monitor-exit v0

    return-void

    .line 217
    :cond_2a
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v2, "WindowManager"

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "takeScreenshot: info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x15

    const/16 v3, 0xa

    const-string v4, "TakeScreenshot"

    .line 241
    invoke-static {v2, v3, v4}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 245
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 246
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 248
    new-instance v3, Lcom/android/server/wm/ScreenshotExecutor$1;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/ScreenshotExecutor$1;-><init>(Lcom/android/server/wm/ScreenshotExecutor;Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;)V

    .line 259
    iget-object p1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 260
    iget-object p1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object p1, p0, Lcom/android/server/wm/ScreenshotExecutor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/ScreenshotExecutor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v3}, Lcom/android/server/wm/ScreenshotExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ScreenshotExecutor;Landroid/content/ServiceConnection;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    :cond_88
    monitor-exit v0

    return-void

    :catchall_8a
    move-exception p0

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_3 .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method public takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZZ)Landroid/graphics/Bitmap;
    .registers 23

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v8, p8

    const-string v5, "WindowManager"

    .line 659
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "takeScreenshotToTargetWindow: display="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", containsTarget="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", crop="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", h="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", useIdentityTransform="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", ignorePolicy="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", caller="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x3

    .line 664
    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 659
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 669
    iget-object v5, v0, Lcom/android/server/wm/ScreenshotExecutor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_76
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 670
    iget-object v6, v0, Lcom/android/server/wm/ScreenshotExecutor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    const/4 v12, 0x0

    if-nez v6, :cond_91

    const-string v0, "WindowManager"

    const-string/jumbo v1, "takeScreenshotToTargetWindow: display is null"

    .line 672
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    monitor-exit v5
    :try_end_8d
    .catchall {:try_start_76 .. :try_end_8d} :catchall_133

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v12

    :cond_91
    if-nez v8, :cond_9e

    .line 676
    :try_start_93
    invoke-virtual {p0, v6}, Lcom/android/server/wm/ScreenshotExecutor;->isScreenshotAllowedByPolicy(Lcom/android/server/wm/DisplayContent;)Z

    move-result v13

    if-nez v13, :cond_9e

    .line 677
    monitor-exit v5
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_133

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v12

    .line 680
    :cond_9e
    :try_start_9e
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ScreenshotExecutor;->isSystemWindowType(I)Z

    move-result v13

    if-eqz v13, :cond_aa

    .line 681
    invoke-virtual {p0, v6, v2, v3, v11}, Lcom/android/server/wm/ScreenshotExecutor;->findTargetSurfaceForSystemWindowTarget(Lcom/android/server/wm/DisplayContent;IZLjava/lang/StringBuilder;)Landroid/view/SurfaceControl;

    move-result-object v2

    :goto_a8
    move-object v13, v2

    goto :goto_b6

    .line 683
    :cond_aa
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ScreenshotExecutor;->isAppWindowType(I)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 684
    invoke-virtual {p0, v6, v11}, Lcom/android/server/wm/ScreenshotExecutor;->findTargetSurfaceForAppWindowTarget(Lcom/android/server/wm/DisplayContent;Ljava/lang/StringBuilder;)Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_a8

    :cond_b5
    move-object v13, v12

    :goto_b6
    if-eqz v8, :cond_c4

    .line 688
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 689
    invoke-virtual {p0, v6, v4}, Lcom/android/server/wm/ScreenshotExecutor;->adjustCropForOneHandOp(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    move-object v3, v2

    goto :goto_c5

    :cond_c4
    move-object v3, v4

    :goto_c5
    const-string v2, "WindowManager"

    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "takeScreenshotToTargetWindow: targetSurface="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", sourceCrop="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    monitor-exit v5
    :try_end_e5
    .catchall {:try_start_9e .. :try_end_e5} :catchall_133

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 698
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    if-eqz v2, :cond_10a

    .line 700
    iget v4, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_101

    .line 703
    iget-object v2, v0, Lcom/android/server/wm/ScreenshotExecutor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManagerInternal;->getRealDisplayToken(I)Landroid/os/IBinder;

    move-result-object v1

    :goto_ff
    move-object v2, v1

    goto :goto_10b

    .line 704
    :cond_101
    iget-object v1, v2, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-eqz v1, :cond_10a

    .line 705
    invoke-static {v1}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    move-result-object v1

    goto :goto_ff

    :cond_10a
    move-object v2, v12

    :goto_10b
    move-object v1, p0

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v13

    move/from16 v7, p7

    move/from16 v8, p8

    .line 708
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/ScreenshotExecutor;->screenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IILandroid/view/SurfaceControl;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_132

    const-string v1, "WindowManager"

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "takeScreenshotToTargetWindow: resultBitmap is null, reasonForFailure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_132
    return-object v0

    :catchall_133
    move-exception v0

    .line 694
    :try_start_134
    monitor-exit v5
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_133

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final unionAllVisibleWindowsInTask(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 3

    .line 404
    new-instance p0, Lcom/android/server/wm/ScreenshotExecutor$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lcom/android/server/wm/ScreenshotExecutor$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Rect;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

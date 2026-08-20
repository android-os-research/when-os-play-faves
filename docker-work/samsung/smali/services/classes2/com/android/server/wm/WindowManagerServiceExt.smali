.class public Lcom/android/server/wm/WindowManagerServiceExt;
.super Ljava/lang/Object;
.source "WindowManagerServiceExt.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;,
        Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsStep;,
        Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper;
    }
.end annotation


# static fields
.field public static final DETACHED_LCD_ID:Ljava/lang/String; = "ff ff ff"

.field public static final HALF_OPEN_MODE_TIME_LOG_MARGIN_MS:J = 0x1388L

.field public static final MSG_SHOW_JIT_HEAD_UP_NOTIFICATION:I = 0x8

.field public static final RO_BOOT_RECOVERY:Ljava/lang/String; = "ro.boot_recovery"

.field public static final RO_BOOT_RECOVERY_SAFE_MODE:I = 0x3

.field public static final SAFE_MODE_PROPERTY_REASONS:[Ljava/lang/String;

.field public static final SAFE_MODE_REASONS:[Ljava/lang/String;

.field public static final SYSFS_LCD_ID:Ljava/lang/String; = "/sys/class/lcd/panel/window_type"

.field public static final TAG:Ljava/lang/String; = "WindowManagerServiceExt"

.field public static final TIPS_EXTRA_DATA:Ljava/lang/String; = "tips_extras"

.field public static final TIPS_EXTRA_DATA2:Ljava/lang/String; = "tips_extras2"

.field public static final TIPS_EXTRA_DATA3:Ljava/lang/String; = "tips_extras3"

.field public static final TIPS_EXTRA_DATA4:Ljava/lang/String; = "tips_extras4"

.field public static final TIPS_EXTRA_RESULT_INTENT:Ljava/lang/String; = "tips_extra_result"

.field public static final TIPS_INTENT_SERVICE_NAME:Ljava/lang/String; = ".TipsIntentService"

.field public static final TIPS_LABS_ACTION_RESULT:Ljava/lang/String; = "tips.labs.action.result"

.field public static final TIPS_LABS_CONTENTS_ID:Ljava/lang/String; = "SETT_0007"

.field public static final TIPS_LABS_EXTRA_USER_ID:Ljava/lang/String; = "userId"

.field public static final TIPS_LABS_RETRY_PERIOD:J

.field public static final TIPS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.tips"

.field public static final TIPS_RESULT_INTENT:Ljava/lang/String; = "intentResult"


# instance fields
.field public mCachedDisplayMaxAspectRatio:F

.field public mCachedDisplayMaxAspectRatioWithCutout:F

.field public mCachedFullScreenAppsSupportMode:I

.field public mCapturedBlurHelper:Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper;

.field public final mContext:Landroid/content/Context;

.field public mCurrentTaskForDisplayId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceStateManagerInternal:Landroid/hardware/devicestate/DeviceStateManagerInternal;

.field public mHalfOpenModeLoggingLastPairPackageNames:Ljava/lang/String;

.field public mHalfOpenResumedPkgName:Ljava/lang/String;

.field public mIgnoreHideNonSystemOverlayWindowApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLastOccludesParentReportedTarget:Lcom/android/server/wm/ActivityRecord;

.field public mLastReportedRotationToAudioManager:I

.field public final mLogHalfOpenMode:Ljava/lang/Runnable;

.field public final mLogResumedActivityForHalfOpenMode:Ljava/lang/Runnable;

.field public mMultiResolutionController:Lcom/android/server/wm/MultiResolutionController;

.field public final mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

.field public mRefreshRateTokenShellCommand:Lcom/android/server/wm/RefreshRateTokenShellCommand;

.field public mSafeModeReason:Ljava/lang/String;

.field public mScreenshotExecutor:Lcom/android/server/wm/ScreenshotExecutor;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mShouldBeHalfOpenModeLogging:Z

.field public mShouldRotateLandscapeBootingUp:Z

.field public mTipsLabsReceiver:Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;

.field public mTipsLabsStepAsUser:Landroid/util/SparseIntArray;

.field public mTspStateController:Lcom/android/server/wm/TspStateController;


# direct methods
.method public static synthetic $r8$lambda$8JtfoDn-DmrmZoW41Zz6cujSl6A(Lcom/android/server/wm/WindowManagerServiceExt;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->logHalfOpenMode()V

    return-void
.end method

.method public static synthetic $r8$lambda$PjItrPf3_LC9psXwIrDCimVH2zI(IILandroid/os/IBinder;Lcom/android/server/wm/WindowState;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerServiceExt;->lambda$findTargetSPenGestureWindow$4(IILandroid/os/IBinder;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QT61RKocICu6JT9J-30Q9ZkjdcA(IIILandroid/os/IBinder;Lcom/android/server/wm/WindowState;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerServiceExt;->lambda$findTargetSmartClipWindow$0(IIILandroid/os/IBinder;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$W5dQVHTvHhzQrv-5T1UrTPinp0I(Lcom/android/server/wm/WindowManagerServiceExt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->lambda$showJustInTimeTipsLabsIfNeededLocked$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$X_FRMH6BqBv0SGPKKkoJDNAy7bg(Lcom/android/server/wm/WindowManagerServiceExt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z0O8vZUTU_wUL3tlFdt9v2OTOIQ(Lcom/android/server/wm/WindowManagerServiceExt;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->lambda$showJustInTimeTipsLabsIfNeededLocked$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kyDP-lFax15LUWqS6MfYnrpONas(Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->lambda$updateOccludeTargetIfNeeded$5(Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zum27viCbGmKtg4nRL7xBf-xW5A(Landroid/media/AudioManager;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->lambda$setRotationInfoForAudioManager$1(Landroid/media/AudioManager;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmTipsLabsStepAsUser(Lcom/android/server/wm/WindowManagerServiceExt;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTipsLabsStepAsUser:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTIPS_LABS_RETRY_PERIOD()J
    .registers 2

    sget-wide v0, Lcom/android/server/wm/WindowManagerServiceExt;->TIPS_LABS_RETRY_PERIOD:J

    return-wide v0
.end method

.method public static constructor <clinit>()V
    .registers 5

    const-string v0, "KEYCODE_MENU"

    const-string v1, "KEYCODE_S"

    const-string v2, "KEYCODE_DPAD_CENTER"

    const-string v3, "TRACKBALL_BTN_MOUSE"

    const-string v4, "KEYCODE_VOLUME_DOWN"

    .line 684
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceExt;->SAFE_MODE_REASONS:[Ljava/lang/String;

    const-string/jumbo v0, "persist.sys.safemode"

    const-string/jumbo v1, "ro.sys.safemode"

    const-string/jumbo v2, "ro.boot_recovery"

    .line 688
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceExt;->SAFE_MODE_PROPERTY_REASONS:[Ljava/lang/String;

    .line 753
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const/16 v1, 0x3c

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    mul-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wm/WindowManagerServiceExt;->TIPS_LABS_RETRY_PERIOD:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 579
    iput v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastReportedRotationToAudioManager:I

    .line 1229
    iput v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedFullScreenAppsSupportMode:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 1230
    iput v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedDisplayMaxAspectRatio:F

    .line 1231
    iput v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedDisplayMaxAspectRatioWithCutout:F

    const/4 v0, 0x0

    .line 1399
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastOccludesParentReportedTarget:Lcom/android/server/wm/ActivityRecord;

    .line 1459
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCurrentTaskForDisplayId:Landroid/util/SparseArray;

    .line 1500
    new-instance v0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLogResumedActivityForHalfOpenMode:Ljava/lang/Runnable;

    .line 1520
    new-instance v0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLogHalfOpenMode:Ljava/lang/Runnable;

    .line 144
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 146
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p0}, Lcom/android/server/policy/WindowManagerPolicy;->createPolicyExtension(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;)Lcom/android/server/policy/WindowManagerPolicyExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    .line 149
    new-instance v1, Lcom/android/server/wm/ScreenshotExecutor;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wm/ScreenshotExecutor;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotExecutor:Lcom/android/server/wm/ScreenshotExecutor;

    .line 151
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v1, :cond_47

    .line 152
    new-instance v1, Lcom/android/server/wm/TspStateController;

    invoke-direct {v1, p1}, Lcom/android/server/wm/TspStateController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 153
    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicyExt;->setTspStateController(Lcom/android/server/wm/TspStateController;)V

    .line 156
    :cond_47
    new-instance v0, Ljava/util/ArrayList;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070194

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnoreHideNonSystemOverlayWindowApps:Ljava/util/List;

    .line 161
    new-instance v0, Lcom/android/server/wm/MultiResolutionController;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/MultiResolutionController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMultiResolutionController:Lcom/android/server/wm/MultiResolutionController;

    .line 164
    iget-object p0, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.sec.feature.cover"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_75

    .line 166
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->enable()V

    .line 170
    :cond_75
    invoke-static {p2}, Lcom/android/server/wm/ExtraDisplayFactory;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ExtraDisplayController;

    move-result-object p0

    iput-object p0, p2, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    .line 178
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz p0, :cond_82

    .line 179
    invoke-static {p2}, Lcom/android/server/wm/CustomLetterboxConfiguration;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    :cond_82
    return-void
.end method

.method public static dumpCriticalInfo(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 637
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceExt;->getWmLoggingFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_4a

    .line 638
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 640
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "dumpCriticalInfo"

    .line 641
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    :goto_27
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_39

    if-eqz p2, :cond_32

    .line 644
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    :cond_32
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_27

    .line 649
    :cond_39
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_3c
    .catchall {:try_start_e .. :try_end_3c} :catchall_40

    .line 650
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_4a

    goto :goto_4a

    :catchall_40
    move-exception p0

    .line 637
    :try_start_41
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception p1

    :try_start_46
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_49
    throw p0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4a} :catch_4a

    :catch_4a
    :goto_4a
    return-void
.end method

.method public static getWmLoggingFile()Ljava/io/File;
    .registers 3

    .line 633
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wmlogs.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$findTargetSPenGestureWindow$4(IILandroid/os/IBinder;Lcom/android/server/wm/WindowState;)Z
    .registers 11

    .line 974
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 975
    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 977
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    return v3

    :cond_11
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_16

    return v3

    .line 987
    :cond_16
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 988
    invoke-virtual {p3, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 989
    invoke-virtual {v2, p0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_25

    return v3

    .line 994
    :cond_25
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 995
    iget v2, p3, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_50

    .line 1000
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, p3, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1001
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v6

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1002
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1003
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_74

    :cond_50
    const/4 v5, 0x2

    if-eq v2, v5, :cond_56

    const/4 v5, 0x3

    if-ne v2, v5, :cond_74

    .line 1011
    :cond_56
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1012
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v6

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1013
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1014
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_74
    :goto_74
    and-int/lit8 v1, v1, 0x28

    if-nez v1, :cond_7a

    move v1, v4

    goto :goto_7b

    :cond_7a
    move v1, v3

    .line 1020
    :goto_7b
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_83

    if-eqz v1, :cond_8c

    .line 1023
    :cond_83
    iget-object p0, p3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-eq p0, p2, :cond_8c

    return v4

    :cond_8c
    return v3
.end method

.method public static synthetic lambda$findTargetSmartClipWindow$0(IIILandroid/os/IBinder;Lcom/android/server/wm/WindowState;)Z
    .registers 11

    .line 337
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 338
    iget-object v1, p4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 339
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 341
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ScreenshotAnimation"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    return v4

    .line 346
    :cond_1d
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-nez v3, :cond_24

    return v4

    :cond_24
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_29

    return v4

    .line 356
    :cond_29
    invoke-virtual {p4, v0}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 357
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_33

    return v4

    :cond_33
    const/16 v3, 0xa2c

    if-ne v1, v3, :cond_38

    return v4

    :cond_38
    const/4 v1, 0x1

    if-ne p2, v1, :cond_4a

    .line 369
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 370
    invoke-virtual {p4, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 371
    invoke-virtual {v3, p0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-nez v3, :cond_4a

    return v4

    :cond_4a
    if-nez p2, :cond_59

    .line 377
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-ne p4, p2, :cond_59

    return v4

    .line 391
    :cond_59
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 392
    iget p2, p4, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-ne p2, v1, :cond_83

    .line 396
    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v5

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 397
    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v5

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 398
    iget p2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v5

    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 399
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v3

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_c6

    :cond_83
    const/4 v3, 0x2

    if-ne p2, v3, :cond_a5

    .line 404
    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v5

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 405
    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v5

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 406
    iget p2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v5

    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 407
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v3

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_c6

    :cond_a5
    const/4 v3, 0x3

    if-ne p2, v3, :cond_c6

    .line 412
    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v5

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 413
    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v5

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 414
    iget p2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v5

    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 415
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v3

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_c6
    :goto_c6
    and-int/lit8 p2, v2, 0x28

    if-nez p2, :cond_cc

    move p2, v1

    goto :goto_cd

    :cond_cc
    move p2, v4

    .line 419
    :goto_cd
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_d5

    if-eqz p2, :cond_de

    .line 423
    :cond_d5
    iget-object p0, p4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-eq p0, p3, :cond_de

    return v1

    :cond_de
    return v4
.end method

.method private synthetic lambda$new$6()V
    .registers 2

    .line 1500
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mHalfOpenResumedPkgName:Ljava/lang/String;

    const-string v0, "W010"

    invoke-static {v0, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setRotationInfoForAudioManager$1(Landroid/media/AudioManager;Ljava/lang/String;)V
    .registers 2

    .line 600
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showJustInTimeTipsLabsIfNeededLocked$2()V
    .registers 7

    .line 787
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "tips.labs.action.result"

    .line 788
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTipsLabsReceiver:Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$showJustInTimeTipsLabsIfNeededLocked$3(I)V
    .registers 8

    .line 794
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v0, "tips.labs.action.result"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android"

    .line 795
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "userId"

    .line 796
    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SETT_0007"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v5, p1

    .line 797
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerServiceExt;->showJustInTimeTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic lambda$updateOccludeTargetIfNeeded$5(Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 1413
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1414
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 1415
    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1416
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 1417
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1419
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result p0

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public static logCriticalInfo(Ljava/lang/String;)V
    .registers 7

    .line 658
    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceExt;->getWmLoggingFile()Ljava/io/File;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long v1, v1, v3

    if-lez v1, :cond_30

    .line 660
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".backup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 661
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceExt;->getWmLoggingFile()Ljava/io/File;

    move-result-object v0

    .line 663
    :cond_30
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 664
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 665
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 666
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 670
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1fc

    const/4 v1, -0x1

    .line 669
    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_74} :catch_74

    :catch_74
    return-void
.end method


# virtual methods
.method public applyScreenRatioToSizeDensity(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;I)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v1, p3

    .line 1135
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DEFAULT_HIGH_RESOLUTION_DEVICE:Z

    const-string v8, "WindowManagerServiceExt"

    const/4 v9, 0x0

    if-eqz v2, :cond_13

    const-string v0, "Use the default resolution for high resolution"

    .line 1136
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_13
    if-eqz p2, :cond_1c

    .line 1140
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c

    return v9

    .line 1144
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerServiceExt;->isLCDDetached()Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v0, "LCD detached.. skip to set high performance concept"

    .line 1145
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 1153
    :cond_28
    iget v2, v7, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    int-to-double v2, v2

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v10

    double-to-int v12, v2

    .line 1154
    iget v2, v7, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, v10

    double-to-int v13, v2

    .line 1155
    iget v2, v7, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    float-to-double v2, v2

    mul-double/2addr v2, v10

    double-to-float v5, v2

    .line 1156
    iget v2, v7, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    float-to-double v2, v2

    mul-double/2addr v2, v10

    double-to-float v6, v2

    if-lez v1, :cond_41

    goto :goto_43

    .line 1160
    :cond_41
    iget v1, v7, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    :goto_43
    int-to-double v1, v1

    mul-double/2addr v1, v10

    double-to-int v1, v1

    move v14, v1

    .line 1162
    iget v1, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    const/4 v15, 0x1

    if-ne v1, v12, :cond_5a

    iget v1, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v1, v13, :cond_51

    goto :goto_5a

    .line 1166
    :cond_51
    iget v1, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v1, v14, :cond_58

    .line 1167
    iput v14, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    goto :goto_62

    :cond_58
    move v1, v9

    goto :goto_63

    :cond_5a
    :goto_5a
    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    move v4, v14

    .line 1164
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    :goto_62
    move v1, v15

    .line 1171
    :goto_63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " init size: "

    .line 1172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 1173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    .line 1174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    .line 1175
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "dpi"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " base size: "

    .line 1176
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " baseScreenRatio: "

    .line 1179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyScreenRatioToSizeDensity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_ef

    .line 1184
    iget v2, v7, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v2, v12, :cond_d3

    iget v2, v7, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v2, v13, :cond_d5

    .line 1186
    :cond_d3
    iput-boolean v15, v7, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    .line 1188
    :cond_d5
    iget v2, v7, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-eq v2, v14, :cond_db

    .line 1189
    iput-boolean v15, v7, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    .line 1192
    :cond_db
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget v3, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v4, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v2, v7, v3, v4}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedSize(Lcom/android/server/wm/DisplayContent;II)V

    .line 1194
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget v2, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {v0, v7, v2, v9}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V

    :cond_ef
    return v1
.end method

.method public cancelPendingTakeScreenshotRunnable()V
    .registers 1

    .line 1103
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotExecutor:Lcom/android/server/wm/ScreenshotExecutor;

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenshotExecutor;->cancelPendingTakeScreenshotRunnable()V

    return-void
.end method

.method public clearTspDeadzone(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 6

    .line 471
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_32

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 474
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-nez p1, :cond_21

    const-string p0, "WindowManagerServiceExt"

    const-string p1, "clearTspDeadzone failed. The win is null."

    .line 476
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 479
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->clearTspDeadzone()V

    .line 480
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->updateTspStateControllerWindowPolicyLocked(Lcom/android/server/wm/WindowState;)V

    .line 481
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_32

    :catchall_2c
    move-exception p0

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_32
    :goto_32
    return-void
.end method

.method public dispatchSPenGestureEvent(II[Landroid/view/InputEvent;Landroid/os/IBinder;)V
    .registers 8

    .line 933
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 934
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_9d

    int-to-float v0, p1

    int-to-float v1, p2

    .line 940
    invoke-virtual {p0, v0, v1, p4}, Lcom/android/server/wm/WindowManagerServiceExt;->findTargetSPenGestureWindow(FFLandroid/os/IBinder;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    const-string p4, "WindowManagerServiceExt"

    if-nez p0, :cond_51

    .line 942
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dispatchSPenGestureEvent : Could not find the target window!"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p3, :cond_44

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " x="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " y="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_44
    const-string p1, ""

    :goto_46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 942
    invoke-static {p4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 947
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p2, 0x7e3

    if-ne p1, p2, :cond_65

    .line 948
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_64

    const-string p0, "dispatchSPenGestureEvent : The target window is NavBar"

    .line 949
    invoke-static {p4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return-void

    .line 954
    :cond_65
    :try_start_65
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p1, :cond_7d

    .line 955
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dispatchSPenGestureEvent : The target window is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_7d
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p0, p3}, Landroid/view/IWindow;->dispatchSPenGestureEvent([Landroid/view/InputEvent;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_82} :catch_83

    goto :goto_9c

    :catch_83
    move-exception p0

    .line 959
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to call IWindow.dispatchSmartClipRemoteRequest()! e="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 959
    invoke-static {p4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9c
    return-void

    .line 936
    :cond_9d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "only system signature can use dispatchSPenGestureEvent, but UID("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") has not system signature"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V
    .registers 9

    const-string v0, "WindowManagerServiceExt"

    if-nez p3, :cond_a

    const-string p0, "dispatchSmartClipRemoteRequest : request is null!"

    .line 287
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 292
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    .line 293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    int-to-float v1, p1

    int-to-float v2, p2

    .line 295
    iget v3, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mWindowTargetingType:I

    invoke-virtual {p0, v1, v2, p4, v3}, Lcom/android/server/wm/WindowManagerServiceExt;->findTargetSmartClipWindow(FFLandroid/os/IBinder;I)Lcom/android/server/wm/WindowState;

    move-result-object p4

    if-eqz p4, :cond_44

    .line 300
    iget p0, p4, Lcom/android/server/wm/WindowState;->mLayer:I

    iput p0, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mTargetWindowLayer:I

    .line 302
    :try_start_24
    iget-object p0, p4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p0, p3}, Landroid/view/IWindow;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2a

    goto :goto_95

    :catch_2a
    move-exception p0

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dispatchSmartClipRemoteRequest : Failed to call IWindow.dispatchSmartClipRemoteRequest()! e="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 308
    :cond_44
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchSmartClipRemoteRequest : Could not find the target window! x="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " y="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManagerServiceExt_SmartClip"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "dispatchSmartClipRemoteRequest : Send empty response..."

    .line 311
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "spengestureservice"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 315
    :try_start_72
    new-instance p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    iget p4, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    iget p3, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    const/4 v0, 0x0

    invoke-direct {p1, p4, p3, v0}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    :try_end_7f
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_7f} :catch_80

    goto :goto_95

    :catch_80
    move-exception p0

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dispatchSmartClipRemoteRequest : Failed to send the empty result! e="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_95
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, "WINDOW MANAGER EXTENSION (dumpsys window extension)"

    .line 1051
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mSafeModeReason:Ljava/lang/String;

    const-string v1, "  "

    if-eqz v0, :cond_16

    .line 1055
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mSafeModeReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1061
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMultiResolutionController:Lcom/android/server/wm/MultiResolutionController;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/MultiResolutionController;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const/4 v0, 0x0

    .line 1065
    invoke-static {v1, p1, v0}, Lcom/android/server/wm/WindowManagerServiceExt;->dumpCriticalInfo(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTipsLabsStepAsUser:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_67

    .line 1070
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTipsLabsShownStepAsUser"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1071
    :goto_2c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTipsLabsStepAsUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_64

    .line 1072
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTipsLabsStepAsUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 1073
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTipsLabsStepAsUser:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1074
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1076
    :cond_64
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1080
    :cond_67
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_70

    .line 1081
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/TspStateController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1085
    :cond_70
    invoke-static {v1, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1088
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz p0, :cond_7a

    .line 1089
    invoke-static {p1, v1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_7a
    return-void
.end method

.method public executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8

    .line 187
    array-length v0, p2

    const/4 v1, 0x0

    if-ge p3, v0, :cond_9

    .line 188
    array-length v0, p2

    sub-int/2addr v0, p3

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_b

    :cond_9
    new-array v0, v1, [Ljava/lang/String;

    .line 189
    :goto_b
    array-length v2, p2

    sub-int/2addr v2, p3

    invoke-static {p2, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    :try_start_10
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageFeatureManagerService:Lcom/android/server/wm/PackageFeatureManagerService;

    invoke-virtual {p2, p1, v0, p4}, Lcom/android/server/wm/PackageFeatureManagerService;->executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_20

    return p3

    .line 198
    :cond_20
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_25} :catch_bc

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 199
    invoke-static {}, Lcom/android/server/wm/PackageSettingsManager;->getInstance()Lcom/android/server/wm/PackageSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p4, v0, p1}, Lcom/android/server/wm/PackageSettingsManager;->executeAllShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 201
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_b6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p3

    .line 203
    :cond_37
    :try_start_37
    monitor-exit p2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_b6

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 205
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    if-eqz p2, :cond_48

    .line 206
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mRefreshRateTokenShellCommand:Lcom/android/server/wm/RefreshRateTokenShellCommand;

    invoke-virtual {p2, p4, v0, p1}, Lcom/android/server/wm/RefreshRateTokenShellCommand;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-eqz p2, :cond_48

    return p3

    .line 210
    :cond_48
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p2, :cond_6c

    .line 211
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_51} :catch_bc

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 212
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p4, v0, p1, v2}, Lcom/android/server/wm/UdcCutoutPolicy;->executeShellCommandLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 213
    monitor-exit p2
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_66

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p3

    .line 215
    :cond_61
    :try_start_61
    monitor-exit p2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_66

    :try_start_62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_bc

    goto :goto_6c

    :catchall_66
    move-exception p0

    :try_start_67
    monitor-exit p2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    :try_start_68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 217
    :cond_6c
    :goto_6c
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz p2, :cond_77

    .line 218
    invoke-static {p4, v0, p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-eqz p2, :cond_77

    return p3

    .line 223
    :cond_77
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p2
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7c} :catch_bc

    :try_start_7c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 224
    invoke-static {p4, v0, p1}, Lcom/android/server/wm/BoundsCompatAlignmentController;->executeShellCommandLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 226
    monitor-exit p2
    :try_end_86
    .catchall {:try_start_7c .. :try_end_86} :catchall_b0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p3

    .line 228
    :cond_8a
    :try_start_8a
    monitor-exit p2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_b0

    :try_start_8b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 230
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_STATUS_LOGGING:Z

    if-eqz p2, :cond_c0

    .line 231
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_97} :catch_bc

    :try_start_97
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 232
    invoke-static {p4, v0, p1}, Lcom/android/server/wm/BoundsCompatStatusLogger;->executeShellCommandLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 234
    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_aa

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p3

    .line 236
    :cond_a5
    :try_start_a5
    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_aa

    :try_start_a6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_bc

    goto :goto_c0

    :catchall_aa
    move-exception p1

    :try_start_ab
    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    :try_start_ac
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b0} :catch_bc

    :catchall_b0
    move-exception p0

    .line 228
    :try_start_b1
    monitor-exit p2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    :try_start_b2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b6} :catch_bc

    :catchall_b6
    move-exception p0

    .line 203
    :try_start_b7
    monitor-exit p2
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    :try_start_b8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bc} :catch_bc

    :catch_bc
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c0
    :goto_c0
    return v1
.end method

.method public final findTargetSPenGestureWindow(FFLandroid/os/IBinder;)Lcom/android/server/wm/WindowState;
    .registers 6

    .line 965
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    float-to-int p1, p1

    float-to-int p2, p2

    .line 968
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_1f

    const-string p0, "WindowManagerServiceExt"

    const-string p1, "findTargetSPenGestureWindow : failed to get display content"

    .line 970
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 971
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 973
    :cond_1f
    :try_start_1f
    new-instance v1, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda7;-><init>(IILandroid/os/IBinder;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    .line 1029
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_2d
    move-exception p0

    .line 1030
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final findTargetSmartClipWindow(FFLandroid/os/IBinder;I)Lcom/android/server/wm/WindowState;
    .registers 6

    float-to-int p1, p1

    float-to-int p2, p2

    .line 329
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_13

    const-string p0, "WindowManagerServiceExt"

    const-string p1, "findTargetSmartClipWindow : failed to get display content"

    .line 332
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 336
    :cond_13
    new-instance v0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda9;-><init>(IIILandroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public finishLandscapeBootingUpIfNeededLocked()Z
    .registers 5

    .line 912
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mShouldRotateLandscapeBootingUp:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v0, "WindowManagerServiceExt"

    const-string v2, "mShouldRotateLandscapeBootingUp = false"

    .line 915
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mShouldRotateLandscapeBootingUp:Z

    .line 917
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_29

    .line 919
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v2, 0x3e8

    const/4 p0, -0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;JI)V

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public getDisplayIdForPointerIcon()I
    .registers 1

    .line 1357
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->getDisplayIdForPointerIcon()I

    move-result p0

    return p0
.end method

.method public getDisplayMaxAspectRatioLocked()F
    .registers 3

    .line 1282
    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedDisplayMaxAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    return v0

    .line 1285
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->getFullScreenAppsSupportModeLocked()I

    .line 1286
    iget p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedDisplayMaxAspectRatio:F

    return p0
.end method

.method public getDisplayMaxAspectRatioWithCutoutLocked()F
    .registers 3

    .line 1290
    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedDisplayMaxAspectRatioWithCutout:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    return v0

    .line 1293
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->getFullScreenAppsSupportModeLocked()I

    .line 1294
    iget p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedDisplayMaxAspectRatioWithCutout:F

    return p0
.end method

.method public getFocusedTaskIdWithoutHome()I
    .registers 2

    .line 1340
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 1341
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1342
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1343
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    return p0

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public getFullScreenAppsSupportModeLocked()I
    .registers 10

    .line 1234
    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedFullScreenAppsSupportMode:I

    if-ltz v0, :cond_5

    return v0

    .line 1239
    :cond_5
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 1240
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 1242
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v3, v2, :cond_84

    aget v5, v1, v3

    .line 1243
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v6, v5, v0}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 1245
    iget v5, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_26

    goto :goto_81

    .line 1249
    :cond_26
    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1250
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1251
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 1252
    iget v8, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedDisplayMaxAspectRatio:F

    cmpl-float v8, v7, v8

    if-lez v8, :cond_3d

    .line 1253
    iput v7, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedDisplayMaxAspectRatioWithCutout:F

    .line 1255
    :cond_3d
    iget-object v8, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v8, :cond_70

    invoke-virtual {v8}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_70

    or-int/lit8 v4, v4, 0x2

    .line 1258
    iget-object v7, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v7

    iget-object v8, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1259
    invoke-virtual {v8}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    .line 1260
    iget-object v7, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v7

    iget-object v8, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1261
    invoke-virtual {v8}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 1262
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v7, v5

    :cond_70
    const v5, 0x3fee147b    # 1.86f

    cmpl-float v5, v7, v5

    if-lez v5, :cond_79

    or-int/lit8 v4, v4, 0x1

    .line 1268
    :cond_79
    iget v5, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedDisplayMaxAspectRatio:F

    cmpl-float v5, v7, v5

    if-lez v5, :cond_81

    .line 1269
    iput v7, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedDisplayMaxAspectRatio:F

    :cond_81
    :goto_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1273
    :cond_84
    iput v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedFullScreenAppsSupportMode:I

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FullScreenAppsSupportMode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DisplayMaxAspectRatio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedDisplayMaxAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", DisplayMaxAspectRatioWithCutout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCachedDisplayMaxAspectRatioWithCutout:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManagerServiceExt"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public getInitialDisplayProperties(I)[I
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 615
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 616
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 617
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p1, 0x0

    .line 618
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    aput v2, v0, p1

    const/4 p1, 0x1

    .line 619
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    aput v2, v0, p1

    const/4 p1, 0x2

    .line 620
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    aput p0, v0, p1

    .line 622
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_33
    move-exception p0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getPenState()I
    .registers 4

    const/4 v0, -0x1

    .line 1036
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v1, -0x100

    const/16 v2, 0x13

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_15

    if-nez p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    if-lez p0, :cond_1c

    const/4 p0, 0x0

    return p0

    :catch_15
    const-string p0, "WindowManagerServiceExt"

    const-string v1, "getPenState failed"

    .line 1044
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return v0
.end method

.method public getProcessName(I)Ljava/lang/String;
    .registers 3

    .line 888
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 889
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 890
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_1d
    move-exception p0

    .line 891
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getVisibleWindowInfoList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 274
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 276
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 277
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getVisibleWindowInfoList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 279
    :cond_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return-object p0

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public handleDexDpadShortcut(Landroid/os/IBinder;Landroid/view/KeyEvent;)V
    .registers 3

    return-void
.end method

.method public handleDexMetaKeyForSnapping()V
    .registers 1

    return-void
.end method

.method public ignoreHideNoneSystemOverlayWindowAllowed(Ljava/lang/String;)Z
    .registers 2

    .line 1116
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnoreHideNonSystemOverlayWindowApps:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isLCDDetached()Z
    .registers 3

    .line 1204
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->readResultFromFile()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ff ff ff"

    .line 1205
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCD Detached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManagerServiceExt"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public isRunningRecentAnimation()Z
    .registers 1

    .line 608
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public launchHomeForDesktopMode(I)V
    .registers 2

    .line 627
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {p0, p1}, Lcom/android/server/policy/WindowManagerPolicyExt;->launchHomeForDesktopMode(I)V

    return-void
.end method

.method public final logHalfOpenMode()V
    .registers 4

    const-string v0, "W010"

    .line 1523
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_d

    .line 1524
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 1522
    :goto_e
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x1

    .line 1526
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mShouldBeHalfOpenModeLogging:Z

    .line 1528
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget-object v1, v1, Lcom/android/server/wm/ExtraDisplayController;->as:Lcom/android/server/wm/ExtraDisplayFactory;

    .line 1529
    invoke-virtual {v1}, Lcom/android/server/wm/ExtraDisplayFactory;->flexible()Lcom/android/server/wm/FlexibleDisplayController;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 1531
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1533
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Lcom/android/server/wm/FlexibleDisplayController;->getFoldState()I

    move-result v1

    .line 1534
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->shouldBeHalfOpenModeLogging(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1535
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->logHalfOpenModeWithPairAppIfNeededLocked(I)V

    .line 1538
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3f
    move-exception p0

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public logHalfOpenModeFromResumeTopActivityIfNeededLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 1465
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget-object v0, v0, Lcom/android/server/wm/ExtraDisplayController;->as:Lcom/android/server/wm/ExtraDisplayFactory;

    invoke-virtual {v0}, Lcom/android/server/wm/ExtraDisplayFactory;->flexible()Lcom/android/server/wm/FlexibleDisplayController;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 1469
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/FlexibleDisplayController;->getFoldState()I

    move-result v0

    .line 1470
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerServiceExt;->shouldBeHalfOpenModeLogging(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    .line 1472
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mHalfOpenModeLoggingLastPairPackageNames:Ljava/lang/String;

    return-void

    .line 1477
    :cond_1b
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerServiceExt;->logHalfOpenModeWithPairAppIfNeededLocked(I)V

    if-eqz p1, :cond_24

    .line 1479
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :cond_24
    if-nez v2, :cond_27

    return-void

    .line 1483
    :cond_27
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v1

    .line 1484
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1485
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCurrentTaskForDisplayId:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3e

    .line 1486
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_3e

    return-void

    .line 1489
    :cond_3e
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCurrentTaskForDisplayId:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1490
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mHalfOpenResumedPkgName:Ljava/lang/String;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_63

    .line 1492
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLogResumedActivityForHalfOpenMode:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1493
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLogResumedActivityForHalfOpenMode:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6b

    :cond_63
    const/4 p0, 0x1

    if-ne v0, p0, :cond_6b

    const-string p0, "W011"

    .line 1495
    invoke-static {p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public logHalfOpenModeFromStateChangedIfNeededLocked(I)V
    .registers 5

    .line 1504
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLogHalfOpenMode:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_15

    .line 1506
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mShouldBeHalfOpenModeLogging:Z

    const-string p0, "W001"

    .line 1507
    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2a

    .line 1511
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mShouldBeHalfOpenModeLogging:Z

    .line 1513
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_24

    .line 1514
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_24
    const-string p0, "W004"

    .line 1512
    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1517
    :cond_2a
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLogHalfOpenMode:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final logHalfOpenModeWithPairAppIfNeededLocked(I)V
    .registers 4

    .line 1547
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 1548
    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingController;->getTopPairPackageNamesLocked()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1549
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 1550
    :goto_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mHalfOpenModeLoggingLastPairPackageNames:Ljava/lang/String;

    .line 1551
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const/4 v1, 0x2

    if-ne p1, v1, :cond_29

    const-string p1, "W012"

    .line 1553
    invoke-static {p1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_29
    const/4 v1, 0x1

    if-ne p1, v1, :cond_31

    const-string p1, "W013"

    .line 1556
    invoke-static {p1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    :cond_31
    :goto_31
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mHalfOpenModeLoggingLastPairPackageNames:Ljava/lang/String;

    return-void
.end method

.method public makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 1308
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->okToDisplay()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 1311
    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 1312
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v0, 0xb

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    :cond_1b
    return-void
.end method

.method public moveDisplayToTop(I)V
    .registers 5

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 559
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 560
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eq p0, p1, :cond_27

    .line 561
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 564
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2c
    move-exception p0

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V
    .registers 3

    .line 536
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 537
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {p0, p1}, Lcom/android/server/policy/WindowManagerPolicyExt;->onLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V

    .line 538
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onProcessesReady()V
    .registers 2

    .line 745
    new-instance v0, Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCapturedBlurHelper:Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper;

    return-void
.end method

.method public postRotationInfoForAudioManager()V
    .registers 3

    .line 583
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 584
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final readResultFromFile()Ljava/lang/String;
    .registers 4

    .line 1213
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1216
    :try_start_5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/lcd/panel/window_type"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_2e

    .line 1218
    :goto_11
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 1219
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_24

    goto :goto_11

    .line 1221
    :cond_20
    :try_start_20
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2e

    goto :goto_32

    :catchall_24
    move-exception v1

    .line 1216
    :try_start_25
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v0

    :try_start_2a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw v1
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    .line 1222
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1224
    :goto_32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reconfigureDisplay(I)V
    .registers 3

    .line 545
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 546
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_17

    .line 549
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 551
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 552
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeTask(I)V
    .registers 2

    .line 1350
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    return-void
.end method

.method public resetScreenshotConnection()V
    .registers 1

    .line 1108
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotExecutor:Lcom/android/server/wm/ScreenshotExecutor;

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenshotExecutor;->resetScreenshotConnection()V

    return-void
.end method

.method public sendTakeScreenshotRunnable(II)V
    .registers 3

    .line 1098
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotExecutor:Lcom/android/server/wm/ScreenshotExecutor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ScreenshotExecutor;->sendTakeScreenshotRunnable(II)V

    return-void
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .registers 4

    .line 515
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-eqz v0, :cond_1d

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 523
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->setDeadzoneHole(Landroid/os/Bundle;)V

    goto :goto_1d

    .line 519
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "setDeadzoneHole requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 3

    .line 530
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicyExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method public setRotationInfoForAudioManager()V
    .registers 4

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 591
    :cond_b
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 596
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    .line 597
    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastReportedRotationToAudioManager:I

    if-eq v2, v1, :cond_37

    .line 598
    iput v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastReportedRotationToAudioManager:I

    .line 599
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g_hw_display_rotation="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 600
    new-instance v1, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p0}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda8;-><init>(Landroid/media/AudioManager;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_37
    return-void
.end method

.method public setTspDeadzone(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/os/Bundle;)V
    .registers 7

    .line 457
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_33

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 459
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-nez p1, :cond_22

    const-string p0, "WindowManagerServiceExt"

    const-string/jumbo p1, "setTspDeadzone failed. The win is null."

    .line 461
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 464
    :cond_22
    :try_start_22
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->setTspDeadzone(Landroid/os/Bundle;)V

    .line 465
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->updateTspStateControllerWindowPolicyLocked(Lcom/android/server/wm/WindowState;)V

    .line 466
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_33

    :catchall_2d
    move-exception p0

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method public setTspNoteMode(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)V
    .registers 9

    .line 488
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_NOTE_MODE:Z

    if-eqz v0, :cond_5a

    .line 489
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 490
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    .line 491
    invoke-static {v1, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 490
    invoke-static {v1, v0, v2, v3}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 497
    :try_start_19
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_4d

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 498
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-nez p1, :cond_39

    const-string p0, "WindowManagerServiceExt"

    const-string/jumbo p1, "setTspNoteMode failed. The win is null."

    .line 500
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_47

    .line 507
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 503
    :cond_39
    :try_start_39
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->setTspNoteMode(Z)V

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->updateTspStateControllerWindowPolicyLocked(Lcom/android/server/wm/WindowState;)V

    .line 505
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_47

    :try_start_40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4d

    .line 507
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5a

    :catchall_47
    move-exception p0

    .line 505
    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p0

    .line 507
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    throw p0

    .line 492
    :cond_52
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires WRITE_SETTINGS permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    :goto_5a
    return-void
.end method

.method public final shouldBeHalfOpenModeLogging(I)Z
    .registers 3

    .line 1542
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mShouldBeHalfOpenModeLogging:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_b

    if-eq p1, v0, :cond_c

    const/4 p0, 0x2

    if-ne p1, p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_c
    return v0
.end method

.method public shouldRotateLandscapeBootingUp()Z
    .registers 1

    .line 926
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mShouldRotateLandscapeBootingUp:Z

    return p0
.end method

.method public showForAllUsers(I)Z
    .registers 2

    const/16 p0, 0x96b

    if-eq p1, p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public showJustInTimeTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 9

    .line 851
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.tips"

    const-string v2, "com.samsung.android.app.tips.TipsIntentService"

    .line 852
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "tips_extras"

    const/16 v2, 0x8

    .line 853
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "tips_extras2"

    .line 854
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_22

    const-string/jumbo v1, "tips_extras3"

    .line 856
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_22
    if-eqz p3, :cond_2a

    const-string/jumbo p2, "tips_extras4"

    .line 859
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2a
    if-eqz p4, :cond_31

    const-string p2, "intentResult"

    .line 862
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 864
    :cond_31
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-static {p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    const-string p0, "WindowManagerServiceExt"

    .line 865
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Show just in time tips, contentsId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception p0

    .line 867
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5d
    return-void
.end method

.method public showJustInTimeTipsLabsIfNeededLocked()V
    .registers 5

    .line 769
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTipsLabsStepAsUser:Landroid/util/SparseIntArray;

    if-nez v0, :cond_b

    .line 770
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTipsLabsStepAsUser:Landroid/util/SparseIntArray;

    .line 772
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 773
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTipsLabsStepAsUser:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2b

    .line 775
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "show_tips_labs_step"

    invoke-static {v1, v3, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 777
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTipsLabsStepAsUser:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2b
    if-eq v1, v2, :cond_2e

    return-void

    .line 783
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTipsLabsStepAsUser:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 784
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTipsLabsReceiver:Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;

    if-nez v1, :cond_4c

    .line 785
    new-instance v1, Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTipsLabsReceiver:Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;

    .line 786
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 793
    :cond_4c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startLandscapeBootingUpIfNeededLocked()V
    .registers 3

    .line 898
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mShouldRotateLandscapeBootingUp:Z

    if-eqz v1, :cond_f

    goto :goto_26

    .line 902
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    const-string v0, "WindowManagerServiceExt"

    const-string v1, "mShouldRotateLandscapeBootingUp set"

    .line 906
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 907
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mShouldRotateLandscapeBootingUp:Z

    .line 908
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    :cond_26
    :goto_26
    return-void
.end method

.method public startLockscreenFingerprintAuth()V
    .registers 1

    .line 1123
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicyExt;->startLockscreenFingerprintAuth()V

    return-void
.end method

.method public supportsDisplayCutout()Z
    .registers 1

    .line 1298
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->getFullScreenAppsSupportModeLocked()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public supportsMaxAspectRatio()Z
    .registers 2

    .line 1302
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->getFullScreenAppsSupportModeLocked()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public systemReady()V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 250
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    if-eqz v1, :cond_13

    .line 251
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayCutout(II)V

    .line 254
    :cond_13
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_1c

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/TspStateController;->systemReady()V

    .line 257
    :cond_1c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    if-eqz v0, :cond_27

    .line 258
    new-instance v0, Lcom/android/server/wm/RefreshRateTokenShellCommand;

    invoke-direct {v0}, Lcom/android/server/wm/RefreshRateTokenShellCommand;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mRefreshRateTokenShellCommand:Lcom/android/server/wm/RefreshRateTokenShellCommand;

    .line 261
    :cond_27
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_STATUS_LOGGING:Z

    if-eqz v0, :cond_49

    .line 263
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/wm/BoundsCompatStatusLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_31

    goto :goto_49

    :catchall_31
    move-exception p0

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady : Failed to start BoundsCompatStatusLoggingService : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManagerServiceExt"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    return-void
.end method

.method public takeLockTaskLog(Lcom/android/server/wm/Task;IZI)V
    .registers 6

    .line 1322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1323
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", task:"

    .line 1324
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Uid="

    .line 1326
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " IsSystemCaller="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " LockTaskModeState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Caller: "

    .line 1330
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x5

    .line 1331
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1333
    invoke-static {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;)V

    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 3

    .line 875
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 876
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 878
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    if-eqz p0, :cond_1f

    .line 880
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicy;->updateCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 882
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateDisplayMetricsIfNeeded(Lcom/android/server/wm/DisplayContent;IIIFF)V
    .registers 13

    .line 1383
    iget-boolean p0, p1, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz p0, :cond_6

    .line 1390
    iget p2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :cond_6
    move v1, p2

    if-eqz p0, :cond_b

    .line 1391
    iget p3, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :cond_b
    move v2, p3

    .line 1392
    iget-boolean p2, p1, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-eqz p2, :cond_12

    iget p4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    :cond_12
    move v3, p4

    if-eqz p0, :cond_17

    .line 1393
    iget p5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    :cond_17
    move v4, p5

    if-eqz p0, :cond_1c

    .line 1394
    iget p6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    :cond_1c
    move v5, p6

    move-object v0, p1

    .line 1390
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    return-void
.end method

.method public updateImeTargetWindow(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 439
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_9

    .line 440
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->updateImeTargetWindow(Lcom/android/server/wm/WindowState;)V

    :cond_9
    return-void
.end method

.method public updateImeWindowVisibility(Z)V
    .registers 3

    .line 445
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_9

    .line 446
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->updateImeWindowVisibility(Z)V

    :cond_9
    return-void
.end method

.method public updateOccludeTargetIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    const/4 v0, 0x0

    .line 1402
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerServiceExt;->updateOccludeTargetIfNeeded(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public updateOccludeTargetIfNeeded(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)V
    .registers 11

    const-string v0, "WindowManagerServiceExt"

    if-eqz p1, :cond_c7

    .line 1406
    iget-boolean v1, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v1, :cond_a

    goto/16 :goto_c7

    .line 1411
    :cond_a
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1412
    new-instance v2, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_21

    .line 1426
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    :cond_21
    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v4, 0x0

    if-eqz p1, :cond_9c

    if-eqz p2, :cond_2f

    .line 1429
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_2f

    goto :goto_9c

    .line 1437
    :cond_2f
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastOccludesParentReportedTarget:Lcom/android/server/wm/ActivityRecord;

    if-ne v4, p1, :cond_39

    .line 1438
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c4

    .line 1439
    :cond_39
    new-instance p2, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1440
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v4

    .line 1442
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v5

    .line 1444
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyOccludeChangeNotice: cn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " occludesParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " inMultiWindow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " styleFloating="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p1, Lcom/android/server/wm/ActivityRecord;->mStyleFloating:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1444
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    if-nez v4, :cond_98

    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mStyleFloating:Z

    if-eqz v2, :cond_98

    if-eqz v5, :cond_97

    goto :goto_98

    :cond_97
    move v3, v1

    :cond_98
    :goto_98
    invoke-virtual {v0, p2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyOccludeChangeNotice(Landroid/content/ComponentName;Z)V

    goto :goto_c4

    .line 1430
    :cond_9c
    :goto_9c
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastOccludesParentReportedTarget:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_c3

    .line 1431
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "notifyOccludeChangeNotice: reset caller="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1431
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    .line 1434
    invoke-virtual {p1, v4, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyOccludeChangeNotice(Landroid/content/ComponentName;Z)V

    :cond_c3
    move-object p1, v4

    .line 1453
    :cond_c4
    :goto_c4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastOccludesParentReportedTarget:Lcom/android/server/wm/ActivityRecord;

    return-void

    :cond_c7
    :goto_c7
    const-string p0, "notifyOccludeChangeNotice: display is null or not default"

    .line 1408
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSafeModeReason([I[I)V
    .registers 8

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafeModeReason={"

    .line 695
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    .line 696
    :goto_c
    array-length v3, p1

    const-string v4, " "

    if-ge v2, v3, :cond_22

    .line 697
    aget v3, p1, v2

    if-lez v3, :cond_1f

    .line 698
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    sget-object v3, Lcom/android/server/wm/WindowManagerServiceExt;->SAFE_MODE_REASONS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 702
    :cond_22
    :goto_22
    array-length p1, p2

    if-ge v1, p1, :cond_45

    .line 703
    aget p1, p2, v1

    if-lez p1, :cond_42

    .line 704
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    sget-object p1, Lcom/android/server/wm/WindowManagerServiceExt;->SAFE_MODE_PROPERTY_REASONS:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    .line 706
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    aget p1, p2, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    .line 708
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_45
    const-string p1, " }"

    .line 711
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mSafeModeReason:Ljava/lang/String;

    .line 714
    invoke-static {p1}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;)V

    return-void
.end method

.method public updateTspStateControllerWindowPolicyLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 452
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    goto :goto_f

    :cond_e
    move-object v2, v1

    :goto_f
    if-eqz v0, :cond_13

    .line 453
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 452
    :cond_13
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/wm/TspStateController;->updateWindowsPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

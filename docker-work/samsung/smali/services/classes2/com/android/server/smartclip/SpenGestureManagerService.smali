.class public Lcom/android/server/smartclip/SpenGestureManagerService;
.super Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;,
        Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;,
        Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;,
        Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
    }
.end annotation


# static fields
.field public static AC_DEBUG:Z = true

.field public static CLASS_NAME_AIRCOMMAND_SERVICE:Ljava/lang/String; = "com.samsung.android.service.aircommand.AirCommandService"

.field public static CLASS_NAME_SPEN_TRIGGER_SERVICE:Ljava/lang/String; = "com.samsung.android.service.aircommand.top.SpenTriggerService"

.field public static final EVENT_STATE_PEN_BUTTON_PRESSED:I

.field public static final HANDLE_MSG_HOVER_ENTER_EVENT:I = 0x301b

.field public static final HANDLE_MSG_HOVER_EXIT_EVENT:I = 0x3018

.field public static final HANDLE_MSG_SEND_DEFFERED_PEN_DETECTION_INFO:I = 0x301a

.field public static final HANDLE_MSG_SEND_PEN_DETECTION_INFO:I = 0x3019

.field public static final INTENT_ACTION_AIRCOMMAND_STATE_CHANGE:Ljava/lang/String; = "com.samsung.android.aircommand.intent.action.STATE_CHANGE"

.field public static final INTENT_ACTION_REMOTESPEN_COMMON_BROADCAST:Ljava/lang/String; = "com.samsung.android.service.aircommand.remotespen.action.COMMON_BROADCAST"

.field public static final INTENT_ACTION_SCREEN_OFF_MEMO_STATE_CHANGED:Ljava/lang/String; = "com.sec.android.intent.action.BLACK_MEMO"

.field public static final INTENT_KEY_DOUBLE_TAP_X:Ljava/lang/String; = "tapX"

.field public static final INTENT_KEY_DOUBLE_TAP_Y:Ljava/lang/String; = "tapY"

.field public static final MAX_SMARTCLIP_REMOTE_REQUEST_DELAY:I = 0xbb8

.field public static final META_DATA_NAME_BLOCK_DOUBLE_TAP_ACTION:Ljava/lang/String; = "com.samsung.android.sdk.spen.BLOCK_DOUBLE_TAP_ACTION"

.field public static final MSG_CMD_SEND_PEN_DETECTION_INFO:I = 0x1

.field public static PACKAGE_NAME_AIRCOMMAND:Ljava/lang/String; = "com.samsung.android.service.aircommand"

.field public static PERMISSION_CHANGE_SPEN_THEME:Ljava/lang/String; = "com.samsung.android.permission.CHANGE_SPEN_THEME"

.field public static PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String; = "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

.field public static PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String; = "android.permission.INJECT_EVENTS"

.field public static final SETTING_NAME_AIRCOMMAND_MODE:Ljava/lang/String; = "air_cmd_mode"

.field public static final SETTING_NAME_DIGITIZER_ENABLED:Ljava/lang/String; = "pen_digitizer_enabled"

.field public static final SETTING_NAME_SPEN_DOUBLE_TAP_LAUNCH:Ljava/lang/String; = "spen_double_tap_launch"

.field public static TAG:Ljava/lang/String; = "SpenGestureManagerService"

.field public static final UNUSED_EPEN:Ljava/lang/String; = "sec_unused_e-pen"

.field public static USE_APP_FEATURE_NAME_SPAT:Ljava/lang/String; = "SPAT"

.field public static USE_APP_FEATURE_NAME_SPEN:Ljava/lang/String; = "SPEN"

.field public static mContext:Landroid/content/Context;


# instance fields
.field public ALLOWANCE_HOVER_TIME:I

.field public ALLOWANCE_RANGE_X:I

.field public ALLOWANCE_RANGE_Y:I

.field public mAcAutoFloatingIconMode:Z

.field public mAcButtonPressTouchDownTime:J

.field public mAcIsBound:Z

.field public mAcIsFloatingIconEnabled:Z

.field public mAcIsHoverOccuredBeforeTouchDown:Z

.field public mAcIsPenButtonPressed:Z

.field public mAcIsScreenOffMemoShowing:Z

.field public mAcIsTouchDowned:Z

.field public mAcLastStartTime:J

.field public mAcPenButtonPressedTime:J

.field public mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

.field public mAcService:Landroid/os/Messenger;

.field public mAcServiceConnection:Landroid/content/ServiceConnection;

.field public mAirGestureListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/content/smartclip/IAirGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field public mBatteryOnlineStatus:I

.field public mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

.field public mBootComplete:Z

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mClearCoverOpened:Z

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field public mDataExtractionSync:Ljava/lang/Object;

.field public mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public final mHandler:Landroid/os/Handler;

.field public mHoverListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;",
            ">;"
        }
    .end annotation
.end field

.field public mHoverStayDetectEnabled:Z

.field public mInboxSPen:Z

.field public mInputContext:Lcom/android/internal/view/IInputContext;

.field public mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mIsEnableLockScreenQuickNote:Z

.field public mIsPenInserted:Ljava/lang/Boolean;

.field public mLastDoubleTapPosition:Landroid/graphics/Point;

.field public mMissingMethodFlags:I

.field public mPenDataStructArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;",
            ">;"
        }
    .end annotation
.end field

.field public mPenDoubleTap:Ljava/lang/Runnable;

.field public mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

.field public mScreenOffReason:I

.field public mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

.field public mSpenUsingStartTime:J

.field public mSpenUspLevel:I

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBatteryOnlineStatus(Lcom/android/server/smartclip/SpenGestureManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBleSpenManager(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/BleSpenManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClearCoverOpened(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGestureDetector(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHoverListeners(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsEnableLockScreenQuickNote(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPenInserted(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpenUsingStartTime(Lcom/android/server/smartclip/SpenGestureManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpenUspLevel(Lcom/android/server/smartclip/SpenGestureManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAcIsBound(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAcIsScreenOffMemoShowing(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAcService(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBatteryOnlineStatus(Lcom/android/server/smartclip/SpenGestureManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBootComplete(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBootComplete:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmClearCoverOpened(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsEnableLockScreenQuickNote(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsPenInserted(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastDoubleTapPosition(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/graphics/Point;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastDoubleTapPosition:Landroid/graphics/Point;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSpenUsingStartTime(Lcom/android/server/smartclip/SpenGestureManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroastcastHoverEvent(Lcom/android/server/smartclip/SpenGestureManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastHoverEvent(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroastcastInputContextChanged(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastInputContextChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroastcastKeyboardClosed(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastKeyboardClosed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcalculateSpenUsingDuration(Lcom/android/server/smartclip/SpenGestureManagerService;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->calculateSpenUsingDuration(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckHoverStay(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkHoverStay(Landroid/view/MotionEvent;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPenName(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->getPenName(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTopMostPackage(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/ComponentName;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostPackage()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misAppSwitchingBlocked(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isAppSwitchingBlocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDigitizerEnabled(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->isDigitizerEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDoubleTapBlockedAppsByMetaData(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isDoubleTapBlockedAppsByMetaData()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misScreenPinningEnabled(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isScreenPinningEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSupportSpen(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isSupportSpen()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlaunchDoubleTapAction(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->launchDoubleTapAction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monFloatingIconSettingChanged(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->onFloatingIconSettingChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSpenDigitizerOnOffChanged(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->onSpenDigitizerOnOffChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessMotionEventForAirCMD(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/smartclip/SpenGestureManagerService;->processMotionEventForAirCMD(Landroid/view/MotionEvent;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendAirCommandStateChangeIntent(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendAirCommandStateChangeIntent(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendDefferedPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendDefferedPenDetectionInfo()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendLogSpenInsertInfo(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartAirCommandService(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandService(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteDigitizerOnOffCommand(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->writeDigitizerOnOffCommand(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetEVENT_STATE_PEN_BUTTON_PRESSED()I
    .registers 1

    sget v0, Lcom/android/server/smartclip/SpenGestureManagerService;->EVENT_STATE_PEN_BUTTON_PRESSED:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPACKAGE_NAME_AIRCOMMAND()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PACKAGE_NAME_AIRCOMMAND:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetUSE_APP_FEATURE_NAME_SPAT()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPAT:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetUSE_APP_FEATURE_NAME_SPEN()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPEN:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x20

    .line 231
    sput v0, Lcom/android/server/smartclip/SpenGestureManagerService;->EVENT_STATE_PEN_BUTTON_PRESSED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 376
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    .line 161
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 163
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    .line 168
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    .line 170
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    .line 180
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    const/4 v2, 0x1

    .line 185
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    const-wide/16 v3, 0x0

    .line 187
    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 189
    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    .line 191
    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    .line 193
    iput v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    .line 195
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 206
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 208
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 212
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    const/4 v2, -0x1

    .line 214
    iput v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 216
    iput v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    .line 222
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 226
    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    .line 233
    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 238
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBootComplete:Z

    .line 244
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 503
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 757
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$6;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    .line 1221
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$7;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Landroid/content/ServiceConnection;

    const/16 v0, 0xa

    .line 1296
    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    .line 1297
    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    const/16 v0, 0x12c

    .line 1298
    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    .line 1299
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    .line 1300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    .line 377
    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 378
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string p1, "SpenGestureManagerService(Context) "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 12

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    .line 161
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 163
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    .line 168
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    .line 170
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    .line 180
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    const/4 v2, 0x1

    .line 185
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    const-wide/16 v3, 0x0

    .line 187
    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 189
    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    .line 191
    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    .line 193
    iput v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    .line 195
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 206
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 208
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 212
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    const/4 v2, -0x1

    .line 214
    iput v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 216
    iput v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    .line 222
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 226
    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    .line 233
    new-instance v2, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v2}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 238
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBootComplete:Z

    .line 244
    new-instance v2, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    new-instance v2, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 503
    new-instance v2, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 757
    new-instance v2, Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$6;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    .line 1221
    new-instance v3, Lcom/android/server/smartclip/SpenGestureManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$7;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Landroid/content/ServiceConnection;

    const/16 v3, 0xa

    .line 1296
    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    .line 1297
    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    const/16 v3, 0x12c

    .line 1298
    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    .line 1299
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    .line 1300
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    .line 382
    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 383
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v4, "SpenGestureManagerService(Context context, WindowManagerService Wm)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->initSpenGesture()V

    .line 386
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->registerPackageMonitor()V

    .line 388
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v4, "input"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager;

    iput-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 389
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isSupportSpen()Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 390
    new-instance v3, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    invoke-direct {v3, p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver-IA;)V

    iput-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 391
    invoke-virtual {p2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 394
    :cond_a6
    new-instance p2, Lcom/android/server/smartclip/BleSpenManager;

    invoke-direct {p2, p1}, Lcom/android/server/smartclip/BleSpenManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 396
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string p2, "SemInputDeviceManagerService"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 398
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSettingCondition()V

    .line 400
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "com.samsung.pen.INSERT"

    .line 401
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 402
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.BATTERY_CHANGED"

    .line 403
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 404
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    iget-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    if-eqz p1, :cond_de

    const-string p1, "com.sec.android.intent.action.BLACK_MEMO"

    .line 406
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    :cond_de
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {p1}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result p1

    if-eqz p1, :cond_eb

    const-string p1, "android.intent.action.AIRPLANE_MODE"

    .line 409
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    :cond_eb
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 413
    new-instance p1, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

    invoke-direct {p1, p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Handler;)V

    .line 414
    invoke-virtual {p1}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->observe()V

    .line 416
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isSupportSpen()Z

    move-result p1

    if-eqz p1, :cond_10e

    .line 417
    new-instance p1, Lcom/android/server/smartclip/SpenThemeManager;

    sget-object p2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/server/smartclip/SpenThemeManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    goto :goto_115

    .line 419
    :cond_10e
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Theme isn\'t supported. Not a spen model."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_115
    return-void
.end method


# virtual methods
.method public final broastBleSpenChargeLockState(Z)V
    .registers 4

    .line 1688
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    return-void

    .line 1692
    :cond_5
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_9
    :goto_9
    if-lez v0, :cond_19

    add-int/lit8 v0, v0, -0x1

    .line 1697
    :try_start_d
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;->onChanged(Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_9

    goto :goto_9

    .line 1703
    :cond_19
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final broastcastBackPressedEvent()V
    .registers 3

    .line 1761
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    return-void

    .line 1765
    :cond_5
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_9
    :goto_9
    if-lez v0, :cond_19

    add-int/lit8 v0, v0, -0x1

    .line 1769
    :try_start_d
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onBackPressed()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_9

    goto :goto_9

    .line 1775
    :cond_19
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final broastcastHoverEvent(I)V
    .registers 4

    .line 1738
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    return-void

    .line 1741
    :cond_5
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_9
    :cond_9
    :goto_9
    if-lez v0, :cond_2d

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_1d

    .line 1746
    :try_start_11
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverEnter()V

    goto :goto_9

    :cond_1d
    const/16 v1, 0xa

    if-ne p1, v1, :cond_9

    .line 1748
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverExit()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2c} :catch_9

    goto :goto_9

    .line 1755
    :cond_2d
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1757
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHoverListeners.getRegisteredCallbackCount() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final broastcastHoverStayEvent(II)V
    .registers 5

    .line 1784
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    return-void

    .line 1788
    :cond_5
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_9
    :goto_9
    if-lez v0, :cond_19

    add-int/lit8 v0, v0, -0x1

    .line 1792
    :try_start_d
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverStay(II)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_9

    goto :goto_9

    .line 1798
    :cond_19
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final broastcastInputContextChanged()V
    .registers 5

    .line 2006
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    return-void

    .line 2010
    :cond_5
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broastcastInputContextChanged getRegisteredCallbackCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_27
    :goto_27
    if-lez v0, :cond_3b

    add-int/lit8 v0, v0, -0x1

    .line 2016
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;->onInputInfoChanged(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3a} :catch_27

    goto :goto_27

    .line 2022
    :cond_3b
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final broastcastKeyboardClosed()V
    .registers 4

    .line 2065
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    return-void

    .line 2069
    :cond_5
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broastcastKeyboardClosed getRegisteredCallbackCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_27
    :goto_27
    if-lez v0, :cond_37

    add-int/lit8 v0, v0, -0x1

    .line 2075
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;

    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;->onKeyboardClosed()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_36} :catch_27

    goto :goto_27

    .line 2081
    :cond_37
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final calculateSpenUsingDuration(J)V
    .registers 6

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_10

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    div-float/2addr p1, v1

    goto :goto_11

    :cond_10
    move p1, v2

    :goto_11
    cmpl-float p2, p1, v1

    if-lez p2, :cond_18

    const-string p1, "MoreThan1Hour"

    goto :goto_3c

    :cond_18
    const/high16 p2, 0x41f00000    # 30.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_21

    const-string p1, "30to60Minutes"

    goto :goto_3c

    :cond_21
    const/high16 p2, 0x41200000    # 10.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2a

    const-string p1, "10to30Minutes"

    goto :goto_3c

    :cond_2a
    const/high16 p2, 0x40a00000    # 5.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_33

    const-string p1, "5to10Minutes"

    goto :goto_3c

    :cond_33
    cmpl-float p1, p1, v2

    if-lez p1, :cond_3a

    const-string p1, "1to5Minutes"

    goto :goto_3c

    :cond_3a
    const-string p1, "1MinuteOrLess"

    .line 1852
    :goto_3c
    sget-object p2, Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPEN:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final canStartAirCommand()Z
    .registers 5

    .line 1085
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    const/4 v3, 0x0

    if-eqz v0, :cond_19

    const-string v3, "SetupWizard on"

    goto :goto_28

    .line 1091
    :cond_19
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v3, "FactoryBinary"

    goto :goto_28

    .line 1093
    :cond_22
    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-eqz p0, :cond_28

    const-string v3, "ScreenOffMemo on"

    :cond_28
    :goto_28
    if-nez v3, :cond_2b

    return v1

    .line 1101
    :cond_2b
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to start AirCommand."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final checkChangeSpenThemePermission()V
    .registers 2

    .line 569
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_CHANGE_SPEN_THEME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method public final checkHoverStay(Landroid/view/MotionEvent;IZ)V
    .registers 12

    const/4 p3, 0x0

    .line 1303
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_9

    return-void

    :cond_9
    const/4 p3, 0x7

    if-ne p2, p3, :cond_b9

    .line 1307
    new-instance p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct-IA;)V

    .line 1308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    .line 1309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    .line 1310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    .line 1311
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1312
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_32
    if-ltz p1, :cond_be

    .line 1314
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;

    invoke-direct {v0, p3}, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct-IA;)V

    .line 1315
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;

    .line 1316
    iget v0, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v2, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    sub-int v4, v2, v3

    if-le v0, v4, :cond_b8

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_b8

    .line 1318
    iget v0, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v2, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    sub-int v4, v2, v3

    if-le v0, v4, :cond_b8

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_b8

    .line 1320
    iget-wide v2, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    iget-wide v4, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    iget p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    int-to-long v6, p1

    sub-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-gez p1, :cond_b5

    .line 1321
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1322
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1323
    iget p3, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    const-string v0, "RawX"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1324
    iget p3, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    const-string v0, "RawY"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1325
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dictionary service start : hover time = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " y = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget p1, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget p2, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastHoverStayEvent(II)V

    return-void

    :cond_b5
    move p1, v1

    goto/16 :goto_32

    :cond_b8
    return-void

    .line 1340
    :cond_b9
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_be
    return-void
.end method

.method public final checkInputEventInjectionPermission()V
    .registers 2

    .line 565
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method public final checkPermission(Ljava/lang/String;)V
    .registers 5

    .line 573
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 574
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p0, v0, :cond_b

    return-void

    .line 578
    :cond_b
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_19

    return-void

    .line 581
    :cond_19
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPermission : Requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission. caller PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " permission"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkSettingCondition()V
    .registers 5

    .line 752
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_quick_note"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 753
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 754
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSettingCondition, LOCK_SCREEN_QUICK_NOTE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final checkSmartClipMetaExtractionPermission()V
    .registers 2

    .line 561
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method public final dispatchPenDetectionInfo(IJLjava/lang/String;J)V
    .registers 9

    .line 1114
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo-IA;)V

    .line 1115
    iput p1, v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    .line 1116
    iput-wide p2, v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->eventTime:J

    .line 1117
    iput-object p4, v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->penName:Ljava/lang/String;

    .line 1119
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x3019

    .line 1120
    iput p2, p1, Landroid/os/Message;->what:I

    .line 1121
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1123
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 2101
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2102
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "android.permission.DUMP"

    .line 2101
    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AirCommand:"

    .line 2104
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  UspLevel : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  InBoxType : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  PenInserted : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mAcIsBound : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mAcIsFloatingIconEnabled : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mAcIsScreenOffMemoShowing : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBleSpenAddress()Ljava/lang/String;
    .registers 3

    .line 1626
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "getBleSpenAddress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 1628
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->getBleSpenAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBleSpenCmfCode()Ljava/lang/String;
    .registers 3

    .line 1640
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "getBleSpenCmfCode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 1642
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->getBleSpenCmfCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .registers 3

    .line 1984
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1985
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no permission to use getCurrentEditorInfo() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1988
    :cond_22
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object p0
.end method

.method public getCurrentInputContext()Lcom/android/internal/view/IInputContext;
    .registers 3

    .line 1993
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1994
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no permission to use getCurrentInputContext() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1997
    :cond_22
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputContext:Lcom/android/internal/view/IInputContext;

    return-object p0
.end method

.method public getCurrentMissingMethodFlags()I
    .registers 1

    .line 2002
    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mMissingMethodFlags:I

    return p0
.end method

.method public final getFocusedUserHandle(Landroid/content/Context;)Landroid/os/UserHandle;
    .registers 3

    const-string/jumbo p0, "persona"

    .line 1427
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1429
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    goto :goto_18

    .line 1435
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, -0x2

    .line 1444
    :cond_18
    :goto_18
    new-instance p0, Landroid/os/UserHandle;

    invoke-direct {p0, p1}, Landroid/os/UserHandle;-><init>(I)V

    return-object p0
.end method

.method public final getFullScreenRect()Landroid/graphics/Rect;
    .registers 4

    .line 743
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 744
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 745
    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 747
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final getPenName(Landroid/view/MotionEvent;)Ljava/lang/String;
    .registers 2

    .line 2196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 2197
    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getScreenOffReason()I
    .registers 1

    .line 1734
    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    return p0
.end method

.method public getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 9

    .line 636
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "getScrollableRect()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    const/4 v0, 0x0

    :try_start_b
    const-string/jumbo v1, "window"

    .line 640
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 642
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .line 644
    new-instance v4, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    const/4 v5, 0x4

    invoke-direct {v4, v2, v5, v3, v0}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IIILandroid/os/Parcelable;)V

    .line 650
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 651
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 652
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v5, p1

    .line 650
    invoke-interface {v1, v3, v5, v4, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 655
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 p1, 0xbb8

    invoke-virtual {p0, v2, p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object p0

    if-eqz p0, :cond_5f

    .line 657
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScrollableRect : Result="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    .line 660
    :cond_5f
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string p1, "getScrollableRect : Result is null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_66} :catch_67

    return-object v0

    :catch_67
    move-exception p0

    .line 664
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScrollableAreaInfo : Exception thrown! e = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .registers 10

    .line 672
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "getScrollableViewInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    const/4 v0, 0x0

    :try_start_b
    const-string/jumbo v1, "window"

    .line 676
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 678
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .line 679
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "hashCode"

    .line 680
    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 682
    new-instance p2, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    const/4 v5, 0x5

    invoke-direct {p2, v2, v5, v3, v4}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IIILandroid/os/Parcelable;)V

    .line 688
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 689
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 690
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v4, p1

    .line 688
    invoke-interface {v1, v3, v4, p2, p3}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 693
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 p1, 0xbb8

    invoke-virtual {p0, v2, p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object p0

    if-eqz p0, :cond_69

    .line 695
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getScrollableViewInfo : Result="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    .line 698
    :cond_69
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string p1, "getScrollableViewInfo : Result is null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_70} :catch_71

    return-object v0

    :catch_71
    move-exception p0

    .line 702
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getScrollableViewInfo : Exception thrown! e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .registers 11

    .line 589
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    const/4 v0, 0x0

    .line 592
    :try_start_4
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_6f

    if-nez p1, :cond_d

    .line 594
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getFullScreenRect()Landroid/graphics/Rect;

    move-result-object p1

    :cond_d
    const-string/jumbo v2, "window"

    .line 597
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 598
    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v3

    .line 600
    new-instance v5, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    invoke-direct {v5, v3, p1, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;I)V

    .line 601
    new-instance p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    invoke-direct {p3, v3, v4, p4, v5}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IIILandroid/os/Parcelable;)V

    .line 608
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    .line 609
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 607
    invoke-interface {v2, p4, p1, p3, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 612
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 p2, 0xbb8

    invoke-virtual {p1, v3, p2}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object p1

    if-eqz p1, :cond_63

    .line 614
    iget-object p1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast p1, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;

    if-eqz p1, :cond_4a

    .line 617
    iget-object p1, p1, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->moveMetaFilesToLocalStorage(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)Z

    goto :goto_4b

    :cond_4a
    move-object p1, v0

    .line 620
    :goto_4b
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getSmartClipDataByScreenRect : wait is unlocked. Repository = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    monitor-exit v1

    return-object p1

    .line 623
    :cond_63
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string p1, "getSmartClipDataByScreenRect : result is null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    monitor-exit v1

    return-object v0

    :catchall_6c
    move-exception p0

    .line 626
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_9 .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw p0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6f} :catch_6f

    :catch_6f
    move-exception p0

    .line 628
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getSmartClipDataByScreenRect : Exception thrown! e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public final getTopMostPackage()Landroid/content/ComponentName;
    .registers 2

    .line 1803
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 1804
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 1805
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1806
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v0, "getTopMostPackage : Failed to get running task info"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1e
    const/4 v0, 0x0

    .line 1810
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final initCoverState()Z
    .registers 4

    .line 488
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_32

    .line 489
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 491
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCoverState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    return p0

    .line 494
    :cond_2a
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "initCoverState() : state is null"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 498
    :cond_32
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "initCoverState() : mCoverManager is null!!!!"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final initSpenGesture()V
    .registers 4

    .line 425
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 426
    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    .line 428
    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    goto :goto_18

    :cond_15
    const/4 v0, 0x0

    .line 430
    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    .line 433
    :goto_18
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 435
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 436
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->initCoverState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 437
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_3e

    .line 438
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_45

    .line 440
    :cond_3e
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "initSpenGesture() : mCoverManager is null!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_45
    new-instance v0, Landroid/view/GestureDetector;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/smartclip/SpenGestureManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$3;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V
    .registers 12

    .line 709
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkInputEventInjectionPermission()V

    .line 712
    :try_start_3
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_62

    :try_start_6
    const-string/jumbo v1, "window"

    .line 713
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 714
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {v2, p4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .line 716
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "events"

    .line 717
    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string/jumbo p3, "waitUntilConsume"

    .line 718
    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 720
    new-instance p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {p3, v2, v4, v5, v3}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IIILandroid/os/Parcelable;)V

    .line 726
    invoke-interface {v1, p1, p2, p3, p5}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    if-ne p4, v5, :cond_5d

    .line 729
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 p1, 0xbb8

    invoke-virtual {p0, v2, p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object p0

    if-eqz p0, :cond_56

    .line 731
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "injectInputEvent : Result="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 733
    :cond_56
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string p1, "injectInputEvent : Result is null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_5d
    :goto_5d
    monitor-exit v0

    goto :goto_7d

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_6 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_62} :catch_62

    :catch_62
    move-exception p0

    .line 738
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "injectInputEvent : Exception thrown! e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7d
    return-void
.end method

.method public final isAppSwitchingBlocked()Z
    .registers 3

    .line 1886
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostPackage()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0xbb

    invoke-virtual {p0, v0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->isSystemKeyEventRequested(Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public final isDesktopMode(Landroid/content/Context;)Z
    .registers 5

    const-string p0, "desktopmode"

    .line 1862
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 p1, 0x0

    if-eqz p0, :cond_43

    .line 1864
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 1866
    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, p1

    :goto_1a
    if-eqz v0, :cond_25

    .line 1867
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p0

    const/16 v1, 0x65

    if-ne p0, v1, :cond_25

    move p1, v2

    .line 1868
    :cond_25
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDesktopMode : enabled is - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " / isStandaloneMode is - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return p1
.end method

.method public final isDesktopModeSupported()Z
    .registers 2

    .line 1856
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    .line 1857
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isDigitizerEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 2192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "pen_digitizer_enabled"

    const/4 v0, 0x1

    const/4 v1, -0x2

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final isDoubleTapBlockedAppsByMetaData()Z
    .registers 4

    .line 1890
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostPackage()Landroid/content/ComponentName;

    move-result-object p0

    .line 1892
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sdk.spen.BLOCK_DOUBLE_TAP_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1895
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 1896
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1897
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1e

    .line 1899
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public final isScreenPinningEnabled()Z
    .registers 3

    .line 1876
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1877
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    if-eqz p0, :cond_1d

    .line 1880
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "isScreenPinningEnabled : Screen pinning mode enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return p0
.end method

.method public isSpenInserted()Z
    .registers 1

    .line 1618
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 1621
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSupportBleSpen()Z
    .registers 4

    .line 1654
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result p0

    .line 1655
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportBleSpen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isSupportSpen()Z
    .registers 1

    .line 542
    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isSystemKeyEventRequested(Landroid/content/ComponentName;I)Z
    .registers 5

    .line 1909
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSystemKeyEventRequested : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-nez p1, :cond_21

    .line 1912
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string p2, "isSystemKeyEventRequested : component name is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_21
    const-string/jumbo v0, "window"

    .line 1916
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 1919
    :try_start_2e
    invoke-interface {v0, p2, p1}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1921
    sget-object p2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v0, "isSystemKeyEventRequested : system key is requested"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3b} :catch_3c

    :cond_3b
    return p1

    :catch_3c
    move-exception p1

    .line 1925
    sget-object p2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSystemKeyEventRequested : e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 1928
    :cond_54
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string p2, "isSystemKeyEventRequested : wm is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5b
    return p0
.end method

.method public final isUidSignature()Z
    .registers 3

    .line 2026
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public keyguardOn()Z
    .registers 2

    .line 1362
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1b

    .line 1364
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 1365
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v0, "SpenGestureManagerService :isKeyguardLocked : true"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public keyguardSecureOn()Z
    .registers 2

    .line 1373
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_21

    .line 1375
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    if-eqz p0, :cond_21

    .line 1376
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v0, "SpenGestureManagerService :isKeyguardSecure : true"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public final launchActionMemo(Landroid/graphics/Point;)V
    .registers 5

    .line 1393
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getFocusedUserHandle(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object v0

    .line 1395
    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    const/16 v1, 0x14

    if-lt p0, v1, :cond_48

    .line 1396
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.POPUP_NOTE_DOUBLETAB"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.notes"

    const-string v2, "com.samsung.android.app.notes.popupnote.PopupNoteService"

    .line 1397
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_2c

    .line 1400
    iget v1, p1, Landroid/graphics/Point;->x:I

    const-string/jumbo v2, "tapX"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1401
    iget v1, p1, Landroid/graphics/Point;->y:I

    const-string/jumbo v2, "tapY"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1403
    :cond_2c
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1404
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchActionMemo : Trying to launch Samsung notes action memo. tapPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 1406
    :cond_48
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.snote"

    const-string v2, "com.samsung.android.snote.control.ui.quickmemo.service.QuickMemo_Service"

    .line 1407
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1410
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "launchActionMemo : Trying to launch Snote aciton memo.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_93

    .line 1412
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "launchActionMemo : Snote action memo launch failed. Trying to launch diotek PenMemo..."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.diotek.mini_penmemo"

    const-string v1, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    .line 1415
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1418
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_93

    .line 1419
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string p1, "launchActionMemo : Diotek PenMemo launch failed. Sending legacy quick memo broadcasting"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.QUICKMEMO_LAUNCH"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_93
    :goto_93
    return-void
.end method

.method public final launchDoubleTapAction()V
    .registers 4

    .line 1384
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/server/smartclip/SpenThemeManager;->canLaunchCustomDoubleTapAction()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1385
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->getFocusedUserHandle(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastDoubleTapPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/smartclip/SpenThemeManager;->launchCustomDoubleTapAction(Landroid/os/UserHandle;Landroid/graphics/Point;)V

    goto :goto_1d

    .line 1387
    :cond_18
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastDoubleTapPosition:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->launchActionMemo(Landroid/graphics/Point;)V

    :goto_1d
    const/4 v0, 0x0

    .line 1389
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastDoubleTapPosition:Landroid/graphics/Point;

    return-void
.end method

.method public final moveMetaFilesToLocalStorage(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)Z
    .registers 2

    if-nez p1, :cond_b

    .line 1456
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string p1, "moveMetaFilesToLocalStorage : Empty repository!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public notifyAirGesture(Ljava/lang/String;)V
    .registers 6

    .line 2041
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_21

    .line 2042
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no permission to use notifyAirGesture() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2046
    :cond_21
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_26

    return-void

    .line 2050
    :cond_26
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2051
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAirGesture :  i: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_48
    :goto_48
    if-lez v0, :cond_58

    add-int/lit8 v0, v0, -0x1

    .line 2055
    :try_start_4c
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/IAirGestureListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/IAirGestureListener;->onGesture(Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_57} :catch_48

    goto :goto_48

    .line 2061
    :cond_58
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public notifyBleSpenChargeLockState(Z)V
    .registers 5

    .line 1682
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyBleSpenChargeLockState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 1684
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->broastBleSpenChargeLockState(Z)V

    return-void
.end method

.method public notifyKeyboardClosed()V
    .registers 3

    .line 2031
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$10;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onFloatingIconSettingChanged(Z)V
    .registers 5

    .line 1190
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFloatingIconSettingChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3a

    const/4 p1, 0x1

    .line 1193
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    .line 1196
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBootComplete:Z

    if-eq p1, v0, :cond_2a

    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SpenGarageSpecManager;->isBundledSpenSupported()Z

    move-result v0

    if-ne p1, v0, :cond_3d

    .line 1198
    :cond_2a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "cause"

    const-string v1, "floating_on"

    .line 1199
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandService(Landroid/os/Bundle;)V

    goto :goto_3d

    :cond_3a
    const/4 p1, 0x0

    .line 1203
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    :cond_3d
    :goto_3d
    return-void
.end method

.method public final onSpenDigitizerOnOffChanged(Z)V
    .registers 5

    .line 1208
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSpenDigitizerOnOffChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->writeDigitizerOnOffCommand(Z)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    .line 1214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "digitizer_enable_changed"

    .line 1215
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "digitizer_enable"

    .line 1216
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1217
    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandSpenTriggerService(Landroid/os/Bundle;)V

    :cond_31
    return-void
.end method

.method public final processMotionEventForAirCMD(Landroid/view/MotionEvent;IZ)V
    .registers 17

    move-object v7, p0

    move v1, p2

    const/4 v8, 0x0

    move-object v9, p1

    .line 912
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    return-void

    :cond_c
    const-wide/16 v3, -0x1

    if-eqz v1, :cond_167

    const/4 v10, 0x1

    if-eq v1, v10, :cond_158

    const/4 v0, 0x5

    if-eq v1, v0, :cond_167

    const/4 v0, 0x6

    if-eq v1, v0, :cond_158

    const/4 v0, 0x7

    const-wide/16 v11, 0x0

    if-eq v1, v0, :cond_a0

    const/16 v0, 0x9

    if-eq v1, v0, :cond_65

    const/16 v0, 0xa

    if-eq v1, v0, :cond_28

    goto/16 :goto_18d

    .line 1015
    :cond_28
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz v0, :cond_18d

    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-nez v0, :cond_18d

    .line 1017
    iget-object v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_40

    const/4 v2, -0x1

    const/16 v3, -0x100

    const/16 v4, 0x140

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/input/InputManager;->semGetScanCodeState(III)I

    move-result v0

    if-nez v0, :cond_40

    goto :goto_41

    :cond_40
    move v10, v8

    :goto_41
    if-eqz v10, :cond_18d

    .line 1020
    iget-object v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3019

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1021
    iget-object v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1023
    :cond_52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->getPenName(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJLjava/lang/String;J)V

    .line 1024
    iput-boolean v8, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    goto/16 :goto_18d

    .line 940
    :cond_65
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz v0, :cond_8b

    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-nez v0, :cond_8b

    .line 942
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    cmp-long v0, v2, v11

    if-gtz v0, :cond_77

    move v0, v10

    goto :goto_78

    :cond_77
    move v0, v8

    :goto_78
    if-eqz v0, :cond_8b

    .line 945
    iput-boolean v10, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    .line 947
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->getPenName(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x64

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJLjava/lang/String;J)V

    .line 951
    :cond_8b
    iput-boolean v8, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 953
    iget-wide v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    cmp-long v2, v0, v11

    if-lez v2, :cond_9c

    .line 954
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_9c

    move v8, v10

    :cond_9c
    iput-boolean v8, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    goto/16 :goto_18d

    .line 958
    :cond_a0
    iget-wide v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    cmp-long v0, v0, v11

    if-lez v0, :cond_aa

    if-nez p3, :cond_aa

    .line 959
    iput-boolean v8, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    .line 962
    :cond_aa
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    if-eqz v0, :cond_af

    return-void

    :cond_af
    if-eqz p3, :cond_bf

    .line 966
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    if-nez v0, :cond_bf

    .line 968
    iput-boolean v10, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 969
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    goto/16 :goto_18d

    :cond_bf
    if-nez p3, :cond_18d

    .line 970
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    if-eqz v0, :cond_18d

    .line 972
    iput-boolean v8, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 975
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v3, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    sub-long/2addr v0, v3

    cmp-long v3, v0, v11

    if-lez v3, :cond_157

    const-wide/16 v3, 0x320

    cmp-long v0, v0, v3

    if-lez v0, :cond_da

    goto/16 :goto_157

    .line 982
    :cond_da
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 983
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 984
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v3, v2

    if-ge v0, v3, :cond_f6

    const-string v2, "left"

    goto :goto_f9

    :cond_f6
    const-string/jumbo v2, "right"

    .line 989
    :goto_f9
    iget-boolean v3, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    if-nez v3, :cond_106

    .line 990
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Can not start AirCommand. #2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18d

    .line 995
    :cond_106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 996
    iget-wide v5, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    sub-long v5, v3, v5

    cmp-long v8, v5, v11

    if-lez v8, :cond_12f

    const-wide/16 v8, 0x190

    cmp-long v8, v5, v8

    if-gez v8, :cond_12f

    .line 998
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not start AirCommand. #3."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18d

    .line 1001
    :cond_12f
    iput-wide v3, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    .line 1004
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Start AirCommand. #2"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "cause"

    const-string v5, "button_pressed"

    .line 1007
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "direction"

    .line 1008
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "button_press_x"

    .line 1009
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "button_press_y"

    .line 1010
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1011
    invoke-virtual {p0, v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandService(Landroid/os/Bundle;)V

    goto :goto_18d

    :cond_157
    :goto_157
    return-void

    :cond_158
    if-eqz p3, :cond_18d

    .line 935
    iget-wide v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_18d

    .line 936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    goto :goto_18d

    :cond_167
    if-eqz p3, :cond_170

    .line 921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    goto :goto_172

    .line 923
    :cond_170
    iput-wide v3, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 926
    :goto_172
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz v0, :cond_18d

    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-nez v0, :cond_18d

    .line 927
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    if-nez v0, :cond_18d

    .line 928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->getPenName(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x64

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJLjava/lang/String;J)V

    :cond_18d
    :goto_18d
    return-void
.end method

.method public registerAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    .registers 4

    .line 1559
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1560
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no permission to use registerAirGestureListener() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1564
    :cond_21
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerAirGestureListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_34

    .line 1567
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    .line 1569
    :cond_34
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    .registers 3

    .line 1708
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 1710
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_e

    .line 1711
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    .line 1713
    :cond_e
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .registers 3

    .line 1543
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_b

    .line 1544
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 1547
    :cond_b
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .registers 3

    .line 1941
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1942
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no permission to use registerInputMethodInfoChangeListener() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1946
    :cond_21
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_2c

    .line 1947
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    .line 1949
    :cond_2c
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final registerPackageMonitor()V
    .registers 5

    .line 475
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    .line 484
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public resetPenAttachSound(Ljava/lang/String;)V
    .registers 3

    .line 2148
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2151
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    .line 2152
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_11

    .line 2153
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->resetPenAttachSound(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public resetPenDetachSound(Ljava/lang/String;)V
    .registers 3

    .line 2170
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2173
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    .line 2174
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_11

    .line 2175
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->resetPenDetachSound(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public resetPenHoverIcon(Ljava/lang/String;)V
    .registers 3

    .line 2126
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2129
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    .line 2130
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_11

    .line 2131
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->resetPenHoverIcon(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public saveBleSpenLogFile([B)V
    .registers 4

    .line 1675
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "saveBleSpenLogFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 1677
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/BleSpenManager;->saveBleSpenLogFile([B)V

    return-void
.end method

.method public screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
    .registers 18

    .line 2089
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "screenshot()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 2092
    new-instance v2, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host;

    invoke-direct {v2}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host;-><init>()V

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 2093
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host;->request(IIZLandroid/graphics/Rect;IIZ)Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;

    move-result-object v0

    .line 2096
    invoke-interface {v0}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$ScreenShot;->getScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final sendAirCommandStateChangeIntent(Landroid/os/Bundle;)V
    .registers 3

    .line 1107
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.android.aircommand.intent.action.STATE_CHANGE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1108
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PACKAGE_NAME_AIRCOMMAND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    invoke-virtual {p0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1110
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendDefferedPenDetectionInfo()V
    .registers 6

    .line 1163
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    if-nez v0, :cond_5

    return-void

    .line 1167
    :cond_5
    sget-boolean v0, Lcom/android/server/smartclip/SpenGestureManagerService;->AC_DEBUG:Z

    if-eqz v0, :cond_24

    .line 1168
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDefferedPenDetectionInfo."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    iget v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1172
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    iget-wide v1, v1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->eventTime:J

    const-string v3, "eventTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1173
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    iget-object v1, v1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->penName:Ljava/lang/String;

    const-string/jumbo v2, "penName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1174
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    iget v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 1176
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1179
    :try_start_4a
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    if-eqz v0, :cond_5a

    .line 1180
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_51} :catch_52

    goto :goto_5a

    :catch_52
    move-exception v0

    .line 1183
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to send the pen detection info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1186
    :cond_5a
    :goto_5a
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    return-void
.end method

.method public final sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1815
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "app_id"

    const-string v1, "com.android.server.smartclip"

    .line 1816
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "feature"

    .line 1817
    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extra"

    .line 1818
    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 1822
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "data"

    .line 1823
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "com.samsung.android.providers.context"

    .line 1825
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1827
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final sendPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;)V
    .registers 7

    .line 1127
    sget-boolean v0, Lcom/android/server/smartclip/SpenGestureManagerService;->AC_DEBUG:Z

    if-eqz v0, :cond_1d

    .line 1128
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendPenDetectionInfo."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    const-string/jumbo v1, "penName"

    if-nez v0, :cond_45

    .line 1132
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Start AirCommand. #0"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "cause"

    const-string/jumbo v3, "pen_detected"

    .line 1136
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget-object v2, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->penName:Ljava/lang/String;

    if-eqz v2, :cond_3f

    .line 1138
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :cond_3f
    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandService(Landroid/os/Bundle;)V

    .line 1142
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    return-void

    .line 1147
    :cond_45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1148
    iget-wide v2, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->eventTime:J

    const-string v4, "eventTime"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1149
    iget-object v2, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->penName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1150
    iget p1, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 1151
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1154
    :try_start_62
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    if-eqz p0, :cond_72

    .line 1155
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_69} :catch_6a

    goto :goto_72

    :catch_6a
    move-exception p0

    .line 1158
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Failed to send the pen detection info"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_72
    :goto_72
    return-void
.end method

.method public sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    .registers 5

    if-eqz p1, :cond_2b

    .line 553
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSmartClipRemoteRequestResult : requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->notifyResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V

    goto :goto_33

    .line 556
    :cond_2b
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendSmartClipRemoteRequestResult : result is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    return-void
.end method

.method public setBleSpenAddress(Ljava/lang/String;)V
    .registers 5

    .line 1633
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBleSpenAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 1635
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/BleSpenManager;->setBleSpenAddress(Ljava/lang/String;)V

    return-void
.end method

.method public setBleSpenCmfCode(Ljava/lang/String;)V
    .registers 5

    .line 1647
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBleSpenCmfCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 1649
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/BleSpenManager;->setBleSpenCmfCode(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentInputInfo(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)V
    .registers 5

    .line 1966
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1967
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no permission to use setCurrentInputInfo() : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1970
    :cond_21
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputContext:Lcom/android/internal/view/IInputContext;

    .line 1971
    iput-object p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1972
    iput p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mMissingMethodFlags:I

    .line 1973
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/smartclip/SpenGestureManagerService$9;

    invoke-direct {p2, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$9;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFocusWindow(I)V
    .registers 2

    return-void
.end method

.method public setHoverStayDetectEnabled(Z)V
    .registers 2

    .line 1348
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    return-void
.end method

.method public setHoverStayValues(III)V
    .registers 4

    if-lez p1, :cond_4

    .line 1354
    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    :cond_4
    if-lez p2, :cond_8

    .line 1356
    iput p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    :cond_8
    if-lez p3, :cond_c

    .line 1358
    iput p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    :cond_c
    return-void
.end method

.method public setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 4

    .line 2137
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2140
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    .line 2141
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_11

    .line 2142
    invoke-virtual {p0, p1, p2}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    :cond_11
    return-void
.end method

.method public setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 4

    .line 2159
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2162
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    .line 2163
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_11

    .line 2164
    invoke-virtual {p0, p1, p2}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    :cond_11
    return-void
.end method

.method public setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V
    .registers 6

    .line 2115
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2118
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    .line 2119
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_11

    .line 2120
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V

    :cond_11
    return-void
.end method

.method public setScreenOffReason(I)V
    .registers 5

    .line 1728
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenOffReason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    return-void
.end method

.method public setSpenInsertionState(Z)V
    .registers 5

    .line 1612
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpenInsertionState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    return-void
.end method

.method public setSpenPdctLowSensitivityEnable()V
    .registers 3

    .line 1668
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSpenPdctLowSensitivityEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 1670
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->setSpenPdctLowSensitivityEnable()V

    return-void
.end method

.method public setSpenPowerSavingModeEnabled(Z)V
    .registers 4

    .line 1589
    :try_start_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenPowerSavingMode(I)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_22

    :catch_b
    move-exception p0

    .line 1591
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSemInputDeviceManager.setSpenPowerSavingMode: Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-void
.end method

.method public showTouchPointer(Z)V
    .registers 5

    .line 1597
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showTouchPointer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 1601
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService$8;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startAirCommandService(Landroid/os/Bundle;)V
    .registers 6

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->canStartAirCommand()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1038
    :cond_7
    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SpenGarageSpecManager;->isBundledSpenSupported()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1039
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string/jumbo v2, "start_remote_spen_service"

    .line 1040
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandSpenTriggerService(Landroid/os/Bundle;)V

    .line 1045
    :cond_21
    :try_start_21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1046
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->PACKAGE_NAME_AIRCOMMAND:Ljava/lang/String;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->CLASS_NAME_AIRCOMMAND_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_32

    .line 1048
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1050
    :cond_32
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1051
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start aircommand service. "

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz p1, :cond_90

    .line 1055
    iget-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    const/4 v1, 0x0

    if-nez p1, :cond_54

    .line 1056
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 1058
    :cond_54
    sget-boolean p1, Lcom/android/server/smartclip/SpenGestureManagerService;->AC_DEBUG:Z

    if-eqz p1, :cond_90

    .line 1059
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService.isBound : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ".ret : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_78} :catch_79

    goto :goto_90

    :catch_79
    move-exception p0

    .line 1063
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to start AirCommand. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    :goto_90
    return-void
.end method

.method public final startAirCommandSpenTriggerService(Landroid/os/Bundle;)V
    .registers 4

    .line 1068
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->canStartAirCommand()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 1072
    :cond_7
    :try_start_7
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 1073
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PACKAGE_NAME_AIRCOMMAND:Ljava/lang/String;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->CLASS_NAME_SPEN_TRIGGER_SERVICE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_18

    .line 1075
    invoke-virtual {p0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1077
    :cond_18
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1078
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "start start spentrigger service."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_27} :catch_28

    goto :goto_3f

    :catch_28
    move-exception p0

    .line 1080
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to start Spen trigger AirCommand. e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-void
.end method

.method public unregisterAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    .registers 4

    .line 1574
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1575
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no permission to use unregisterAirGestureListener() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1579
    :cond_21
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterAirGestureListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_30

    .line 1582
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_30
    return-void
.end method

.method public unregisterBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    .registers 2

    .line 1719
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 1721
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_a

    .line 1722
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_a
    return-void
.end method

.method public unregisterHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .registers 2

    .line 1552
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_7

    .line 1553
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_7
    return-void
.end method

.method public unregisterInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .registers 3

    .line 1954
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1955
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no permission to use unregisterInputMethodInfoChangeListener() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1959
    :cond_21
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_28

    .line 1960
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_28
    return-void
.end method

.method public writeBleSpenCommand(Ljava/lang/String;)V
    .registers 5

    .line 1661
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeBleSpenCommand : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 1663
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/BleSpenManager;->writeBleSpenCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized writeDigitizerOnOffCommand(Z)V
    .registers 5

    monitor-enter p0

    .line 2180
    :try_start_1
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeDigitizerOnOffCommand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_37

    .line 2185
    :try_start_18
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenPower(I)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e
    .catchall {:try_start_18 .. :try_end_1d} :catchall_37

    goto :goto_35

    :catch_1e
    move-exception p1

    .line 2187
    :try_start_1f
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSemInputDeviceManager.setSpenPower: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_37

    .line 2189
    :goto_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

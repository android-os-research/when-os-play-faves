.class public Lcom/android/server/hdmi/HdmiControlService;
.super Lcom/android/server/SystemService;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;,
        Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$BinderService;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;,
        Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;,
        Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;,
        Lcom/android/server/hdmi/HdmiControlService$WakeReason;
    }
.end annotation


# static fields
.field public static final AUDIO_OUTPUT_DEVICE_HDMI:Landroid/media/AudioDeviceAttributes;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final AUDIO_OUTPUT_DEVICE_HDMI_ARC:Landroid/media/AudioDeviceAttributes;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final AUDIO_OUTPUT_DEVICE_HDMI_EARC:Landroid/media/AudioDeviceAttributes;

.field public static final AVC_AUDIO_OUTPUT_DEVICES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final HONG_KONG:Ljava/util/Locale;

.field public static final INITIATED_BY_BOOT_UP:I = 0x1

.field public static final INITIATED_BY_ENABLE_CEC:I = 0x0

.field public static final INITIATED_BY_HOTPLUG:I = 0x4

.field public static final INITIATED_BY_SCREEN_ON:I = 0x2

.field public static final INITIATED_BY_WAKE_UP_MESSAGE:I = 0x3

.field public static final MACAU:Ljava/util/Locale;

.field public static final PERMISSION:Ljava/lang/String; = "android.permission.HDMI_CEC"

.field public static final STANDBY_SCREEN_OFF:I = 0x0

.field public static final STANDBY_SHUTDOWN:I = 0x1

.field public static final STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "HdmiControlService"

.field public static final WAKE_UP_BOOT_UP:I = 0x1

.field public static final WAKE_UP_SCREEN_ON:I

.field public static final sTerminologyToBibliographicMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

.field public mActivePortId:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field public final mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mAddressAllocated:Z

.field public mAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

.field public mAudioDeviceVolumeBehaviors:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mCecController:Lcom/android/server/hdmi/HdmiCecController;

.field public mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

.field public mCecVersion:I

.field public final mDeviceEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field public final mHandler:Landroid/os/Handler;

.field public mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

.field public mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

.field public final mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public mHdmiCecVolumeControl:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

.field public mHdmiControlEnabled:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mHotplugEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIoLooper:Landroid/os/Looper;

.field public final mIoThread:Landroid/os/HandlerThread;

.field public mIsCecAvailable:Z

.field public mLastInputMhl:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field public final mLocalDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mMenuLanguage:Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field public mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

.field public mMhlDevices:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMhlInputChangeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

.field public mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

.field public mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

.field public mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

.field public mProhibitMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

.field public final mServiceThreadExecutor:Ljava/util/concurrent/Executor;

.field public mSettingChangeListener:Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

.field public final mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

.field public mStandbyMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field public mStreamMusicMaxVolume:I

.field public mSystemAudioActivated:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mTvInputManager:Landroid/media/tv/TvInputManager;

.field public final mVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mWakeUpMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0ReKsGA6OhPAW7ayjI_BNQ_IHK4(ILandroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->lambda$announceHdmiCecVolumeControlFeatureChange$2(ILandroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6J4kkE567QXFiOLVFIJqDEmnHCI(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->lambda$updatePowerStatusOnInitializeCecComplete$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$JKG6smqwetJwOwg-4sZJ4mlKqYA(Landroid/sysprop/HdmiProperties$cec_device_types_values;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->enumToIntDeviceType(Landroid/sysprop/HdmiProperties$cec_device_types_values;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KZAwVHsDjIYwp0ydzfuqedDp5D0(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->bootCompleted()V

    return-void
.end method

.method public static synthetic $r8$lambda$PHjTLDXJI7LGuiDFb9Gio5eVqts(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->lambda$updatePowerStatusOnInitializeCecComplete$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivePortId(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAddressAllocated(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCecMessageBuffer(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/CecMessageBuffer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCecVersion(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecVersion:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceEventListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiCecConfig(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiCecNetwork(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiCecSettingChangeListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiCecVolumeControl(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiControlEnabled(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiControlStatusChangeListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHotplugEventListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputChangeListenerRecord(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsCecAvailable(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalDevices(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMenuLanguage(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMhlController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMhlInputChangeEnabled(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMhlVendorCommandListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOtpCallbackPendingAddressAllocation(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerStatusController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecPowerStatusController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProhibitMode(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecordListenerRecord(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSelectRequestBuffer(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/SelectRequestBuffer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemAudioModeChangeListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVendorCommandListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAddressAllocated(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInputChangeListenerRecord(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsCecAvailable(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOtpCallbackPendingAddressAllocation(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRecordListenerRecord(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddCecSettingChangeListener(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddDeviceEventListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddHdmiMhlVendorCommandListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddHotplugEventListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddSystemAudioModeChangeListner(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$massertRunOnServiceThread(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearLocalDevices(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearLocalDevices()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateDeviceInfo(Lcom/android/server/hdmi/HdmiControlService;IIII)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiControlService;->createDeviceInfo(IIII)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdisableHdmiControlService(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->disableHdmiControlService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceAccessPermission(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMhlDevicesLocked(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getMhlDevicesLocked()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRemoteControlSourceAddress(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getRemoteControlSourceAddress()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetSwitchDevice(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getSwitchDevice()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->initBinderCall()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeCec(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvokeCallback(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvokeCecSettingChangeListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeCecSettingChangeListenerLocked(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvokeHdmiControlStatusChangeListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvokeHdmiControlStatusChangeListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/Collection;IZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(Ljava/util/Collection;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvokeHotplugEventListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAddressAllocated(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/ArrayList;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->notifyAddressAllocated(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monInitializeCecComplete(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onInitializeCecComplete(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monLanguageChanged(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onLanguageChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPendingActionsCleared(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onPendingActionsCleared(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monWakeUp(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onWakeUp(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveCecSettingChangeListener(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveHdmiControlStatusChangeListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveHotplugEventListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveSystemAudioModeChangeListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayName(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetHdmiRecordListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInputChangeListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smtoInt(Z)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 7

    .line 131
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "zh"

    const-string v2, "HK"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    .line 132
    new-instance v0, Ljava/util/Locale;

    const-string v2, "MO"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    .line 135
    invoke-static {}, Lcom/android/server/hdmi/HdmiControlService;->createsTerminologyToBibliographicMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->sTerminologyToBibliographicMap:Ljava/util/Map;

    .line 215
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/4 v1, 0x2

    const/16 v2, 0x9

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->AUDIO_OUTPUT_DEVICE_HDMI:Landroid/media/AudioDeviceAttributes;

    .line 218
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    const/16 v4, 0xa

    invoke-direct {v2, v1, v4, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/android/server/hdmi/HdmiControlService;->AUDIO_OUTPUT_DEVICE_HDMI_ARC:Landroid/media/AudioDeviceAttributes;

    .line 221
    new-instance v4, Landroid/media/AudioDeviceAttributes;

    const/16 v5, 0x1d

    invoke-direct {v4, v1, v5, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    sput-object v4, Lcom/android/server/hdmi/HdmiControlService;->AUDIO_OUTPUT_DEVICE_HDMI_EARC:Landroid/media/AudioDeviceAttributes;

    const/4 v3, 0x3

    new-array v5, v3, [Landroid/media/AudioDeviceAttributes;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    aput-object v4, v5, v1

    .line 227
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->AVC_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 232
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 233
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 507
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    .line 247
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    .line 260
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    .line 335
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Hdmi Control Io Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    .line 338
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 349
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 369
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 396
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 400
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver-IA;)V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    .line 403
    iput-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 408
    iput-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 419
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    .line 421
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 424
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    const/4 v2, -0x1

    .line 427
    iput v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    .line 435
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 472
    iput v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    .line 476
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 479
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 483
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 487
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-direct {v0}, Lcom/android/server/hdmi/SelectRequestBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 3830
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$18;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$18;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingChangeListener:Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    .line 508
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->readDeviceTypes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    .line 509
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 510
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;",
            ")V"
        }
    .end annotation

    .line 499
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    .line 247
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    .line 260
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    .line 335
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Hdmi Control Io Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    .line 338
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 349
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 369
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 396
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 400
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver-IA;)V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    .line 403
    iput-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 408
    iput-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 419
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    .line 421
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 424
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    const/4 v2, -0x1

    .line 427
    iput v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    .line 435
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 472
    iput v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    .line 476
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 479
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 483
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 487
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-direct {v0}, Lcom/android/server/hdmi/SelectRequestBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 3830
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$18;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$18;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingChangeListener:Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    .line 500
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    .line 501
    new-instance p2, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    invoke-direct {p2, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 502
    new-instance p2, Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {p2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 503
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;

    return-void
.end method

.method public static createsTerminologyToBibliographicMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "sqi"

    const-string v2, "alb"

    .line 140
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "hye"

    const-string v2, "arm"

    .line 141
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eus"

    const-string v2, "baq"

    .line 142
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "mya"

    const-string v2, "bur"

    .line 143
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ces"

    const-string v2, "cze"

    .line 144
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "nld"

    const-string v2, "dut"

    .line 145
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "kat"

    const-string v2, "geo"

    .line 146
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deu"

    const-string v2, "ger"

    .line 147
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ell"

    const-string/jumbo v2, "gre"

    .line 148
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fra"

    const-string v2, "fre"

    .line 149
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "isl"

    const-string/jumbo v2, "ice"

    .line 150
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "mkd"

    const-string/jumbo v2, "mac"

    .line 151
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "mri"

    const-string/jumbo v2, "mao"

    .line 152
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "msa"

    const-string/jumbo v2, "may"

    .line 153
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fas"

    const-string/jumbo v2, "per"

    .line 154
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ron"

    const-string/jumbo v2, "rum"

    .line 155
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "slk"

    const-string/jumbo v2, "slo"

    .line 156
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bod"

    const-string/jumbo v2, "tib"

    .line 157
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cym"

    const-string/jumbo v2, "wel"

    .line 158
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static enumToIntDeviceType(Landroid/sysprop/HdmiProperties$cec_device_types_values;)Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 563
    :cond_4
    sget-object v1, Lcom/android/server/hdmi/HdmiControlService$19;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    invoke-virtual {p0}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5a

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized device type in ro.hdmi.cec_device_types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {p0}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->getPropValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HdmiControlService"

    .line 581
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_2a
    const/4 p0, 0x7

    .line 579
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_30
    const/4 p0, 0x6

    .line 577
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_36
    const/4 p0, 0x5

    .line 575
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3c
    const/4 p0, 0x4

    .line 573
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_42
    const/4 p0, 0x3

    .line 571
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_48
    const/4 p0, 0x2

    .line 569
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4e
    const/4 p0, 0x1

    .line 567
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_54
    const/4 p0, 0x0

    .line 565
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4e
        :pswitch_48
        :pswitch_42
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
    .end packed-switch
.end method

.method public static getIntList(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 590
    invoke-virtual {v1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 593
    :try_start_1f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_2a} :catch_2b

    goto :goto_13

    .line 595
    :catch_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t parseInt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiControlService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 598
    :cond_42
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$announceHdmiCecVolumeControlFeatureChange$2(ILandroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 3

    .line 3159
    :try_start_0
    invoke-interface {p1, p0}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;->onHdmiCecVolumeControlFeature(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1a

    .line 3161
    :catch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to report HdmiControlVolumeControlStatusChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiControlService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return-void
.end method

.method private synthetic lambda$updatePowerStatusOnInitializeCecComplete$0()V
    .registers 2

    .line 889
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    return-void
.end method

.method private synthetic lambda$updatePowerStatusOnInitializeCecComplete$1()V
    .registers 2

    .line 892
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    return-void
.end method

.method public static localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 163
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2c

    .line 169
    :cond_19
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p0

    .line 176
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->sTerminologyToBibliographicMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 177
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_2b
    return-object p0

    :cond_2c
    :goto_2c
    const-string p0, "chi"

    return-object p0
.end method

.method public static toInt(Z)I
    .registers 1

    return p0
.end method


# virtual methods
.method public final addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 6

    .line 3847
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3848
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 3849
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3850
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingChangeListener:Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;)V

    .line 3852
    :cond_1c
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3853
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 4

    .line 2904
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 2906
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1a

    .line 2911
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2912
    :try_start_10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2913
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p0

    :catch_1a
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died"

    .line 2908
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2836
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2838
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$10;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2790
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 2793
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_22

    .line 2798
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2799
    :try_start_10
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2800
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1f

    .line 2804
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$9;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_1f
    move-exception p0

    .line 2800
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    :catch_22
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died"

    .line 2795
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 4

    .line 3491
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    .line 3494
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1a

    .line 3500
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3501
    :try_start_10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3502
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p0

    :catch_1a
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died."

    .line 3496
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 5

    .line 2861
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 2863
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_22

    .line 2868
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2869
    :try_start_10
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2870
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1f

    .line 2874
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$11;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_1f
    move-exception p0

    .line 2870
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    :catch_22
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died"

    .line 2865
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 4

    .line 2929
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 2932
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1a

    .line 2937
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2938
    :try_start_10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2939
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p0

    :catch_1a
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died"

    .line 2934
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3436
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 3438
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1a

    .line 3443
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3444
    :try_start_10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3445
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p0

    :catch_1a
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died"

    .line 3440
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public allocateLogicalAddress(Ljava/util/ArrayList;I)V
    .registers 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    move-object v7, p0

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1020
    iget-object v0, v7, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    .line 1021
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 1023
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 1029
    iget-object v0, v7, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SelectRequestBuffer;->clear()V

    .line 1031
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_20
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1032
    iget-object v11, v7, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getType()I

    move-result v12

    .line 1033
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    move-result v13

    new-instance v14, Lcom/android/server/hdmi/HdmiControlService$8;

    move-object v0, v14

    move-object v1, p0

    move-object v3, v8

    move-object/from16 v4, p1

    move-object v5, v9

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/hdmi/HdmiControlService$8;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V

    .line 1032
    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/hdmi/HdmiCecController;->allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    goto :goto_20

    :cond_48
    return-void
.end method

.method public final announceHdmiCecVolumeControlFeatureChange(I)V
    .registers 4

    .line 3155
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3156
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3157
    :try_start_6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 3166
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final announceHdmiControlStatusChange(I)V
    .registers 6

    .line 3093
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3094
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3095
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 3096
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3098
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    .line 3099
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 3101
    :cond_2b
    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(Ljava/util/Collection;I)V

    .line 3102
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final announceHotplugEvent(IZ)V
    .registers 5

    .line 3075
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-direct {v0, p1, p2}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    .line 3076
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3077
    :try_start_8
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 3078
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    goto :goto_e

    .line 3080
    :cond_22
    monitor-exit p1

    return-void

    :catchall_24
    move-exception p0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public announceSystemAudioModeChange(Z)V
    .registers 5

    .line 1532
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1534
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 1535
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V

    goto :goto_9

    .line 1537
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final assertRunOnServiceThread()V
    .registers 2

    .line 1226
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_d

    return-void

    .line 1227
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should run on service thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    .registers 2

    .line 3199
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    return-object p0
.end method

.method public final bootCompleted()V
    .registers 3

    .line 746
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    invoke-virtual {v0}, Lcom/android/server/hdmi/PowerManagerWrapper;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 747
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    .line 749
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    if-eqz v0, :cond_30

    .line 750
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 751
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->startQueuedActions()V

    goto :goto_20

    :cond_30
    return-void
.end method

.method public canGoToStandby()Z
    .registers 2

    .line 3356
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3357
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->canGoToStandby()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public changeInputForMhl(IZ)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3759
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3760
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, -0x1

    if-eqz p2, :cond_16

    .line 3761
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result p2

    goto :goto_17

    :cond_16
    move p2, v0

    :goto_17
    if-eq p1, v0, :cond_25

    .line 3763
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$17;

    invoke-direct {v1, p0, p2}, Lcom/android/server/hdmi/HdmiControlService$17;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 3775
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePortId(I)V

    .line 3781
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object p2

    if-eqz p2, :cond_39

    .line 3782
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    goto :goto_3f

    .line 3783
    :cond_39
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceForPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 3784
    :goto_3f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void
.end method

.method public checkAndUpdateAbsoluteVolumeControlState()V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3959
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3962
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 3967
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 3968
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 3972
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v1

    if-nez v1, :cond_34

    .line 3973
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->disableAbsoluteVolumeControl()V

    return-void

    .line 3976
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 3977
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 3983
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v1

    .line 3984
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    move-result v2

    .line 3983
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 3986
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvcAudioOutputDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_52

    const/4 v5, 0x3

    if-ne v2, v5, :cond_50

    goto :goto_52

    :cond_50
    move v2, v3

    goto :goto_53

    :cond_52
    :goto_52
    move v2, v4

    .line 3994
    :goto_53
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    move-result v5

    if-ne v5, v4, :cond_5a

    move v3, v4

    :cond_5a
    if-eqz v3, :cond_92

    if-nez v2, :cond_5f

    goto :goto_92

    :cond_5f
    if-nez v1, :cond_65

    .line 4004
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->disableAbsoluteVolumeControl()V

    return-void

    .line 4008
    :cond_65
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    move-result v2

    if-eqz v2, :cond_8e

    if-eq v2, v4, :cond_80

    const/4 v3, 0x2

    if-eq v2, v3, :cond_75

    return-void

    .line 4021
    :cond_75
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->disableAbsoluteVolumeControl()V

    .line 4022
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->queryAvcSupport(I)V

    return-void

    .line 4010
    :cond_80
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAbsoluteVolumeControlEnabled()Z

    move-result p0

    if-nez p0, :cond_8d

    .line 4014
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 4013
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAvcAudioStatusAction(I)V

    :cond_8d
    return-void

    .line 4018
    :cond_8e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->disableAbsoluteVolumeControl()V

    return-void

    .line 3997
    :cond_92
    :goto_92
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->disableAbsoluteVolumeControl()V

    :cond_95
    return-void
.end method

.method public checkLogicalAddressConflictAndReallocate(II)V
    .registers 5

    .line 1484
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    if-ne p2, v0, :cond_7

    return-void

    .line 1487
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1488
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    if-ne v1, p1, :cond_f

    .line 1489
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "allocate logical address for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1490
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1491
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x4

    .line 1492
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    :cond_4c
    return-void
.end method

.method public final checkPollStrategy(I)I
    .registers 4

    and-int/lit8 p0, p1, 0x3

    if-eqz p0, :cond_22

    const/high16 v0, 0x30000

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    or-int/2addr p0, v0

    return p0

    .line 1459
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid iteration strategy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1455
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid poll strategy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clearLocalDevices()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3399
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3400
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-nez v0, :cond_8

    return-void

    .line 3403
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    .line 3404
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearLocalDevices()V

    return-void
.end method

.method public final createDeviceInfo(IIII)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 7

    .line 1542
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "device_name"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->readStringSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1543
    invoke-static {}, Landroid/hardware/hdmi/HdmiDeviceInfo;->cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v1

    .line 1544
    invoke-virtual {v1, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 1545
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 1546
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 1547
    invoke-virtual {p1, p2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 1548
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p0

    .line 1549
    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p0

    .line 1550
    invoke-virtual {p0, p3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDevicePowerStatus(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p0

    .line 1551
    invoke-virtual {p0, p4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setCecVersion(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p0

    .line 1552
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final disableAbsoluteVolumeControl()V
    .registers 4

    .line 4030
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4031
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAvcAudioStatusAction()V

    goto :goto_1b

    .line 4032
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4033
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAvcAudioStatusAction()V

    .line 4035
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvcAudioOutputDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 4036
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    .line 4037
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V

    :cond_2e
    return-void
.end method

.method public final disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 5

    .line 3389
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v0, :cond_20

    .line 3390
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3391
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    goto :goto_e

    .line 3394
    :cond_20
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->clearAllLocalDevices()V

    return-void
.end method

.method public final disableHdmiControlService()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3622
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$16;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$16;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    return-void
.end method

.method public dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1383
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1384
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, -0x2

    const/16 v2, 0xf

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1385
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    if-eq v0, v1, :cond_d

    .line 1387
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v1

    if-eq v1, v2, :cond_d

    return v0

    .line 1393
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result p0

    if-ne p0, v2, :cond_31

    const/4 p0, -0x1

    return p0

    .line 1396
    :cond_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled cec command:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public displayOsd(I)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3808
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3809
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    .line 3810
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3811
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.HDMI_CEC"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public displayOsd(II)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3817
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3818
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    .line 3819
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

    .line 3820
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3821
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.HDMI_CEC"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public enableAbsoluteVolumeControl(Lcom/android/server/hdmi/AudioStatus;)V
    .registers 11

    .line 4048
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 4049
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v1

    .line 4050
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    move-result v2

    .line 4049
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 4051
    new-instance v2, Landroid/media/VolumeInfo$Builder;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/media/VolumeInfo$Builder;-><init>(I)V

    .line 4052
    invoke-virtual {p1}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/VolumeInfo$Builder;->setMuted(Z)Landroid/media/VolumeInfo$Builder;

    move-result-object v2

    .line 4053
    invoke-virtual {p1}, Lcom/android/server/hdmi/AudioStatus;->getVolume()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/VolumeInfo$Builder;->setVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    move-result-object v2

    const/16 v3, 0x64

    .line 4054
    invoke-virtual {v2, v3}, Landroid/media/VolumeInfo$Builder;->setMaxVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 4055
    invoke-virtual {v2, v3}, Landroid/media/VolumeInfo$Builder;->setMinVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    move-result-object v2

    .line 4056
    invoke-virtual {v2}, Landroid/media/VolumeInfo$Builder;->build()Landroid/media/VolumeInfo;

    move-result-object v5

    .line 4057
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener-IA;)V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    .line 4062
    invoke-virtual {p1}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->notifyAvcMuteChange(Z)V

    .line 4063
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioDeviceVolumeManager()Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;

    move-result-object v3

    .line 4064
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvcAudioOutputDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    const/4 v8, 0x1

    .line 4063
    invoke-interface/range {v3 .. v8}, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;->setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Z)V

    return-void
.end method

.method public enableAudioReturnChannel(IZ)V
    .registers 3

    .line 1376
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->enableAudioReturnChannel(IZ)V

    return-void
.end method

.method public final enableHdmiControlService()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3613
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 3614
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 3615
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    const/4 v0, 0x0

    .line 3617
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    return-void
.end method

.method public final enforceAccessPermission()V
    .registers 3

    .line 1809
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.HDMI_CEC"

    const-string v1, "HdmiControlService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAbsoluteVolumeChangedListener()Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4072
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    return-object p0
.end method

.method public getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4

    .line 2757
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2758
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0

    .line 2762
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    .line 2764
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2765
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    iget v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_2e

    return-object v1

    .line 2771
    :cond_2e
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 2772
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p0

    .line 2771
    invoke-static {v0, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0

    .line 2775
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 2776
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_62

    .line 2778
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_55

    goto :goto_61

    .line 2780
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result p0

    .line 2779
    invoke-static {v0, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    :goto_61
    return-object v1

    :cond_62
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllLocalDevices()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1466
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3797
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    return-object p0
.end method

.method public final getAudioDeviceVolumeManager()Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;
    .registers 1

    .line 3216
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;

    return-object p0
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .registers 1

    .line 3208
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public final getAvcAudioOutputDevice()Landroid/media/AudioDeviceAttributes;
    .registers 2

    .line 3928
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3929
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSystemAudioOutputDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    return-object p0

    .line 3930
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 3931
    sget-object p0, Lcom/android/server/hdmi/HdmiControlService;->AUDIO_OUTPUT_DEVICE_HDMI:Landroid/media/AudioDeviceAttributes;

    return-object p0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCecDeviceTypes()Ljava/util/List;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/sysprop/HdmiProperties$cec_device_types_values;",
            ">;"
        }
    .end annotation

    .line 515
    invoke-static {}, Landroid/sysprop/HdmiProperties;->cec_device_types()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCecVersion()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1199
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecVersion:I

    return p0
.end method

.method public getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1179
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1180
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1185
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1186
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1188
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceTypes()Ljava/util/List;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 520
    invoke-static {}, Landroid/sysprop/HdmiProperties;->device_type()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .registers 4

    .line 3901
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->AVC_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3902
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3903
    :try_start_b
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3904
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 3906
    :cond_21
    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw p0

    .line 3908
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result p0

    return p0
.end method

.method public getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3827
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    return-object p0
.end method

.method public getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;
    .registers 1

    .line 788
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    return-object p0
.end method

.method public getHdmiCecVolumeControl()I
    .registers 2

    .line 3543
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3544
    :try_start_3
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 3545
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getInitialPowerStatus()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x3

    return p0
.end method

.method public getIoLooper()Landroid/os/Looper;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1140
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3384
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3385
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getLastInputForMhl()I
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3747
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3748
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    return p0
.end method

.method public getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .registers 2

    .line 3650
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3651
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3652
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getMhlDevicesLocked()Ljava/util/List;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1656
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    return-object p0
.end method

.method public getPhysicalAddress()I
    .registers 1

    .line 1166
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->getPhysicalAddress()I

    move-result p0

    return p0
.end method

.method public getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 2

    .line 1102
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPortInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1097
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 1098
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getPowerManager()Lcom/android/server/hdmi/PowerManagerWrapper;
    .registers 1

    .line 842
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    return-object p0
.end method

.method public getPowerManagerInternal()Lcom/android/server/hdmi/PowerManagerInternalWrapper;
    .registers 1

    .line 846
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    return-object p0
.end method

.method public getPowerStatus()I
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3227
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3228
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->getPowerStatus()I

    move-result p0

    return p0
.end method

.method public final getRemoteControlSourceAddress()I
    .registers 2

    .line 2653
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2654
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    return p0

    .line 2655
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2656
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    return p0

    :cond_26
    const/16 p0, 0xf

    return p0
.end method

.method public getServiceLock()Ljava/lang/Object;
    .registers 1

    .line 1499
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getServiceLooper()Landroid/os/Looper;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1159
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getServiceThreadExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 243
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getSwitchDevice()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
    .registers 2

    .line 2664
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2665
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p0

    return-object p0

    .line 2667
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2668
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTvInputManager()Landroid/media/tv/TvInputManager;
    .registers 1

    .line 818
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    return-object p0
.end method

.method public getVendorId()I
    .registers 1

    .line 1173
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->getVendorId()I

    move-result p0

    return p0
.end method

.method public handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1350
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1353
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getValidationResult()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    .line 1355
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddresses(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_37

    :cond_11
    const/4 v1, -0x1

    if-nez v0, :cond_37

    .line 1358
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sourceAddressIsLocal(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_37

    .line 1362
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleCecMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1365
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_36

    .line 1366
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    if-nez v2, :cond_36

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 1368
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->bufferMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p0

    if-eqz p0, :cond_36

    return v1

    :cond_36
    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public handleMhlBusModeChanged(II)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1600
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1601
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1603
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setBusMode(I)V

    goto :goto_32

    .line 1605
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No mhl device exists for bus mode change[portId:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", busmode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiControlService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method public handleMhlBusOvercurrent(IZ)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1612
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1613
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1615
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onBusOvercurrentDetected(Z)V

    goto :goto_2a

    .line 1617
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No mhl device exists for bus overcurrent event[portId:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiControlService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public handleMhlDeviceStatusChanged(III)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1623
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1624
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1627
    invoke-virtual {p0, p2, p3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setDeviceStatusChange(II)V

    goto :goto_3a

    .line 1629
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No mhl device exists for device status event[portId:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", adopterId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", deviceId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiControlService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method public handleMhlHotplugEvent(IZ)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1574
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    const-string v0, "HdmiControlService"

    if-eqz p2, :cond_3c

    .line 1577
    new-instance v1, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 1578
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->addLocalDevice(Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1580
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    .line 1581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old device of port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_30
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1584
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->updateSafeMhlInput()V

    goto :goto_67

    .line 1586
    :cond_3c
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->removeLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 1588
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    .line 1589
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1590
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->updateSafeMhlInput()V

    goto :goto_67

    .line 1592
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No device to remove:[portId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :goto_67
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->announceHotplugEvent(IZ)V

    return-void
.end method

.method public final initBinderCall()V
    .registers 1

    .line 1813
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    .line 1814
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->setWorkSourceUidToCallingUid()V

    return-void
.end method

.method public initService()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    if-nez v0, :cond_11

    .line 624
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 625
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    .line 628
    :cond_11
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    if-nez v0, :cond_1c

    .line 629
    new-instance v0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 631
    :cond_1c
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getInitialPowerStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    const/4 v0, 0x0

    .line 632
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    .line 633
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v2, "hdmi_cec_enabled"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    .line 635
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v1

    const-string/jumbo v3, "volume_control_enabled"

    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiCecVolumeControlEnabledInternal(I)V

    const-string/jumbo v1, "mhl_input_switching_enabled"

    const/4 v4, 0x1

    .line 637
    invoke-virtual {p0, v1, v4}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    .line 639
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    if-nez v1, :cond_56

    .line 640
    new-instance v1, Lcom/android/server/hdmi/CecMessageBuffer;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/CecMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 642
    :cond_56
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-nez v1, :cond_64

    .line 643
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/hdmi/HdmiCecController;->create(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 645
    :cond_64
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const-string v5, "HdmiControlService"

    if-nez v1, :cond_70

    const-string p0, "Device does not support HDMI-CEC."

    .line 646
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 649
    :cond_70
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    if-nez v1, :cond_7a

    .line 650
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 652
    :cond_7a
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->isReady()Z

    move-result v1

    if-nez v1, :cond_87

    const-string v1, "Device does not support MHL-control."

    .line 653
    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_87
    new-instance v1, Lcom/android/server/hdmi/HdmiCecNetwork;

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-direct {v1, p0, v5, v6}, Lcom/android/server/hdmi/HdmiCecNetwork;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiMhlControllerStub;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 656
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    if-ne v1, v4, :cond_9a

    .line 657
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    goto :goto_a0

    .line 659
    :cond_9a
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v0}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 661
    :goto_a0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    .line 663
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->initPortInfo()V

    .line 664
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$2;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 673
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$3;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    const-string/jumbo v4, "hdmi_cec_version"

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 680
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$4;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$4;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    const-string/jumbo v4, "routing_control"

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 697
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$5;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$5;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    const-string/jumbo v4, "system_audio_control"

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 718
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$6;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$6;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 727
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$7;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$7;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    const-string/jumbo v2, "tv_wake_on_one_touch_play"

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final initializeCec(I)V
    .registers 5

    const/4 v0, 0x0

    .line 981
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 982
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v0

    const-string/jumbo v1, "hdmi_cec_version"

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 984
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecController;->getVersion()I

    move-result v1

    .line 989
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x5

    .line 988
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecVersion:I

    .line 991
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 992
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->setLanguage(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeLocalDevices(I)V

    return-void
.end method

.method public final initializeLocalDevices(I)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 998
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1002
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 1004
    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    .line 1006
    :cond_2a
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    .line 1007
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1011
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearLocalDevices()V

    .line 1012
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public final invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 3

    .line 3059
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1b

    :catch_4
    move-exception p0

    .line 3061
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invoking callback failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiControlService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    return-void
.end method

.method public final invokeCecSettingChangeListenerLocked(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 3

    .line 3873
    :try_start_0
    invoke-interface {p2, p1}, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;->onChange(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    const-string p1, "HdmiControlService"

    const-string p2, "Failed to report setting change"

    .line 3875
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public invokeClearTimerRecordingResult(II)V
    .registers 4

    .line 3045
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3046
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_19

    if-eqz p0, :cond_17

    .line 3048
    :try_start_7
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onClearTimerRecordingResult(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f
    .catchall {:try_start_7 .. :try_end_e} :catchall_19

    goto :goto_17

    :catch_f
    move-exception p0

    :try_start_10
    const-string p1, "HdmiControlService"

    const-string p2, "Failed to call onClearTimerRecordingResult."

    .line 3051
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3054
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .registers 8

    .line 2917
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2918
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_37

    .line 2920
    :try_start_15
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1d
    .catchall {:try_start_15 .. :try_end_1c} :catchall_37

    goto :goto_9

    :catch_1d
    move-exception v1

    :try_start_1e
    const-string v2, "HdmiControlService"

    .line 2922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to report device event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2925
    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final invokeHdmiControlStatusChangeListenerLocked(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;I)V
    .registers 3

    .line 3108
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(Ljava/util/Collection;I)V

    return-void
.end method

.method public final invokeHdmiControlStatusChangeListenerLocked(Ljava/util/Collection;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 3115
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$12;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/Collection;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_1a

    :cond_c
    const/4 v0, 0x0

    .line 3131
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 3132
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3133
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(Ljava/util/Collection;IZ)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final invokeHdmiControlStatusChangeListenerLocked(Ljava/util/Collection;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;",
            ">;IZ)V"
        }
    .end annotation

    .line 3142
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 3144
    :try_start_10
    invoke-interface {p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->onStatusChange(IZ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception p1

    .line 3146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to report HdmiControlStatusChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiControlService"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_34
    return-void
.end method

.method public final invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 4

    .line 3086
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1f

    :catch_4
    move-exception p0

    .line 3088
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to report hotplug event:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HdmiControlService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method

.method public invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 5

    .line 2985
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2986
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-eqz p0, :cond_26

    .line 2988
    :try_start_7
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f
    .catchall {:try_start_7 .. :try_end_e} :catchall_28

    goto :goto_26

    :catch_f
    move-exception p0

    :try_start_10
    const-string p1, "HdmiControlService"

    .line 2990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown by IHdmiInputChangeListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public invokeMhlVendorCommandListeners(III[B)V
    .registers 9

    .line 3506
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3507
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_28

    .line 3509
    :try_start_15
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->onReceived(III[B)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1d
    .catchall {:try_start_15 .. :try_end_1c} :catchall_28

    goto :goto_9

    :catch_1d
    move-exception v1

    :try_start_1e
    const-string v2, "HdmiControlService"

    const-string v3, "Failed to notify MHL vendor command"

    .line 3511
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 3514
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public invokeOneTouchRecordResult(II)V
    .registers 4

    .line 3021
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3022
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_19

    if-eqz p0, :cond_17

    .line 3024
    :try_start_7
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onOneTouchRecordResult(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f
    .catchall {:try_start_7 .. :try_end_e} :catchall_19

    goto :goto_17

    :catch_f
    move-exception p0

    :try_start_10
    const-string p1, "HdmiControlService"

    const-string p2, "Failed to call onOneTouchRecordResult."

    .line 3026
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3029
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public invokeRecordRequestListener(I)[B
    .registers 4

    .line 3008
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3009
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1d

    if-eqz p0, :cond_19

    .line 3011
    :try_start_7
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->getOneTouchRecordSource(I)[B

    move-result-object p0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_11
    .catchall {:try_start_7 .. :try_end_f} :catchall_1d

    :try_start_f
    monitor-exit v0

    return-object p0

    :catch_11
    move-exception p0

    const-string p1, "HdmiControlService"

    const-string v1, "Failed to start record."

    .line 3013
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3016
    :cond_19
    sget-object p0, Llibcore/util/EmptyArray;->BYTE:[B

    monitor-exit v0

    return-object p0

    :catchall_1d
    move-exception p0

    .line 3017
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V
    .registers 3

    .line 3068
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->onStatusChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1b

    :catch_4
    move-exception p0

    .line 3070
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invoking callback failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiControlService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    return-void
.end method

.method public invokeTimerRecordingResult(II)V
    .registers 4

    .line 3033
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3034
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_19

    if-eqz p0, :cond_17

    .line 3036
    :try_start_7
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onTimerRecordingResult(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f
    .catchall {:try_start_7 .. :try_end_e} :catchall_19

    goto :goto_17

    :catch_f
    move-exception p0

    :try_start_10
    const-string p1, "HdmiControlService"

    const-string p2, "Failed to call onTimerRecordingResult."

    .line 3038
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3041
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public invokeVendorCommandListenersOnControlStateChanged(ZI)Z
    .registers 7

    .line 3475
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3476
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x0

    .line 3477
    monitor-exit v0

    return p0

    .line 3479
    :cond_e
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_34

    .line 3481
    :try_start_20
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onControlStateChanged(ZI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_34

    goto :goto_14

    :catch_28
    move-exception v1

    :try_start_29
    const-string v2, "HdmiControlService"

    const-string v3, "Failed to notify control-state-changed to vendor handler"

    .line 3483
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :cond_31
    const/4 p0, 0x1

    .line 3486
    monitor-exit v0

    return p0

    :catchall_34
    move-exception p0

    .line 3487
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public invokeVendorCommandListenersOnReceived(III[BZ)Z
    .registers 10

    .line 3450
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3451
    :try_start_3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 3452
    monitor-exit p1

    return v1

    .line 3454
    :cond_e
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    if-eqz p5, :cond_3d

    .line 3456
    aget-byte v3, p4, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    aget-byte v2, p4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v3, v2

    const/4 v2, 0x2

    aget-byte v2, p4, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    .line 3460
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-$$Nest$fgetmVendorId(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)I

    move-result v2
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_50

    if-eq v2, v3, :cond_3d

    goto :goto_14

    .line 3465
    :cond_3d
    :try_start_3d
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4, p5}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onReceived(II[BZ)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_44} :catch_45
    .catchall {:try_start_3d .. :try_end_44} :catchall_50

    goto :goto_14

    :catch_45
    move-exception v0

    :try_start_46
    const-string v2, "HdmiControlService"

    const-string v3, "Failed to notify vendor command reception"

    .line 3467
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 3470
    :cond_4e
    monitor-exit p1

    return v2

    :catchall_50
    move-exception p0

    .line 3471
    monitor-exit p1
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public isAbsoluteVolumeControlEnabled()Z
    .registers 3

    .line 3916
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 3919
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvcAudioOutputDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    if-nez v0, :cond_15

    return v1

    .line 3923
    :cond_15
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public isAddressAllocated()Z
    .registers 1

    .line 1092
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return p0
.end method

.method public isAudioSystemDevice()Z
    .registers 2

    .line 3178
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isConnected(I)Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1211
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1212
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isConnected(I)Z

    move-result p0

    return p0
.end method

.method public isConnectedToArcPort(I)Z
    .registers 2

    .line 1206
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->isConnectedToArcPort(I)Z

    move-result p0

    return p0
.end method

.method public isControlEnabled()Z
    .registers 3

    .line 3220
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3221
    :try_start_3
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception p0

    .line 3222
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isMhlInputChangeEnabled()Z
    .registers 2

    .line 3801
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3802
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 3803
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isPlaybackDevice()Z
    .registers 2

    .line 3182
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPowerOnOrTransient()Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3240
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3241
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusOn()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 3242
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusTransientToOn()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    return p0
.end method

.method public isPowerStandby()Z
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3254
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3255
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusStandby()Z

    move-result p0

    return p0
.end method

.method public isPowerStandbyOrTransient()Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3247
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3248
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusStandby()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 3249
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusTransientToStandby()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    return p0
.end method

.method public isProhibitMode()Z
    .registers 2

    .line 3549
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3550
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 3551
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isScreenOff()Z
    .registers 3

    .line 741
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public isStandbyMessageReceived()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3286
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    return p0
.end method

.method public isSwitchDevice()Z
    .registers 2

    .line 3186
    invoke-static {}, Landroid/sysprop/HdmiProperties;->is_switch()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSystemAudioActivated()Z
    .registers 2

    .line 3561
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3562
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 3563
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isTvDevice()Z
    .registers 2

    .line 3174
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isTvDeviceEnabled()Z
    .registers 2

    .line 3190
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isValidPortId(I)Z
    .registers 2

    .line 1131
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isWakeUpMessageReceived()Z
    .registers 1

    .line 3281
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    return p0
.end method

.method public maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1266
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    return-void
.end method

.method public final notifyAddressAllocated(Ljava/util/ArrayList;I)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1082
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1083
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 1084
    invoke-virtual {v0, v1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleAddressAllocated(II)V

    goto :goto_7

    .line 1086
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 1087
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSelectRequestBuffer(Lcom/android/server/hdmi/SelectRequestBuffer;)V

    :cond_2e
    return-void
.end method

.method public notifyAvcMuteChange(Z)V
    .registers 4

    .line 4192
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAbsoluteVolumeControlEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4194
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/hdmi/HdmiControlService;->STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    .line 4195
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvcAudioOutputDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz p1, :cond_20

    const/16 p1, -0x64

    goto :goto_22

    :cond_20
    const/16 p1, 0x64

    :goto_22
    const/16 v0, 0x2000

    .line 4198
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v0, 0x2001

    .line 4201
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_34
    return-void
.end method

.method public notifyAvcVolumeChange(I)V
    .registers 4

    .line 4175
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAbsoluteVolumeControlEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4177
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/hdmi/HdmiControlService;->STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    .line 4178
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvcAudioOutputDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0x2000

    .line 4180
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v0, 0x2001

    .line 4183
    :cond_25
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->setStreamMusicVolume(II)V

    :cond_28
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_6a

    .line 799
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 800
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "tv_input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/TvInputManager;

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 802
    new-instance p1, Lcom/android/server/hdmi/PowerManagerWrapper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/hdmi/PowerManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 803
    new-instance p1, Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    invoke-direct {p1}, Lcom/android/server/hdmi/PowerManagerInternalWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    .line 804
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Landroid/media/AudioManager;

    .line 805
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mStreamMusicMaxVolume:I

    .line 806
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;

    if-nez p1, :cond_5b

    .line 807
    new-instance p1, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    .line 808
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;

    .line 810
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioDeviceVolumeManager()Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-interface {p1, v0, v1}, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;->addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V

    goto :goto_76

    :cond_6a
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_76

    .line 813
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    :cond_76
    :goto_76
    return-void
.end method

.method public onDeviceVolumeBehaviorChanged(Landroid/media/AudioDeviceAttributes;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3886
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3887
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->AVC_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3888
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3889
    :try_start_e
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3890
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1c

    .line 3891
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeControlState()V

    goto :goto_1f

    :catchall_1c
    move-exception p0

    .line 3890
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onHotplug(IZ)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1409
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1411
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->initPortInfo()V

    if-eqz p2, :cond_4d

    .line 1413
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1414
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4d

    .line 1415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1417
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    if-nez v3, :cond_45

    .line 1419
    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    .line 1420
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    .line 1422
    :cond_45
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_49
    const/4 v1, 0x4

    .line 1424
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .line 1427
    :cond_4d
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1428
    invoke-virtual {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onHotplug(IZ)V

    goto :goto_57

    .line 1431
    :cond_67
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->announceHotplugEvent(IZ)V

    return-void
.end method

.method public final onInitializeCecComplete(I)V
    .registers 7

    .line 853
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->updatePowerStatusOnInitializeCecComplete()V

    const/4 v0, 0x0

    .line 854
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 856
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    .line 857
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    :cond_1a
    const/4 v1, -0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_41

    if-eq p1, v2, :cond_42

    if-eq p1, v3, :cond_29

    const/4 v0, 0x3

    if-eq p1, v0, :cond_27

    move v0, v1

    goto :goto_42

    :cond_27
    move v0, v3

    goto :goto_42

    .line 869
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v0

    .line 870
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 871
    invoke-virtual {v4, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onInitializeCecComplete(I)V

    goto :goto_31

    :cond_41
    move v0, v2

    :cond_42
    :goto_42
    if-eq v0, v1, :cond_4a

    .line 879
    invoke-virtual {p0, v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 880
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->announceHdmiControlStatusChange(I)V

    :cond_4a
    return-void
.end method

.method public final onLanguageChanged(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3364
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3365
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    .line 3367
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3368
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    .line 3369
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->setLanguage(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public final onPendingActionsCleared(I)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3416
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    const-string v0, "HdmiControlService"

    const-string/jumbo v1, "onPendingActionsCleared"

    .line 3417
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusTransientToStandby()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 3420
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    .line 3421
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3422
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v2, v3, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZI)V

    goto :goto_24

    .line 3424
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result p1

    if-nez p1, :cond_49

    .line 3425
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 3426
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v0, 0x68

    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 3431
    :cond_49
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    return-void
.end method

.method public onStandby(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    const/4 v0, 0x0

    .line 3323
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 3324
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3325
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 3327
    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 3330
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v0

    .line 3332
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isStandbyMessageReceived()Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 3333
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    .line 3334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3335
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZI)V

    goto :goto_29

    :cond_3b
    return-void

    .line 3340
    :cond_3c
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$13;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$13;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 603
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->initService()V

    .line 604
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$BinderService;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$BinderService-IA;)V

    const-string/jumbo v1, "hdmi_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 606
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v0, :cond_38

    .line 608
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 609
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 610
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 611
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 612
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 616
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->registerContentObserver()V

    .line 618
    :cond_38
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v0, 0x68

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    return-void
.end method

.method public final onWakeUp(I)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3291
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3292
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 3294
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const-string v2, "HdmiControlService"

    if-eqz v0, :cond_3f

    .line 3295
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_44

    if-eqz p1, :cond_36

    if-eq p1, v3, :cond_34

    .line 3308
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "wakeUpAction "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not defined."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    move v1, v3

    goto :goto_3b

    .line 3300
    :cond_36
    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    if-eqz p1, :cond_3b

    const/4 v1, 0x3

    .line 3312
    :cond_3b
    :goto_3b
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    goto :goto_44

    :cond_3f
    const-string p0, "Device does not support HDMI-CEC."

    .line 3315
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_44
    return-void
.end method

.method public oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2676
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2677
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    const-string v1, "HdmiControlService"

    if-nez v0, :cond_11

    .line 2678
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    const-string p0, "Local device is under address allocation. Save OTP callback for later process."

    .line 2679
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2684
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 2686
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    :cond_1b
    if-nez v0, :cond_27

    const-string v0, "Local source device not available"

    .line 2690
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 2691
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 2694
    :cond_27
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public pathToPortId(I)I
    .registers 2

    .line 1127
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    move-result p0

    return p0
.end method

.method public pauseActiveMediaSessions()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3657
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/media/session/MediaSessionManager;

    .line 3658
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSessionManager;

    const/4 v0, 0x0

    .line 3659
    invoke-virtual {p0, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    .line 3660
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 3661
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_15

    :cond_29
    return-void
.end method

.method public playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .registers 2

    .line 3194
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    const/4 v0, 0x4

    .line 3195
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    return-object p0
.end method

.method public pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1448
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiControlService;->checkPollStrategy(I)I

    move-result p0

    invoke-virtual {v0, p1, p2, p0, p4}, Lcom/android/server/hdmi/HdmiCecController;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V

    return-void
.end method

.method public portIdToPath(I)I
    .registers 2

    .line 1110
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->portIdToPath(I)I

    move-result p0

    return p0
.end method

.method public queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2733
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2734
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    const-string v1, "HdmiControlService"

    if-nez v0, :cond_11

    .line 2735
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const-string p0, "Local device is under address allocation. Queue display callback for later process."

    .line 2736
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2741
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 2743
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    :cond_1b
    if-nez v0, :cond_27

    const-string v0, "Local source device not available"

    .line 2747
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 2748
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 2751
    :cond_27
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public readBooleanSetting(Ljava/lang/String;Z)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 941
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 942
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result p2

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_14

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public readBooleanSystemProperty(Ljava/lang/String;Z)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 963
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public readDeviceTypes()Ljava/util/List;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 530
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getCecDeviceTypes()Ljava/util/List;

    move-result-object v0

    .line 531
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "HdmiControlService"

    const/4 v3, 0x0

    if-nez v1, :cond_4f

    .line 532
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 533
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing ro.hdmi.cec_device_types: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.hdmi.cec_device_types"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_2e
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda0;-><init>()V

    .line 537
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>()V

    .line 538
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 539
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 542
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceTypes()Ljava/util/List;

    move-result-object p0

    .line 543
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing ro.hdmi.device_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.hdmi.device_type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_74
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>()V

    .line 548
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 549
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public readIntSetting(Ljava/lang/String;I)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 947
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 948
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public readStringSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 967
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 968
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 969
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    return-object p2

    :cond_13
    return-object p0
.end method

.method public final registerContentObserver()V
    .registers 8

    .line 898
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mhl_input_switching_enabled"

    const-string/jumbo v2, "mhl_power_charge_enabled"

    const-string v3, "device_name"

    .line 899
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    const/4 v4, 0x3

    if-ge v3, v4, :cond_28

    .line 904
    aget-object v4, v1, v3

    .line 905
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    const/4 v6, -0x1

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_28
    return-void
.end method

.method public registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .registers 3

    .line 822
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_5

    return-void

    .line 823
    :cond_5
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroid/media/tv/TvInputManager;->registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 5

    .line 3858
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3859
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 3860
    monitor-exit v0

    return-void

    .line 3862
    :cond_d
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3863
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p2

    if-nez p2, :cond_32

    .line 3864
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3865
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingChangeListener:Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    invoke-virtual {p2, p1, p0}, Lcom/android/server/hdmi/HdmiCecConfig;->removeChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;)V

    .line 3867
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 7

    .line 2821
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2823
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    .line 2824
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_9

    .line 2825
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2826
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2830
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public removeHdmiControlVolumeControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2857
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 7

    .line 2892
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2893
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 2894
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_9

    .line 2895
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2896
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2900
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 6

    .line 2943
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2945
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 2946
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_9

    .line 2947
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2948
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2952
    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public runOnServiceThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 1222
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1253
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    .line 1254
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1240
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getValidationResult()I

    move-result v0

    if-nez v0, :cond_15

    .line 1241
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddresses(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1242
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_32

    .line 1244
    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid message type:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_32

    const/4 p0, 0x3

    .line 1246
    invoke-interface {p2, p0}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    :cond_32
    :goto_32
    return-void
.end method

.method public setActivePortId(I)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3641
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3642
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    const/4 p1, -0x1

    .line 3646
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    return-void
.end method

.method public setActiveSource(IILjava/lang/String;)V
    .registers 8

    .line 3666
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3667
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    iput p1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 3668
    iput p2, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 3669
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_52

    .line 3671
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object v0

    .line 3672
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    invoke-static {v1, p2}, Lcom/android/server/hdmi/HdmiUtils;->pathRelationship(II)I

    move-result v1

    .line 3671
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->activeSourceChanged(III)V

    .line 3676
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3678
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    if-ne p1, v2, :cond_3f

    .line 3679
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    if-ne p2, v2, :cond_3f

    const/4 v2, 0x1

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    .line 3681
    :goto_40
    new-instance v3, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-direct {v3, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>(II)V

    invoke-virtual {v1, v3, v2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addActiveSourceHistoryItem(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;ZLjava/lang/String;)V

    goto :goto_21

    .line 3685
    :cond_49
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_52
    move-exception p0

    .line 3669
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public setAndBroadcastActiveSource(IIILjava/lang/String;)V
    .registers 7

    const/4 v0, 0x4

    if-ne p2, v0, :cond_18

    .line 3697
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 3698
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {v0, v1, p1, p4}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(IILjava/lang/String;)V

    .line 3700
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 3701
    invoke-virtual {v0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    :cond_18
    const/4 v0, 0x5

    if-ne p2, v0, :cond_36

    .line 3705
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p2

    .line 3706
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    if-nez p0, :cond_36

    .line 3707
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    invoke-virtual {p2, p0, p1, p4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(IILjava/lang/String;)V

    .line 3709
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 3710
    invoke-virtual {p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    :cond_36
    return-void
.end method

.method public setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V
    .registers 5

    .line 3724
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 3725
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p0

    if-eqz v0, :cond_1c

    .line 3727
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    invoke-virtual {v0, p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(IILjava/lang/String;)V

    .line 3729
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 3730
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    goto :goto_2f

    :cond_1c
    if-eqz p0, :cond_2f

    .line 3732
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(IILjava/lang/String;)V

    .line 3734
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 3735
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public setAudioStatus(ZI)V
    .registers 5

    .line 1503
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1504
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1505
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1506
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_5b

    .line 1510
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    const/4 v0, 0x3

    .line 1511
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz p1, :cond_33

    if-nez v1, :cond_5b

    const/4 p1, 0x1

    .line 1514
    invoke-virtual {p0, v0, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_5b

    :cond_33
    if-eqz v1, :cond_39

    const/4 p1, 0x0

    .line 1518
    invoke-virtual {p0, v0, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_39
    if-ltz p2, :cond_5b

    const/16 p1, 0x64

    if-gt p2, p1, :cond_5b

    .line 1524
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "volume: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HdmiControlService"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x101

    .line 1526
    invoke-virtual {p0, v0, p2, p1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public setCecController(Lcom/android/server/hdmi/HdmiCecController;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 774
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    return-void
.end method

.method public setCecMessageBuffer(Lcom/android/server/hdmi/CecMessageBuffer;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1150
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    return-void
.end method

.method public setCecOption(IZ)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3575
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3576
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    return-void
.end method

.method public setControlEnabled(I)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3581
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3583
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3584
    :try_start_6
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    .line 3585
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_31

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    .line 3588
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->enableHdmiControlService()V

    .line 3589
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p1

    const-string/jumbo v0, "volume_control_enabled"

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiCecVolumeControlEnabledInternal(I)V

    return-void

    :cond_1e
    const/4 v1, 0x0

    .line 3594
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiCecVolumeControlEnabledInternal(I)V

    .line 3596
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 3600
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$15;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$15;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 3606
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceHdmiControlStatusChange(I)V

    return-void

    :catchall_31
    move-exception p0

    .line 3585
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .registers 7

    .line 1558
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1559
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    .line 1560
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_8

    .line 1563
    :cond_23
    iget-object v3, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1564
    :try_start_26
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1565
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_43

    .line 1568
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    const/4 v2, 0x0

    .line 1567
    invoke-static {v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 1566
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_8

    :catchall_43
    move-exception p0

    .line 1565
    :try_start_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0

    :cond_46
    return-void
.end method

.method public setHdmiCecConfig(Lcom/android/server/hdmi/HdmiCecConfig;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 784
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    return-void
.end method

.method public setHdmiCecNetwork(Lcom/android/server/hdmi/HdmiCecNetwork;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 779
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    return-void
.end method

.method public setHdmiCecVolumeControlEnabledInternal(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2645
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

    .line 2646
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceHdmiCecVolumeControlFeatureChange(I)V

    .line 2647
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHdmiMhlController(Lcom/android/server/hdmi/HdmiMhlControllerStub;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 793
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    return-void
.end method

.method public final setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 4

    .line 2997
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2998
    :try_start_3
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1f

    .line 3000
    :try_start_a
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15
    .catchall {:try_start_a .. :try_end_14} :catchall_1f

    goto :goto_1d

    :catch_15
    move-exception p0

    :try_start_16
    const-string p1, "HdmiControlService"

    const-string v1, "Listener already died."

    .line 3002
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3004
    :goto_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 4

    .line 2973
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2974
    :try_start_3
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1f

    .line 2976
    :try_start_a
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16
    .catchall {:try_start_a .. :try_end_14} :catchall_1f

    .line 2981
    :try_start_14
    monitor-exit v0

    return-void

    :catch_16
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died"

    .line 2978
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    .line 2981
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public setIoLooper(Landroid/os/Looper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1145
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    return-void
.end method

.method public setLastInputForMhl(I)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3741
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3742
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    return-void
.end method

.method public setMhlInputChangeEnabled(Z)V
    .registers 5

    .line 3788
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 3790
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3791
    :try_start_e
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    .line 3792
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setPowerManager(Lcom/android/server/hdmi/PowerManagerWrapper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 833
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    return-void
.end method

.method public setPowerManagerInternal(Lcom/android/server/hdmi/PowerManagerInternalWrapper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 838
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    return-void
.end method

.method public setPowerStatus(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3234
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3235
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    return-void
.end method

.method public setProhibitMode(Z)V
    .registers 3

    .line 3555
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3556
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    .line 3557
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setStandbyMode(Z)V
    .registers 6

    .line 3518
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3519
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 3520
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/hdmi/PowerManagerWrapper;->goToSleep(JII)V

    .line 3522
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 3523
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->sendStandby(I)V

    goto :goto_47

    .line 3525
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_47

    if-nez p1, :cond_47

    .line 3526
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x8

    const-string v3, "android.server.hdmi:WAKE"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/hdmi/PowerManagerWrapper;->wakeUp(JILjava/lang/String;)V

    .line 3528
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 3529
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$14;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public setStreamMusicVolume(II)V
    .registers 4

    .line 4210
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStreamMusicMaxVolume:I

    mul-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x64

    const/4 p0, 0x3

    invoke-virtual {v0, p0, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public setSystemAudioActivated(Z)V
    .registers 3

    .line 3567
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3568
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    .line 3569
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 3570
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_f
    move-exception p0

    .line 3569
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final setWorkSourceUidToCallingUid()V
    .registers 1

    .line 1805
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Binder;->setCallingWorkSourceUid(I)J

    return-void
.end method

.method public shouldHandleTvPowerKey()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2715
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2718
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v0

    const-string/jumbo v2, "power_control_mode"

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "none"

    .line 2720
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    .line 2723
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v0

    const-string/jumbo v2, "hdmi_cec_enabled"

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2c

    return v1

    .line 2728
    :cond_2c
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    return p0
.end method

.method public final sourceAddressIsLocal(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 1333
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1334
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1335
    :try_start_18
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    if-ne v3, v0, :cond_47

    .line 1336
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_47

    .line 1337
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected source: message sent from device itself, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 1339
    monitor-exit v2

    return p0

    .line 1341
    :cond_47
    monitor-exit v2

    goto :goto_8

    :catchall_49
    move-exception p0

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_18 .. :try_end_4b} :catchall_49

    throw p0

    :cond_4c
    return v1
.end method

.method public standby()V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3270
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3271
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x1

    .line 3274
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 3275
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/hdmi/PowerManagerWrapper;->goToSleep(JII)V

    return-void
.end method

.method public toggleAndFollowTvPower()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2700
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2701
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2703
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    :cond_d
    if-nez v0, :cond_17

    const-string p0, "HdmiControlService"

    const-string v0, "Local source device not available"

    .line 2707
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2710
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->toggleAndFollowTvPower()V

    return-void
.end method

.method public tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .registers 2

    .line 3170
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    return-object p0
.end method

.method public unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .registers 2

    .line 827
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez p0, :cond_5

    return-void

    .line 828
    :cond_5
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputManager;->unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    return-void
.end method

.method public final updatePowerStatusOnInitializeCecComplete()V
    .registers 3

    .line 888
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusTransientToOn()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 889
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25

    .line 891
    :cond_13
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusTransientToStandby()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 892
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    :goto_25
    return-void
.end method

.method public final updateSafeMhlInput()V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1636
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1637
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1638
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getAllLocalDevices()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 1639
    :goto_e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 1640
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    .line 1641
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 1643
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    :cond_2b
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1649
    :cond_35
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1650
    :try_start_38
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    .line 1651
    monitor-exit v1

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final verifyExternalSourcePhysicalAddress([BI)Z
    .registers 6

    .line 1319
    aget-byte v0, p1, p2

    const/4 v1, 0x1

    add-int/2addr p2, v1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_11

    .line 1322
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v2, 0x2

    if-lt v0, v2, :cond_11

    .line 1323
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress([BI)Z

    move-result p0

    return p0

    :cond_11
    return v1
.end method

.method public final verifyPhysicalAddress([BI)Z
    .registers 5

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 1304
    :cond_8
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result p1

    const p2, 0xffff

    if-eq p1, p2, :cond_18

    .line 1305
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p2

    if-ne p1, p2, :cond_18

    return v1

    .line 1308
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_21

    const/4 p0, 0x0

    return p0

    :cond_21
    return v1
.end method

.method public verifyPhysicalAddresses(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 1273
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 1274
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result p1

    const/16 v1, 0x70

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_41

    const/16 v1, 0x84

    if-eq p1, v1, :cond_3c

    const/16 v1, 0x86

    if-eq p1, v1, :cond_3c

    const/16 v1, 0x9d

    if-eq p1, v1, :cond_3c

    const/16 v1, 0xa1

    if-eq p1, v1, :cond_36

    const/16 v1, 0xa2

    if-eq p1, v1, :cond_36

    packed-switch p1, :pswitch_data_4e

    return v2

    .line 1276
    :pswitch_26
    invoke-virtual {p0, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress([BI)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x2

    .line 1277
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress([BI)Z

    move-result p0

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    move v2, v3

    :goto_35
    return v2

    :cond_36
    const/4 p1, 0x7

    .line 1288
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->verifyExternalSourcePhysicalAddress([BI)Z

    move-result p0

    return p0

    .line 1285
    :cond_3c
    :pswitch_3c
    invoke-virtual {p0, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress([BI)Z

    move-result p0

    return p0

    .line 1279
    :cond_41
    array-length p1, v0

    if-eqz p1, :cond_4c

    invoke-virtual {p0, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress([BI)Z

    move-result p0

    if-eqz p0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v3

    :cond_4c
    :goto_4c
    return v2

    nop

    :pswitch_data_4e
    .packed-switch 0x80
        :pswitch_26
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method public wakeUp()V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 3260
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    const/4 v0, 0x1

    .line 3261
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 3262
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x8

    const-string v3, "android.server.hdmi:WAKE"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/hdmi/PowerManagerWrapper;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method public writeBooleanSetting(Ljava/lang/String;Z)V
    .registers 3

    .line 952
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 953
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result p2

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public writeStringSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 976
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 977
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 958
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

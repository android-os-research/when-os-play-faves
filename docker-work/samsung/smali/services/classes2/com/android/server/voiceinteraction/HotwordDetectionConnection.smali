.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
.super Ljava/lang/Object;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;,
        Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;,
        Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_ONDETECTED_GOT_SECURITY_EXCEPTION:I = -0x2

.field public static final DEBUG:Z = false

.field public static final EXTERNAL_HOTWORD_CLEANUP_MILLIS:J = 0x7d0L

.field public static final HOTWORD_DETECTION_SERVICE_DIED:I = -0x1

.field public static final KEY_RESTART_PERIOD_IN_SECONDS:Ljava/lang/String; = "restart_period_in_seconds"

.field public static final MAX_ISOLATED_PROCESS_NUMBER:I = 0xa

.field public static final MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

.field public static final MAX_UPDATE_TIMEOUT_MILLIS:J = 0x7530L

.field public static final METRICS_INIT_CALLBACK_STATE_ERROR:I = 0x1

.field public static final METRICS_INIT_CALLBACK_STATE_SUCCESS:I = 0x0

.field public static final METRICS_INIT_UNKNOWN_NO_VALUE:I = 0x2

.field public static final METRICS_INIT_UNKNOWN_OVER_MAX_CUSTOM_VALUE:I = 0x3

.field public static final METRICS_INIT_UNKNOWN_TIMEOUT:I = 0x4

.field public static final METRICS_KEYPHRASE_TRIGGERED_DETECT_SECURITY_EXCEPTION:I = 0x8

.field public static final METRICS_KEYPHRASE_TRIGGERED_DETECT_UNEXPECTED_CALLBACK:I = 0x7

.field public static final METRICS_KEYPHRASE_TRIGGERED_REJECT_UNEXPECTED_CALLBACK:I = 0x9

.field public static final OP_MESSAGE:Ljava/lang/String; = "Providing hotword detection result to VoiceInteractionService"

.field public static final RESET_DEBUG_HOTWORD_LOGGING_TIMEOUT_MILLIS:J = 0x36ee80L

.field public static final TAG:Ljava/lang/String; = "HotwordDetectionConnection"

.field public static final VALIDATION_TIMEOUT_MILLIS:J = 0xfa0L


# instance fields
.field public final mAudioCopyExecutor:Ljava/util/concurrent/Executor;

.field public mAudioFlinger:Landroid/os/IBinder;

.field public final mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public final mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDebugHotwordLogging:Z

.field public mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public final mDetectionComponentName:Landroid/content/ComponentName;

.field public final mDetectorType:I

.field public volatile mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

.field public mLastRestartInstant:Ljava/time/Instant;

.field public final mLock:Ljava/lang/Object;

.field public mPerformingSoftwareHotwordDetection:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mReStartPeriodSeconds:I

.field public mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

.field public mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

.field public final mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUser:I

.field public mValidatingDspTrigger:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mVoiceInteractionServiceUid:I

.field public final mVoiceInteractorIdentity:Landroid/media/permission/Identity;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0fpruRFR4LE6bKGzARFyM0bUWNQ(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$handleExternalSourceHotwordDetection$10(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;Landroid/service/voice/IHotwordDetectionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0g400OH_yiMPR_KXMW7uzW_oH1Q(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$handleExternalSourceHotwordDetection$9(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3z-Tt-udJ7sm2dXZUo03ytodkRo(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$startListeningFromMicLocked$4(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5AhLVOx1GVIBpgtRPs8NIk-5svo(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateServiceIdentity$13(Landroid/service/voice/IHotwordDetectionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8MqrfnzDbyODuPkfE5SXBILkDVg(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$enforcePermissionsForDataDelivery$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$9r57RgonKYJyJHgNjDPZCP2RXYY(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$removeServiceUidForAudioPolicy$15(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fj36p1glDt8Zh8I-zgkb5fCM2PI(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateStateAfterProcessStart$1(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GRO8jTOs6Rv5P7ybc7gIwzD2rSY(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateStateLocked$3(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JlXv3L0-b9DJORELh8UDBZyjO8U(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$QlNFxRd1r8P5c9PMWQ9lG8_Kpf8(Landroid/view/contentcapture/IContentCaptureManager;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateContentCaptureManager$12(Landroid/view/contentcapture/IContentCaptureManager;Landroid/service/voice/IHotwordDetectionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WqpgkRDptuwZ0Bl9mChsTs3a68Q(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$addServiceUidForAudioPolicy$14(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_MKkJHL3Ux-GuDs76odNd2Cis7s(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$detectFromDspSourceForTest$5(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gPzNXrIMbHFv_Wpjp8KX6DT0hIU(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$setDebugHotwordLoggingLocked$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$i8F8xvsj0XTRcMx3FdDlXqkF-FE(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->audioServerDied()V

    return-void
.end method

.method public static synthetic $r8$lambda$j3YZVRjJwE5VaIcb38KuXgJ7ll8(Landroid/os/IBinder;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateAudioFlinger$11(Landroid/os/IBinder;Landroid/service/voice/IHotwordDetectionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n6ysOnIVmj4di34EMMlnnx480vE(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateStateAfterProcessStart$2(Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tisSL9mm5oS_1pN3z5Rs6IpX9XA(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$detectFromDspSource$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$vWnVIN6-eA2c0aZtIBdwqu0oIkU(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$detectFromDspSource$7(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCancellationKeyPhraseDetectionFuture(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDebugHotwordLogging(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPerformingSoftwareHotwordDetection(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduledExecutorService(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoftwareCallback(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateStateAfterStartFinished(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmPerformingSoftwareHotwordDetection(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddServiceUidForAudioPolicy(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->addServiceUidForAudioPolicy(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdetectFromDspSource(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforcePermissionsForDataDelivery(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->enforcePermissionsForDataDelivery()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smbestEffortClose([Ljava/io/Closeable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose([Ljava/io/Closeable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetInitStatusAndMetricsResult(Landroid/os/Bundle;)Landroid/util/Pair;
    .registers 1

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getInitStatusAndMetricsResult(Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smupdateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smupdateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x7530

    .line 122
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;ILandroid/media/permission/Identity;Landroid/content/ComponentName;IZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    .registers 15

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    .line 152
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 154
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    .line 176
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 184
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    .line 190
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    if-eqz p10, :cond_7c

    .line 201
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 202
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    .line 203
    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    .line 204
    iput-object p4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 205
    iput-object p5, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectionComponentName:Landroid/content/ComponentName;

    .line 206
    iput p6, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUser:I

    .line 207
    iput-object p10, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 208
    iput p11, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const-string/jumbo p1, "voice_interaction"

    const-string/jumbo p2, "restart_period_in_seconds"

    .line 209
    invoke-static {p1, p2, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mReStartPeriodSeconds:I

    .line 211
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.service.voice.HotwordDetectionService"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlingerLocked()V

    .line 215
    new-instance p3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-direct {p3, p0, p2, p7}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;Z)V

    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 217
    invoke-virtual {p3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 219
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    .line 220
    invoke-virtual {p0, p8, p9}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateStateAfterProcessStart(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    if-gtz p1, :cond_6b

    .line 223
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_7b

    .line 227
    :cond_6b
    new-instance p2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    int-to-long p3, p1

    int-to-long p5, p1

    sget-object p7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object p1, v0

    invoke-interface/range {p1 .. p7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    :goto_7b
    return-void

    :cond_7c
    const-string p0, "HotwordDetectionConnection"

    const-string p1, "Callback is null while creating connection"

    .line 198
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bestEffortClose(Ljava/io/Closeable;)V
    .registers 1

    .line 1152
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static varargs bestEffortClose([Ljava/io/Closeable;)V
    .registers 4

    .line 1145
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p0, v1

    .line 1146
    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public static createPipe()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1081
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_f

    const/4 v1, 0x0

    .line 1087
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_f
    move-exception v0

    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Failed to create audio stream pipe"

    .line 1083
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1186
    invoke-static {p0, p1, p2, p3}, Landroid/media/permission/PermissionUtil;->checkPermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 1189
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const/4 p2, 0x1

    .line 1192
    invoke-static {p1}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->toString(Landroid/media/permission/Identity;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p2

    const-string p1, "Failed to obtain permission %s for identity %s"

    .line 1190
    invoke-static {p1, p3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInitStatusAndMetricsResult(Landroid/os/Bundle;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/16 v1, 0x64

    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p0, :cond_13

    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_13
    const-string v3, "initialization_status"

    .line 345
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 346
    invoke-static {}, Landroid/service/voice/HotwordDetectionService;->getMaxCustomInitializationStatus()I

    move-result v3

    if-le p0, v3, :cond_2d

    .line 347
    new-instance v3, Landroid/util/Pair;

    if-ne p0, v1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x3

    .line 348
    :goto_25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v3, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_2d
    if-nez p0, :cond_31

    const/4 v0, 0x0

    goto :goto_32

    :cond_31
    const/4 v0, 0x1

    .line 356
    :goto_32
    new-instance v1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static synthetic lambda$addServiceUidForAudioPolicy$14(I)V
    .registers 2

    .line 1126
    const-class v0, Landroid/media/AudioManagerInternal;

    .line 1127
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_d

    .line 1129
    invoke-virtual {v0, p0}, Landroid/media/AudioManagerInternal;->addAssistantServiceUid(I)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$detectFromDspSource$6()V
    .registers 2

    .line 658
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/4 v0, 0x2

    .line 659
    invoke-static {p0, v0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    return-void
.end method

.method private synthetic lambda$detectFromDspSource$7(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xfa0

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 665
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v3

    const-wide/16 v4, 0xfa0

    move-object v1, p3

    move-object v2, p1

    move-object v6, p2

    .line 663
    invoke-interface/range {v1 .. v6}, Landroid/service/voice/IHotwordDetectionService;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method public static synthetic lambda$detectFromDspSourceForTest$5(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    .line 565
    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method private synthetic lambda$enforcePermissionsForDataDelivery$16()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    const-string v2, "android.permission.RECORD_AUDIO"

    const-string v3, "Providing hotword detection result to VoiceInteractionService"

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-static {v0, p0, v1, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleExternalSourceHotwordDetection$10(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 884
    new-instance v5, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;

    invoke-direct {v5, p0, p4, p5, p6}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    const/4 v2, 0x2

    move-object v0, p7

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    .line 943
    invoke-static {p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    return-void
.end method

.method private synthetic lambda$handleExternalSourceHotwordDetection$9(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 9

    const/4 v0, 0x0

    .line 848
    :try_start_1
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_36

    const/16 p2, 0x400

    :try_start_8
    new-array v2, p2, [B

    :goto_a
    const/4 v3, 0x0

    .line 853
    invoke-virtual {p1, v2, v3, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_28

    const-string p2, "HotwordDetectionConnection"

    const-string v2, "Reached end of stream for external hotword"

    .line 856
    invoke-static {p2, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_2c

    .line 865
    :try_start_18
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_36

    :try_start_1b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_44
    .catchall {:try_start_1b .. :try_end_1e} :catchall_42

    .line 874
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 875
    :try_start_21
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 876
    monitor-exit p1

    goto :goto_6d

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    throw p0

    .line 863
    :cond_28
    :try_start_28
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_a

    :catchall_2c
    move-exception p2

    .line 847
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception v1

    :try_start_32
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    throw p2
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p2

    if-eqz p1, :cond_41

    :try_start_39
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception p1

    :try_start_3e
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    throw p2
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_44
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p1

    goto :goto_71

    :catch_44
    move-exception p1

    :try_start_45
    const-string p2, "HotwordDetectionConnection"

    const-string v1, "Failed supplying audio data to validator"

    .line 866
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_42

    .line 869
    :try_start_4c
    invoke-interface {p3}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onError()V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_4f} :catch_50
    .catchall {:try_start_4c .. :try_end_4f} :catchall_42

    goto :goto_67

    :catch_50
    move-exception p1

    :try_start_51
    const-string p2, "HotwordDetectionConnection"

    .line 871
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to report onError status: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_51 .. :try_end_67} :catchall_42

    .line 874
    :goto_67
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 875
    :try_start_6a
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 876
    monitor-exit p1

    :goto_6d
    return-void

    :catchall_6e
    move-exception p0

    monitor-exit p1
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_6e

    throw p0

    .line 874
    :goto_71
    iget-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 875
    :try_start_74
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 876
    monitor-exit p2
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    .line 877
    throw p1

    :catchall_78
    move-exception p0

    .line 876
    :try_start_79
    monitor-exit p2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Time to restart the process, TTL has passed"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 231
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceRestartEvent(II)V

    .line 233
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw p0
.end method

.method public static synthetic lambda$removeServiceUidForAudioPolicy$15(I)V
    .registers 2

    .line 1136
    const-class v0, Landroid/media/AudioManagerInternal;

    .line 1137
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_d

    .line 1139
    invoke-virtual {v0, p0}, Landroid/media/AudioManagerInternal;->removeAssistantServiceUid(I)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$setDebugHotwordLoggingLocked$8()V
    .registers 3

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Timeout to reset mDebugHotwordLogging to false"

    .line 687
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 689
    :try_start_b
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 690
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw p0
.end method

.method public static synthetic lambda$startListeningFromMicLocked$4(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p0

    .line 457
    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method public static synthetic lambda$updateAudioFlinger$11(Landroid/os/IBinder;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1092
    invoke-interface {p1, p0}, Landroid/service/voice/IHotwordDetectionService;->updateAudioFlinger(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$updateContentCaptureManager$12(Landroid/view/contentcapture/IContentCaptureManager;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1100
    new-instance v0, Landroid/content/ContentCaptureOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/ContentCaptureOptions;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {p1, p0, v0}, Landroid/service/voice/IHotwordDetectionService;->updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    return-void
.end method

.method private synthetic lambda$updateServiceIdentity$13(Landroid/service/voice/IHotwordDetectionService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1105
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-interface {p1, v0}, Landroid/service/voice/IHotwordDetectionService;->ping(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method private synthetic lambda$updateStateAfterProcessStart$1(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 278
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/infra/AndroidFuture;)V

    .line 309
    :try_start_a
    invoke-interface {p3, p1, p2, v1}, Landroid/service/voice/IHotwordDetectionService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    .line 310
    iget p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/4 p2, 0x4

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {p1, p2, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception p0

    const-string p1, "HotwordDetectionConnection"

    const-string p2, "Failed to updateState for HotwordDetectionService"

    .line 315
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    const-wide/16 p0, 0x7530

    .line 317
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateStateAfterProcessStart$2(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 5

    .line 319
    instance-of p1, p2, Ljava/util/concurrent/TimeoutException;

    const-string v0, "HotwordDetectionConnection"

    if-eqz p1, :cond_30

    const-string/jumbo p1, "updateState timed out"

    .line 320
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_16

    return-void

    .line 325
    :cond_16
    :try_start_16
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    const/16 v1, 0x64

    invoke-interface {p1, v1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onStatusReported(I)V

    .line 326
    iget p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceInitResultEvent(II)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24

    goto :goto_46

    :catch_24
    move-exception p1

    const-string v1, "Failed to report initialization status UNKNOWN"

    .line 329
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    invoke-static {p0, p2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceInitResultEvent(II)V

    goto :goto_46

    :cond_30
    if-eqz p2, :cond_46

    .line 334
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to update state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    :goto_46
    return-void
.end method

.method public static synthetic lambda$updateStateLocked$3(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 393
    invoke-interface {p2, p0, p1, v0}, Landroid/service/voice/IHotwordDetectionService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public static updateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V
    .registers 3

    .line 1092
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public static updateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .registers 3

    const-string v0, "content_capture"

    .line 1097
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1098
    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 1099
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda18;-><init>(Landroid/view/contentcapture/IContentCaptureManager;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method


# virtual methods
.method public final addServiceUidForAudioPolicy(I)V
    .registers 3

    .line 1125
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final audioServerDied()V
    .registers 3

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Audio server died; restarting the HotwordDetectionService."

    .line 259
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlingerLocked()V

    .line 265
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 266
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceRestartEvent(II)V

    .line 268
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public cancelLocked()V
    .registers 4

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "cancelLocked"

    .line 366
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->clearDebugHotwordLoggingTimeoutLocked()V

    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 369
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 370
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v2, 0x0

    .line 371
    invoke-interface {v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V

    .line 372
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    if-eqz v1, :cond_2b

    .line 373
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->removeServiceUidForAudioPolicy(I)V

    .line 375
    :cond_2b
    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 376
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_35

    const/4 v2, 0x1

    .line 377
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 379
    :cond_35
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    if-eqz v1, :cond_3e

    .line 380
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_3e
    return-void
.end method

.method public final clearDebugHotwordLoggingTimeoutLocked()V
    .registers 3

    .line 696
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 697
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 698
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_b
    return-void
.end method

.method public final detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .registers 6

    .line 580
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    .line 652
    iget-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x1

    .line 653
    :try_start_9
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    .line 654
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 669
    monitor-exit p2

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p2
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final detectFromDspSourceForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .registers 5

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "detectFromDspSourceForTest"

    .line 517
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    .line 562
    iget-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x1

    .line 563
    :try_start_10
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    .line 564
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 570
    monitor-exit p2

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit p2
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 814
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mReStartPeriodSeconds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mReStartPeriodSeconds:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 815
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBound="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 817
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", mValidatingDspTrigger="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", mPerformingSoftwareHotwordDetection="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", mRestartCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->-$$Nest$fgetmRestartCount(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", mLastRestartInstant="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", mDetectorType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    invoke-static {p0}, Landroid/service/voice/HotwordDetector;->detectorTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enforcePermissionsForDataDelivery()V
    .registers 2

    .line 1162
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public forceRestart()V
    .registers 3

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Requested to restart the service internally. Performing the restart"

    .line 673
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 676
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final handleExternalSourceHotwordDetection(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 14

    .line 832
    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v6, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 834
    invoke-static {}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->createPipe()Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    .line 839
    :cond_c
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 840
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 842
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 843
    :try_start_19
    iput-object v5, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 844
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_36

    .line 846
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v6, v5, p4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 882
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v8, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    invoke-virtual {p1, v8}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void

    :catchall_36
    move-exception p0

    .line 844
    :try_start_37
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public final initAudioFlingerLocked()V
    .registers 4

    const-string v0, "media.audio_flinger"

    .line 242
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_1d

    .line 250
    :try_start_a
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_1c

    :catch_11
    move-exception v0

    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Audio server died before we registered a DeathRecipient; retrying init."

    .line 252
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlingerLocked()V

    :goto_1c
    return-void

    .line 244
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Service media.audio_flinger wasn\'t found."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isBound()Z
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 362
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final removeServiceUidForAudioPolicy(I)V
    .registers 3

    .line 1135
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final restartProcessLocked()V
    .registers 7

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Restarting hotword detection process"

    .line 703
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 705
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 708
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2d

    .line 712
    :try_start_10
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v5, Landroid/service/voice/HotwordRejectedResult$Builder;

    invoke-direct {v5}, Landroid/service/voice/HotwordRejectedResult$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/service/voice/HotwordRejectedResult$Builder;->build()Landroid/service/voice/HotwordRejectedResult;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 713
    iget v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_25} :catch_26

    goto :goto_2b

    :catch_26
    const-string v3, "Failed to call #rejected"

    .line 717
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :goto_2b
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    .line 722
    :cond_2d
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 723
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    .line 726
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-virtual {v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    const-string v3, "Started the new process, issuing #onProcessRestarted"

    .line 728
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :try_start_45
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onProcessRestarted()V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4a} :catch_4b

    goto :goto_51

    :catch_4b
    move-exception v3

    const-string v4, "Failed to communicate #onProcessRestarted"

    .line 732
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    :goto_51
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    if-eqz v3, :cond_5d

    const-string v3, "Process restarted: calling startRecognition() again"

    .line 737
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->startListeningFromMicLocked()V

    .line 741
    :cond_5d
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_6e

    const-string v3, "Closing external audio stream to hotword detector: process restarted"

    .line 742
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 744
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 750
    :cond_6e
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->ignoreConnectionStatusEvents()V

    .line 751
    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    if-eqz v2, :cond_7d

    .line 753
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->removeServiceUidForAudioPolicy(I)V

    :cond_7d
    return-void
.end method

.method public setDebugHotwordLoggingLocked(Z)V
    .registers 6

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDebugHotwordLoggingLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotwordDetectionConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->clearDebugHotwordLoggingTimeoutLocked()V

    .line 682
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    if-eqz p1, :cond_30

    .line 686
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    const-wide/32 v1, 0x36ee80

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_30
    return-void
.end method

.method public startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 5

    .line 474
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->handleExternalSourceHotwordDetection(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    return-void
.end method

.method public startListeningFromMic(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 3

    .line 403
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 405
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 406
    :try_start_5
    iget-boolean p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    if-eqz p2, :cond_12

    const-string p0, "HotwordDetectionConnection"

    const-string p2, "Hotword validation is already in progress, ignoring."

    .line 407
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-exit p1

    return-void

    :cond_12
    const/4 p2, 0x1

    .line 410
    iput-boolean p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    .line 412
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->startListeningFromMicLocked()V

    .line 413
    monitor-exit p1

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final startListeningFromMicLocked()V
    .registers 3

    .line 418
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    .line 456
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda14;-><init>(Landroid/service/voice/IDspHotwordDetectionCallback;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public stopListening()V
    .registers 2

    .line 485
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->stopListeningLocked()V

    .line 487
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final stopListeningLocked()V
    .registers 4

    .line 491
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    const-string v1, "HotwordDetectionConnection"

    if-nez v0, :cond_c

    const-string p0, "Hotword detection is not running"

    .line 492
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 495
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    .line 497
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 499
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_27

    const-string v0, "Closing audio stream to hotword detector: stopping requested"

    .line 500
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    :cond_27
    const/4 v0, 0x0

    .line 503
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public triggerHardwareRecognitionEventForTestLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .registers 3

    .line 512
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSourceForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    return-void
.end method

.method public final updateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .registers 3

    .line 1105
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public final updateStateAfterProcessStart(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 5

    .line 276
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance p2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda16;

    invoke-direct {p2, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    .line 318
    invoke-virtual {p1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 5

    .line 387
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_25

    .line 388
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "call updateStateAfterProcessStart"

    .line 389
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateStateAfterProcessStart(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    goto :goto_2f

    .line 392
    :cond_25
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda17;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    :goto_2f
    return-void
.end method

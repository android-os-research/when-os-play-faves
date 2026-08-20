.class public Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;


# static fields
.field public static final CLOSE_REASON_VOICE_INTERACTION:Ljava/lang/String; = "voiceinteraction"

.field public static final DEBUG:Z = false

.field public static final REQUEST_DIRECT_ACTIONS_RETRY_TIME_MS:J = 0xc8L

.field public static final TAG:Ljava/lang/String; = "VoiceInteractionServiceManager"


# instance fields
.field public mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

.field public final mAm:Landroid/app/IActivityManager;

.field public final mAtm:Landroid/app/IActivityTaskManager;

.field public mBound:Z

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public mDetectorType:I

.field public final mDirectActionsHandler:Landroid/os/Handler;

.field public mDisabledShowContext:I

.field public final mHandler:Landroid/os/Handler;

.field public final mHotwordDetectionComponentName:Landroid/content/ComponentName;

.field public volatile mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public final mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mService:Landroid/service/voice/IVoiceInteractionService;

.field public final mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

.field public final mSessionComponentName:Landroid/content/ComponentName;

.field public final mUser:I

.field public final mValid:Z


# direct methods
.method public static synthetic $r8$lambda$MI7Oa4qESLfsXC36SVCW05iSz6Q(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->retryRequestDirectActions(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;ILandroid/content/ComponentName;)V
    .registers 14

    const-string v0, "VoiceInteractionServiceManager"

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    .line 118
    new-instance v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;

    invoke-direct {v3, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Landroid/content/ServiceConnection;

    .line 193
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 194
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 195
    new-instance v2, Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDirectActionsHandler:Landroid/os/Handler;

    .line 196
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 197
    iput p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 198
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    .line 199
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    .line 200
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAtm:Landroid/app/IActivityTaskManager;

    .line 201
    const-class p3, Landroid/content/pm/PackageManagerInternal;

    .line 202
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageManagerInternal;

    .line 201
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 p3, 0x0

    .line 205
    :try_start_42
    new-instance v2, Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-direct {v2, v5, p5, p4}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_42 .. :try_end_4b} :catch_b5

    .line 215
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 216
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_74

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad voice interaction service: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    .line 219
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    .line 220
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 221
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    return-void

    .line 224
    :cond_74
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    .line 225
    new-instance p4, Landroid/content/ComponentName;

    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSessionService()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    .line 227
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getHotwordDetectionService()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_94

    .line 229
    new-instance p3, Landroid/content/ComponentName;

    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p5, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    const-string/jumbo p3, "window"

    .line 231
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    .line 230
    invoke-static {p3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 232
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 233
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object v2, p1

    move-object v6, p2

    .line 234
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void

    :catch_b5
    move-exception p1

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Voice interaction service not found: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 209
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    .line 210
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    .line 211
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 212
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    return-void
.end method

.method public static getServiceInfoLocked(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 5

    .line 706
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/32 v1, 0xc0080

    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public closeSystemDialogsLocked(Landroid/os/IBinder;)V
    .registers 3

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_9

    goto :goto_12

    .line 453
    :cond_9
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    const-string/jumbo p1, "voiceinteraction"

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V

    return-void

    :cond_12
    :goto_12
    const-string p0, "VoiceInteractionServiceManager"

    const-string p1, "closeSystemDialogs does not match active session"

    .line 450
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p0

    .line 455
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected remote error"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public createSoundTriggerCallbackLocked(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .registers 3

    .line 699
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-direct {v0, p1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;-><init>(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    return-object v0
.end method

.method public deliverNewSessionLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 5

    .line 302
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz p0, :cond_e

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_9

    goto :goto_e

    .line 306
    :cond_9
    invoke-virtual {p0, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverNewSessionLocked(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    const/4 p0, 0x1

    return p0

    :cond_e
    :goto_e
    const-string p0, "VoiceInteractionServiceManager"

    const-string p1, "deliverNewSession does not match active session"

    .line 303
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 754
    iget-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    if-nez p1, :cond_1b

    const-string p1, "  NOT VALID: "

    .line 755
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 756
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-nez p0, :cond_13

    const-string p0, "no info"

    .line 757
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a

    .line 759
    :cond_13
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1a
    return-void

    :cond_1b
    const-string p1, "  mUser="

    .line 763
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  mComponent="

    .line 764
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Session service="

    .line 765
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSessionService()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Service info:"

    .line 766
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    new-instance p3, Landroid/util/PrintWriterPrinter;

    invoke-direct {p3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v0, "    "

    invoke-virtual {p1, p3, v0}, Landroid/content/pm/ServiceInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    const-string p1, "  Recognition service="

    .line 768
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Hotword detection service="

    .line 769
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getHotwordDetectionService()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Settings activity="

    .line 770
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Supports assist="

    .line 771
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  Supports launch from keyguard="

    .line 772
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsLaunchFromKeyguard()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 774
    iget p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    if-eqz p1, :cond_ae

    const-string p1, "  mDisabledShowContext="

    .line 775
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 776
    iget p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ae
    const-string p1, "  mBound="

    .line 778
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mService="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mDetectorType="

    .line 779
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 780
    iget p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDetectorType:I

    invoke-static {p1}, Landroid/service/voice/HotwordDetector;->detectorTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-eqz p1, :cond_de

    const-string p1, "  Hotword detection connection:"

    .line 782
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 785
    :cond_de
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz p1, :cond_ec

    const-string p1, "  Active session:"

    .line 786
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_ec
    return-void
.end method

.method public finishLocked(Landroid/os/IBinder;Z)V
    .registers 5

    .line 460
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_12

    if-nez p2, :cond_b

    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v1, :cond_b

    goto :goto_12

    .line 464
    :cond_b
    invoke-virtual {v0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->cancelLocked(Z)V

    const/4 p1, 0x0

    .line 465
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    return-void

    :cond_12
    :goto_12
    const-string p0, "VoiceInteractionServiceManager"

    const-string p1, "finish does not match active session"

    .line 461
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forceRestartHotwordDetector()V
    .registers 2

    .line 724
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-nez v0, :cond_c

    const-string p0, "VoiceInteractionServiceManager"

    const-string v0, "Failed to force-restart hotword detection: no hotword detection active"

    .line 725
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 728
    :cond_c
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->forceRestart()V

    return-void
.end method

.method public getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    const-string v1, "VoiceInteractionServiceManager"

    if-nez v0, :cond_21

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not bound to voice interaction service "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 281
    :try_start_1d
    invoke-interface {p2, p0}, Lcom/android/internal/app/IVoiceActionCheckCallback;->onComplete(Ljava/util/List;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_20

    :catch_20
    return-void

    .line 287
    :cond_21
    :try_start_21
    invoke-interface {v0, p1, p2}, Landroid/service/voice/IVoiceInteractionService;->getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_2b

    :catch_25
    move-exception p0

    const-string p1, "RemoteException while calling getActiveServiceSupportedActions"

    .line 289
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    return-void
.end method

.method public getDisabledShowContextLocked(I)I
    .registers 5

    .line 478
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, v0, :cond_f

    .line 483
    iget p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    return p0

    .line 480
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not match active uid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserDisabledShowContextLocked(I)I
    .registers 5

    .line 487
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, v0, :cond_17

    .line 492
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getUserDisabledShowContextLocked()I

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0

    .line 489
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not match active uid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public grantImplicitAccessLocked(ILandroid/content/Intent;)V
    .registers 9

    .line 239
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 240
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 241
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 242
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    return-void
.end method

.method public hideSessionLocked()Z
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz p0, :cond_9

    .line 295
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->hideLocked()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isIsolatedProcessLocked(Landroid/content/pm/ServiceInfo;)Z
    .registers 2

    .line 719
    iget p0, p1, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_c

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public launchVoiceAssistFromKeyguard()V
    .registers 4

    .line 804
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    const-string v1, "VoiceInteractionServiceManager"

    if-nez v0, :cond_1d

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not bound to voice interaction service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 809
    :cond_1d
    :try_start_1d
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->launchVoiceAssistFromKeyguard()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception p0

    const-string v0, "RemoteException while calling launchVoiceAssistFromKeyguard"

    .line 811
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return-void
.end method

.method public final logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V
    .registers 5

    if-eqz p1, :cond_6

    const/4 p0, 0x1

    .line 609
    invoke-static {p2, p0, p4}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorCreateEvent(IZI)V

    :cond_6
    return-void
.end method

.method public notifyActivityEventChangedLocked()V
    .registers 2

    .line 527
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz p0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-nez v0, :cond_9

    goto :goto_c

    .line 534
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyActivityEventChangedLocked()V

    :cond_c
    :goto_c
    return-void
.end method

.method public notifySoundModelsChangedLocked()V
    .registers 4

    .line 843
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    const-string v1, "VoiceInteractionServiceManager"

    if-nez v0, :cond_1d

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not bound to voice interaction service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 848
    :cond_1d
    :try_start_1d
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->soundModelsChanged()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception p0

    const-string v0, "RemoteException while calling soundModelsChanged"

    .line 850
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return-void
.end method

.method public onSessionHidden(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 2

    .line 868
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->onSessionHidden()V

    return-void
.end method

.method public onSessionShown(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 2

    .line 863
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->onSessionShown()V

    return-void
.end method

.method public performDirectActionLocked(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 16

    .line 413
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const-string v0, "VoiceInteractionServiceManager"

    const/4 v1, 0x0

    if-eqz p0, :cond_44

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, p0, :cond_c

    goto :goto_44

    .line 418
    :cond_c
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 419
    invoke-virtual {p0, p4, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 420
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getAssistToken()Landroid/os/IBinder;

    move-result-object p1

    if-eq p1, p5, :cond_21

    goto :goto_3b

    .line 425
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_30} :catch_31

    goto :goto_43

    :catch_31
    move-exception p0

    const-string p1, "Unexpected remote error"

    .line 429
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    invoke-virtual {p7, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_43

    :cond_3b
    :goto_3b
    const-string p0, "Unknown activity to perform a direct action"

    .line 421
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p7, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :goto_43
    return-void

    :cond_44
    :goto_44
    const-string/jumbo p0, "performDirectActionLocked does not match active session"

    .line 414
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p7, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public requestDirectActionsLocked(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 14

    .line 357
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const-string v1, "VoiceInteractionServiceManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_61

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_c

    goto :goto_61

    .line 362
    :cond_c
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 363
    invoke-virtual {v0, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 364
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getAssistToken()Landroid/os/IBinder;

    move-result-object v3

    if-eq v3, p3, :cond_21

    goto :goto_42

    .line 371
    :cond_21
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getUid()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->grantImplicitAccessLocked(ILandroid/content/Intent;)V

    .line 373
    :try_start_28
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getApplicationThread()Landroid/app/IApplicationThread;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-interface {p1, p2, p0, p4, p5}, Landroid/app/IApplicationThread;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_37} :catch_38

    goto :goto_60

    :catch_38
    move-exception p0

    const-string p1, "Unexpected remote error"

    .line 376
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    invoke-virtual {p5, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_60

    :cond_42
    :goto_42
    const-string v0, "Unknown activity to query for direct actions"

    .line 365
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDirectActionsHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 368
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 366
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 p1, 0xc8

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_60
    return-void

    :cond_61
    :goto_61
    const-string/jumbo p0, "requestDirectActionsLocked does not match active session"

    .line 358
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p5, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public resetHotwordDetectionConnectionLocked()V
    .registers 2

    .line 743
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-nez v0, :cond_5

    return-void

    .line 749
    :cond_5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->cancelLocked()V

    const/4 v0, 0x0

    .line 750
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    return-void
.end method

.method public final retryRequestDirectActions(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 9

    .line 385
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 386
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v1, :cond_d

    goto :goto_48

    .line 391
    :cond_d
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 393
    invoke-virtual {p1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 394
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getAssistToken()Landroid/os/IBinder;

    move-result-object p2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_55

    if-eq p2, p3, :cond_22

    goto :goto_3c

    .line 399
    :cond_22
    :try_start_22
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getApplicationThread()Landroid/app/IApplicationThread;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-interface {p2, p1, p0, p4, p5}, Landroid/app/IApplicationThread;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_31} :catch_32
    .catchall {:try_start_22 .. :try_end_31} :catchall_55

    goto :goto_46

    :catch_32
    move-exception p0

    :try_start_33
    const-string p1, "Unexpected remote error"

    .line 402
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    invoke-virtual {p5, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_46

    :cond_3c
    :goto_3c
    const-string p0, "VoiceInteractionServiceManager"

    const-string p1, "Unknown activity to query for direct actions during retrying"

    .line 395
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p5, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 406
    :goto_46
    monitor-exit v0

    return-void

    :cond_48
    :goto_48
    const-string p0, "VoiceInteractionServiceManager"

    const-string/jumbo p1, "retryRequestDirectActions does not match active session"

    .line 387
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p5, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 389
    monitor-exit v0

    return-void

    :catchall_55
    move-exception p0

    .line 406
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_33 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public sessionConnectionGone(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 4

    .line 856
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 857
    :try_start_3
    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;Z)V

    .line 858
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public setDebugHotwordLoggingLocked(Z)V
    .registers 3

    .line 732
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-nez v0, :cond_c

    const-string p0, "VoiceInteractionServiceManager"

    const-string p1, "Failed to set temporary debug logging: no hotword detection active"

    .line 733
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 736
    :cond_c
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->setDebugHotwordLoggingLocked(Z)V

    return-void
.end method

.method public setDisabledShowContextLocked(II)V
    .registers 5

    .line 469
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, v0, :cond_f

    .line 474
    iput p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    return-void

    .line 471
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling uid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not match active uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setKeepAwakeLocked(Landroid/os/IBinder;Z)V
    .registers 5

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v1, :cond_9

    goto :goto_11

    .line 441
    :cond_9
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAtm:Landroid/app/IActivityTaskManager;

    iget-object p1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {p0, p1, p2}, Landroid/app/IActivityTaskManager;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    return-void

    :cond_11
    :goto_11
    const-string p0, "VoiceInteractionServiceManager"

    const-string/jumbo p1, "setKeepAwake does not match active session"

    .line 438
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p0

    .line 443
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected remote error"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 15

    .line 249
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-nez v0, :cond_21

    .line 250
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 252
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;-><init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 254
    :cond_21
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 255
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 256
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopVisibleActivities()Ljava/util/List;

    move-result-object v0

    if-eqz p4, :cond_50

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_39
    if-ge v3, v2, :cond_4e

    .line 263
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityAssistInfo;

    .line 264
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityAssistInfo;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, p4, :cond_4b

    .line 265
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_4e
    :goto_4e
    move-object v9, v1

    goto :goto_51

    :cond_50
    move-object v9, v0

    .line 272
    :goto_51
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    move-object v5, p1

    move v6, p2

    move-object v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->showLocked(Landroid/os/Bundle;IILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public shutdownHotwordDetectionServiceLocked()V
    .registers 2

    .line 620
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-nez v0, :cond_d

    const-string p0, "VoiceInteractionServiceManager"

    const-string/jumbo v0, "shutdown, but no hotword detection connection"

    .line 621
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 625
    :cond_d
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->cancelLocked()V

    const/4 v0, 0x0

    .line 626
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    return-void
.end method

.method public shutdownLocked()V
    .registers 6

    .line 818
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 819
    invoke-virtual {v0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->cancelLocked(Z)V

    .line 820
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 823
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v0, :cond_1b

    .line 824
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->shutdown()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception v0

    const-string v3, "VoiceInteractionServiceManager"

    const-string v4, "RemoteException in shutdown"

    .line 827
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-eqz v0, :cond_26

    .line 830
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->cancelLocked()V

    .line 831
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 833
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    if-eqz v0, :cond_33

    .line 834
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 835
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    .line 837
    :cond_33
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    if-eqz v0, :cond_3e

    .line 838
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3e
    return-void
.end method

.method public startAssistantActivityLocked(Ljava/lang/String;IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .registers 16

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_4a

    const-string v1, "VoiceInteractionServiceManager"

    if-eqz v0, :cond_41

    :try_start_6
    iget-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p4, v2, :cond_b

    goto :goto_41

    .line 339
    :cond_b
    iget-boolean p4, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-nez p4, :cond_18

    const-string/jumbo p0, "startAssistantActivity not allowed on hidden session"

    .line 340
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5a

    return p0

    .line 343
    :cond_18
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p4, 0x10000000

    .line 344
    invoke-virtual {v5, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p4

    const/4 p5, 0x4

    .line 346
    invoke-virtual {p4, p5}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 347
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAtm:Landroid/app/IActivityTaskManager;

    iget-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    iget v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p6

    .line 347
    invoke-interface/range {v0 .. v8}, Landroid/app/IActivityTaskManager;->startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result p0

    return p0

    :cond_41
    :goto_41
    const-string/jumbo p0, "startAssistantActivity does not match active session"

    .line 336
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_47} :catch_4a

    const/16 p0, -0x59

    return p0

    :catch_4a
    move-exception p0

    .line 350
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected remote error"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public startListeningFromExternalSourceLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 6

    .line 653
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    .line 663
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 664
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    return-void

    :cond_d
    const-string p0, "VoiceInteractionServiceManager"

    const-string p1, "External source is null for hotword detector"

    .line 659
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startListeningFromMicLocked(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 4

    .line 636
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-nez v0, :cond_5

    return-void

    .line 641
    :cond_5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->startListeningFromMic(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    return-void
.end method

.method public startListeningVisibleActivityChangedLocked(Landroid/os/IBinder;)V
    .registers 3

    .line 503
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz p0, :cond_d

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_9

    goto :goto_d

    .line 508
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->startListeningVisibleActivityChangedLocked()V

    return-void

    :cond_d
    :goto_d
    const-string p0, "VoiceInteractionServiceManager"

    const-string/jumbo p1, "startListeningVisibleActivityChangedLocked does not match active session"

    .line 504
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startLocked()V
    .registers 6

    .line 792
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 794
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Landroid/content/ServiceConnection;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const v4, 0x4101001

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    if-nez v0, :cond_3a

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed binding to voice interaction service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VoiceInteractionServiceManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method

.method public startVoiceActivityLocked(Ljava/lang/String;IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .registers 21

    move-object v0, p0

    .line 313
    :try_start_1
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3} :catch_54

    const-string v2, "VoiceInteractionServiceManager"

    if-eqz v1, :cond_4b

    :try_start_7
    iget-object v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    move-object/from16 v4, p4

    if-eq v4, v3, :cond_e

    goto :goto_4b

    .line 317
    :cond_e
    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-nez v1, :cond_1b

    const-string/jumbo v0, "startVoiceActivity not allowed on hidden session"

    .line 318
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x64

    return v0

    .line 321
    :cond_1b
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v1, p5

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "android.intent.category.VOICE"

    .line 322
    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x18000000

    .line 323
    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 324
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAtm:Landroid/app/IActivityTaskManager;

    iget-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v8, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v9, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityTaskManager;->startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    return v0

    :cond_4b
    :goto_4b
    const-string/jumbo v0, "startVoiceActivity does not match active session"

    .line 314
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_51} :catch_54

    const/16 v0, -0x63

    return v0

    :catch_54
    move-exception v0

    .line 328
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected remote error"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopListeningFromMicLocked()V
    .registers 2

    .line 672
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-nez v0, :cond_d

    const-string p0, "VoiceInteractionServiceManager"

    const-string/jumbo v0, "stopListeningFromMic() called but connection isn\'t established"

    .line 673
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 677
    :cond_d
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->stopListening()V

    return-void
.end method

.method public stopListeningVisibleActivityChangedLocked(Landroid/os/IBinder;)V
    .registers 3

    .line 515
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz p0, :cond_d

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_9

    goto :goto_d

    .line 520
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->stopListeningVisibleActivityChangedLocked()V

    return-void

    :cond_d
    :goto_d
    const-string p0, "VoiceInteractionServiceManager"

    const-string/jumbo p1, "stopListeningVisibleActivityChangedLocked does not match active session"

    .line 516
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public supportsLocalVoiceInteraction()Z
    .registers 1

    .line 496
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsLocalInteraction()Z

    move-result p0

    return p0
.end method

.method public triggerHardwareRecognitionEventForTestLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .registers 4

    .line 686
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-nez v0, :cond_d

    const-string p0, "VoiceInteractionServiceManager"

    const-string/jumbo p1, "triggerHardwareRecognitionEventForTestLocked() called but connection isn\'t established"

    .line 687
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 691
    :cond_d
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->triggerHardwareRecognitionEventForTestLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    return-void
.end method

.method public updateStateLocked(Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    .registers 20

    move-object v0, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    const-string v1, "VoiceInteractionServiceManager"

    const-string/jumbo v2, "updateStateLocked"

    .line 543
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 545
    iget-object v3, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    if-eqz v3, :cond_d2

    .line 551
    iget v5, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-static {v3, v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getServiceInfoLocked(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_c4

    .line 559
    invoke-virtual {p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->isIsolatedProcessLocked(Landroid/content/pm/ServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 565
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BIND_HOTWORD_DETECTION_SERVICE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 574
    iget-object v3, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v6, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 576
    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 574
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_9a

    if-eqz v10, :cond_63

    .line 585
    sget v3, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v10, v3}, Landroid/os/SharedMemory;->setProtect(I)Z

    move-result v3

    if-eqz v3, :cond_55

    goto :goto_63

    :cond_55
    const-string v3, "Can\'t set sharedMemory to be read-only"

    .line 586
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {p0, v11, v12, v4, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 589
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_63
    :goto_63
    iput v12, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDetectorType:I

    const/4 v1, 0x1

    .line 594
    invoke-virtual {p0, v11, v12, v1, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 596
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-nez v1, :cond_92

    .line 597
    new-instance v13, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v3, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 598
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    iget v7, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    const/4 v8, 0x0

    move-object v1, v13

    move-object v5, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v1 .. v12}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;-><init>(Ljava/lang/Object;Landroid/content/Context;ILandroid/media/permission/Identity;Landroid/content/ComponentName;IZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V

    iput-object v13, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    goto :goto_99

    .line 602
    :cond_92
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    :goto_99
    return-void

    :cond_9a
    const-string v3, "Voice interaction service should not hold permission android.permission.BIND_HOTWORD_DETECTION_SERVICE"

    .line 577
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p0, v11, v12, v4, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 581
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a8
    const-string v3, "Hotword detection service does not require permission android.permission.BIND_HOTWORD_DETECTION_SERVICE"

    .line 567
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {p0, v11, v12, v4, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 571
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b6
    const-string v3, "Hotword detection service not in isolated process"

    .line 560
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p0, v11, v12, v4, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 563
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c4
    const-string v3, "Hotword detection service info not found"

    .line 554
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual {p0, v11, v12, v4, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 557
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d2
    const-string v3, "Hotword detection service name not found"

    .line 546
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {p0, v11, v12, v4, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

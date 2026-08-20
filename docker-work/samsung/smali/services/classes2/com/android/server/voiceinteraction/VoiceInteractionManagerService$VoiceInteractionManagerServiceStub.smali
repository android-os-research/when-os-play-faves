.class public Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
.super Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoiceInteractionManagerServiceStub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;,
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;,
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;
    }
.end annotation


# instance fields
.field public mCurUser:I

.field public mCurUserSupported:Z

.field public final mEnableService:Z

.field public volatile mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

.field public mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mSafeMode:Z

.field public mTemporarilyDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method public static synthetic $r8$lambda$PBPrkQBNjUN2H1Ob1mwNQtevhuY(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->lambda$switchUser$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aK54z0XyR35s8NoUFQW1VndVwgI(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/media/permission/Identity;Landroid/os/IBinder;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->lambda$createSoundTriggerSessionForSelfIdentity$0(Landroid/media/permission/Identity;Landroid/os/IBinder;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fpb_fMBpynqG9JJC4fyAcWxxxx4(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->lambda$notifyActivityEventChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$xcnOavICZYJcKQUjfT2nuerZrSE(ZLcom/android/internal/app/IVoiceInteractionSessionListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->lambda$setSessionWindowVisible$3(ZLcom/android/internal/app/IVoiceInteractionSessionListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCurUser(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)I
    .registers 1

    iget p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcreateSoundTriggerCallbackLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->createSoundTriggerCallbackLocked(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$menforceCallingPermission(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceIsCurrentVoiceInteractionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mqueryInteractorServices(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;ILjava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->queryInteractorServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mresetServicesIfNoRecognitionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/content/ComponentName;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->resetServicesIfNoRecognitionService(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetImplLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setImplLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munloadAllKeyphraseModels(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->unloadAllKeyphraseModels()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .registers 3

    .line 321
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;-><init>()V

    .line 2098
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 322
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->shouldEnableService(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    .line 323
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$RoleObserver;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic lambda$createSoundTriggerSessionForSelfIdentity$0(Landroid/media/permission/Identity;Landroid/os/IBinder;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 379
    invoke-static {p1}, Landroid/media/permission/IdentityContext;->create(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p1

    .line 380
    :try_start_4
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-interface {v1, p2}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->attach(Landroid/os/IBinder;)Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    if-eqz p1, :cond_16

    .line 381
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_16
    return-object v0

    :catchall_17
    move-exception p0

    if-eqz p1, :cond_22

    .line 379
    :try_start_1a
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    throw p0
.end method

.method private synthetic lambda$notifyActivityEventChanged$1()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 439
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifyActivityEventChangedLocked()V

    return-void
.end method

.method public static synthetic lambda$setSessionWindowVisible$3(ZLcom/android/internal/app/IVoiceInteractionSessionListener;)V
    .registers 3

    .line 1867
    :try_start_0
    invoke-interface {p1, p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onVoiceSessionWindowVisibilityChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    const-string p1, "VoiceInteractionManager"

    const-string v0, "Error delivering window visibility event to listener."

    .line 1869
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method private synthetic lambda$switchUser$2(I)V
    .registers 2

    .line 638
    monitor-enter p0

    .line 639
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurrentUserLocked(I)V

    const/4 p1, 0x0

    .line 640
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 641
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method


# virtual methods
.method public activeServiceSupportsAssist()Z
    .registers 2

    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    .line 1752
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1753
    monitor-enter p0

    .line 1754
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    monitor-exit p0

    return v0

    :catchall_1f
    move-exception v0

    .line 1755
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public activeServiceSupportsLaunchFromKeyguard()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    .line 1760
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1761
    monitor-enter p0

    .line 1762
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 1763
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsLaunchFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    monitor-exit p0

    return v0

    :catchall_1f
    move-exception v0

    .line 1764
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public closeSystemDialogs(Landroid/os/IBinder;)V
    .registers 5

    .line 1070
    monitor-enter p0

    .line 1071
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_e

    const-string p1, "VoiceInteractionManager"

    const-string v0, "closeSystemDialogs without running voice interaction service"

    .line 1072
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    monitor-exit p0

    return-void

    .line 1075
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_21

    .line 1077
    :try_start_12
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->closeSystemDialogsLocked(Landroid/os/IBinder;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 1079
    :try_start_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1081
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    .line 1079
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1080
    throw p1

    :catchall_21
    move-exception p1

    .line 1081
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public final createSoundTriggerCallbackLocked(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .registers 3

    .line 1965
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1968
    :cond_6
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->createSoundTriggerCallbackLocked(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object p0

    return-object p0
.end method

.method public createSoundTriggerSessionAsOriginator(Landroid/media/permission/Identity;Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    .registers 5

    .line 339
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    monitor-enter p0

    .line 342
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 343
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 345
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_59

    if-eqz v0, :cond_31

    .line 354
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Landroid/media/permission/Identity;->uid:I

    .line 355
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p1, Landroid/media/permission/Identity;->pid:I

    .line 356
    new-instance v0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;

    .line 357
    invoke-virtual {p0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->createSoundTriggerSessionForSelfIdentity(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;-><init>(Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;Landroid/content/Context;Landroid/media/permission/Identity;)V

    goto :goto_47

    .line 364
    :cond_31
    invoke-static {p1}, Landroid/media/permission/PermissionUtil;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p1

    .line 366
    :try_start_35
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-interface {v1, p2}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->attach(Landroid/os/IBinder;)Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;)V
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_4d

    if-eqz p1, :cond_47

    .line 367
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V

    .line 369
    :cond_47
    :goto_47
    new-instance p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionBinderProxy;

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerSessionBinderProxy;-><init>(Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;)V

    return-object p0

    :catchall_4d
    move-exception p0

    if-eqz p1, :cond_58

    .line 364
    :try_start_50
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_58
    :goto_58
    throw p0

    :catchall_59
    move-exception p1

    .line 345
    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public final createSoundTriggerSessionForSelfIdentity(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    .registers 4

    .line 374
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 375
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Landroid/media/permission/Identity;->uid:I

    .line 376
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v0, Landroid/media/permission/Identity;->pid:I

    .line 377
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 378
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/media/permission/Identity;Landroid/os/IBinder;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    return-object p0
.end method

.method public deleteKeyphraseSoundModel(ILjava/lang/String;)I
    .registers 10

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallerAllowedToEnrollVoiceModel()V

    if-eqz p2, :cond_72

    .line 1401
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1403
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1405
    :try_start_d
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;

    if-eqz v3, :cond_39

    .line 1407
    invoke-static {v3, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->-$$Nest$munloadKeyphraseModel(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;I)I

    move-result v3

    if-eqz v3, :cond_39

    const-string v4, "VoiceInteractionManager"

    .line 1409
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to unload keyphrase sound model:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_39
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->deleteKeyphraseSoundModel(IILjava/lang/String;)Z

    move-result p2
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_6d

    if-eqz p2, :cond_45

    const/4 v0, 0x0

    goto :goto_47

    :cond_45
    const/high16 v0, -0x80000000

    :goto_47
    if-eqz p2, :cond_69

    .line 1417
    monitor-enter p0

    .line 1419
    :try_start_4a
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz p2, :cond_59

    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object p2, p2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz p2, :cond_59

    .line 1420
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    .line 1422
    :cond_59
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p2, p2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    monitor-exit p0

    goto :goto_69

    :catchall_66
    move-exception p1

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_4a .. :try_end_68} :catchall_66

    throw p1

    .line 1425
    :cond_69
    :goto_69
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_6d
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1426
    throw p0

    .line 1397
    :cond_72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal argument(s) in deleteKeyphraseSoundModel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 7

    .line 917
    monitor-enter p0

    .line 918
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_19

    .line 922
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_21

    .line 924
    :try_start_9
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->deliverNewSessionLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_14

    .line 926
    :try_start_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 927
    throw p1

    .line 919
    :cond_19
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "deliverNewSession without running voice interaction service"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_21
    move-exception p1

    .line 928
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_21

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1880
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "VoiceInteractionManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 1881
    :cond_d
    monitor-enter p0

    :try_start_e
    const-string v0, "VOICE INTERACTION MANAGER (dumpsys voiceinteraction)"

    .line 1882
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnableService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporarilyDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mTemporarilyDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurUserSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUserSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1887
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    const-string v1, "  "

    # invokes: Lcom/android/server/SystemService;->dumpSupportedUsers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->access$000(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1888
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->dump(Ljava/io/PrintWriter;)V

    .line 1889
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_83

    const-string v0, "  (No active implementation)"

    .line 1890
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_88

    .line 1892
    :cond_83
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1894
    :goto_88
    monitor-exit p0
    :try_end_89
    .catchall {:try_start_e .. :try_end_89} :catchall_91

    .line 1896
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_91
    move-exception p1

    .line 1894
    :try_start_92
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw p1
.end method

.method public final enforceCallerAllowedToEnrollVoiceModel()V
    .registers 2

    const-string v0, "android.permission.KEYPHRASE_ENROLLMENT_APPLICATION"

    .line 1944
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->isCallerHoldingPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const-string v0, "android.permission.MANAGE_VOICE_KEYPHRASES"

    .line 1948
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    return-void
.end method

.method public final enforceCallingPermission(Ljava/lang/String;)V
    .registers 4

    .line 1931
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->isCallerHoldingPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1932
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller does not hold the permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceIsCurrentVoiceInteractionService()V
    .registers 2

    .line 1937
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->isCallerCurrentVoiceInteractionService()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1938
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not the current voice interaction service"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;
    .registers 11

    .line 740
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->queryInteractorServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 741
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VoiceInteractionManager"

    if-nez v0, :cond_22

    .line 743
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no available voice interaction services found for user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_22
    const/4 p1, 0x0

    :goto_23
    if-ge p1, v0, :cond_b5

    .line 750
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 751
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_37

    goto/16 :goto_b1

    .line 754
    :cond_37
    new-instance v4, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 755
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 756
    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_77

    .line 757
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad interaction service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 757
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    :cond_77
    if-nez v1, :cond_7b

    move-object v1, v4

    goto :goto_b1

    .line 763
    :cond_7b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "More than one voice interaction service, picking first "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Landroid/content/ComponentName;

    .line 766
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 767
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 763
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_23

    :cond_b5
    return-object v1
.end method

.method public findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 8

    if-nez p1, :cond_6

    .line 797
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object p1

    .line 800
    :cond_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 801
    invoke-static {v0, p2}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->getAvailableServices(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 802
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "VoiceInteractionManager"

    if-nez v1, :cond_2c

    .line 803
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "no available voice recognition services found for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 807
    :cond_2c
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->removeNonSelectableAsDefault(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 808
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_50

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No selectableAsDefault recognition services found for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Falling back to non selectableAsDefault ones."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 813
    :cond_50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x0

    if-eqz p1, :cond_79

    move v1, p2

    :goto_58
    if-ge v1, p0, :cond_79

    .line 816
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    invoke-virtual {v3}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 817
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 818
    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p2, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_79
    const/4 p1, 0x1

    if-le p0, p1, :cond_81

    const-string p0, "more than one voice recognition service found, picking first"

    .line 823
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_81
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    .line 827
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public finish(Landroid/os/IBinder;)V
    .registers 6

    .line 1086
    monitor-enter p0

    .line 1087
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_e

    const-string p1, "VoiceInteractionManager"

    const-string v0, "finish without running voice interaction service"

    .line 1088
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    monitor-exit p0

    return-void

    .line 1091
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_22

    .line 1093
    :try_start_12
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;Z)V
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1d

    .line 1095
    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1097
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    .line 1095
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1096
    throw p1

    :catchall_22
    move-exception p1

    .line 1097
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public forceRestartHotwordDetector()V
    .registers 1

    .line 886
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->forceRestartHotwordDetector()V

    return-void
.end method

.method public getActiveServiceComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 1667
    monitor-enter p0

    .line 1668
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    .line 1669
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 6
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

    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    .line 1801
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1802
    monitor-enter p0

    .line 1803
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_23

    if-nez v0, :cond_10

    const/4 p1, 0x0

    .line 1805
    :try_start_b
    invoke-interface {p2, p1}, Lcom/android/internal/app/IVoiceActionCheckCallback;->onComplete(Ljava/util/List;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_e
    .catchall {:try_start_b .. :try_end_e} :catchall_23

    .line 1808
    :catch_e
    :try_start_e
    monitor-exit p0

    return-void

    .line 1810
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_23

    .line 1812
    :try_start_14
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1e

    .line 1814
    :try_start_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1816
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    .line 1814
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1815
    throw p1

    :catchall_23
    move-exception p1

    .line 1816
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public getCurAssistant(I)Landroid/content/ComponentName;
    .registers 3

    .line 869
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 870
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "assistant"

    .line 869
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 872
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 877
    :cond_16
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getCurInteractor(I)Landroid/content/ComponentName;
    .registers 3

    .line 776
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 777
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "voice_interaction_service"

    .line 776
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 779
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 784
    :cond_17
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getCurRecognizer(I)Landroid/content/ComponentName;
    .registers 3

    .line 849
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 850
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "voice_recognition_service"

    .line 849
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 852
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 857
    :cond_17
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultRecognizer()Ljava/lang/String;
    .registers 2

    .line 844
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    const v0, 0x104002e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 845
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x0

    :cond_12
    return-object p0
.end method

.method public getDisabledShowContext()I
    .registers 5

    .line 1119
    monitor-enter p0

    .line 1120
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_f

    const-string v0, "VoiceInteractionManager"

    const-string v1, "getDisabledShowContext without running voice interaction service"

    .line 1121
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1122
    monitor-exit p0

    return v0

    .line 1124
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1125
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_27

    .line 1127
    :try_start_17
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v3, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getDisabledShowContextLocked(I)I

    move-result v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_22

    .line 1129
    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return v0

    :catchall_22
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1130
    throw v0

    :catchall_27
    move-exception v0

    .line 1131
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_27

    throw v0
.end method

.method public getEnrolledKeyphraseMetadata(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .registers 9

    .line 1454
    monitor-enter p0

    .line 1455
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 1456
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_67

    if-eqz p2, :cond_5f

    .line 1462
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1463
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1465
    :try_start_f
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    .line 1466
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(Ljava/lang/String;ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_5a

    const/4 p2, 0x0

    if-nez p0, :cond_1e

    .line 1480
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    .line 1471
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object p0

    array-length v0, p0

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v0, :cond_56

    aget-object v4, p0, v3

    .line 1472
    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 1473
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 1474
    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1475
    new-instance p1, Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result p2

    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1476
    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v3

    invoke-direct {p1, p2, v0, p0, v3}, Landroid/hardware/soundtrigger/KeyphraseMetadata;-><init>(ILjava/lang/String;Ljava/util/Set;I)V
    :try_end_4f
    .catchall {:try_start_1e .. :try_end_4f} :catchall_5a

    .line 1480
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_56
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catchall_5a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1481
    throw p0

    .line 1459
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal argument(s) in isEnrolledForKeyphrase"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_67
    move-exception p1

    .line 1456
    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p1
.end method

.method public final getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    const p0, 0x104034d

    .line 613
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 614
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p0, 0x0

    :cond_e
    return-object p0
.end method

.method public getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 6

    .line 1352
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallerAllowedToEnrollVoiceModel()V

    if-eqz p2, :cond_1e

    .line 1358
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1361
    :try_start_d
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_19

    .line 1363
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_19
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1364
    throw p0

    .line 1355
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal argument(s) in getKeyphraseSoundModel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserDisabledShowContext()I
    .registers 5

    .line 1136
    monitor-enter p0

    .line 1137
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_f

    const-string v0, "VoiceInteractionManager"

    const-string v1, "getUserDisabledShowContext without running voice interaction service"

    .line 1138
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1140
    monitor-exit p0

    return v0

    .line 1142
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1143
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_27

    .line 1145
    :try_start_17
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v3, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getUserDisabledShowContextLocked(I)I

    move-result v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_22

    .line 1147
    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return v0

    :catchall_22
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1148
    throw v0

    :catchall_27
    move-exception v0

    .line 1149
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_27

    throw v0
.end method

.method public handleUserStop(Ljava/lang/String;I)V
    .registers 3

    .line 327
    monitor-enter p0

    .line 328
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurInteractor(I)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1d

    .line 329
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "switchImplementation for user stop."

    .line 330
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 333
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public hideCurrentSession()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    .line 1705
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1707
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_a

    return-void

    .line 1710
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1712
    :try_start_e
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_32

    if-eqz v2, :cond_2e

    .line 1714
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {p0}, Landroid/service/voice/IVoiceInteractionSession;->closeSystemDialogs()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_26
    .catchall {:try_start_1c .. :try_end_25} :catchall_32

    goto :goto_2e

    :catch_26
    move-exception p0

    :try_start_27
    const-string v2, "VoiceInteractionManager"

    const-string v3, "Failed to call closeSystemDialogs"

    .line 1716
    invoke-static {v2, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_32

    .line 1720
    :cond_2e
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1721
    throw p0
.end method

.method public hideSessionFromSession(Landroid/os/IBinder;)Z
    .registers 4

    .line 949
    monitor-enter p0

    .line 950
    :try_start_1
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez p1, :cond_f

    const-string p1, "VoiceInteractionManager"

    const-string v0, "hideSessionFromSession without running voice interaction service"

    .line 951
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 952
    monitor-exit p0

    return p1

    .line 954
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_23

    .line 956
    :try_start_13
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->hideSessionLocked()Z

    move-result p1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1e

    .line 958
    :try_start_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return p1

    :catchall_1e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 959
    throw p1

    :catchall_23
    move-exception p1

    .line 960
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public initForUser(I)V
    .registers 2

    .line 466
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUserNoTracing(I)V

    return-void
.end method

.method public final initForUserNoTracing(I)V
    .registers 13

    .line 474
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 475
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_interaction_service"

    .line 474
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_28

    if-eqz v1, :cond_28

    .line 485
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    if-eqz v3, :cond_28

    .line 492
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_29

    move-object v1, v2

    goto :goto_29

    :cond_28
    move-object v3, v2

    .line 505
    :cond_29
    :goto_29
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 506
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 508
    invoke-virtual {p0, p1, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_3e

    move-object v1, v2

    .line 517
    :cond_3e
    iget-boolean v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    const-string v5, ""

    if-nez v4, :cond_50

    if-eqz v0, :cond_50

    .line 518
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 520
    invoke-virtual {p0, v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    move-object v0, v5

    :cond_50
    if-eqz v1, :cond_b5

    .line 528
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_61

    .line 532
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_62

    :cond_61
    move-object v6, v2

    :goto_62
    const-wide/32 v7, 0xc0080

    .line 534
    :try_start_65
    invoke-interface {v4, v1, v7, v8, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_69} :catch_ac

    if-eqz v1, :cond_a2

    .line 541
    :try_start_6b
    iget-object v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v7, v7, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 543
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 542
    invoke-static {v7, v1}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->parseInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    move-result-object v7

    .line 544
    invoke-virtual {v7}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9b

    const-string v8, "VoiceInteractionManager"

    .line 545
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parse error in getAvailableServices: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v7}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 545
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_9b
    invoke-virtual {v7}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->isSelectableAsDefault()Z

    move-result v7

    if-nez v7, :cond_a2

    move-object v1, v2

    :cond_a2
    if-eqz v6, :cond_ad

    const-wide/32 v7, 0xc0000

    .line 559
    invoke-interface {v4, v6, v7, v8, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v4
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_ab} :catch_ad

    goto :goto_ae

    :catch_ac
    move-object v1, v2

    :catch_ad
    :cond_ad
    move-object v4, v2

    :goto_ae
    if-eqz v1, :cond_b5

    if-eqz v6, :cond_b4

    if-eqz v4, :cond_b5

    :cond_b4
    return-void

    :cond_b5
    if-nez v3, :cond_c5

    .line 576
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    if-eqz v1, :cond_c5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 577
    invoke-virtual {p0, p1, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v3

    :cond_c5
    if-eqz v3, :cond_dc

    .line 582
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 583
    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    goto :goto_df

    .line 586
    :cond_dc
    invoke-virtual {p0, v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 589
    :goto_df
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initRecognizer(I)V

    return-void
.end method

.method public initRecognizer(I)V
    .registers 3

    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 595
    invoke-virtual {p0, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    :cond_a
    return-void
.end method

.method public final isCallerCurrentVoiceInteractionService()Z
    .registers 2

    .line 1953
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 1954
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p0, v0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public final isCallerHoldingPermission(Ljava/lang/String;)Z
    .registers 2

    .line 1926
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isEnrolledForKeyphrase(ILjava/lang/String;)Z
    .registers 6

    .line 1432
    monitor-enter p0

    .line 1433
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 1434
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2d

    if-eqz p2, :cond_25

    .line 1440
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1441
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1443
    :try_start_f
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    .line 1444
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_20

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    .line 1447
    :goto_1c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_20
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1448
    throw p0

    .line 1437
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal argument(s) in isEnrolledForKeyphrase"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2d
    move-exception p1

    .line 1434
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public isSessionRunning()Z
    .registers 2

    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    .line 1744
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1745
    monitor-enter p0

    .line 1746
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    .line 1747
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public launchVoiceAssistFromKeyguard()V
    .registers 4

    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    .line 1726
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1727
    monitor-enter p0

    .line 1728
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_13

    const-string v0, "VoiceInteractionManager"

    const-string v1, "launchVoiceAssistFromKeyguard without running voice interactionservice"

    .line 1729
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    monitor-exit p0

    return-void

    .line 1733
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_26

    .line 1735
    :try_start_17
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->launchVoiceAssistFromKeyguard()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_21

    .line 1737
    :try_start_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1739
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v2

    .line 1737
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1738
    throw v2

    :catchall_26
    move-exception v0

    .line 1739
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_26

    throw v0
.end method

.method public notifyActivityEventChanged()V
    .registers 2

    .line 436
    monitor-enter p0

    .line 437
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 439
    :cond_7
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 440
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public onLockscreenShown()V
    .registers 6

    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    .line 1769
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1770
    monitor-enter p0

    .line 1771
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_c

    .line 1772
    monitor-exit p0

    return-void

    .line 1774
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_3a

    .line 1776
    :try_start_10
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_35

    if-eqz v2, :cond_30

    .line 1778
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v2}, Landroid/service/voice/IVoiceInteractionSession;->onLockscreenShown()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28
    .catchall {:try_start_1e .. :try_end_27} :catchall_35

    goto :goto_30

    :catch_28
    move-exception v2

    :try_start_29
    const-string v3, "VoiceInteractionManager"

    const-string v4, "Failed to call onLockscreenShown"

    .line 1780
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_35

    .line 1784
    :cond_30
    :goto_30
    :try_start_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1786
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v2

    .line 1784
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1785
    throw v2

    :catchall_3a
    move-exception v0

    .line 1786
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public onSessionHidden()V
    .registers 6

    .line 1836
    monitor-enter p0

    .line 1837
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmVoiceInteractionSessionListeners(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_29

    .line 1839
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmVoiceInteractionSessionListeners(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 1840
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_34

    .line 1842
    :try_start_1a
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onVoiceSessionHidden()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_34

    goto :goto_26

    :catch_1e
    move-exception v2

    :try_start_1f
    const-string v3, "VoiceInteractionManager"

    const-string v4, "Error delivering voice interaction closed event."

    .line 1845
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1848
    :cond_29
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmVoiceInteractionSessionListeners(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1849
    monitor-exit p0

    return-void

    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_34

    throw v0
.end method

.method public onSessionShown()V
    .registers 6

    .line 1820
    monitor-enter p0

    .line 1821
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmVoiceInteractionSessionListeners(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_29

    .line 1823
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmVoiceInteractionSessionListeners(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 1824
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_34

    .line 1826
    :try_start_1a
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onVoiceSessionShown()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_34

    goto :goto_26

    :catch_1e
    move-exception v2

    :try_start_1f
    const-string v3, "VoiceInteractionManager"

    const-string v4, "Error delivering voice interaction open event."

    .line 1828
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1831
    :cond_29
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmVoiceInteractionSessionListeners(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1832
    monitor-exit p0

    return-void

    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_34

    throw v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1902
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmServiceStub(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1903
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 451
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_11

    const-string p1, "VoiceInteractionManager"

    const-string p2, "VoiceInteractionManagerService Crash"

    .line 452
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    :cond_11
    throw p0
.end method

.method public performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 20

    move-object v1, p0

    .line 1036
    monitor-enter p0

    .line 1037
    :try_start_2
    iget-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_16

    const-string v0, "VoiceInteractionManager"

    const-string/jumbo v2, "performDirectAction without running voice interaction service"

    .line 1038
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object/from16 v9, p7

    .line 1039
    invoke-virtual {v9, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1040
    monitor-exit p0

    return-void

    :cond_16
    move-object/from16 v9, p7

    .line 1042
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_36

    .line 1044
    :try_start_1c
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->performDirectActionLocked(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_31

    .line 1047
    :try_start_2c
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1049
    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    .line 1047
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1048
    throw v0

    :catchall_36
    move-exception v0

    .line 1049
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_36

    throw v0
.end method

.method public final queryInteractorServices(ILjava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 729
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const v0, 0xc0080

    .line 729
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    .registers 3

    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    .line 1792
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1793
    monitor-enter p0

    .line 1794
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmVoiceInteractionSessionListeners(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1795
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final removeNonSelectableAsDefault(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/voiceinteraction/RecognitionServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/voiceinteraction/RecognitionServiceInfo;",
            ">;"
        }
    .end annotation

    .line 833
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_25

    .line 835
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->isSelectableAsDefault()Z

    move-result v1

    if-nez v1, :cond_22

    .line 836
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_25
    return-object p0
.end method

.method public requestDirectActions(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 14

    .line 1015
    monitor-enter p0

    .line 1016
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_13

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "requestDirectActions without running voice interaction service"

    .line 1017
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1018
    invoke-virtual {p5, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1019
    monitor-exit p0

    return-void

    .line 1021
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_2b

    .line 1023
    :try_start_17
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->requestDirectActionsLocked(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_26

    .line 1026
    :try_start_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1028
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    .line 1026
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1027
    throw p1

    :catchall_2b
    move-exception p1

    .line 1028
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public resetCurAssistant(I)V
    .registers 4

    .line 881
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "assistant"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final resetServicesIfNoRecognitionService(Landroid/content/ComponentName;I)V
    .registers 6

    .line 2078
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 2077
    invoke-virtual {p0, p2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->queryInteractorServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2079
    new-instance v1, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 2081
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v1, v2, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 2083
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_c

    .line 2086
    :cond_2e
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "VoiceInteractionManager"

    const-string v1, "The RecognitionService must be set to avoid boot loop on earlier platform version. Also make sure that this is a valid RecognitionService when running on Android 11 or earlier."

    .line 2087
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2092
    invoke-virtual {p0, v0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 2093
    invoke-virtual {p0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->resetCurAssistant(I)V

    goto :goto_c

    :cond_43
    return-void
.end method

.method public setCurInteractor(Landroid/content/ComponentName;I)V
    .registers 4

    .line 788
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_f

    .line 790
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    :cond_f
    const-string p1, ""

    :goto_11
    const-string/jumbo v0, "voice_interaction_service"

    .line 788
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public setCurRecognizer(Landroid/content/ComponentName;I)V
    .registers 4

    .line 861
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_f

    .line 863
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    :cond_f
    const-string p1, ""

    :goto_11
    const-string/jumbo v0, "voice_recognition_service"

    .line 861
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setCurrentUserLocked(I)V
    .registers 3

    .line 631
    iput p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    .line 632
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 633
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$misUserSupported(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;Landroid/content/pm/UserInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUserSupported:Z

    return-void
.end method

.method public setDebugHotwordLogging(Z)V
    .registers 3

    .line 891
    monitor-enter p0

    .line 892
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_f

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo v0, "setTemporaryLogging without running voice interaction service"

    .line 893
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    monitor-exit p0

    return-void

    .line 896
    :cond_f
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setDebugHotwordLoggingLocked(Z)V

    .line 897
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public setDisabled(Z)V
    .registers 4

    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    .line 1154
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1155
    monitor-enter p0

    .line 1156
    :try_start_6
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mTemporarilyDisabled:Z

    if-ne v0, p1, :cond_c

    .line 1158
    monitor-exit p0

    return-void

    .line 1160
    :cond_c
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mTemporarilyDisabled:Z

    if-eqz p1, :cond_25

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo v0, "setDisabled(): temporarily disabling and hiding current session"

    .line 1162
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_2f

    .line 1164
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->hideCurrentSession()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_2f

    goto :goto_2d

    :catch_1c
    move-exception p1

    :try_start_1d
    const-string v0, "VoiceInteractionManager"

    const-string v1, "Failed to call hideCurrentSession"

    .line 1166
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    :cond_25
    const-string p1, "VoiceInteractionManager"

    const-string/jumbo v0, "setDisabled(): re-enabling"

    .line 1169
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :goto_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public setDisabledShowContext(I)V
    .registers 6

    .line 1102
    monitor-enter p0

    .line 1103
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_f

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo v0, "setDisabledShowContext without running voice interaction service"

    .line 1104
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    monitor-exit p0

    return-void

    .line 1107
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_26

    .line 1110
    :try_start_17
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v3, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setDisabledShowContextLocked(II)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_21

    .line 1112
    :try_start_1c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    .line 1112
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1113
    throw p1

    :catchall_26
    move-exception p1

    .line 1114
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_26

    throw p1
.end method

.method public final setImplLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V
    .registers 2

    .line 1958
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 1959
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1960
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object p0

    .line 1959
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyActiveVoiceInteractionServiceChanged(Landroid/content/ComponentName;)V

    return-void
.end method

.method public setKeepAwake(Landroid/os/IBinder;Z)V
    .registers 6

    .line 1054
    monitor-enter p0

    .line 1055
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_f

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "setKeepAwake without running voice interaction service"

    .line 1056
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    monitor-exit p0

    return-void

    .line 1059
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_22

    .line 1061
    :try_start_13
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setKeepAwakeLocked(Landroid/os/IBinder;Z)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 1063
    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1065
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    .line 1063
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1064
    throw p1

    :catchall_22
    move-exception p1

    .line 1065
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public setSessionWindowVisible(Landroid/os/IBinder;Z)V
    .registers 6

    .line 1853
    monitor-enter p0

    .line 1854
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_f

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "setSessionWindowVisible called without running voice interaction service"

    .line 1855
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    monitor-exit p0

    return-void

    .line 1859
    :cond_f
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_1e

    goto :goto_3a

    .line 1863
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_44

    .line 1865
    :try_start_22
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmVoiceInteractionSessionListeners(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-virtual {p1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_35

    .line 1873
    :try_start_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1875
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    .line 1873
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1874
    throw p1

    :cond_3a
    :goto_3a
    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "setSessionWindowVisible does not match active session"

    .line 1860
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    .line 1875
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public setUiHints(Landroid/os/Bundle;)V
    .registers 7

    .line 1908
    monitor-enter p0

    .line 1909
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 1911
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmVoiceInteractionSessionListeners(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_2c

    .line 1913
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmVoiceInteractionSessionListeners(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 1914
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_37

    .line 1916
    :try_start_1d
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onSetUiHints(Landroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_37

    goto :goto_29

    :catch_21
    move-exception v2

    :try_start_22
    const-string v3, "VoiceInteractionManager"

    const-string v4, "Error delivering UI hints."

    .line 1918
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1921
    :cond_2c
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmVoiceInteractionSessionListeners(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1922
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public final shouldEnableService(Landroid/content/Context;)Z
    .registers 3

    .line 604
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 607
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.software.voice_recognizers"

    .line 608
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public showSession(Landroid/os/Bundle;I)V
    .registers 7

    .line 902
    monitor-enter p0

    .line 903
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 905
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_18

    .line 907
    :try_start_8
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_13

    .line 909
    :try_start_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 911
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    .line 909
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    throw p1

    :catchall_18
    move-exception p1

    .line 911
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 8

    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    .line 1675
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1678
    monitor-enter p0

    .line 1679
    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "showSessionForActiveService without running voice interactionservice"

    .line 1680
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    monitor-exit p0

    return v1

    .line 1684
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mTemporarilyDisabled:Z

    if-eqz v0, :cond_23

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "showSessionForActiveService(): ignored while temporarily disabled"

    .line 1685
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    monitor-exit p0

    return v1

    .line 1690
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_3b

    .line 1692
    :try_start_27
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    or-int/lit8 p2, p2, 0x1

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p1
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_36

    .line 1698
    :try_start_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return p1

    :catchall_36
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1699
    throw p1

    :catchall_3b
    move-exception p1

    .line 1700
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    .registers 7

    .line 933
    monitor-enter p0

    .line 934
    :try_start_1
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez p1, :cond_10

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "showSessionFromSession without running voice interaction service"

    .line 935
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 936
    monitor-exit p0

    return p1

    .line 938
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_25

    .line 940
    :try_start_14
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, p3, v2, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_20

    .line 942
    :try_start_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return p1

    :catchall_20
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 943
    throw p1

    :catchall_25
    move-exception p1

    .line 944
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw p1
.end method

.method public shutdownHotwordDetectionService()V
    .registers 4

    .line 1241
    monitor-enter p0

    .line 1242
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 1244
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_12

    const-string v0, "VoiceInteractionManager"

    const-string/jumbo v1, "shutdownHotwordDetectionService without running voice interaction service"

    .line 1245
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    monitor-exit p0

    return-void

    .line 1250
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_25

    .line 1252
    :try_start_16
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->shutdownHotwordDetectionServiceLocked()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_20

    .line 1254
    :try_start_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1256
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v2

    .line 1254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw v2

    :catchall_25
    move-exception v0

    .line 1256
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw v0
.end method

.method public startAssistantActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    .line 994
    monitor-enter p0

    .line 995
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_11

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "startAssistantActivity without running voice interaction service"

    .line 996
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x60

    .line 997
    monitor-exit p0

    return p1

    .line 999
    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1001
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_31

    .line 1003
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    move-object v1, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startAssistantActivityLocked(Ljava/lang/String;IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    move-result p1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2c

    .line 1006
    :try_start_27
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return p1

    :catchall_2c
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1007
    throw p1

    :catchall_31
    move-exception p1

    .line 1008
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1289
    monitor-enter p0

    .line 1290
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 1292
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_12

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "startListeningFromExternalSource without running voice interaction service"

    .line 1293
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    monitor-exit p0

    return-void

    .line 1297
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_25

    .line 1299
    :try_start_16
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startListeningFromExternalSourceLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_20

    .line 1302
    :try_start_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1304
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    .line 1302
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1303
    throw p1

    :catchall_25
    move-exception p1

    .line 1304
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw p1
.end method

.method public startListeningFromMic(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 1264
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v0, "android.permission.CAPTURE_AUDIO_HOTWORD"

    .line 1265
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1266
    monitor-enter p0

    .line 1267
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 1269
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_1c

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "startListeningFromMic without running voice interaction service"

    .line 1270
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    monitor-exit p0

    return-void

    .line 1273
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_2f

    .line 1275
    :try_start_20
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startListeningFromMicLocked(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_2a

    .line 1277
    :try_start_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1279
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    .line 1277
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1278
    throw p1

    :catchall_2f
    move-exception p1

    .line 1279
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public startListeningVisibleActivityChanged(Landroid/os/IBinder;)V
    .registers 5

    .line 1176
    monitor-enter p0

    .line 1177
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_f

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo v0, "startListeningVisibleActivityChanged without running voice interaction service"

    .line 1178
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    monitor-exit p0

    return-void

    .line 1182
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_22

    .line 1184
    :try_start_13
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startListeningVisibleActivityChangedLocked(Landroid/os/IBinder;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 1186
    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1188
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    .line 1186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1187
    throw p1

    :catchall_22
    move-exception p1

    .line 1188
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 9

    .line 387
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_5

    return-void

    .line 389
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 390
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 392
    :try_start_d
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/16 v4, 0x10

    new-instance v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;

    invoke-direct {v5, p0, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;ILandroid/os/IBinder;)V

    invoke-virtual {v3, p2, v4, v5, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1d

    .line 414
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 415
    throw p0
.end method

.method public startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    .line 966
    monitor-enter p0

    .line 967
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_11

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "startVoiceActivity without running voice interaction service"

    .line 968
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x60

    .line 969
    monitor-exit p0

    return p1

    .line 971
    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 972
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 973
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_52

    .line 975
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 976
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x20000

    .line 975
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 978
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 979
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->grantImplicitAccessLocked(ILandroid/content/Intent;)V

    goto :goto_3e

    :cond_37
    const-string v0, "VoiceInteractionManager"

    const-string v1, "Cannot find ActivityInfo in startVoiceActivity."

    .line 981
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :goto_3e
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    move-object v1, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startVoiceActivityLocked(Ljava/lang/String;IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    move-result p1
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_4d

    .line 986
    :try_start_48
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return p1

    :catchall_4d
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 987
    throw p1

    :catchall_52
    move-exception p1

    .line 988
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public stopListeningFromMic()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    monitor-enter p0

    .line 1310
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 1312
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_12

    const-string v0, "VoiceInteractionManager"

    const-string/jumbo v1, "stopListeningFromMic without running voice interaction service"

    .line 1313
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    monitor-exit p0

    return-void

    .line 1316
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_25

    .line 1318
    :try_start_16
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->stopListeningFromMicLocked()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_20

    .line 1320
    :try_start_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1322
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v2

    .line 1320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1321
    throw v2

    :catchall_25
    move-exception v0

    .line 1322
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw v0
.end method

.method public stopListeningVisibleActivityChanged(Landroid/os/IBinder;)V
    .registers 5

    .line 1193
    monitor-enter p0

    .line 1194
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_f

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo v0, "stopListeningVisibleActivityChanged without running voice interaction service"

    .line 1195
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    monitor-exit p0

    return-void

    .line 1199
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_22

    .line 1201
    :try_start_13
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->stopListeningVisibleActivityChangedLocked(Landroid/os/IBinder;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 1203
    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1205
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    .line 1203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1204
    throw p1

    :catchall_22
    move-exception p1

    .line 1205
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .registers 5

    .line 419
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_5

    return-void

    .line 421
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 423
    :try_start_9
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;Z)V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    .line 425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 426
    throw p0
.end method

.method public supportsLocalVoiceInteraction()Z
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 432
    :cond_6
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->supportsLocalVoiceInteraction()Z

    move-result p0

    return p0
.end method

.method public switchImplementationIfNeeded(Z)V
    .registers 2

    .line 646
    monitor-enter p0

    .line 647
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 648
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public switchImplementationIfNeededLocked(Z)V
    .registers 3

    .line 652
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUserSupported:Z

    if-nez v0, :cond_12

    .line 657
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz p1, :cond_11

    .line 658
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->shutdownLocked()V

    const/4 p1, 0x0

    .line 659
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setImplLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    :cond_11
    return-void

    .line 671
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededNoTracingLocked(Z)V

    return-void
.end method

.method public switchImplementationIfNeededNoTracingLocked(Z)V
    .registers 11

    .line 678
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mSafeMode:Z

    if-nez v0, :cond_cb

    .line 679
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    const-string/jumbo v2, "voice_interaction_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceInteractionManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_43

    .line 683
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_43

    .line 685
    :try_start_1c
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 686
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-wide/16 v5, 0x0

    iget v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    .line 687
    invoke-interface {v4, v3, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_2c} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2c} :catch_2e

    move-object v8, v3

    goto :goto_45

    :catch_2e
    move-exception v3

    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad voice interaction service name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    move-object v0, v2

    move-object v8, v0

    :goto_45
    if-eqz v8, :cond_4b

    if-eqz v0, :cond_4b

    const/4 v3, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    .line 697
    :goto_4c
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_88

    if-eqz v3, :cond_75

    .line 699
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 700
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    .line 699
    invoke-virtual {v4, v1, v5, v6}, Landroid/content/pm/ShortcutServiceInternal;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 701
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    invoke-virtual {v4, v1, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(Ljava/lang/String;II)V

    goto :goto_88

    .line 704
    :cond_75
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/ShortcutServiceInternal;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 705
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v4, -0x1

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(Ljava/lang/String;II)V

    :cond_88
    :goto_88
    if-nez p1, :cond_a0

    .line 709
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz p1, :cond_a0

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    if-ne p1, v0, :cond_a0

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    .line 710
    invoke-virtual {p1, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cb

    .line 711
    :cond_a0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->unloadAllKeyphraseModels()V

    .line 712
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz p1, :cond_ac

    .line 713
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->shutdownLocked()V

    :cond_ac
    if-eqz v3, :cond_c8

    .line 716
    new-instance p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 717
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;ILandroid/content/ComponentName;)V

    .line 716
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setImplLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    .line 718
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startLocked()V

    goto :goto_cb

    .line 720
    :cond_c8
    invoke-virtual {p0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setImplLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    :cond_cb
    :goto_cb
    return-void
.end method

.method public switchUser(I)V
    .registers 4

    .line 637
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public systemRunning(Z)V
    .registers 6

    .line 618
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mSafeMode:Z

    .line 620
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 622
    new-instance p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/os/Handler;)V

    .line 624
    monitor-enter p0

    .line 625
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurrentUserLocked(I)V

    const/4 p1, 0x0

    .line 626
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 627
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public triggerHardwareRecognitionEventForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 1330
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v0, "android.permission.CAPTURE_AUDIO_HOTWORD"

    .line 1331
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1332
    monitor-enter p0

    .line 1333
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 1335
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_1c

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "triggerHardwareRecognitionEventForTest without running voice interaction service"

    .line 1336
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    monitor-exit p0

    return-void

    .line 1340
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_2f

    .line 1342
    :try_start_20
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->triggerHardwareRecognitionEventForTestLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_2a

    .line 1344
    :try_start_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1346
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    .line 1344
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1345
    throw p1

    :catchall_2f
    move-exception p1

    .line 1346
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public final declared-synchronized unloadAllKeyphraseModels()V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 1654
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 1655
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1656
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;

    .line 1657
    invoke-static {v2, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->-$$Nest$munloadKeyphraseModel(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;I)I

    move-result v2

    if-eqz v2, :cond_48

    const-string v3, "VoiceInteractionManager"

    .line 1659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unload keyphrase "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1662
    :cond_4b
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_52
    .catchall {:try_start_2 .. :try_end_52} :catchall_54

    .line 1663
    monitor-exit p0

    return-void

    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .registers 5

    .line 1369
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallerAllowedToEnrollVoiceModel()V

    if-eqz p1, :cond_34

    .line 1374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1376
    :try_start_9
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 1377
    monitor-enter p0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_2f

    .line 1379
    :try_start_14
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz p1, :cond_23

    .line 1380
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    .line 1382
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_29

    const/4 p0, 0x0

    .line 1388
    :goto_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_29
    move-exception p1

    .line 1382
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2f

    :cond_2c
    const/high16 p0, -0x80000000

    goto :goto_25

    :catchall_2f
    move-exception p0

    .line 1388
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1389
    throw p0

    .line 1371
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Model must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateState(Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    .registers 14

    const-string v0, "android.permission.MANAGE_HOTWORD_DETECTION"

    .line 1217
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1218
    monitor-enter p0

    .line 1219
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceIsCurrentVoiceInteractionService()V

    .line 1221
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_17

    const-string p1, "VoiceInteractionManager"

    const-string/jumbo p2, "updateState without running voice interaction service"

    .line 1222
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    monitor-exit p0

    return-void

    .line 1226
    :cond_17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Landroid/media/permission/Identity;->uid:I

    .line 1227
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p1, Landroid/media/permission/Identity;->pid:I

    .line 1229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_3b

    .line 1231
    :try_start_27
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->updateStateLocked(Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_36

    .line 1234
    :try_start_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1236
    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    .line 1234
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1235
    throw p1

    :catchall_3b
    move-exception p1

    .line 1236
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.class public final Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;
    }
.end annotation


# static fields
.field public static final BOOST_TIMEOUT_MS:I = 0x12c

.field public static final DEBUG:Z = false

.field public static final LOW_POWER_STANDBY_ALLOWLIST_TIMEOUT_MS:I = 0x1d4c0

.field public static final MAX_POWER_BOOST_TIMEOUT:I = 0x2710

.field public static final POWER_BOOST_TIMEOUT_MS:I

.field public static final TAG:Ljava/lang/String; = "VoiceInteractionServiceManager"


# instance fields
.field public final mAm:Landroid/app/IActivityManager;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

.field public final mBindIntent:Landroid/content/Intent;

.field public mBound:Z

.field public final mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

.field public final mCallingUid:I

.field public mCanceled:Z

.field public final mContext:Landroid/content/Context;

.field public final mFgHandler:Landroid/os/Handler;

.field public final mFullConnection:Landroid/content/ServiceConnection;

.field public mFullyBound:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public mListeningVisibleActivity:Z

.field public final mLock:Ljava/lang/Object;

.field public mLowPowerStandbyAllowlisted:Z

.field public final mLowPowerStandbyControllerInternal:Lcom/android/server/power/LowPowerStandbyControllerInternal;

.field public mPendingHandleAssistWithoutData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityAssistInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingShowCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mRemoveFromLowPowerStandbyAllowlistRunnable:Ljava/lang/Runnable;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public mService:Landroid/service/voice/IVoiceInteractionSessionService;

.field public mSession:Landroid/service/voice/IVoiceInteractionSession;

.field public final mSessionComponentName:Landroid/content/ComponentName;

.field public mSetPowerBoostRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

.field public mShowArgs:Landroid/os/Bundle;

.field public mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

.field public mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field public mShowFlags:I

.field public mShown:Z

.field public final mToken:Landroid/os/IBinder;

.field public final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUser:I

.field public final mVisibleActivityInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/voice/VisibleActivityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$syrNALjZ1yGeRsdZ_RLNnXjDfxU(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->removeFromLowPowerStandbyAllowlist()V

    return-void
.end method

.method public static synthetic $r8$lambda$tLgujjtygKou3QaDvz71jxh04zo(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->lambda$startListeningVisibleActivityChangedLocked$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$y-YGBqYN9DubaA-dyUbKPDIM0p4(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->lambda$notifyActivityEventChangedLocked$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmFgHandler(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManagerInternal(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)Landroid/os/PowerManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSetPowerBoostRunnable(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSetPowerBoostRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyPendingShowCallbacksFailedLocked(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksFailedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyPendingShowCallbacksShownLocked(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksShownLocked()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "vendor.powerhal.interaction.max"

    const-string v1, "200"

    .line 91
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->POWER_BOOST_TIMEOUT_MS:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    .line 211
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v12, Landroid/os/Binder;

    invoke-direct {v12}, Landroid/os/Binder;-><init>()V

    iput-object v12, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingHandleAssistWithoutData:Ljava/util/List;

    .line 130
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfos:Ljava/util/List;

    .line 134
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mRemoveFromLowPowerStandbyAllowlistRunnable:Ljava/lang/Runnable;

    .line 176
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;

    invoke-direct {v1, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 201
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

    invoke-direct {v1, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    .line 803
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;

    invoke-direct {v1, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    move-object/from16 v6, p1

    .line 212
    iput-object v6, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    .line 213
    iput-object v9, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 214
    iput v10, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 215
    iput-object v11, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    move-object/from16 v1, p5

    .line 216
    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    move/from16 v1, p6

    .line 217
    iput v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    move-object/from16 v1, p7

    .line 218
    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    .line 219
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    .line 220
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v13, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const-string/jumbo v1, "window"

    .line 222
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 221
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v14

    iput-object v14, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    .line 223
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 224
    const-class v1, Lcom/android/server/power/LowPowerStandbyControllerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/LowPowerStandbyControllerInternal;

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyControllerInternal:Lcom/android/server/power/LowPowerStandbyControllerInternal;

    .line 226
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v11, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    .line 227
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFgHandler:Landroid/os/Handler;

    .line 228
    new-instance v15, Lcom/android/server/am/AssistDataRequester;

    const-string v1, "appops"

    .line 229
    invoke-virtual {v11, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/AppOpsManager;

    const/16 v7, 0x31

    const/16 v8, 0x32

    move-object v1, v15

    move-object/from16 v2, p4

    move-object v3, v14

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V

    iput-object v15, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voicesession:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-interface {v13, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 233
    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.voice.VoiceInteractionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    .line 235
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 236
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v10}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x100031

    invoke-virtual {v11, v1, v0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    const-string v2, "VoiceInteractionServiceManager"

    if-eqz v1, :cond_105

    const/16 v0, 0x7ef

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 242
    :try_start_f9
    invoke-interface {v14, v12, v0, v1, v3}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V
    :try_end_fc
    .catch Landroid/os/RemoteException; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_119

    :catch_fd
    move-exception v0

    move-object v1, v0

    const-string v0, "Failed adding window token"

    .line 245
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_119

    .line 248
    :cond_105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed binding to voice interaction session service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_119
    return-void
.end method

.method private synthetic lambda$notifyActivityEventChangedLocked$1()V
    .registers 2

    .line 646
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->updateVisibleActivitiesLocked()V

    .line 648
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method private synthetic lambda$startListeningVisibleActivityChangedLocked$0()V
    .registers 2

    .line 618
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->updateVisibleActivitiesLocked()V

    .line 620
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method


# virtual methods
.method public canHandleReceivedAssistDataLocked()Z
    .registers 1

    .line 382
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public cancelLocked(Z)V
    .registers 5

    const/4 v0, 0x0

    .line 532
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mListeningVisibleActivity:Z

    .line 533
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 534
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->hideLocked()Z

    const/4 v1, 0x1

    .line 535
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z

    .line 536
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v1, :cond_4c

    .line 537
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    const-string v2, "VoiceInteractionServiceManager"

    if-eqz v1, :cond_21

    .line 539
    :try_start_18
    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->destroy()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_21

    :catch_1c
    const-string v1, "Voice interation session already dead"

    .line 541
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    if-eqz p1, :cond_30

    .line 544
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p1, :cond_30

    .line 546
    :try_start_27
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {p1, v1}, Landroid/app/IActivityTaskManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_30} :catch_30

    .line 550
    :catch_30
    :cond_30
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 552
    :try_start_35
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    invoke-interface {p1, v1, v0}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d

    goto :goto_43

    :catch_3d
    move-exception p1

    const-string v1, "Failed removing window token"

    .line 554
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    :goto_43
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    const/4 p1, 0x0

    .line 557
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 558
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 559
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 561
    :cond_4c
    iget-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-eqz p1, :cond_59

    .line 562
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 563
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    :cond_59
    return-void
.end method

.method public deliverNewSessionLocked(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 5

    .line 569
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 570
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 571
    iget-boolean p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz p2, :cond_2e

    .line 573
    :try_start_8
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {p1, p2, v0, v1}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    const/4 p1, 0x0

    .line 574
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 575
    iput p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_17

    .line 578
    :catch_17
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {p1}, Lcom/android/server/am/AssistDataRequester;->processPendingAssistData()V

    .line 579
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingHandleAssistWithoutData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 580
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingHandleAssistWithoutData:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->doHandleAssistWithoutData(Ljava/util/List;)V

    .line 581
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingHandleAssistWithoutData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method public final doHandleAssistWithoutData(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityAssistInfo;",
            ">;)V"
        }
    .end annotation

    .line 359
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v0, 0x0

    move v9, v0

    :goto_6
    if-ge v9, v8, :cond_23

    .line 361
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityAssistInfo;

    .line 362
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityAssistInfo;->getAssistToken()Landroid/os/IBinder;

    move-result-object v2

    .line 363
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityAssistInfo;->getTaskId()I

    move-result v1

    .line 366
    :try_start_16
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v9

    move v7, v8

    invoke-interface/range {v0 .. v7}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_20

    :catch_20
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_23
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 790
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 791
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 792
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowArgs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 793
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBound="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 795
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v0, :cond_70

    .line 796
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 797
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSession="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 798
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInteractor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 800
    :cond_70
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AssistDataRequester;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getUserDisabledShowContextLocked()I
    .registers 5

    .line 255
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    const-string v2, "assist_structure_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_13

    move v0, v3

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 259
    :goto_14
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    const-string v2, "assist_screenshot_enabled"

    invoke-static {v1, v2, v3, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_26

    or-int/lit8 v0, v0, 0x2

    :cond_26
    return v0
.end method

.method public final getVisibleActivityInfosLocked()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/voice/VisibleActivityInfo;",
            ">;"
        }
    .end annotation

    .line 656
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 657
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 658
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopVisibleActivities()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 663
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_3b

    .line 667
    :cond_15
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 668
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v0, :cond_3a

    .line 670
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityAssistInfo;

    .line 676
    new-instance v4, Landroid/service/voice/VisibleActivityInfo;

    .line 677
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityAssistInfo;->getTaskId()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityAssistInfo;->getAssistToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/service/voice/VisibleActivityInfo;-><init>(ILandroid/os/IBinder;)V

    .line 676
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_3a
    return-object v1

    :cond_3b
    :goto_3b
    const-string p0, "VoiceInteractionServiceManager"

    const-string v0, "no visible activity"

    .line 664
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V
    .registers 13

    .line 472
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 473
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    .line 475
    :cond_12
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 476
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 477
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V
    .registers 14

    .line 483
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_16

    .line 485
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    return-void
.end method

.method public grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 16

    .line 447
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    const-string v0, "content"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_d

    return-void

    .line 450
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 453
    :try_start_11
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v4, 0x0

    .line 454
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 455
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    invoke-static {p1, p4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v7

    move v3, p3

    move v6, p2

    .line 453
    invoke-interface/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 457
    iget p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 458
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 459
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v7, 0x1

    iget v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    move v4, p3

    move-object v5, p5

    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_3d} :catch_4d
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_3d} :catch_40
    .catchall {:try_start_11 .. :try_end_3d} :catchall_3e

    goto :goto_4d

    :catchall_3e
    move-exception p0

    goto :goto_49

    :catch_40
    move-exception p0

    :try_start_41
    const-string p1, "VoiceInteractionServiceManager"

    const-string p2, "Can\'t propagate permission"

    .line 463
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_3e

    goto :goto_4d

    .line 465
    :goto_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    throw p0

    .line 465
    :catch_4d
    :goto_4d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public hideLocked()Z
    .registers 7

    .line 490
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_62

    .line 491
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz v0, :cond_53

    .line 492
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    const/4 v0, 0x0

    .line 493
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 494
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 495
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {v2}, Lcom/android/server/am/AssistDataRequester;->cancel()V

    .line 496
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 497
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_21

    .line 499
    :try_start_1e
    invoke-interface {v2}, Landroid/service/voice/IVoiceInteractionSession;->hide()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_21

    .line 503
    :catch_21
    :cond_21
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 505
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_38

    .line 507
    :try_start_2f
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_38} :catch_38

    .line 511
    :catch_38
    :cond_38
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSetPowerBoostRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    if-eqz v2, :cond_41

    .line 512
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->cancel()V

    .line 513
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSetPowerBoostRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    .line 516
    :cond_41
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 517
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyControllerInternal:Lcom/android/server/power/LowPowerStandbyControllerInternal;

    if-eqz v0, :cond_4e

    .line 518
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->removeFromLowPowerStandbyAllowlist()V

    .line 520
    :cond_4e
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->onSessionHidden(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 522
    :cond_53
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-eqz v0, :cond_60

    .line 523
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 524
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    :cond_60
    const/4 p0, 0x1

    return p0

    :cond_62
    return v1
.end method

.method public notifyActivityEventChangedLocked()V
    .registers 3

    .line 636
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mListeningVisibleActivity:Z

    if-nez v0, :cond_5

    return-void

    .line 642
    :cond_5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final notifyPendingShowCallbacksFailedLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 598
    :goto_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 600
    :try_start_9
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 604
    :cond_17
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final notifyPendingShowCallbacksShownLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 588
    :goto_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 590
    :try_start_9
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 594
    :cond_17
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onAssistDataReceivedLocked(Landroid/os/Bundle;II)V
    .registers 17

    move-object v6, p0

    move-object v0, p1

    .line 388
    iget-object v1, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v1, :cond_7

    return-void

    :cond_7
    if-nez v0, :cond_1d

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    .line 394
    :try_start_18
    invoke-interface/range {v0 .. v7}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_99

    goto/16 :goto_99

    :cond_1d
    const-string/jumbo v1, "taskId"

    .line 399
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "activityId"

    .line 400
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    const-string v1, "data"

    .line 401
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v1, "structure"

    .line 402
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/app/assist/AssistStructure;

    const-string v1, "content"

    .line 403
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/assist/AssistContent;

    const/4 v0, -0x1

    if-eqz v9, :cond_4c

    const-string v1, "android.intent.extra.ASSIST_UID"

    .line 406
    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_4c
    move v12, v0

    if-ltz v12, :cond_8c

    if-eqz v11, :cond_8c

    .line 409
    invoke-virtual {v11}, Landroid/app/assist/AssistContent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 411
    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_78

    .line 412
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 413
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    iget v4, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object v0, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 414
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v3, v12

    .line 413
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    .line 417
    :cond_78
    invoke-virtual {v11}, Landroid/app/assist/AssistContent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_8c

    const/4 v2, 0x1

    .line 419
    iget v4, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object v0, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 420
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v3, v12

    .line 419
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    .line 424
    :cond_8c
    :try_start_8c
    iget-object v2, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move v8, p2

    move/from16 v9, p3

    invoke-interface/range {v2 .. v9}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_99} :catch_99

    :catch_99
    :goto_99
    return-void
.end method

.method public onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 435
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez p0, :cond_5

    return-void

    .line 440
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/service/voice/IVoiceInteractionSession;->handleScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 769
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 770
    :try_start_3
    invoke-static {p2}, Landroid/service/voice/IVoiceInteractionSessionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSessionService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 771
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    if-nez v0, :cond_1f

    .line 773
    :try_start_d
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    invoke-interface {p2, v0, v1, p0}, Landroid/service/voice/IVoiceInteractionSessionService;->newSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_17
    .catchall {:try_start_d .. :try_end_16} :catchall_21

    goto :goto_1f

    :catch_17
    move-exception p0

    :try_start_18
    const-string p2, "VoiceInteractionServiceManager"

    const-string v0, "Failed adding window token"

    .line 775
    invoke-static {p2, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    :cond_1f
    :goto_1f
    monitor-exit p1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 783
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {p1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->sessionConnectionGone(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 784
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 785
    :try_start_9
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 786
    monitor-exit p1

    return-void

    :catchall_d
    move-exception p0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final removeFromLowPowerStandbyAllowlist()V
    .registers 4

    .line 758
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyAllowlisted:Z

    if-eqz v1, :cond_18

    .line 760
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mRemoveFromLowPowerStandbyAllowlistRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 761
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyControllerInternal:Lcom/android/server/power/LowPowerStandbyControllerInternal;

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/power/LowPowerStandbyControllerInternal;->removeFromAllowlist(I)V

    const/4 v1, 0x0

    .line 762
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyAllowlisted:Z

    .line 764
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public showLocked(Landroid/os/Bundle;IILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Ljava/util/List;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "II",
            "Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityAssistInfo;",
            ">;)Z"
        }
    .end annotation

    .line 269
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_107

    .line 270
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-nez v0, :cond_1f

    .line 271
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    const v4, 0x8180001

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    :cond_1f
    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 279
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 280
    iput p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 282
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getUserDisabledShowContextLocked()I

    move-result p1

    or-int/2addr p1, p3

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_31

    move v4, v0

    goto :goto_32

    :cond_31
    move v4, v1

    :goto_32
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_38

    move v5, v0

    goto :goto_39

    :cond_38
    move v5, v1

    :goto_39
    if-nez v4, :cond_40

    if-eqz v5, :cond_3e

    goto :goto_40

    :cond_3e
    move p2, v1

    goto :goto_41

    :cond_40
    :goto_40
    move p2, v0

    :goto_41
    if-eqz p2, :cond_a1

    .line 289
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    .line 290
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    :goto_4d
    if-ge v2, p3, :cond_5f

    .line 292
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityAssistInfo;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityAssistInfo;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 294
    :cond_5f
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    and-int/lit8 p3, p1, 0x1

    if-nez p3, :cond_67

    move v6, v0

    goto :goto_68

    :cond_67
    move v6, v1

    :goto_68
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6e

    move v7, v0

    goto :goto_6f

    :cond_6e
    move v7, v1

    :goto_6f
    iget v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 299
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 294
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {p1}, Lcom/android/server/am/AssistDataRequester;->getPendingDataCount()I

    move-result p1

    if-gtz p1, :cond_8d

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 302
    invoke-virtual {p1}, Lcom/android/server/am/AssistDataRequester;->getPendingScreenshotCount()I

    move-result p1

    if-lez p1, :cond_8b

    goto :goto_8d

    :cond_8b
    move p1, v1

    goto :goto_8e

    :cond_8d
    :goto_8d
    move p1, v0

    :goto_8e
    if-eqz p1, :cond_a1

    .line 303
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-static {p1, p3}, Lcom/android/internal/app/AssistUtils;->shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 304
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    :cond_a1
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p1, :cond_bd

    .line 309
    :try_start_a5
    iget-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    invoke-interface {p1, p3, v2, p4}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    const/4 p1, 0x0

    .line 310
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 311
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_b1} :catch_b1

    :catch_b1
    if-eqz p2, :cond_b9

    .line 315
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {p1}, Lcom/android/server/am/AssistDataRequester;->processPendingAssistData()V

    goto :goto_c8

    .line 317
    :cond_b9
    invoke-virtual {p0, p5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->doHandleAssistWithoutData(Ljava/util/List;)V

    goto :goto_c8

    :cond_bd
    if-eqz p4, :cond_c4

    .line 321
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c4
    if-nez p2, :cond_c8

    .line 327
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingHandleAssistWithoutData:Ljava/util/List;

    .line 331
    :cond_c8
    :goto_c8
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSetPowerBoostRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    if-eqz p1, :cond_cf

    .line 332
    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->cancel()V

    .line 334
    :cond_cf
    new-instance p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    .line 335
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p2

    const-wide/16 p3, 0x2710

    invoke-virtual {p2, p3, p4}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;Ljava/time/Instant;)V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSetPowerBoostRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    .line 336
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFgHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyControllerInternal:Lcom/android/server/power/LowPowerStandbyControllerInternal;

    if-eqz p1, :cond_101

    .line 339
    iget p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    invoke-virtual {p1, p2}, Lcom/android/server/power/LowPowerStandbyControllerInternal;->addToAllowlist(I)V

    .line 340
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLowPowerStandbyAllowlisted:Z

    .line 341
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFgHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mRemoveFromLowPowerStandbyAllowlistRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFgHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mRemoveFromLowPowerStandbyAllowlistRunnable:Ljava/lang/Runnable;

    const-wide/32 p3, 0x1d4c0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    :cond_101
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {p1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->onSessionShown(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    return v0

    :cond_107
    if-eqz p4, :cond_10c

    .line 351
    :try_start_109
    invoke-interface {p4}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_10c
    .catch Landroid/os/RemoteException; {:try_start_109 .. :try_end_10c} :catch_10c

    :catch_10c
    :cond_10c
    return v1
.end method

.method public startListeningVisibleActivityChangedLocked()V
    .registers 3

    const/4 v0, 0x1

    .line 611
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mListeningVisibleActivity:Z

    .line 612
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 614
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopListeningVisibleActivityChangedLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 628
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mListeningVisibleActivity:Z

    .line 629
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final updateVisibleActivitiesChangedLocked(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/voice/VisibleActivityInfo;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_23

    .line 736
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_23

    .line 739
    :cond_9
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 743
    :goto_f
    :try_start_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 744
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VisibleActivityInfo;

    invoke-interface {v1, v2, p2}, Landroid/service/voice/IVoiceInteractionSession;->updateVisibleActivityInfo(Landroid/service/voice/VisibleActivityInfo;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_20} :catch_23

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :catch_23
    :cond_23
    :goto_23
    return-void
.end method

.method public final updateVisibleActivitiesLocked()V
    .registers 9

    .line 686
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_5

    return-void

    .line 689
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz v0, :cond_8c

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mListeningVisibleActivity:Z

    if-eqz v0, :cond_8c

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z

    if-eqz v0, :cond_13

    goto/16 :goto_8c

    .line 692
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getVisibleActivityInfosLocked()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_82

    .line 694
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_82

    .line 700
    :cond_21
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    .line 701
    invoke-virtual {p0, v0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->updateVisibleActivitiesChangedLocked(Ljava/util/List;I)V

    .line 703
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 707
    :cond_33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 708
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 710
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x0

    .line 711
    :goto_43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_65

    .line 712
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/voice/VisibleActivityInfo;

    .line 713
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5f

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 715
    invoke-interface {v4, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_62

    .line 717
    :cond_5f
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 721
    :cond_65
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6e

    .line 722
    invoke-virtual {p0, v2, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->updateVisibleActivitiesChangedLocked(Ljava/util/List;I)V

    .line 725
    :cond_6e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_77

    .line 726
    invoke-virtual {p0, v4, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->updateVisibleActivitiesChangedLocked(Ljava/util/List;I)V

    .line 730
    :cond_77
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 731
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 695
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfos:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->updateVisibleActivitiesChangedLocked(Ljava/util/List;I)V

    .line 697
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_8c
    :goto_8c
    return-void
.end method

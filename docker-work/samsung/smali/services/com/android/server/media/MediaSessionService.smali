.class public Lcom/android/server/media/MediaSessionService;
.super Lcom/android/server/SystemService;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;,
        Lcom/android/server/media/MediaSessionService$MessageHandler;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl;,
        Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;,
        Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;,
        Lcom/android/server/media/MediaSessionService$FullUserRecord;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_KEY_EVENT:Z = true

.field public static final LONG_PRESS_TIMEOUT:I

.field public static final MEDIA_BUTTON_RECEIVER:Ljava/lang/String; = "media_button_receiver"

.field public static final MEDIA_KEY_LISTENER_TIMEOUT:I = 0x3e8

.field public static final MULTI_TAP_TIMEOUT:I

.field public static final REMOTE_CAST_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.audiomirroring"

.field public static final SESSION_CREATION_LIMIT_PER_UID:I = 0x64

.field public static final TAG:Ljava/lang/String; = "MediaSessionService"

.field public static final WAKELOCK_TIMEOUT:I = 0x1388


# instance fields
.field public mActivityManagerLocal:Lcom/android/server/am/ActivityManagerLocal;

.field public mAppCastingUid:I

.field public mAudioManager:Landroid/media/AudioManager;

.field public mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field public mAudioServiceInternal:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

.field public mCommunicationManager:Landroid/media/MediaCommunicationManager;

.field public final mContext:Landroid/content/Context;

.field public mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

.field public mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

.field public mCustomMediaKeyDispatcher:Lcom/android/server/media/MediaKeyDispatcher;

.field public mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;

.field public mDesktopModeHelper:Lcom/samsung/android/server/audio/DesktopModeHelper;

.field public mDevice:I

.field public final mFullUserIds:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

.field public final mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

.field public mHasFeatureLeanback:Z

.field public mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

.field public mIsAppCastingOn:Z

.field public mIsMultiSoundOn:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLock:Ljava/lang/Object;

.field public final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mNotificationListenerEnabledChangedReceiver:Landroid/content/BroadcastReceiver;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mRecordThread:Landroid/os/HandlerThread;

.field public final mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IRemoteSessionCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mSession2TokenCallback:Landroid/media/MediaCommunicationManager$SessionCallback;

.field public final mSession2TokensListenerRecords:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field public final mSessionsListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemServerPid:I

.field public final mUserRecords:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/media/MediaSessionService$FullUserRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;


# direct methods
.method public static synthetic $r8$lambda$pee7hFVismD0TQSQsvFVbS2zDZw(Lcom/android/server/media/MediaSessionService;Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->lambda$onStart$0(Landroid/media/AudioPlaybackConfiguration;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/media/MediaSessionService;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioPlayerStateMonitor(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverHelper(Lcom/android/server/media/MediaSessionService;)Lcom/samsung/android/server/audio/CoverHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaKeyDispatcher:Lcom/android/server/media/MediaKeyDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCustomMediaSessionPolicyProvider(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionPolicyProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDesktopModeHelper(Lcom/android/server/media/MediaSessionService;)Lcom/samsung/android/server/audio/DesktopModeHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mDesktopModeHelper:Lcom/samsung/android/server/audio/DesktopModeHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFullUserIds(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasFeatureLeanback(Lcom/android/server/media/MediaSessionService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHighPriorityMediaKeyReceiver(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsMultiSoundOn(Lcom/android/server/media/MediaSessionService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionService;->mIsMultiSoundOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/NotificationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManagerInternal(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecordThread(Lcom/android/server/media/MediaSessionService;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mRecordThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSession2TokensListenerRecords(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionsListeners(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemServerPid(Lcom/android/server/media/MediaSessionService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionService;->mSystemServerPid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumeKeyLongPressReceiver(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDevice(Lcom/android/server/media/MediaSessionService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionService;->mDevice:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHighPriorityMediaKeyReceiver(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsMultiSoundOn(Lcom/android/server/media/MediaSessionService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionService;->mIsMultiSoundOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVolumeKeyLongPressReceiver(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateSessionInternal(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/media/MediaSessionService;->createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdestroySessionLocked(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchVolumeKeyLongPressLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Ljava/lang/String;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforcePackageName(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceStatusBarServicePermission(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService;->enforceStatusBarServicePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindIndexOfSession2TokensListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->findIndexOfSession2TokensListenerLocked(Landroid/media/session/ISession2TokensListener;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mfindIndexOfSessionsListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetActiveSessionsLocked(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getCallingPackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getMediaSessionRecordLocked(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetMultiSoundSessionLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->getMultiSoundSessionLocked(Landroid/view/KeyEvent;Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhasMediaControlPermission(Lcom/android/server/media/MediaSessionService;II)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->hasMediaControlPermission(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mignoreVoiceKey(Lcom/android/server/media/MediaSessionService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->ignoreVoiceKey()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$minstantiateCustomDispatcher(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->instantiateCustomDispatcher(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minstantiateCustomProvider(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->instantiateCustomProvider(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misMultiSoundOn(Lcom/android/server/media/MediaSessionService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->isMultiSoundOn()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mneedVolumeKeyLongPressBroadCastLocked(Lcom/android/server/media/MediaSessionService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->needVolumeKeyLongPressBroadCastLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpushSession1Changed(Lcom/android/server/media/MediaSessionService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushSession1Changed(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMultiSoundFlag(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->setMultiSoundFlag(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateActiveSessionListeners(Lcom/android/server/media/MediaSessionService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->updateActiveSessionListeners()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetLONG_PRESS_TIMEOUT()I
    .registers 1

    sget v0, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetMULTI_TAP_TIMEOUT()I
    .registers 1

    sget v0, Lcom/android/server/media/MediaSessionService;->MULTI_TAP_TIMEOUT:I

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "MediaSessionService"

    const/4 v1, 0x3

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    .line 134
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    sput v0, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 136
    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v0

    sput v0, Lcom/android/server/media/MediaSessionService;->MULTI_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v0, Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SessionRecordThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRecordThread:Landroid/os/HandlerThread;

    .line 150
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 152
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 173
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 181
    new-instance v0, Lcom/android/server/media/MediaSessionService$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$1;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokenCallback:Landroid/media/MediaCommunicationManager$SessionCallback;

    .line 283
    new-instance v0, Lcom/android/server/media/MediaSessionService$2;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$2;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationListenerEnabledChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 3366
    invoke-static {}, Lcom/samsung/android/server/audio/CoverHelper;->getInstance()Lcom/samsung/android/server/audio/CoverHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    const/4 v0, 0x0

    .line 3379
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mIsMultiSoundOn:Z

    .line 3380
    iput v0, p0, Lcom/android/server/media/MediaSessionService;->mDevice:I

    .line 3382
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mIsAppCastingOn:Z

    const/4 v0, -0x1

    .line 3383
    iput v0, p0, Lcom/android/server/media/MediaSessionService;->mAppCastingUid:I

    const/4 v0, 0x0

    .line 3524
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    .line 3525
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

    .line 201
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 202
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 203
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "handleMediaEvent"

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 205
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 206
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mAudioManager:Landroid/media/AudioManager;

    .line 209
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->setupCustomRoutine()V

    return-void
.end method

.method private synthetic lambda$onStart$0(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 6

    .line 221
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "MediaSessionService"

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio playback is changed, config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", removed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_22
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    return-void

    .line 229
    :cond_2a
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_2d
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 230
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 235
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->isMultiSoundOn()Z

    move-result v2

    if-eqz v2, :cond_58

    if-nez p2, :cond_58

    .line 237
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p2

    if-nez p2, :cond_58

    .line 238
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->isMediaButtonSessionUid(I)Z

    move-result p0

    if-eqz p0, :cond_58

    goto :goto_5f

    .line 244
    :cond_58
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 247
    :cond_5f
    :goto_5f
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_2d .. :try_end_63} :catchall_61

    throw p0
.end method


# virtual methods
.method public final createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;
    .registers 26

    move-object/from16 v0, p0

    move/from16 v12, p2

    move/from16 v4, p3

    move-object/from16 v13, p4

    .line 709
    iget-object v14, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 711
    :try_start_b
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService;->mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 712
    invoke-virtual {v1, v12, v13}, Lcom/android/server/media/MediaSessionPolicyProvider;->getSessionPoliciesForApplication(ILjava/lang/String;)I

    move-result v1

    move v11, v1

    goto :goto_17

    :cond_16
    move v11, v2

    .line 716
    :goto_17
    invoke-virtual {v0, v4}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v15

    if-eqz v15, :cond_b6

    .line 722
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmUidToSessionCount(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v12, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    const/16 v1, 0x64

    if-lt v10, v1, :cond_4c

    .line 724
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/media/MediaSessionService;->hasMediaControlPermission(II)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_4c

    .line 725
    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created too many sessions. count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4c
    .catchall {:try_start_b .. :try_end_4c} :catchall_dd

    .line 731
    :cond_4c
    :goto_4c
    :try_start_4c
    new-instance v9, Lcom/android/server/media/MediaSessionRecord;

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService;->mRecordThread:Landroid/os/HandlerThread;

    .line 733
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v16

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v13, v9

    move-object/from16 v9, p0

    move/from16 v17, v10

    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v11}, Lcom/android/server/media/MediaSessionRecord;-><init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;I)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_6d} :catch_ad
    .catchall {:try_start_4c .. :try_end_6d} :catchall_dd

    .line 738
    :try_start_6d
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmUidToSessionCount(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/util/SparseIntArray;

    move-result-object v1

    add-int/lit8 v10, v17, 0x1

    invoke-virtual {v1, v12, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 740
    invoke-static {v15}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 741
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {v0, v13}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 743
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_aa

    const-string v0, "MediaSessionService"

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    move-object v3, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    :cond_aa
    move-object v3, v13

    .line 746
    :goto_ab
    monitor-exit v14

    return-object v3

    :catch_ad
    move-exception v0

    .line 735
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Media Session owner died prematurely."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_b6
    move-object v2, v13

    const-string v0, "MediaSessionService"

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request from invalid user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pkg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Session request from invalid user."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_dd
    move-exception v0

    .line 747
    monitor-exit v14
    :try_end_df
    .catchall {:try_start_6d .. :try_end_df} :catchall_dd

    throw v0
.end method

.method public final destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 7

    .line 539
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    const-string v1, "MediaSessionService"

    if-eqz v0, :cond_1a

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_1a
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string p0, "Destroying already destroyed session. Ignoring."

    .line 543
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 547
    :cond_26
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 549
    instance-of v2, p1, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_61

    .line 550
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v2

    .line 551
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmUidToSessionCount(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/util/SparseIntArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-gtz v3, :cond_58

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroySessionLocked: sessionCount should be positive. sessionCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 556
    :cond_58
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmUidToSessionCount(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/util/SparseIntArray;

    move-result-object v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 560
    :cond_61
    :goto_61
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-ne v1, p1, :cond_74

    const/4 v1, 0x0

    .line 561
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 562
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    move-result v1

    if-eqz v1, :cond_7d

    if-eqz v0, :cond_7d

    .line 563
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mpushAddressedPlayerChangedLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    goto :goto_7d

    :cond_74
    if-eqz v0, :cond_7d

    .line 567
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 571
    :cond_7d
    :goto_7d
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->close()V

    .line 572
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    return-void
.end method

.method public final dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V
    .registers 5

    .line 876
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    if-eqz v0, :cond_2f

    .line 877
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    rem-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_2f

    .line 878
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.SOUND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    const-string/jumbo v2, "type"

    .line 879
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "keyevent"

    .line 881
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 882
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 883
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 886
    :cond_2f
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    if-nez v0, :cond_38

    return-void

    .line 890
    :cond_38
    :try_start_38
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/media/session/IOnVolumeKeyLongPressListener;->onVolumeKeyLongPress(Landroid/view/KeyEvent;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_41} :catch_42

    goto :goto_5d

    .line 892
    :catch_42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to send "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to volume key long-press listener"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaSessionService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    return-void
.end method

.method public final enforceMediaPermissions(Ljava/lang/String;III)V
    .registers 6

    .line 643
    invoke-virtual {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->hasStatusBarServicePermission(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 644
    :cond_7
    invoke-virtual {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->hasMediaControlPermission(II)Z

    move-result p2

    if-eqz p2, :cond_e

    return-void

    :cond_e
    if-eqz p1, :cond_1b

    .line 647
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 646
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/media/MediaSessionService;->hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;I)Z

    move-result p0

    if-eqz p0, :cond_1b

    return-void

    .line 648
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Missing permission to control media."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforcePackageName(Ljava/lang/String;I)V
    .registers 6

    .line 576
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_47

    if-eqz p2, :cond_46

    const/16 p0, 0x7d0

    if-ne p2, p0, :cond_d

    goto :goto_46

    .line 584
    :cond_d
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 585
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v0, 0x0

    .line 587
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 586
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    .line 588
    invoke-static {p2, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_26

    return-void

    .line 589
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packageName does not belong to the calling uid; pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    :goto_46
    return-void

    .line 577
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName may not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enforcePhoneStatePermission(II)V
    .registers 4

    .line 462
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_b

    return-void

    .line 464
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must hold the MODIFY_PHONE_STATE permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceStatusBarServicePermission(Ljava/lang/String;II)V
    .registers 4

    .line 658
    invoke-virtual {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->hasStatusBarServicePermission(II)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 659
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Only System UI and Settings may "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final findIndexOfSession2TokensListenerLocked(Landroid/media/session/ISession2TokensListener;)I
    .registers 5

    .line 760
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 761
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v1}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1f

    return v0

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 p0, -0x1

    return p0
.end method

.method public final findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    .registers 5

    .line 751
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 752
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {v1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1f

    return v0

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 p0, -0x1

    return p0
.end method

.method public final getActiveSessionsLocked(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2d

    .line 341
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_56

    .line 343
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 346
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    if-nez v1, :cond_4b

    .line 348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSessions failed. Unknown user "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaSessionService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 351
    :cond_4b
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 355
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_71

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 356
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq p1, v1, :cond_6c

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 357
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    if-ne p1, v1, :cond_71

    .line 358
    :cond_6c
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-interface {v0, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_71
    return-object v0
.end method

.method public final getCallingPackageName(I)Ljava/lang/String;
    .registers 2

    .line 868
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 869
    array-length p1, p0

    if-lez p1, :cond_13

    const/4 p1, 0x0

    .line 870
    aget-object p0, p0, p1

    return-object p0

    :cond_13
    const-string p0, ""

    return-object p0
.end method

.method public final getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .registers 4

    .line 897
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-gez p1, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 901
    :cond_b
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    return-object p0
.end method

.method public final getMediaSessionRecordLocked(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .registers 3

    .line 906
    invoke-virtual {p1}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 905
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 908
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->getMediaSessionRecord(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMultiSoundSessionLocked(Landroid/view/KeyEvent;Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord;
    .registers 14

    const/high16 v0, 0x10000

    if-eqz p2, :cond_b

    .line 3414
    invoke-virtual {p2, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object p2

    .line 3418
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-nez v1, :cond_16

    return-object p2

    .line 3421
    :cond_16
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Headset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3422
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    const/high16 v2, 0x20000000

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2b

    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    move p1, v3

    .line 3424
    :goto_2c
    invoke-static {}, Lcom/samsung/android/server/audio/AudioHelper;->getCurrentUserId()I

    move-result v2

    .line 3425
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    const-string v5, "MediaSessionService"

    if-nez v4, :cond_4d

    .line 3427
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getFullUserRecordLocked failed. No user with id="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_4d
    const/4 v6, 0x0

    .line 3432
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/media/MediaSessionStack;->getActiveSessionsSortedPlayback(I)Ljava/util/List;

    move-result-object v2

    .line 3433
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5a
    :goto_5a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/media/MediaSessionRecord;

    .line 3434
    invoke-virtual {v8, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v9

    if-eqz v9, :cond_73

    const-string/jumbo v8, "skip global session"

    .line 3435
    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 3439
    :cond_73
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService;->mAudioServiceInternal:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    invoke-virtual {v8}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/server/audio/SemAudioServiceInternal;->getAppDevice(I)I

    move-result v9

    if-eqz v9, :cond_80

    goto :goto_82

    .line 3440
    :cond_80
    iget v9, p0, Lcom/android/server/media/MediaSessionService;->mDevice:I

    :goto_82
    if-eqz p1, :cond_88

    const/16 v10, 0x80

    if-eq v9, v10, :cond_97

    :cond_88
    if-eqz v1, :cond_8e

    const/16 v10, 0x8

    if-eq v9, v10, :cond_97

    .line 3442
    :cond_8e
    iget-boolean v10, p0, Lcom/android/server/media/MediaSessionService;->mIsAppCastingOn:Z

    if-eqz v10, :cond_5a

    const v10, 0x8000

    if-eq v9, v10, :cond_5a

    :cond_97
    if-eqz v6, :cond_b3

    .line 3451
    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v9

    invoke-virtual {v8}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v10

    if-ne v9, v10, :cond_5a

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 3453
    invoke-virtual {v8}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v9

    .line 3452
    invoke-virtual {v8, v9}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    move-result v9

    if-eqz v9, :cond_5a

    :cond_b3
    move-object v6, v8

    goto :goto_5a

    :cond_b5
    if-eqz v6, :cond_df

    .line 3463
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is selected"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p2, v6, :cond_de

    .line 3465
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    :cond_de
    return-object v6

    :cond_df
    if-nez p2, :cond_ee

    .line 3470
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_ee

    .line 3471
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    return-object p0

    :cond_ee
    return-object p2
.end method

.method public getSession2TokensLocked(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;"
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne p1, v1, :cond_2c

    .line 366
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_3b

    .line 368
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->getSession2Tokens(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 371
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    .line 372
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->getSession2Tokens(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3b
    return-object v0
.end method

.method public final hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;I)Z
    .registers 5

    .line 689
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq v0, p3, :cond_8

    const/4 p0, 0x0

    return p0

    .line 693
    :cond_8
    sget-boolean p3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz p3, :cond_27

    .line 694
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Checking whether the package "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has an enabled notification listener."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MediaSessionService"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_27
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public final hasMediaControlPermission(II)Z
    .registers 4

    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_31

    .line 667
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_31

    .line 671
    :cond_f
    sget-boolean p0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz p0, :cond_2f

    .line 672
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "uid("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") hasn\'t granted MEDIA_CONTENT_CONTROL"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaSessionService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/4 p0, 0x0

    return p0

    :cond_31
    :goto_31
    const/4 p0, 0x1

    return p0
.end method

.method public final hasStatusBarServicePermission(II)Z
    .registers 4

    .line 653
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final ignoreVoiceKey()Z
    .registers 2

    .line 3571
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->isDeviceProvisioned()Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "MediaSessionService"

    const-string v0, "don\'t call VoiceInteraction during setup-wizard"

    .line 3572
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final instantiateCustomDispatcher(Ljava/lang/String;)V
    .registers 8

    .line 914
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 915
    :try_start_4
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaKeyDispatcher:Lcom/android/server/media/MediaKeyDispatcher;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_39

    if-eqz p1, :cond_37

    .line 918
    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 919
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 920
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 921
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 922
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    aput-object v3, v2, v5

    .line 923
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaKeyDispatcher;

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaKeyDispatcher:Lcom/android/server/media/MediaKeyDispatcher;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catchall {:try_start_8 .. :try_end_2c} :catchall_39

    goto :goto_37

    :catch_2d
    move-exception p1

    .line 927
    :try_start_2e
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaKeyDispatcher:Lcom/android/server/media/MediaKeyDispatcher;

    const-string p0, "MediaSessionService"

    const-string v1, "Encountered problem while using reflection"

    .line 928
    invoke-static {p0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 930
    :cond_37
    :goto_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final instantiateCustomProvider(Ljava/lang/String;)V
    .registers 7

    .line 934
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 935
    :try_start_4
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_37

    if-eqz p1, :cond_35

    .line 938
    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 939
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 940
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 941
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 942
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    aput-object v2, v1, v4

    .line 943
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaSessionPolicyProvider;

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mCustomMediaSessionPolicyProvider:Lcom/android/server/media/MediaSessionPolicyProvider;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_2c} :catch_2d
    .catchall {:try_start_8 .. :try_end_2c} :catchall_37

    goto :goto_35

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "MediaSessionService"

    const-string v1, "Encountered problem while using reflection"

    .line 947
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    :cond_35
    :goto_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final isDeviceProvisioned()Z
    .registers 3

    .line 3567
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmContentResolver(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public final isGlobalPriorityActiveLocked()Z
    .registers 1

    .line 292
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isMediaButtonSessionUid(I)Z
    .registers 2

    .line 3518
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 3519
    invoke-interface {p0}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result p0

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isMultiSoundOn()Z
    .registers 2

    .line 3387
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mIsMultiSoundOn:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionService;->mIsAppCastingOn:Z

    if-eqz p0, :cond_9

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

.method public monitor()V
    .registers 2

    .line 456
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 458
    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final needVolumeKeyLongPressBroadCastLocked()Z
    .registers 3

    .line 3531
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 3532
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 3533
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3534
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3537
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_29

    :cond_27
    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V
    .registers 8

    .line 381
    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 384
    :cond_7
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_a
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 386
    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p2
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_36

    add-int/lit8 v1, v1, -0x1

    :goto_16
    if-ltz v1, :cond_2f

    .line 389
    :try_start_18
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 390
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/IRemoteSessionCallback;

    .line 391
    invoke-interface {v2, p2, p1}, Landroid/media/IRemoteSessionCallback;->onVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_24
    .catchall {:try_start_18 .. :try_end_23} :catchall_36

    goto :goto_2c

    :catch_24
    move-exception v2

    :try_start_25
    const-string v3, "MediaSessionService"

    const-string v4, "Error sending volume change."

    .line 393
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 396
    :cond_2f
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 397
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 4

    .line 269
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x226

    if-eq p1, v0, :cond_25

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_c

    goto :goto_2a

    .line 273
    :cond_c
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/MediaCommunicationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaCommunicationManager;

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mCommunicationManager:Landroid/media/MediaCommunicationManager;

    .line 274
    new-instance v0, Lcom/android/server/media/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-direct {v0, v1}, Lcom/android/server/media/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokenCallback:Landroid/media/MediaCommunicationManager$SessionCallback;

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaCommunicationManager;->registerSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaCommunicationManager$SessionCallback;)V

    goto :goto_2a

    .line 278
    :cond_25
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionDeviceConfig;->initialize(Landroid/content/Context;)V

    :goto_2a
    return-void
.end method

.method public onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 4

    .line 857
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 858
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    .line 859
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    .line 860
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionStack;->getMediaButtonSession()Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v1

    if-ne p1, v1, :cond_18

    .line 862
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 864
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

.method public onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 7

    .line 296
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    if-nez v1, :cond_16

    const-string p0, "MediaSessionService"

    const-string p1, "Unknown session updated. Ignoring."

    .line 299
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    monitor-exit v0

    return-void

    .line 302
    :cond_16
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isSystemPriority()Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "MediaSessionService"

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global priority session is updated, active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mpushAddressedPlayerChangedLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    goto :goto_54

    .line 308
    :cond_3a
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecordImpl;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string p0, "MediaSessionService"

    const-string p1, "Unknown session updated. Ignoring."

    .line 309
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    monitor-exit v0

    return-void

    .line 312
    :cond_4d
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 315
    :goto_54
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 316
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public onSessionDied(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 3

    .line 469
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 471
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V
    .registers 5

    .line 402
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 404
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecordImpl;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_21

    .line 408
    :cond_18
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionStack;->onPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V

    .line 409
    monitor-exit v0

    return-void

    :cond_21
    :goto_21
    const-string p0, "MediaSessionService"

    const-string p1, "Unknown session changed playback state. Ignoring."

    .line 405
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    .line 409
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 4

    .line 413
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 415
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecordImpl;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_21

    .line 419
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 420
    monitor-exit v0

    return-void

    :cond_21
    :goto_21
    const-string p0, "MediaSessionService"

    const-string p1, "Unknown session changed playback type. Ignoring."

    .line 416
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    .line 420
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public onStart()V
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    const-string/jumbo v1, "media_session"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 216
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 218
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 219
    new-instance v1, Lcom/android/server/media/MediaSessionService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaSessionService;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V

    .line 249
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z

    .line 252
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 254
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionService;->instantiateCustomProvider(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionService;->instantiateCustomDispatcher(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRecordThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.NOTIFICATION_LISTENER_ENABLED_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mNotificationListenerEnabledChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    const-class v0, Lcom/android/server/am/ActivityManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerLocal;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mActivityManagerLocal:Lcom/android/server/am/ActivityManagerLocal;

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 425
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 437
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 439
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_1f
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_22
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 443
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v2

    if-ne v2, p1, :cond_3d

    .line 444
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->destroySessionsForUserLocked(I)V

    .line 445
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_40

    .line 447
    :cond_3d
    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->destroySessionsForUserLocked(I)V

    .line 450
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 451
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_22 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 431
    sget-boolean p1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz p1, :cond_1b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSwitchUser: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSessionService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    return-void
.end method

.method public final pushRemoteVolumeUpdateLocked(I)V
    .registers 7

    .line 822
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string p0, "MediaSessionService"

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pushRemoteVolumeUpdateLocked failed. No user with id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 828
    :cond_1e
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 829
    :try_start_21
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 830
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionStack;->getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object p1

    .line 831
    instance-of v0, p1, Lcom/android/server/media/MediaSession2Record;

    if-eqz v0, :cond_35

    .line 833
    monitor-exit v1

    return-void

    :cond_35
    if-nez p1, :cond_39

    const/4 p1, 0x0

    goto :goto_3f

    .line 836
    :cond_39
    check-cast p1, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_61

    :goto_3f
    add-int/lit8 v2, v2, -0x1

    :goto_41
    if-ltz v2, :cond_5a

    .line 840
    :try_start_43
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 841
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/IRemoteSessionCallback;

    .line 842
    invoke-interface {v0, p1}, Landroid/media/IRemoteSessionCallback;->onSessionChanged(Landroid/media/session/MediaSession$Token;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4e} :catch_4f
    .catchall {:try_start_43 .. :try_end_4e} :catchall_61

    goto :goto_57

    :catch_4f
    move-exception v0

    :try_start_50
    const-string v3, "MediaSessionService"

    const-string v4, "Error sending default remote volume."

    .line 844
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_57
    add-int/lit8 v2, v2, -0x1

    goto :goto_41

    .line 847
    :cond_5a
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 848
    monitor-exit v1

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_50 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public final pushSession1Changed(I)V
    .registers 8

    .line 769
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    if-nez v1, :cond_22

    const-string p0, "MediaSessionService"

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushSession1ChangedOnHandler failed. No user with id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    monitor-exit v0

    return-void

    .line 775
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    move-result-object v1

    .line 776
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 777
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v2, :cond_4b

    .line 780
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p0, v5}, Lcom/android/server/media/MediaSessionService;->setMultiSoundFlag(Lcom/android/server/media/MediaSessionRecord;)V

    .line 782
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 784
    :cond_4b
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 785
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_56
    if-ltz v1, :cond_84

    .line 786
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 787
    iget v4, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-eq v4, v5, :cond_6e

    iget v4, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_86

    if-ne v4, p1, :cond_81

    .line 789
    :cond_6e
    :try_start_6e
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {v2, v3}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_73} :catch_74
    .catchall {:try_start_6e .. :try_end_73} :catchall_86

    goto :goto_81

    :catch_74
    move-exception v2

    :try_start_75
    const-string v4, "MediaSessionService"

    const-string v5, "Dead ActiveSessionsListener in pushSessionsChanged, removing"

    .line 791
    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_81
    :goto_81
    add-int/lit8 v1, v1, -0x1

    goto :goto_56

    .line 797
    :cond_84
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p0

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_75 .. :try_end_88} :catchall_86

    throw p0
.end method

.method public pushSession2Changed(I)V
    .registers 9

    .line 801
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_3
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    move-result-object v1

    .line 803
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    move-result-object v2

    .line 805
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_19
    if-ltz v3, :cond_4d

    .line 806
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_4f

    .line 808
    :try_start_23
    iget v5, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->userId:I

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-ne v5, v6, :cond_33

    .line 809
    iget-object v4, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v4, v1}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V

    goto :goto_4a

    .line 810
    :cond_33
    iget v5, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->userId:I

    if-ne v5, p1, :cond_4a

    .line 811
    iget-object v4, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v4, v2}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3c} :catch_3d
    .catchall {:try_start_23 .. :try_end_3c} :catchall_4f

    goto :goto_4a

    :catch_3d
    move-exception v4

    :try_start_3e
    const-string v5, "MediaSessionService"

    const-string v6, "Failed to notify Session2Token change. Removing listener."

    .line 814
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4a
    :goto_4a
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 818
    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 7

    .line 321
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 323
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v2, p1, :cond_44

    const-string v2, "MediaSessionService"

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global priority session is changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_44

    .line 327
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecordImpl;)Z

    move-result p0

    if-eqz p0, :cond_44

    .line 332
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 335
    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final setMultiSoundFlag(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 5

    .line 3391
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mIsMultiSoundOn:Z

    if-nez v0, :cond_5

    return-void

    .line 3395
    :cond_5
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioServiceInternal:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/audio/SemAudioServiceInternal;->getAppDevice(I)I

    move-result v0

    .line 3396
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x80

    if-nez v0, :cond_1c

    .line 3398
    iget p0, p0, Lcom/android/server/media/MediaSessionService;->mDevice:I

    if-eq p0, v2, :cond_1e

    :cond_1c
    if-ne v0, v2, :cond_22

    :cond_1e
    const/high16 p0, 0x20000000

    or-int/2addr p0, v1

    goto :goto_26

    :cond_22
    const p0, -0x20000001

    and-int/2addr p0, v1

    .line 3406
    :goto_26
    :try_start_26
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/media/session/ISession;->setFlags(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_36

    :catch_2e
    move-exception p0

    const-string p1, "MediaSessionService"

    const-string v0, "Error setFlags"

    .line 3408
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    return-void
.end method

.method public final setupCustomRoutine()V
    .registers 3

    .line 3548
    const-class v0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    new-instance v1, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;-><init>(Lcom/android/server/media/MediaSessionService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3551
    const-class v0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioServiceInternal:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 3555
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/media/MediaSessionService;->mSystemServerPid:I

    return-void
.end method

.method public tempAllowlistTargetPkgIfPossible(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 598
    :try_start_4
    invoke-virtual {p0, p5, p4}, Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V

    if-eq p1, p4, :cond_86

    .line 600
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mActivityManagerLocal:Lcom/android/server/am/ActivityManagerLocal;

    .line 601
    invoke-interface {v2, p3, p4, p5}, Lcom/android/server/am/ActivityManagerLocal;->canAllowWhileInUsePermissionInFgs(IILjava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    .line 602
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mActivityManagerLocal:Lcom/android/server/am/ActivityManagerLocal;

    .line 603
    invoke-interface {v4, p3, p4, p5}, Lcom/android/server/am/ActivityManagerLocal;->canStartForegroundService(IILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1b

    goto :goto_1d

    :cond_1b
    move p3, v3

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p3, 0x1

    :goto_1e
    const-string p4, "MediaSessionService"

    .line 605
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tempAllowlistTargetPkgIfPossible callingPackage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " targetPackage:"

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " reason:"

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_8a

    const-string p5, ""

    if-eqz v2, :cond_45

    :try_start_42
    const-string v5, " [WIU]"

    goto :goto_46

    :cond_45
    move-object v5, p5

    .line 608
    :goto_46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4d

    const-string p5, " [FGS]"

    .line 609
    :cond_4d
    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 605
    invoke-static {p4, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_62

    .line 611
    iget-object p4, p0, Lcom/android/server/media/MediaSessionService;->mActivityManagerLocal:Lcom/android/server/am/ActivityManagerLocal;

    .line 613
    invoke-static {}, Lcom/android/server/media/MediaSessionDeviceConfig;->getMediaSessionCallbackFgsWhileInUseTempAllowDurationMs()J

    move-result-wide v4

    .line 611
    invoke-interface {p4, p1, v4, v5}, Lcom/android/server/am/ActivityManagerLocal;->tempAllowWhileInUsePermissionInFgs(IJ)V

    :cond_62
    if-eqz p3, :cond_86

    .line 616
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 617
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 616
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 618
    const-class p1, Landroid/os/PowerExemptionManager;

    .line 619
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/os/PowerExemptionManager;

    const/16 v4, 0x13d

    .line 623
    invoke-static {}, Lcom/android/server/media/MediaSessionDeviceConfig;->getMediaSessionCallbackFgsAllowlistDurationMs()J

    move-result-wide v6

    move-object v3, p2

    move-object v5, p6

    .line 621
    invoke-virtual/range {v2 .. v7}, Landroid/os/PowerExemptionManager;->addToTemporaryAllowList(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_86
    .catchall {:try_start_42 .. :try_end_86} :catchall_8a

    .line 627
    :cond_86
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_8a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    throw p0
.end method

.method public final updateActiveSessionListeners()V
    .registers 8

    .line 506
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_58

    .line 508
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_5a

    .line 510
    :try_start_15
    iget-object v3, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->componentName:Landroid/content/ComponentName;

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_1f

    .line 511
    :cond_1b
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 512
    :goto_1f
    iget v4, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->pid:I

    iget v5, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->uid:I

    iget v6, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Ljava/lang/String;III)V
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_28} :catch_29
    .catchall {:try_start_15 .. :try_end_28} :catchall_5a

    goto :goto_55

    :catch_29
    :try_start_29
    const-string v3, "MediaSessionService"

    .line 515
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActiveSessionsListener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is no longer authorized. Disconnecting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_29 .. :try_end_4b} :catchall_5a

    .line 519
    :try_start_4b
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 520
    invoke-interface {v2, v3}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_55} :catch_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_5a

    :catch_55
    :goto_55
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 526
    :cond_58
    :try_start_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public final updateUser()V
    .registers 8

    .line 475
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 477
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    const/4 v2, 0x0

    .line 478
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 480
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 481
    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 483
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1e

    .line 485
    :cond_3e
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 486
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1e

    .line 487
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    new-instance v6, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 488
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {v6, p0, v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    .line 487
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1e

    .line 494
    :cond_6a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 495
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iput-object v2, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    if-nez v2, :cond_9c

    const-string v2, "MediaSessionService"

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find FullUserInfo for the current user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-direct {v2, p0, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    iput-object v2, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 499
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 501
    :cond_9c
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 502
    monitor-exit v0

    return-void

    :catchall_a3
    move-exception p0

    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_3 .. :try_end_a5} :catchall_a3

    throw p0
.end method

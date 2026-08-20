.class public Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field public static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc


# instance fields
.field public final mEventLogger:Lcom/android/server/audio/AudioEventLogger;

.field public final mKeyCustomizerRunnable:Ljava/lang/Runnable;

.field public mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field public mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

.field public mSkippedFirstKeyFromKeyCustomizer:Z

.field public mVolumeKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

.field public mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public static synthetic $r8$lambda$5eCEohQF0RNmrME34aeHT6WNRAE(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaKeyEventHandler(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdispatchAdjustVolumeLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V
    .registers 10

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchMediaKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchVolumeKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstartVoiceInput(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startVoiceInput(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 4

    .line 1246
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 1251
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 1253
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 2732
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 3173
    new-instance p1, Lcom/android/server/audio/AudioEventLogger;

    const/16 v0, 0x50

    const-string v1, "MediaSession events"

    invoke-direct {p1, v0, v1}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 3282
    new-instance p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyCustomizerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x0

    .line 3282
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSkippedFirstKeyFromKeyCustomizer:Z

    return-void
.end method


# virtual methods
.method public addOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    .registers 9

    if-nez p1, :cond_a

    const-string p0, "MediaSessionService"

    const-string p1, "addOnMediaKeyEventDispatchedListener: listener is null, ignoring"

    .line 1631
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1634
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1635
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1636
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1639
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mhasMediaControlPermission(Lcom/android/server/media/MediaSessionService;II)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1643
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_92

    .line 1644
    :try_start_2d
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    if-eqz v5, :cond_6c

    .line 1645
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    if-eq v6, v2, :cond_3c

    goto :goto_6c

    .line 1650
    :cond_3c
    invoke-virtual {v5, p1, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->addOnMediaKeyEventDispatchedListenerLocked(Landroid/media/session/IOnMediaKeyEventDispatchedListener;I)V

    const-string v2, "MediaSessionService"

    .line 1651
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The MediaKeyEventDispatchedListener ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is added by "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1652
    invoke-static {p0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1651
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_2d .. :try_end_68} :catchall_87

    .line 1655
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6c
    :goto_6c
    :try_start_6c
    const-string p0, "MediaSessionService"

    .line 1646
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only the full user can add the listener, userId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_6c .. :try_end_83} :catchall_87

    .line 1655
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_87
    move-exception p0

    .line 1653
    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    :try_start_89
    throw p0

    .line 1640
    :cond_8a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MEDIA_CONTENT_CONTROL permission is required to  add MediaKeyEventDispatchedListener"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_92

    :catchall_92
    move-exception p0

    .line 1655
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1656
    throw p0
.end method

.method public addOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;Ljava/lang/String;)V
    .registers 9

    if-nez p1, :cond_a

    const-string p0, "MediaSessionService"

    const-string p1, "addOnMediaKeyEventSessionChangedListener: listener is null, ignoring"

    .line 1696
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1700
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1701
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1702
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1703
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1706
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, p2, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforcePackageName(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1707
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, p2, v0, v1, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V

    .line 1709
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_86

    .line 1710
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    if-eqz p0, :cond_68

    .line 1711
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v5

    if-eq v5, v2, :cond_3e

    goto :goto_68

    .line 1716
    :cond_3e
    invoke-virtual {p0, p1, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->addOnMediaKeyEventSessionChangedListenerLocked(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;I)V

    const-string p0, "MediaSessionService"

    .line 1717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The MediaKeyEventSessionChangedListener ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is added by "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_2f .. :try_end_64} :catchall_83

    .line 1721
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_68
    :goto_68
    :try_start_68
    const-string p0, "MediaSessionService"

    .line 1712
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Only the full user can add the listener, userId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_68 .. :try_end_7f} :catchall_83

    .line 1721
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_83
    move-exception p0

    .line 1719
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    :try_start_85
    throw p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    :catchall_86
    move-exception p0

    .line 1721
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1722
    throw p0
.end method

.method public addSession2TokensListener(Landroid/media/session/ISession2TokensListener;I)V
    .registers 8

    if-nez p1, :cond_a

    const-string p0, "MediaSessionService"

    const-string p1, "addSession2TokensListener: listener is null, ignoring"

    .line 1439
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1442
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1443
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1444
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 1448
    :try_start_17
    invoke-virtual {p0, v0, v1, p2, v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p2

    .line 1449
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_4e

    .line 1450
    :try_start_22
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSession2TokensListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    move-result v1

    if-ltz v1, :cond_36

    const-string p0, "MediaSessionService"

    const-string p1, "addSession2TokensListener: listener is already added, ignoring"

    .line 1452
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_4b

    .line 1460
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1456
    :cond_36
    :try_start_36
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSession2TokensListenerRecords(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1458
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_4b

    .line 1460
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4b
    move-exception p0

    .line 1458
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p0

    .line 1460
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1461
    throw p0
.end method

.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_a

    const-string p0, "MediaSessionService"

    const-string p1, "addSessionsListener: listener is null, ignoring"

    .line 1389
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1392
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1393
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1394
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1397
    :try_start_16
    invoke-virtual {p0, p2, p3, v5, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 1398
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_66

    .line 1399
    :try_start_21
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSessionsListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_36

    const-string p0, "MediaSessionService"

    const-string p1, "ActiveSessionsListener is already added, ignoring"

    .line 1401
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    monitor-exit p3
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_63

    .line 1415
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1404
    :cond_36
    :try_start_36
    new-instance v9, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_63

    .line 1407
    :try_start_40
    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, v9, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_48} :catch_56
    .catchall {:try_start_40 .. :try_end_48} :catchall_63

    .line 1412
    :try_start_48
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSessionsListeners(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    monitor-exit p3
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_63

    .line 1415
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_56
    move-exception p0

    :try_start_57
    const-string p1, "MediaSessionService"

    const-string p2, "ActiveSessionsListener is dead, ignoring it"

    .line 1409
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1410
    monitor-exit p3
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_63

    .line 1415
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_63
    move-exception p0

    .line 1413
    :try_start_64
    monitor-exit p3
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p0

    .line 1415
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1416
    throw p0
.end method

.method public final adjustVolumeForRotation(I)I
    .registers 4

    .line 2122
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 2123
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getVolumeButtonRotationState()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2124
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_45

    .line 2126
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2127
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_3e

    const/4 p0, 0x1

    if-eq v0, p0, :cond_43

    if-ne v0, v1, :cond_45

    goto :goto_43

    :cond_3e
    if-eq v0, v1, :cond_43

    const/4 p0, 0x3

    if-ne v0, p0, :cond_45

    :cond_43
    :goto_43
    mul-int/lit8 p1, p1, -0x1

    :cond_45
    return p1
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/session/ISession;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1273
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1277
    :try_start_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforcePackageName(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1278
    invoke-virtual {p0, v1, v2, p5, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v3

    if-eqz p2, :cond_3d

    .line 1282
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mcreateSessionInternal(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_47
    .catchall {:try_start_c .. :try_end_27} :catchall_45

    if-eqz p0, :cond_2d

    .line 1296
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1289
    :cond_2d
    :try_start_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid session record"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1285
    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to create a new session record"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1280
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Controller callback cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_45} :catch_47
    .catchall {:try_start_2d .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p0

    goto :goto_50

    :catch_47
    move-exception p0

    :try_start_48
    const-string p1, "MediaSessionService"

    const-string p2, "Exception in creating a new session"

    .line 1293
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    throw p0
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_45

    .line 1296
    :goto_50
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1297
    throw p0
.end method

.method public dispatchAdjustVolume(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 20

    .line 2146
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2147
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    move-object v0, p0

    .line 2150
    :try_start_d
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_2b

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 2151
    :try_start_20
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    .line 2153
    monitor-exit v13
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_28

    .line 2155
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_28
    move-exception v0

    .line 2153
    :try_start_29
    monitor-exit v13
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    .line 2155
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2156
    throw v0
.end method

.method public final dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V
    .registers 23

    move-object v1, p0

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 2402
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    goto :goto_24

    .line 2403
    :cond_16
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0

    .line 2406
    :goto_24
    invoke-virtual {p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    .line 2407
    invoke-static {v6, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    goto :goto_34

    :cond_33
    move v2, v3

    :goto_34
    if-eqz v0, :cond_43

    .line 2411
    invoke-interface {v0}, Lcom/android/server/media/MediaSessionRecordImpl;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.audiomirroring"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    move v2, v3

    :cond_43
    const-string v4, ", preferSuggestedStream="

    const-string v5, ". flags="

    const-string v9, " by "

    const-string v10, "MediaSessionService"

    if-eqz v0, :cond_91

    if-eqz v2, :cond_50

    goto :goto_91

    .line 2466
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", suggestedStream="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move v8, v9

    .line 2470
    invoke-interface/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecordImpl;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V

    goto/16 :goto_105

    .line 2416
    :cond_91
    :goto_91
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adjusting suggestedStream="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", session="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p9, :cond_e7

    const/4 v0, 0x3

    .line 2420
    invoke-static {v0, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 2422
    invoke-static {v3, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_e7

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_HOME_IOT:Z

    if-nez v0, :cond_e7

    .line 2426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nothing is playing on the music stream. Skipping volume event, flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2437
    :cond_e7
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v10

    new-instance v11, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p5

    move-object v3, p2

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;ZLjava/lang/String;IIIIILjava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_105
    return-void
.end method

.method public dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    if-eqz v12, :cond_1b7

    .line 1510
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_1b7

    .line 1515
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 1516
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 1517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1519
    :try_start_22
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v1, :cond_af

    const-string v1, "MediaSessionService"

    .line 1520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchMediaKeyEvent, pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", asSystem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaKeyEvt,pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",asSystem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",act:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1525
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1532
    :cond_af
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_c0

    const-string v0, "MediaSessionService"

    const-string v1, "Not dispatching media key event because user setup is in progress."

    .line 1535
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_22 .. :try_end_bc} :catchall_1b2

    .line 1586
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1540
    :cond_c0
    :try_start_c0
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mignoreVoiceKey(Lcom/android/server/media/MediaSessionService;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const-string v0, "MediaSessionService"

    const-string v1, "dispatchMediaKeyEvent: voice key is ignored"

    .line 1541
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catchall {:try_start_c0 .. :try_end_cf} :catchall_1b2

    .line 1586
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1545
    :cond_d3
    :try_start_d3
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_1b2

    .line 1546
    :try_start_da
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result v18

    if-eqz v18, :cond_f2

    const/16 v1, 0x3e8

    if-eq v14, v1, :cond_f2

    const-string v0, "MediaSessionService"

    const-string v1, "Only the system can dispatch media key event to the global priority session."

    .line 1550
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    monitor-exit v17
    :try_end_ee
    .catchall {:try_start_da .. :try_end_ee} :catchall_1af

    .line 1586
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_f2
    if-nez v18, :cond_160

    .line 1555
    :try_start_f4
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v1

    if-eqz v1, :cond_160

    const-string v1, "MediaSessionService"

    .line 1557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to the media key listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catchall {:try_start_f4 .. :try_end_11b} :catchall_1af

    .line 1560
    :try_start_11b
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v9

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;

    const/16 v19, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v13

    move v5, v14

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object v10, v8

    move/from16 v8, p4

    move-object v11, v9

    move-object/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver-IA;)V

    invoke-interface {v11, v12, v10}, Landroid/media/session/IOnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    :try_end_140
    .catch Landroid/os/RemoteException; {:try_start_11b .. :try_end_140} :catch_145
    .catchall {:try_start_11b .. :try_end_140} :catchall_1af

    .line 1563
    :try_start_140
    monitor-exit v17
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_1af

    .line 1586
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_145
    :try_start_145
    const-string v1, "MediaSessionService"

    .line 1565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to the media key listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_160
    if-eqz v18, :cond_172

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 1571
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    goto :goto_1aa

    .line 1574
    :cond_172
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1575
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misMultiSoundOn(Lcom/android/server/media/MediaSessionService;)Z

    move-result v1

    if-eqz v1, :cond_19c

    const/16 v1, 0x3ea

    if-ne v14, v1, :cond_19c

    const-string v1, "MediaSessionService"

    .line 1577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchMediaKeyEvent called by BT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x20000000

    .line 1579
    invoke-static {v12, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    move-object v5, v1

    goto :goto_19d

    :cond_19c
    move-object v5, v12

    .line 1581
    :goto_19d
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mMediaKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move/from16 v4, p2

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1584
    :goto_1aa
    monitor-exit v17
    :try_end_1ab
    .catchall {:try_start_145 .. :try_end_1ab} :catchall_1af

    .line 1586
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1af
    move-exception v0

    .line 1584
    :try_start_1b0
    monitor-exit v17
    :try_end_1b1
    .catchall {:try_start_1b0 .. :try_end_1b1} :catchall_1af

    :try_start_1b1
    throw v0
    :try_end_1b2
    .catchall {:try_start_1b1 .. :try_end_1b2} :catchall_1b2

    :catchall_1b2
    move-exception v0

    .line 1586
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1587
    throw v0

    :cond_1b7
    :goto_1b7
    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-media key event."

    .line 1511
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v1, p5

    .line 2477
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/media/MediaSession2Record;

    if-eqz v2, :cond_17

    return-void

    .line 2485
    :cond_17
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_55

    .line 2486
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/media/MediaKeyDispatcher;->getMediaSession(Landroid/view/KeyEvent;IZ)Landroid/media/session/MediaSession$Token;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2489
    iget-object v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    goto :goto_34

    :cond_33
    move-object v2, v3

    :goto_34
    if-nez v2, :cond_53

    .line 2493
    iget-object v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v6

    invoke-virtual {v6, v1, v4, v5}, Lcom/android/server/media/MediaKeyDispatcher;->getMediaButtonReceiver(Landroid/view/KeyEvent;IZ)Landroid/app/PendingIntent;

    move-result-object v6

    if-eqz v6, :cond_53

    .line 2496
    iget-object v7, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    const-string v8, ""

    .line 2497
    invoke-static {v7, v6, v8}, Lcom/android/server/media/MediaButtonReceiverHolder;->create(ILandroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object v6

    goto :goto_57

    :cond_53
    move-object v6, v3

    goto :goto_57

    :cond_55
    move-object v2, v3

    move-object v6, v2

    :goto_57
    const/4 v7, 0x0

    if-nez v2, :cond_8e

    if-nez v6, :cond_8e

    .line 2504
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord;

    .line 2506
    iget-object v8, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v8}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misMultiSoundOn(Lcom/android/server/media/MediaSessionService;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 2507
    iget-object v8, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v8, v1, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMultiSoundSessionLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    .line 2508
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    const/high16 v9, 0x20000000

    if-ne v8, v9, :cond_82

    .line 2510
    invoke-static {v1, v7}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    :cond_82
    if-nez v2, :cond_8e

    .line 2515
    iget-object v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmLastMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object v6

    :cond_8e
    move-object v15, v1

    move-object v9, v2

    if-nez v6, :cond_9c

    .line 2521
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmLastMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object v6

    :cond_9c
    const/4 v1, -0x1

    const-string v2, "Sending "

    const-string v14, "MediaSessionService"

    if-eqz v9, :cond_14b

    .line 2527
    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v8

    if-nez v8, :cond_b1

    iget-object v8, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v8}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHighPriorityMediaKeyReceiver(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_14b

    .line 2530
    :cond_b1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 2534
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 2535
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v6

    const-string v7, "MediaKeyEvent"

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_f8
    if-eqz p6, :cond_ff

    .line 2541
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->acquireWakeLockLocked()V

    :cond_ff
    if-eqz p6, :cond_107

    .line 2545
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-$$Nest$fgetmLastTimeoutId(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v1

    :cond_107
    move v7, v1

    iget-object v8, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    move-object v1, v9

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v15

    .line 2544
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    .line 2549
    :try_start_117
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyEventDispatchedListeners(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_129
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_268

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 2550
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    .line 2551
    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 2550
    invoke-interface {v1, v15, v2, v3}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->onMediaKeyEventDispatched(Landroid/view/KeyEvent;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    :try_end_142
    .catch Landroid/os/RemoteException; {:try_start_117 .. :try_end_142} :catch_143

    goto :goto_129

    :catch_143
    move-exception v0

    const-string v1, "Failed to send callback"

    .line 2554
    invoke-static {v14, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_268

    :cond_14b
    if-nez v6, :cond_155

    .line 2556
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHighPriorityMediaKeyReceiver(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_268

    :cond_155
    if-eqz p6, :cond_15c

    .line 2561
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->acquireWakeLockLocked()V

    :cond_15c
    if-eqz v5, :cond_16a

    .line 2564
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_16c

    :cond_16a
    move-object/from16 v11, p1

    .line 2566
    :goto_16c
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHighPriorityMediaKeyReceiver(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1e8

    .line 2568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to soundassistant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHighPriorityMediaKeyReceiver(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2569
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2568
    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 2572
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.KEY_EVENT"

    .line 2573
    invoke-virtual {v1, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    .line 2574
    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2575
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHighPriorityMediaKeyReceiver(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2576
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 2577
    invoke-static {}, Lcom/android/server/media/MediaSessionDeviceConfig;->getMediaButtonReceiverFgsAllowlistDurationMs()J

    move-result-wide v7

    const/4 v4, 0x0

    const/16 v9, 0x139

    const-string v10, ""

    move-object/from16 p1, v2

    move-wide/from16 p2, v7

    move/from16 p4, v4

    move/from16 p5, v9

    move-object/from16 p6, v10

    invoke-virtual/range {p1 .. p6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 2580
    invoke-virtual {v2, v5}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 2582
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v4, v1, v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    move v7, v5

    goto :goto_210

    :cond_1e8
    if-eqz v6, :cond_210

    .line 2586
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v9

    if-eqz p6, :cond_1f8

    .line 2588
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->-$$Nest$fgetmLastTimeoutId(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v1

    :cond_1f8
    move v12, v1

    iget-object v13, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    .line 2590
    invoke-static {}, Lcom/android/server/media/MediaSessionDeviceConfig;->getMediaButtonReceiverFgsAllowlistDurationMs()J

    move-result-wide v4

    move-object v8, v6

    move-object v10, v15

    move-object v2, v14

    move-object v14, v1

    move-object v1, v15

    move-wide v15, v4

    .line 2586
    invoke-virtual/range {v8 .. v16}, Lcom/android/server/media/MediaButtonReceiverHolder;->send(Landroid/content/Context;Landroid/view/KeyEvent;Ljava/lang/String;ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;J)Z

    move-result v7

    goto :goto_212

    :cond_210
    :goto_210
    move-object v2, v14

    move-object v1, v15

    :goto_212
    if-eqz v7, :cond_268

    .line 2597
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHighPriorityMediaKeyReceiver(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_227

    .line 2598
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHighPriorityMediaKeyReceiver(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_22b

    .line 2600
    :cond_227
    invoke-virtual {v6}, Lcom/android/server/media/MediaButtonReceiverHolder;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2603
    :goto_22b
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyEventDispatchedListeners(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Ljava/util/HashMap;

    move-result-object v0

    .line 2604
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2603
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_268

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 2606
    :try_start_24a
    iget-object v0, v6, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    invoke-interface {v0, v1, v4, v3}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->onMediaKeyEventDispatched(Landroid/view/KeyEvent;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    :try_end_24f
    .catch Landroid/os/RemoteException; {:try_start_24a .. :try_end_24f} :catch_250

    goto :goto_23d

    :catch_250
    move-exception v0

    .line 2608
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed notify key event dispatch, uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->uid:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23d

    :cond_268
    :goto_268
    return-void
.end method

.method public dispatchMediaKeyEventToSessionAsSystemService(Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z
    .registers 15

    .line 1604
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1605
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1606
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1608
    :try_start_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_77

    .line 1609
    :try_start_13
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    const-string p0, "MediaSessionService"

    .line 1611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEventToSessionAsSystemService, pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sessionToken="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", event="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", session="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_66

    const-string p0, "MediaSessionService"

    const-string p1, "Failed to find session to dispatch key event."

    .line 1616
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1617
    monitor-exit v10
    :try_end_62
    .catchall {:try_start_13 .. :try_end_62} :catchall_74

    .line 1623
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_66
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v5, p2

    .line 1619
    :try_start_6b
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-result p0

    monitor-exit v10
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_74

    .line 1623
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_74
    move-exception p0

    .line 1621
    :try_start_75
    monitor-exit v10
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    :try_start_76
    throw p0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception p0

    .line 1623
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1624
    throw p0
.end method

.method public dispatchVolumeKeyEvent(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V
    .registers 22

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    if-eqz v8, :cond_135

    .line 1900
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0x18

    if-eq v1, v3, :cond_29

    .line 1901
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0x19

    if-eq v1, v3, :cond_29

    .line 1902
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0xa4

    if-eq v1, v3, :cond_29

    goto/16 :goto_135

    .line 1908
    :cond_29
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->needSkipKeyEventFromKeyCustomizer(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)Z

    move-result v1

    if-eqz v1, :cond_30

    return-void

    .line 1913
    :cond_30
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1914
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1915
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    const-string v1, "MediaSessionService"

    .line 1918
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dispatchVolumeKeyEvent, pkg="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", opPkg="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", pid="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", uid="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", asSystem="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", event="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", stream="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", musicOnly="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VolKeyEvt, pkg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",opPkg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",asSystem="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ",code="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    invoke-static {v14}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",act:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getAction()I

    move-result v14

    invoke-static {v14}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",stream="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",musicOnly="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1935
    :try_start_f5
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_fc
    .catchall {:try_start_f5 .. :try_end_fc} :catchall_130

    .line 1936
    :try_start_fc
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result v1

    if-eqz v1, :cond_115

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 1937
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_128

    .line 1942
    :cond_115
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyEventHandler:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Ljava/lang/String;IZ)V

    .line 1945
    :goto_128
    monitor-exit v13
    :try_end_129
    .catchall {:try_start_fc .. :try_end_129} :catchall_12d

    .line 1947
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12d
    move-exception v0

    .line 1945
    :try_start_12e
    monitor-exit v13
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    :try_start_12f
    throw v0
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_130

    :catchall_130
    move-exception v0

    .line 1947
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1948
    throw v0

    :cond_135
    :goto_135
    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-volume key event."

    .line 1903
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V
    .registers 21

    move-object v8, p0

    .line 1954
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v1

    .line 1955
    :goto_c
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, v1

    .line 1958
    :goto_15
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x18

    const/4 v6, -0x1

    if-eq v4, v5, :cond_2f

    const/16 v5, 0x19

    if-eq v4, v5, :cond_2c

    const/16 v5, 0xa4

    if-eq v4, v5, :cond_29

    move v4, v1

    move v5, v4

    goto :goto_31

    :cond_29
    move v4, v1

    move v5, v2

    goto :goto_31

    :cond_2c
    move v5, v1

    move v4, v6

    goto :goto_31

    :cond_2f
    move v5, v1

    move v4, v2

    :goto_31
    if-nez v0, :cond_35

    if-eqz v3, :cond_fb

    .line 1973
    :cond_35
    sget-boolean v7, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_HOME_IOT:Z

    if-eqz v7, :cond_3b

    move v9, v1

    goto :goto_6b

    .line 1975
    :cond_3b
    iget-object v7, v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v7

    if-eqz v7, :cond_69

    iget-object v7, v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v7

    .line 1976
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_69

    iget-object v7, v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v7

    .line 1977
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v7

    if-eqz v7, :cond_69

    iget-object v7, v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCoverHelper(Lcom/android/server/media/MediaSessionService;)Lcom/samsung/android/server/audio/CoverHelper;

    move-result-object v7

    .line 1978
    invoke-virtual {v7}, Lcom/samsung/android/server/audio/CoverHelper;->isCoverOpen()Z

    move-result v7

    if-eqz v7, :cond_69

    move v9, v2

    goto :goto_6b

    :cond_69
    move/from16 v9, p8

    :goto_6b
    if-eqz v9, :cond_70

    const/16 v7, 0x1200

    goto :goto_72

    :cond_70
    const/16 v7, 0x1000

    :goto_72
    if-nez v9, :cond_87

    .line 1985
    sget-boolean v10, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_HOME_IOT:Z

    if-eqz v10, :cond_80

    if-eqz v3, :cond_7d

    or-int/lit8 v7, v7, 0x10

    goto :goto_87

    :cond_7d
    or-int/lit8 v7, v7, 0x15

    goto :goto_87

    :cond_80
    if-eqz v3, :cond_85

    or-int/lit8 v7, v7, 0x14

    goto :goto_87

    :cond_85
    or-int/lit8 v7, v7, 0x11

    :cond_87
    :goto_87
    move v10, v7

    if-eqz v4, :cond_e1

    if-eqz v3, :cond_8d

    move v4, v1

    :cond_8d
    if-eq v4, v6, :cond_91

    if-ne v4, v2, :cond_b3

    :cond_91
    and-int/lit16 v3, v10, 0x1000

    if-eqz v3, :cond_b3

    .line 2010
    invoke-virtual {p0, v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->adjustVolumeForRotation(I)I

    move-result v3

    if-eq v3, v4, :cond_b3

    .line 2012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustVolumeForRotation() dir changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaSessionService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v3

    goto :goto_b4

    :cond_b3
    move v11, v4

    .line 2018
    :goto_b4
    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_HOME_IOT:Z

    if-eqz v3, :cond_bf

    .line 2019
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-eqz v3, :cond_bf

    return-void

    :cond_bf
    if-eqz v0, :cond_c9

    .line 2024
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_c9

    move v7, v2

    goto :goto_ca

    :cond_c9
    move v7, v1

    :goto_ca
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p7

    move v5, v11

    move v6, v10

    .line 2023
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVolumeKeyLongPressLocked(Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move v7, v11

    move v8, v10

    .line 2027
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    goto :goto_fb

    :cond_e1
    if-eqz v5, :cond_fb

    if-eqz v0, :cond_fb

    .line 2030
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_fb

    const/16 v7, 0x65

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move v8, v10

    .line 2031
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    :cond_fb
    :goto_fb
    return-void
.end method

.method public dispatchVolumeKeyEventToSessionAsSystemService(Ljava/lang/String;Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p4

    .line 2054
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2055
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2058
    :try_start_f
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_fb

    .line 2059
    :try_start_16
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    const-string v3, "MediaSessionService"

    .line 2061
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchVolumeKeyEventToSessionAsSystemService, pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", opPkg="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", pid="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", uid="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", sessionToken="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", event="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", session="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_9a

    const-string v2, "MediaSessionService"

    .line 2067
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find session to dispatch key event, token="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Fallbacks to the default handling."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    const/high16 v13, -0x80000000

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    move v8, v13

    move v9, v14

    .line 2069
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 2071
    monitor-exit v12
    :try_end_96
    .catchall {:try_start_16 .. :try_end_96} :catchall_f8

    .line 2113
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2073
    :cond_9a
    :try_start_9a
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_c1

    if-eq v1, v3, :cond_a5

    goto/16 :goto_f3

    .line 2104
    :cond_a5
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_HOME_IOT:Z

    if-eqz v0, :cond_ac

    const/16 v0, 0x1010

    goto :goto_ae

    :cond_ac
    const/16 v0, 0x1014

    :goto_ae
    move v9, v0

    const/4 v6, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v13

    move v7, v9

    move v8, v14

    .line 2107
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V

    goto :goto_f3

    :cond_c1
    const/4 v1, 0x0

    .line 2076
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v9, 0x18

    if-eq v6, v9, :cond_d8

    const/16 v9, 0x19

    if-eq v6, v9, :cond_d6

    const/16 v9, 0xa4

    if-eq v6, v9, :cond_d3

    goto :goto_d9

    :cond_d3
    const/16 v1, 0x65

    goto :goto_d9

    :cond_d6
    const/4 v1, -0x1

    goto :goto_d9

    :cond_d8
    move v1, v3

    .line 2088
    :goto_d9
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->adjustVolumeForRotation(I)I

    move-result v6

    .line 2091
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_HOME_IOT:Z

    if-eqz v0, :cond_e2

    const/4 v3, 0x5

    :cond_e2
    or-int/lit16 v9, v3, 0x1000

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v0, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v4

    move v4, v5

    move v5, v13

    move v7, v9

    move v8, v14

    .line 2097
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V

    .line 2111
    :goto_f3
    monitor-exit v12
    :try_end_f4
    .catchall {:try_start_9a .. :try_end_f4} :catchall_f8

    .line 2113
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f8
    move-exception v0

    .line 2111
    :try_start_f9
    monitor-exit v12
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    :try_start_fa
    throw v0
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_fb

    :catchall_fb
    move-exception v0

    .line 2113
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2114
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 2208
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "MediaSessionService"

    invoke-static {p1, p3, p2}, Lcom/android/server/media/MediaServerUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    const-string p1, "MEDIA SESSION SERVICE (dumpsys media_session)"

    .line 2210
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2213
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2214
    :try_start_1e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSessionsListeners(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessions listeners."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2215
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Global priority session is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2216
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p3

    if-eqz p3, :cond_69

    .line 2217
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p3

    const-string v0, "  "

    invoke-virtual {p3, p2, v0}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_69
    const-string p3, "User Records:"

    .line 2219
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2220
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_79
    if-ge v0, p3, :cond_8f

    .line 2222
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    const-string v2, ""

    invoke-virtual {v1, p2, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 2225
    :cond_8f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isAppCastingOn:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-boolean v0, v0, Lcom/android/server/media/MediaSessionService;->mIsAppCastingOn:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isMultiSoundOn:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmIsMultiSoundOn(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2229
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {p3, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 2231
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmAudioPlayerStateMonitor(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p3, p0, p2, v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->dump(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2232
    monitor-exit p1
    :try_end_da
    .catchall {:try_start_1e .. :try_end_da} :catchall_e0

    const-string p0, ""

    .line 2233
    invoke-static {p2, p0}, Lcom/android/server/media/MediaSessionDeviceConfig;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :catchall_e0
    move-exception p0

    .line 2232
    :try_start_e1
    monitor-exit p1
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    throw p0
.end method

.method public getMediaKeyEventSession(Ljava/lang/String;)Landroid/media/session/MediaSession$Token;
    .registers 8

    .line 1323
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1324
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1325
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1326
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1329
    :try_start_14
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, p1, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforcePackageName(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1330
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, p1, v0, v1, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V

    .line 1333
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_63

    .line 1334
    :try_start_25
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_49

    const-string p0, "MediaSessionService"

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No matching user record to get the media key event session, userId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    monitor-exit p1
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_60

    .line 1348
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 1340
    :cond_49
    :try_start_49
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object p0

    .line 1341
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_60

    .line 1342
    :try_start_4e
    instance-of p1, p0, Lcom/android/server/media/MediaSessionRecord;

    if-eqz p1, :cond_5c

    .line 1343
    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_63

    .line 1348
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_5c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_60
    move-exception p0

    .line 1341
    :try_start_61
    monitor-exit p1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    :try_start_62
    throw p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    .line 1348
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    throw p0
.end method

.method public getMediaKeyEventSessionPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1354
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1356
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1357
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1360
    :try_start_14
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, p1, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforcePackageName(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1361
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, p1, v0, v1, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V

    .line 1364
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_78

    .line 1365
    :try_start_25
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    if-nez p0, :cond_4a

    const-string p0, "MediaSessionService"

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No matching user record to get the media key event session package , userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    .line 1369
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_25 .. :try_end_46} :catchall_75

    .line 1381
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1371
    :cond_4a
    :try_start_4a
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0

    .line 1372
    instance-of v1, v0, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_5b

    .line 1373
    invoke-interface {v0}, Lcom/android/server/media/MediaSessionRecordImpl;->getPackageName()Ljava/lang/String;

    move-result-object p0

    monitor-exit p1
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_75

    .line 1381
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1375
    :cond_5b
    :try_start_5b
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmLastMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 1376
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmLastMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/media/MediaButtonReceiverHolder;->getPackageName()Ljava/lang/String;

    move-result-object p0

    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_75

    .line 1381
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1378
    :cond_6e
    :try_start_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_75

    :try_start_6f
    const-string p0, ""
    :try_end_71
    .catchall {:try_start_6f .. :try_end_71} :catchall_78

    .line 1381
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_75
    move-exception p0

    .line 1378
    :try_start_76
    monitor-exit p1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    :try_start_77
    throw p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception p0

    .line 1381
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1382
    throw p0
.end method

.method public getSessionPolicies(Landroid/media/session/MediaSession$Token;)I
    .registers 3

    .line 2293
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2294
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 2296
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getSessionPolicies()I

    move-result p0

    monitor-exit v0

    return p0

    .line 2298
    :cond_15
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$Token;",
            ">;"
        }
    .end annotation

    .line 1302
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1303
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1304
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1307
    :try_start_c
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result p1

    .line 1308
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_42

    .line 1310
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetActiveSessionsLocked(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;

    move-result-object p0

    .line 1311
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaSessionRecord;

    .line 1312
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 1314
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_3f

    .line 1317
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catchall_3f
    move-exception p0

    .line 1314
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    throw p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p0

    .line 1317
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1318
    throw p0
.end method

.method public final handleIncomingUser(IIILjava/lang/String;)I
    .registers 7

    .line 2344
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ne p3, v0, :cond_b

    return p3

    .line 2349
    :cond_b
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-eqz p0, :cond_2c

    .line 2352
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    if-ne p3, p0, :cond_2b

    .line 2353
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    return p0

    :cond_2b
    return p3

    .line 2358
    :cond_2c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission denied while calling from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with user id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; Need to run as either the calling user id ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), or with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " permission"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleVolumeKeyLongPressLocked(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    .registers 10

    const/4 v0, 0x0

    const/16 v1, 0x65

    if-eq p5, v1, :cond_d

    .line 3259
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSystemServerPid(Lcom/android/server/media/MediaSessionService;)I

    move-result v1

    if-eq p3, v1, :cond_12

    :cond_d
    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_HOME_IOT:Z

    if-nez p3, :cond_12

    move p7, v0

    :cond_12
    if-eqz p7, :cond_2b

    .line 3265
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    if-eqz p3, :cond_1b

    .line 3266
    invoke-virtual {p3, p4, p5, p6, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->updateInfoLocked(IIIZ)V

    .line 3269
    :cond_1b
    new-instance p3, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    .line 3270
    invoke-virtual {p3, p4, p5, p6, p7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->updateInfoLocked(IIIZ)V

    .line 3271
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_35

    .line 3273
    :cond_2b
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    if-eqz p1, :cond_35

    .line 3274
    invoke-virtual {p1, p4, p5, p6, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->updateInfoLocked(IIIZ)V

    const/4 p1, 0x0

    .line 3275
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    :cond_35
    :goto_35
    return-void
.end method

.method public hasCustomMediaKeyDispatcher(Ljava/lang/String;)Z
    .registers 3

    .line 2279
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    goto :goto_1c

    .line 2280
    :cond_a
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object p0

    .line 2281
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 2280
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    :goto_1c
    return p0
.end method

.method public hasCustomMediaSessionPolicyProvider(Ljava/lang/String;)Z
    .registers 3

    .line 2286
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaSessionPolicyProvider(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionPolicyProvider;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    goto :goto_1c

    .line 2287
    :cond_a
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaSessionPolicyProvider(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionPolicyProvider;

    move-result-object p0

    .line 2288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 2287
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    :goto_1c
    return p0
.end method

.method public final hasEnabledNotificationListener(ILjava/lang/String;I)Z
    .registers 7

    const-string v0, "MediaSessionService"

    .line 2365
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_e

    return v2

    .line 2374
    :cond_e
    :try_start_e
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2376
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2374
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    if-eq p3, p1, :cond_28

    const-string p0, "Failed to check enabled notification listener. Package name and UID doesn\'t match"

    .line 2378
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_27} :catch_5b

    return v2

    .line 2388
    :cond_28
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmNotificationManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/NotificationManager;

    move-result-object p0

    .line 2389
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 2388
    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x1

    return p0

    .line 2392
    :cond_3a
    sget-boolean p0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz p0, :cond_5a

    .line 2393
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") doesn\'t have an enabled notification listener"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return v2

    :catch_5b
    const-string p0, "Failed to check enabled notification listener. Package name doesn\'t exist"

    .line 2383
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 3286
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    const/4 v0, 0x1

    if-eqz p0, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p0

    if-ne p0, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final isFromKeyCustomizer(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 3322
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_1f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p0

    if-nez p0, :cond_1f

    .line 3323
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p0

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_1f

    .line 3324
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public isGlobalPriorityActive()Z
    .registers 2

    .line 2201
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2202
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 2203
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isTrusted(Ljava/lang/String;II)Z
    .registers 8

    .line 2247
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2248
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2259
    :try_start_10
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3, p2, p3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mhasMediaControlPermission(Lcom/android/server/media/MediaSessionService;II)Z

    move-result p2

    if-nez p2, :cond_21

    .line 2260
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->hasEnabledNotificationListener(ILjava/lang/String;I)Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_26

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    .line 2263
    :goto_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_26
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2264
    throw p0
.end method

.method public final isUserSetupComplete()Z
    .registers 4

    .line 2667
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2668
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    .line 2667
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    return v2
.end method

.method public final isValidLocalStreamType(I)Z
    .registers 2

    if-ltz p1, :cond_7

    const/4 p0, 0x5

    if-gt p1, p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isVoiceKey(I)Z
    .registers 3

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_13

    .line 2662
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHasFeatureLeanback(Lcom/android/server/media/MediaSessionService;)Z

    move-result p0

    if-nez p0, :cond_11

    const/16 p0, 0x55

    if-ne p1, p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final needSkipKeyEventFromKeyCustomizer(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)Z
    .registers 15

    .line 3291
    invoke-virtual {p0, p4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isFromKeyCustomizer(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    .line 3302
    iput-boolean v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSkippedFirstKeyFromKeyCustomizer:Z

    .line 3303
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyCustomizerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3304
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyCustomizerRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-$$Nest$sfgetLONG_PRESS_TIMEOUT()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip key cause by keycustomizer:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3309
    :cond_3b
    invoke-virtual {p0, p4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_62

    iget-boolean v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSkippedFirstKeyFromKeyCustomizer:Z

    if-eqz v2, :cond_62

    .line 3310
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {p4, v2, v3, v7}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v4

    .line 3312
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const v2, -0x10000081

    and-int/2addr v1, v2

    .line 3314
    invoke-virtual {v4, v1}, Landroid/view/KeyEvent;->setFlags(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    move v6, p6

    .line 3315
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEvent(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V

    :cond_62
    return v7
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 16

    .line 1259
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    .line 1260
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1261
    array-length v1, v0

    if-lez v1, :cond_1b

    const/4 v1, 0x0

    .line 1262
    aget-object v0, v0, v1

    goto :goto_1d

    :cond_1b
    const-string v0, "com.android.shell"

    .line 1266
    :goto_1d
    new-instance v1, Lcom/android/server/media/MediaShellCommand;

    invoke-direct {v1, v0}, Lcom/android/server/media/MediaShellCommand;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 1267
    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public registerRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V
    .registers 9

    .line 2161
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2163
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2164
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2166
    :try_start_13
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string/jumbo v6, "listen for volume changes"

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceStatusBarServicePermission(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 2167
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v5, v5, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerRemoteVolumeController uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rvc : "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2171
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v0, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_52
    .catchall {:try_start_13 .. :try_end_52} :catchall_57

    .line 2174
    :try_start_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2176
    monitor-exit v4

    return-void

    :catchall_57
    move-exception p0

    .line 2174
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2175
    throw p0

    :catchall_5c
    move-exception p0

    .line 2176
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public removeOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    .registers 9

    if-nez p1, :cond_b

    const-string p0, "MediaSessionService"

    const-string/jumbo p1, "removeOnMediaKeyEventDispatchedListener: listener is null, ignoring"

    .line 1663
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1666
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1668
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1671
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mhasMediaControlPermission(Lcom/android/server/media/MediaSessionService;II)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1675
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_93

    .line 1676
    :try_start_2e
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    if-eqz v5, :cond_6d

    .line 1677
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    if-eq v6, v2, :cond_3d

    goto :goto_6d

    .line 1682
    :cond_3d
    invoke-virtual {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->removeOnMediaKeyEventDispatchedListenerLocked(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V

    const-string v2, "MediaSessionService"

    .line 1683
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The MediaKeyEventDispatchedListener ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is removed by "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1684
    invoke-static {p0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1683
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_2e .. :try_end_69} :catchall_88

    .line 1687
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6d
    :goto_6d
    :try_start_6d
    const-string p0, "MediaSessionService"

    .line 1678
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only the full user can remove the listener, userId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_6d .. :try_end_84} :catchall_88

    .line 1687
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_88
    move-exception p0

    .line 1685
    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    :try_start_8a
    throw p0

    .line 1672
    :cond_8b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MEDIA_CONTENT_CONTROL permission is required to  remove MediaKeyEventDispatchedListener"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_93

    :catchall_93
    move-exception p0

    .line 1687
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1688
    throw p0
.end method

.method public removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V
    .registers 9

    if-nez p1, :cond_b

    const-string p0, "MediaSessionService"

    const-string/jumbo p1, "removeOnMediaKeyEventSessionChangedListener: listener is null, ignoring"

    .line 1729
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1734
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 1735
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1736
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1737
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1739
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_82

    .line 1740
    :try_start_25
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    if-eqz v5, :cond_64

    .line 1741
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    if-eq v6, v1, :cond_34

    goto :goto_64

    .line 1746
    :cond_34
    invoke-virtual {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V

    const-string v1, "MediaSessionService"

    .line 1747
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The MediaKeyEventSessionChangedListener ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is removed by "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1748
    invoke-static {p0, v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1747
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    monitor-exit v4
    :try_end_60
    .catchall {:try_start_25 .. :try_end_60} :catchall_7f

    .line 1751
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_64
    :goto_64
    :try_start_64
    const-string p0, "MediaSessionService"

    .line 1742
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Only the full user can remove the listener, userId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_64 .. :try_end_7b} :catchall_7f

    .line 1751
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_7f
    move-exception p0

    .line 1749
    :try_start_80
    monitor-exit v4
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    :try_start_81
    throw p0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception p0

    .line 1751
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1752
    throw p0
.end method

.method public removeSession2TokensListener(Landroid/media/session/ISession2TokensListener;)V
    .registers 6

    .line 1466
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 1467
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 1468
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1471
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_37

    .line 1472
    :try_start_11
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSession2TokensListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    move-result p1

    if-ltz p1, :cond_2f

    .line 1474
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSession2TokensListenerRecords(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object p0

    .line 1475
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_34

    .line 1477
    :try_start_25
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {p1}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_34

    .line 1482
    :catch_2f
    :cond_2f
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_34

    .line 1484
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_34
    move-exception p0

    .line 1482
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    .line 1484
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1485
    throw p0
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1423
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mfindIndexOfSessionsListenerLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_26

    .line 1425
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSessionsListeners(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_28

    .line 1427
    :try_start_1c
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_28

    .line 1432
    :catch_26
    :cond_26
    :try_start_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public setCustomMediaKeyDispatcher(Ljava/lang/String;)V
    .registers 2

    .line 2269
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$minstantiateCustomDispatcher(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomMediaSessionPolicyProvider(Ljava/lang/String;)V
    .registers 2

    .line 2274
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$minstantiateCustomProvider(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)V

    return-void
.end method

.method public setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    .registers 9

    .line 1817
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1818
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1822
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_MEDIA_KEY_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_f3

    .line 1828
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_fb

    .line 1829
    :try_start_21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1830
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    if-eqz v5, :cond_d5

    .line 1831
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    if-eq v6, v4, :cond_39

    goto/16 :goto_d5

    .line 1836
    :cond_39
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v4

    if-eqz v4, :cond_6c

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v4

    if-eq v4, v1, :cond_6c

    const-string p0, "MediaSessionService"

    .line 1837
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The media key listener cannot be reset by another app. , mOnMediaKeyListenerUid="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_21 .. :try_end_68} :catchall_f0

    .line 1867
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1843
    :cond_6c
    :try_start_6c
    invoke-static {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)V

    .line 1844
    invoke-static {v5, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnMediaKeyListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)V

    const-string p1, "MediaSessionService"

    .line 1846
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The media key listener "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is set by "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1847
    invoke-static {v6, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1846
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object p1
    :try_end_9e
    .catchall {:try_start_6c .. :try_end_9e} :catchall_f0

    if-eqz p1, :cond_d0

    .line 1851
    :try_start_a0
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;

    invoke-direct {v1, p0, v5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 p0, 0x0

    invoke-interface {p1, v1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_b1} :catch_b2
    .catchall {:try_start_a0 .. :try_end_b1} :catchall_f0

    goto :goto_d0

    :catch_b2
    :try_start_b2
    const-string p0, "MediaSessionService"

    .line 1861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set death recipient "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1862
    invoke-static {v5, p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)V

    .line 1865
    :cond_d0
    :goto_d0
    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_b2 .. :try_end_d1} :catchall_f0

    .line 1867
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_d5
    :goto_d5
    :try_start_d5
    const-string p0, "MediaSessionService"

    .line 1832
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only the full user can set the media key listener, userId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_d5 .. :try_end_ec} :catchall_f0

    .line 1867
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f0
    move-exception p0

    .line 1865
    :try_start_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    :try_start_f2
    throw p0

    .line 1825
    :cond_f3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must hold the SET_MEDIA_KEY_LISTENER permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_fb
    .catchall {:try_start_f2 .. :try_end_fb} :catchall_fb

    :catchall_fb
    move-exception p0

    .line 1867
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1868
    throw p0
.end method

.method public setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    .registers 10

    .line 1757
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1758
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1759
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1762
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_VOLUME_KEY_LONG_PRESS_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_ef

    .line 1769
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_f7

    .line 1770
    :try_start_21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1771
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    if-eqz v5, :cond_d1

    .line 1772
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    if-eq v6, v4, :cond_39

    goto/16 :goto_d1

    .line 1777
    :cond_39
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v4

    if-eqz v4, :cond_6c

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v4

    if-eq v4, v1, :cond_6c

    const-string p0, "MediaSessionService"

    .line 1779
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The volume key long-press listener cannot be reset by another app , mOnVolumeKeyLongPressListener="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_21 .. :try_end_68} :catchall_ec

    .line 1811
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1786
    :cond_6c
    :try_start_6c
    invoke-static {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)V

    .line 1787
    invoke-static {v5, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnVolumeKeyLongPressListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)V

    const-string v4, "MediaSessionService"

    .line 1789
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The volume key long-press listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is set by "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1790
    invoke-static {p1, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1789
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object p1
    :try_end_9a
    .catchall {:try_start_6c .. :try_end_9a} :catchall_ec

    if-eqz p1, :cond_cc

    .line 1794
    :try_start_9c
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/session/IOnVolumeKeyLongPressListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    invoke-direct {v1, p0, v5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 p0, 0x0

    invoke-interface {p1, v1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_ad} :catch_ae
    .catchall {:try_start_9c .. :try_end_ad} :catchall_ec

    goto :goto_cc

    :catch_ae
    :try_start_ae
    const-string p0, "MediaSessionService"

    .line 1804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set death recipient "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1806
    invoke-static {v5, p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)V

    .line 1809
    :cond_cc
    :goto_cc
    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_ae .. :try_end_cd} :catchall_ec

    .line 1811
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_d1
    :goto_d1
    :try_start_d1
    const-string p0, "MediaSessionService"

    .line 1773
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only the full user can set the volume key long-press listener, userId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_d1 .. :try_end_e8} :catchall_ec

    .line 1811
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_ec
    move-exception p0

    .line 1809
    :try_start_ed
    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    :try_start_ee
    throw p0

    .line 1765
    :cond_ef
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must hold the SET_VOLUME_KEY_LONG_PRESS_LISTENER permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f7
    .catchall {:try_start_ee .. :try_end_f7} :catchall_f7

    :catchall_f7
    move-exception p0

    .line 1811
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1812
    throw p0
.end method

.method public setSessionPolicies(Landroid/media/session/MediaSession$Token;I)V
    .registers 7

    .line 2304
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2306
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_2f

    .line 2307
    :try_start_b
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetMediaSessionRecordLocked(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p1

    .line 2308
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v3

    invoke-static {p0, v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 2310
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaSessionRecord;->setSessionPolicies(I)V

    .line 2311
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionBySessionPolicyChange(Lcom/android/server/media/MediaSessionRecord;)V

    .line 2313
    :cond_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_2c

    .line 2315
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception p0

    .line 2313
    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    .line 2315
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2316
    throw p0
.end method

.method public final startVoiceInput(Z)V
    .registers 10

    .line 2622
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2623
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v2

    goto :goto_28

    :cond_27
    move v1, v3

    :goto_28
    const-string/jumbo v4, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    const-string v5, "android.speech.extras.EXTRA_SECURE"

    const-string v6, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    const-string v7, "MediaSessionService"

    if-nez v1, :cond_55

    .line 2624
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2626
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_4d

    .line 2627
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v1

    .line 2628
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v2, v3

    .line 2627
    :goto_4e
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2629
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 2636
    :cond_55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_69

    .line 2637
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v1

    .line 2638
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_69

    goto :goto_6a

    :cond_69
    move v2, v3

    .line 2637
    :goto_6a
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2639
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_70
    if-eqz p1, :cond_7b

    .line 2643
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_7b
    const/high16 v1, 0x10800000

    .line 2647
    :try_start_7d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2649
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v1, :cond_99

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voiceIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :cond_99
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7d .. :try_end_a4} :catch_b2
    .catchall {:try_start_7d .. :try_end_a4} :catchall_b0

    if-eqz p1, :cond_ca

    .line 2656
    :goto_a6
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_ca

    :catchall_b0
    move-exception v0

    goto :goto_cb

    :catch_b2
    move-exception v0

    .line 2653
    :try_start_b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No activity for search: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_b3 .. :try_end_c7} :catchall_b0

    if-eqz p1, :cond_ca

    goto :goto_a6

    :cond_ca
    :goto_ca
    return-void

    :goto_cb
    if-eqz p1, :cond_d6

    .line 2656
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2658
    :cond_d6
    throw v0
.end method

.method public unregisterRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V
    .registers 9

    .line 2181
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2182
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2184
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2186
    :try_start_13
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string/jumbo v6, "listen for volume changes"

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceStatusBarServicePermission(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 2187
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v5, v5, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterRemoteVolumeController uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rvc : "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2190
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2191
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v0, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_52
    .catchall {:try_start_13 .. :try_end_52} :catchall_57

    .line 2194
    :try_start_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2196
    monitor-exit v4

    return-void

    :catchall_57
    move-exception p0

    .line 2194
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2195
    throw p0

    :catchall_5c
    move-exception p0

    .line 2196
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public final verifySessionsRequest(Landroid/content/ComponentName;III)I
    .registers 6

    if-eqz p1, :cond_c

    .line 2326
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 2327
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1, p4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforcePackageName(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 2330
    :goto_d
    invoke-virtual {p0, p3, p4, p2, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p2

    .line 2333
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, p1, p3, p4, p2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$menforceMediaPermissions(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;III)V

    return p2
.end method

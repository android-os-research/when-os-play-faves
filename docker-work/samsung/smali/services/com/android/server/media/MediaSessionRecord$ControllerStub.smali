.class public Lcom/android/server/media/MediaSessionRecord$ControllerStub;
.super Landroid/media/session/ISessionController$Stub;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControllerStub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public static synthetic $r8$lambda$8rbiMArEpzc2x9P8H6VvdHOI2c0(Lcom/android/server/media/MediaSessionRecord$ControllerStub;Landroid/media/session/ISessionControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->lambda$registerCallback$0(Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2

    .line 1508
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Landroid/media/session/ISessionController$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$registerCallback$0(Landroid/media/session/ISessionControllerCallback;)V
    .registers 2

    .line 1537
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 16

    .line 1608
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1610
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1612
    :try_start_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1b

    .line 1615
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1616
    throw p0
.end method

.method public fastForward(Ljava/lang/String;)V
    .registers 4

    .line 1705
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->fastForward(Ljava/lang/String;II)V

    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1762
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1763
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmExtras(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 1764
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getFlags()J
    .registers 3

    .line 1597
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmFlags(Lcom/android/server/media/MediaSessionRecord;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .registers 1

    .line 1592
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmLaunchIntent(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getMetadata()Landroid/media/MediaMetadata;
    .registers 2

    .line 1738
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1739
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmMetadata(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 1740
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 1577
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmPackageName(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .registers 1

    .line 1745
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetStateWithUpdatedPosition(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public getQueue()Landroid/content/pm/ParceledListSlice;
    .registers 3

    .line 1750
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1751
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmQueue(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 p0, 0x0

    goto :goto_1d

    :cond_11
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmQueue(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    move-object p0, v1

    :goto_1d
    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    .line 1752
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 1757
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmQueueTitle(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getRatingType()I
    .registers 1

    .line 1769
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmRatingType(Lcom/android/server/media/MediaSessionRecord;)I

    move-result p0

    return p0
.end method

.method public getSessionInfo()Landroid/os/Bundle;
    .registers 1

    .line 1587
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionInfo(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    .line 1582
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmTag(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .registers 1

    .line 1602
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetVolumeAttributes(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    return-object p0
.end method

.method public next(Ljava/lang/String;)V
    .registers 4

    .line 1695
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->next(Ljava/lang/String;II)V

    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .registers 4

    .line 1685
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->pause(Ljava/lang/String;II)V

    return-void
.end method

.method public play(Ljava/lang/String;)V
    .registers 4

    .line 1657
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->play(Ljava/lang/String;II)V

    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 1662
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 1668
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public playFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 10

    .line 1674
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepare(Ljava/lang/String;)V
    .registers 4

    .line 1634
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepare(Ljava/lang/String;II)V

    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 1639
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1640
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1639
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 1645
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1646
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1645
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepareFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 10

    .line 1651
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public previous(Ljava/lang/String;)V
    .registers 4

    .line 1700
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->previous(Ljava/lang/String;II)V

    return-void
.end method

.method public rate(Ljava/lang/String;Landroid/media/Rating;)V
    .registers 5

    .line 1720
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rate(Ljava/lang/String;IILandroid/media/Rating;)V

    return-void
.end method

.method public registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 11

    .line 1524
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1527
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmDestroyed(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_75

    if-eqz v1, :cond_14

    .line 1529
    :try_start_f
    invoke-interface {p2}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_12
    .catchall {:try_start_f .. :try_end_12} :catchall_75

    .line 1533
    :catch_12
    :try_start_12
    monitor-exit v0

    return-void

    .line 1535
    :cond_14
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetControllerHolderIndexForCb(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    move-result v1

    if-gez v1, :cond_73

    .line 1536
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 1537
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    new-instance v7, Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, p2}, Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaSessionRecord$ControllerStub;Landroid/media/session/ISessionControllerCallback;)V

    move-object v2, v1

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;ILandroid/os/IBinder$DeathRecipient;)V

    .line 1538
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmControllerCallbackHolders(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1539
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$sfgetDEBUG()Z

    const-string v2, "MediaSessionRecord"

    .line 1540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registering controller callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from controller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_12 .. :try_end_5a} :catchall_75

    .line 1547
    :try_start_5a
    invoke-interface {p2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmDeathMonitor(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_66} :catch_67
    .catchall {:try_start_5a .. :try_end_66} :catchall_75

    goto :goto_73

    :catch_67
    move-exception p1

    .line 1549
    :try_start_68
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V

    const-string p0, "MediaSessionRecord"

    const-string/jumbo p2, "registerCallback failed to linkToDeath"

    .line 1550
    invoke-static {p0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1553
    :cond_73
    :goto_73
    monitor-exit v0

    return-void

    :catchall_75
    move-exception p0

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_68 .. :try_end_77} :catchall_75

    throw p0
.end method

.method public rewind(Ljava/lang/String;)V
    .registers 4

    .line 1710
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rewind(Ljava/lang/String;II)V

    return-void
.end method

.method public seekTo(Ljava/lang/String;J)V
    .registers 10

    .line 1715
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->seekTo(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 12

    .line 1512
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 1732
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendMediaButton(Ljava/lang/String;Landroid/view/KeyEvent;)Z
    .registers 9

    .line 1518
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1519
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p2

    .line 1518
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setPlaybackSpeed(Ljava/lang/String;F)V
    .registers 5

    .line 1726
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setPlaybackSpeed(Ljava/lang/String;IIF)V

    return-void
.end method

.method public setVolumeTo(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14

    .line 1621
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1625
    :try_start_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetVolumeTo(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    .line 1628
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1629
    throw p0
.end method

.method public skipToQueueItem(Ljava/lang/String;J)V
    .registers 10

    .line 1680
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->skipToTrack(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .registers 4

    .line 1690
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmSessionCb(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->stop(Ljava/lang/String;II)V

    return-void
.end method

.method public unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V
    .registers 7

    .line 1558
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1559
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetControllerHolderIndexForCb(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    move-result v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_62

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    .line 1562
    :try_start_10
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmControllerCallbackHolders(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 1563
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->-$$Nest$fgetmDeathMonitor(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    const/4 v4, 0x0

    .line 1562
    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_28
    .catch Ljava/util/NoSuchElementException; {:try_start_10 .. :try_end_28} :catch_29
    .catchall {:try_start_10 .. :try_end_28} :catchall_62

    goto :goto_31

    :catch_29
    move-exception v2

    :try_start_2a
    const-string v3, "MediaSessionRecord"

    const-string v4, "error unlinking to binder death"

    .line 1565
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1567
    :goto_31
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmControllerCallbackHolders(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 1569
    :cond_3a
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$sfgetDEBUG()Z

    const-string p0, "MediaSessionRecord"

    .line 1570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregistering callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    monitor-exit v0

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_2a .. :try_end_64} :catchall_62

    throw p0
.end method

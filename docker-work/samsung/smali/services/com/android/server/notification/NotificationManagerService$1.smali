.class public Lcom/android/server/notification/NotificationManagerService$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$kc4lNM8wfbMoDCu7yWyvWka0-ZE(Lcom/android/server/notification/NotificationManagerService$1;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/NotificationManagerService$1;->lambda$onNotificationError$0(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 1229
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onNotificationError$0(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1396
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad notification(tag="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", id="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ") posted from package "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", crashing app(uid="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", pid="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "): "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x4

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public clearEffects()V
    .registers 4

    .line 1374
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1375
    :try_start_5
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_10

    const-string v1, "NotificationService"

    const-string v2, "clearEffects"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_10
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    .line 1377
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    .line 1378
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mclearLightsLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1379
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public clearInlineReplyUriPermissions(Ljava/lang/String;I)V
    .registers 9

    .line 1658
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1659
    :try_start_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/InlineReplyUriRecord;

    if-eqz v0, :cond_3a

    .line 1661
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/InlineReplyUriRecord;->getPermissionOwner()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/notification/InlineReplyUriRecord;->getUserId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INLINE_REPLY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    invoke-virtual {v0}, Lcom/android/server/notification/InlineReplyUriRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1661
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mdestroyPermissionOwner(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;ILjava/lang/String;)V

    .line 1663
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    :cond_3a
    monitor-exit p2

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit p2
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 14

    .line 1619
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1620
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/InlineReplyUriRecord;

    if-nez v1, :cond_38

    .line 1622
    new-instance v1, Lcom/android/server/notification/InlineReplyUriRecord;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUgmInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/uri/UriGrantsManagerInternal;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INLINE_REPLY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1623
    invoke-interface {v2, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2, p3, p4, p1}, Lcom/android/server/notification/InlineReplyUriRecord;-><init>(Landroid/os/IBinder;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p3, p3, Lcom/android/server/notification/NotificationManagerService;->mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    :cond_38
    invoke-virtual {v1}, Lcom/android/server/notification/InlineReplyUriRecord;->getPermissionOwner()Landroid/os/IBinder;

    move-result-object v3

    .line 1632
    invoke-virtual {v1}, Lcom/android/server/notification/InlineReplyUriRecord;->getUserId()I

    move-result v7

    .line 1633
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_90

    if-eq p1, v7, :cond_80

    .line 1635
    :try_start_46
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object p1

    invoke-interface {p1, p5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_68

    const-string p3, "NotificationService"

    .line 1637
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant uri permission to unknown UID: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    const/4 p3, 0x0

    .line 1640
    aget-object p1, p1, p3

    .line 1642
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object p3

    const-wide/16 v4, 0x0

    invoke-interface {p3, p1, v4, v5, v7}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p5
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_77} :catch_78
    .catchall {:try_start_46 .. :try_end_77} :catchall_90

    goto :goto_80

    :catch_78
    move-exception p1

    :try_start_79
    const-string p3, "NotificationService"

    const-string p4, "Cannot talk to package manager"

    .line 1644
    invoke-static {p3, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_80
    :goto_80
    move v5, p5

    .line 1647
    invoke-virtual {v1, p2}, Lcom/android/server/notification/InlineReplyUriRecord;->addUri(Landroid/net/Uri;)V

    .line 1648
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/InlineReplyUriRecord;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mgrantUriPermission(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    .line 1649
    monitor-exit v0

    return-void

    :catchall_90
    move-exception p0

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_79 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public onBubbleMetadataFlagChanged(Ljava/lang/String;I)V
    .registers 11

    .line 1584
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1585
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    if-eqz v4, :cond_4f

    .line 1587
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p1

    if-nez p1, :cond_1e

    .line 1590
    monitor-exit v0

    return-void

    .line 1593
    :cond_1e
    invoke-virtual {p1}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result v1

    if-eq p2, v1, :cond_4f

    .line 1594
    invoke-virtual {p1, p2}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 1596
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 1599
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object p1

    new-instance p2, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1600
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v5, 0x1

    .line 1601
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZJ)V

    .line 1599
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1604
    :cond_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public onClearAll(III)V
    .registers 12

    .line 1251
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1252
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 1254
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public onNotificationActionClick(IILjava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 22

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 1293
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mexitIdle(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1294
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1295
    :try_start_13
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    if-nez v11, :cond_38

    const-string v0, "NotificationService"

    .line 1297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No notification with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    monitor-exit v10

    return-void

    .line 1300
    :cond_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1301
    invoke-virtual {v11, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x81

    .line 1302
    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v5

    const/4 v6, 0x4

    .line 1303
    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 1304
    invoke-virtual {v5, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x31e

    iget v7, v8, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 1305
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x573

    iget v7, v8, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 1306
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x641

    .line 1308
    invoke-virtual/range {p5 .. p5}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v7

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v7, :cond_73

    move v7, v12

    goto :goto_74

    :cond_73
    move v7, v13

    :goto_74
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1307
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x640

    if-eqz v9, :cond_81

    goto :goto_82

    :cond_81
    move v12, v13

    .line 1311
    :goto_82
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1309
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x65d

    iget-object v7, v8, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 1313
    invoke-virtual {v7}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->toMetricsEventEnum()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1312
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 1301
    invoke-static {v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1314
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object v5

    .line 1316
    invoke-virtual/range {p5 .. p5}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v6

    .line 1315
    invoke-static {v2, v9, v6}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->fromAction(IZZ)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object v6

    .line 1314
    invoke-interface {v5, v6, v11}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 1318
    invoke-virtual {v11, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v5

    invoke-virtual {v11, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v6

    invoke-virtual {v11, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v7

    iget v12, v8, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v13, v8, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    move-object/from16 v1, p3

    move/from16 v2, p4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v12

    move v7, v13

    .line 1317
    invoke-static/range {v1 .. v7}, Lcom/android/server/EventLogTags;->writeNotificationActionClicked(Ljava/lang/String;IIIIII)V

    .line 1320
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 1321
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v11}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1322
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    move-object/from16 v1, p5

    invoke-virtual {v0, v11, v1, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantActionClicked(Lcom/android/server/notification/NotificationRecord;Landroid/app/Notification$Action;Z)V

    .line 1323
    monitor-exit v10

    return-void

    :catchall_df
    move-exception v0

    monitor-exit v10
    :try_end_e1
    .catchall {:try_start_13 .. :try_end_e1} :catchall_df

    throw v0
.end method

.method public onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    .registers 12

    .line 1554
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1555
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    if-eqz v4, :cond_64

    if-nez p2, :cond_23

    .line 1563
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p1, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 p1, p1, -0x1001

    iput p1, p0, Landroid/app/Notification;->flags:I

    const/4 p0, 0x1

    .line 1564
    invoke-virtual {v4, p0}, Lcom/android/server/notification/NotificationRecord;->setFlagBubbleRemoved(Z)V

    goto :goto_64

    .line 1568
    :cond_23
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Landroid/app/Notification;->flags:I

    const/4 p1, 0x0

    .line 1569
    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationRecord;->setFlagBubbleRemoved(Z)V

    .line 1570
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 1571
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 1575
    :cond_46
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object p1

    new-instance p2, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v5, 0x1

    .line 1576
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZJ)V

    .line 1575
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1579
    :cond_64
    :goto_64
    monitor-exit v0

    return-void

    :catchall_66
    move-exception p0

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_5 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public onNotificationClear(IILjava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    .line 1334
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1335
    :try_start_9
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v4, p5

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    if-eqz v3, :cond_32

    move/from16 v4, p6

    .line 1337
    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSurface(I)V

    move/from16 v4, p7

    .line 1338
    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    .line 1339
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 1340
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    goto :goto_34

    :cond_32
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_34
    move v10, v3

    move-object v9, v4

    .line 1342
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_56

    const/4 v12, 0x2

    .line 1344
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x2

    iget v0, v1, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v2, v1, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    const/16 v18, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v14, p4

    move/from16 v16, v0

    move/from16 v17, v2

    invoke-virtual/range {v5 .. v18}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1347
    invoke-virtual/range {p8 .. p8}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    return-void

    :catchall_56
    move-exception v0

    .line 1342
    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0
.end method

.method public onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    .line 1260
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mexitIdle(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1261
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1262
    :try_start_10
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/notification/NotificationRecord;

    if-nez v9, :cond_35

    const-string v0, "NotificationService"

    .line 1264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No notification with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    monitor-exit v8

    return-void

    .line 1267
    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1268
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getItemLogMaker()Landroid/metrics/LogMaker;

    move-result-object v4

    const/4 v5, 0x4

    .line 1269
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x31e

    iget v6, v7, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 1270
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x573

    iget v6, v7, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 1271
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 1268
    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1272
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object v4

    sget-object v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {v4, v5, v9}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 1275
    invoke-virtual {v9, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v4

    invoke-virtual {v9, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v5

    invoke-virtual {v9, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v6

    iget v10, v7, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v11, v7, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    move-object/from16 v1, p3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v10

    move v6, v11

    .line 1274
    invoke-static/range {v1 .. v6}, Lcom/android/server/EventLogTags;->writeNotificationClicked(Ljava/lang/String;IIIII)V

    .line 1278
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 1279
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v14

    .line 1280
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v15

    const/16 v16, 0x10

    const/16 v17, 0x1040

    const/16 v18, 0x0

    .line 1281
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v19

    const/16 v20, 0x1

    iget v1, v7, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v2, v7, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    const/16 v23, 0x0

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v21, v1

    move/from16 v22, v2

    .line 1279
    invoke-virtual/range {v10 .. v23}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1283
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 1284
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v9}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1285
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantNotificationClicked(Lcom/android/server/notification/NotificationRecord;)V

    .line 1286
    monitor-exit v8

    return-void

    :catchall_c4
    move-exception v0

    monitor-exit v8
    :try_end_c6
    .catchall {:try_start_10 .. :try_end_c6} :catchall_c4

    throw v0
.end method

.method public onNotificationDirectReplied(Ljava/lang/String;)V
    .registers 6

    .line 1477
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mexitIdle(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1478
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    :try_start_a
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    if-eqz p1, :cond_4a

    .line 1481
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->recordDirectReplied()V

    .line 1482
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmMetricsLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x636

    .line 1483
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/4 v3, 0x4

    .line 1484
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 1482
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1485
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object v1

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DIRECT_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {v1, v2, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 1488
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1489
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantNotificationDirectReplyLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 1491
    :cond_4a
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_a .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 27

    move-object/from16 v0, p0

    .line 1386
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1387
    :try_start_7
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move/from16 v13, p5

    move/from16 v12, p9

    invoke-virtual {v2, v15, v14, v13, v12}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 1388
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    .line 1389
    :goto_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_59

    .line 1390
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x4

    const/16 v16, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v12, p9

    move v13, v1

    move-object/from16 v14, v16

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    if-eqz v2, :cond_58

    .line 1395
    new-instance v9, Lcom/android/server/notification/NotificationManagerService$1$$ExternalSyntheticLambda0;

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$1;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v9}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_58
    return-void

    :catchall_59
    move-exception v0

    .line 1389
    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    .registers 7

    .line 1446
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    if-eqz p1, :cond_63

    .line 1449
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onExpansionChanged(ZZ)V

    .line 1452
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasBeenVisiblyExpanded()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1453
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1, p4}, Lcom/android/server/notification/NotificationManagerService;->logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V

    :cond_21
    if-eqz p2, :cond_41

    .line 1456
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getItemLogMaker()Landroid/metrics/LogMaker;

    move-result-object p4

    if-eqz p3, :cond_2b

    const/4 v1, 0x3

    goto :goto_2d

    :cond_2b
    const/16 v1, 0xe

    .line 1457
    :goto_2d
    invoke-virtual {p4, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p4

    .line 1456
    invoke-static {p4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1459
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object p4

    .line 1460
    invoke-static {p3, p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->fromExpanded(ZZ)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object v1

    .line 1459
    invoke-interface {p4, v1, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    :cond_41
    if-eqz p3, :cond_52

    if-eqz p2, :cond_52

    .line 1465
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->recordExpanded()V

    .line 1466
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p4, p1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1467
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p4, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mexpandedNotificationLog(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    .line 1469
    :cond_52
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    .line 1470
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result p1

    .line 1469
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantExpansionChangedLocked(Landroid/service/notification/StatusBarNotification;IZZ)V

    .line 1472
    :cond_63
    monitor-exit v0

    return-void

    :catchall_65
    move-exception p0

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_5 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 1670
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mexitIdle(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1671
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1672
    :try_start_a
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    if-nez v1, :cond_32

    .line 1674
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p0, :cond_30

    const-string p0, "NotificationService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No notification with key: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_30
    monitor-exit v0

    return-void

    .line 1677
    :cond_32
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    invoke-virtual {p0, v1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantFeedbackReceived(Lcom/android/server/notification/NotificationRecord;Landroid/os/Bundle;)V

    .line 1678
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public onNotificationSettingsViewed(Ljava/lang/String;)V
    .registers 3

    .line 1544
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1545
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    if-eqz p0, :cond_14

    .line 1547
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->recordViewedSettings()V

    .line 1549
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    .registers 11

    .line 1512
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1513
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    if-eqz p1, :cond_8d

    .line 1515
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x567

    .line 1516
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1517
    invoke-virtual {v1, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 v1, 0x640

    .line 1520
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuggestionsGeneratedByAssistant()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2b

    move v2, v3

    goto :goto_2c

    :cond_2b
    move v2, v4

    :goto_2c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1518
    invoke-virtual {p2, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 v1, 0x65d

    .line 1522
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 1521
    invoke-virtual {p2, v1, p4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 p4, 0x66f

    .line 1525
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getEditChoicesBeforeSending()Z

    move-result v1

    if-eqz v1, :cond_48

    move v1, v3

    goto :goto_49

    :cond_48
    move v1, v4

    :goto_49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1523
    invoke-virtual {p2, p4, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 p4, 0x670

    if-eqz p5, :cond_56

    goto :goto_57

    :cond_56
    move v3, v4

    .line 1528
    :goto_57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 1526
    invoke-virtual {p2, p4, p5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 1529
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmMetricsLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1530
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object p2

    sget-object p4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {p2, p4, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 1534
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1535
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    .line 1536
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result p4

    .line 1537
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuggestionsGeneratedByAssistant()Z

    move-result p1

    .line 1535
    invoke-virtual {p0, p2, p4, p3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantSuggestedReplySent(Landroid/service/notification/StatusBarNotification;ILjava/lang/CharSequence;Z)V

    .line 1539
    :cond_8d
    monitor-exit v0

    return-void

    :catchall_8f
    move-exception p0

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_5 .. :try_end_91} :catchall_8f

    throw p0
.end method

.method public onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    .registers 7

    .line 1497
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1498
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    if-eqz p0, :cond_1d

    .line 1500
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationRecord;->setNumSmartRepliesAdded(I)V

    .line 1501
    invoke-virtual {p0, p3}, Lcom/android/server/notification/NotificationRecord;->setNumSmartActionsAdded(I)V

    .line 1502
    invoke-virtual {p0, p4}, Lcom/android/server/notification/NotificationRecord;->setSuggestionsGeneratedByAssistant(Z)V

    .line 1503
    invoke-virtual {p0, p5}, Lcom/android/server/notification/NotificationRecord;->setEditChoicesBeforeSending(Z)V

    .line 1505
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 13

    .line 1407
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1408
    :try_start_5
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_84

    aget-object v4, p1, v3

    .line 1409
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    if-nez v5, :cond_1b

    goto :goto_81

    .line 1411
    :cond_1b
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isSeen()Z

    move-result v6

    if-nez v6, :cond_42

    .line 1413
    sget-boolean v6, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v6, :cond_3d

    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Marking notification as visible "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_3d
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationManagerService;->reportSeen(Lcom/android/server/notification/NotificationRecord;)V

    .line 1416
    :cond_42
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mshownNotificationLog(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    .line 1417
    iget v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v7, v4, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5, v9, v6, v7, v8}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZIILcom/android/server/notification/NotificationRecordLogger;)V

    .line 1418
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantVisibilityChangedLocked(Lcom/android/server/notification/NotificationRecord;Z)V

    .line 1419
    iget-object v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    sget-object v7, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_FIRST_HEADS_UP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    if-ne v6, v7, :cond_65

    goto :goto_66

    :cond_65
    move v9, v2

    :goto_66
    if-nez v9, :cond_6e

    .line 1423
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->hasBeenVisiblyExpanded()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 1424
    :cond_6e
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v4, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    invoke-virtual {v7}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->toMetricsEventEnum()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/android/server/notification/NotificationManagerService;->logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V

    .line 1426
    :cond_79
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 1427
    invoke-virtual {v4}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    :goto_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1433
    :cond_84
    array-length p1, p2

    move v1, v2

    :goto_86
    if-ge v1, p1, :cond_b5

    aget-object v3, p2, v1

    .line 1434
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    if-nez v4, :cond_99

    goto :goto_b2

    .line 1436
    :cond_99
    iget v5, v3, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v6, v3, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object v7

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZIILcom/android/server/notification/NotificationRecordLogger;)V

    .line 1437
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantVisibilityChangedLocked(Lcom/android/server/notification/NotificationRecord;Z)V

    .line 1438
    invoke-virtual {v3}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    :goto_b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    .line 1440
    :cond_b5
    monitor-exit v0

    return-void

    :catchall_b7
    move-exception p0

    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_5 .. :try_end_b9} :catchall_b7

    throw p0
.end method

.method public onPanelHidden()V
    .registers 3

    .line 1365
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 1366
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    invoke-interface {v0, v1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 1368
    invoke-static {}, Lcom/android/server/EventLogTags;->writeNotificationPanelHidden()V

    .line 1369
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPanelHidden()V

    return-void
.end method

.method public onPanelRevealed(ZI)V
    .registers 5

    .line 1352
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 1353
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "note_load"

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1354
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    invoke-interface {v0, v1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 1356
    invoke-static {p2}, Lcom/android/server/EventLogTags;->writeNotificationPanelRevealed(I)V

    if-eqz p1, :cond_2a

    .line 1358
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$1;->clearEffects()V

    .line 1360
    :cond_2a
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPanelRevealed(I)V

    return-void
.end method

.method public onSetDisabled(I)V
    .registers 5

    .line 1238
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1239
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/high16 v2, 0x40000

    and-int/2addr p1, v2

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmDisableNotificationEffects(Lcom/android/server/notification/NotificationManagerService;Z)V

    .line 1241
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mdisableNotificationEffects(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 1243
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    .line 1244
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    .line 1246
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public prepareForPossibleShutdown()V
    .registers 1

    .line 1233
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryManager;->triggerWriteToDisk()V

    return-void
.end method

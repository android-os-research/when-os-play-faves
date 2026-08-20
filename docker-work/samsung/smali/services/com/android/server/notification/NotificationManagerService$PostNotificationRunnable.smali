.class public Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostNotificationRunnable"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final pkg:Ljava/lang/String;

.field public final postElapsedTimeMs:J

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final uid:I


# direct methods
.method public static synthetic $r8$lambda$30l_jvBvb2PvIVpEe5h86HPww8w(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->lambda$run$0(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FNYGlSerKspbkbBwEBswMNmYj1Q(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->lambda$run$1(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 7

    .line 8804
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8805
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 8806
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->pkg:Ljava/lang/String;

    .line 8807
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->uid:I

    .line 8808
    iput-wide p5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->postElapsedTimeMs:J

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    .line 9004
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9005
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 9006
    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhasAutoGroupSummaryLocked(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    .line 9005
    invoke-virtual {v1, p1, p0}, Lcom/android/server/notification/GroupHelper;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Z)V

    .line 9007
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw p0
.end method

.method private synthetic lambda$run$1(Lcom/android/server/notification/NotificationRecord;)V
    .registers 2

    .line 9012
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 8813
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->uid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mareNotificationsEnabledForPackageInt(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 8814
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->uid:I

    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCallNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v2

    .line 8815
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    .line 8818
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v4

    :goto_25
    const/4 v7, 0x0

    if-ge v6, v5, :cond_43

    .line 8820
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    .line 8821
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40

    move-object v6, v8

    goto :goto_44

    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_43
    move-object v6, v7

    :goto_44
    if-nez v6, :cond_8b

    const-string v0, "NotificationService"

    .line 8827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find enqueued record for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_1c .. :try_end_5e} :catchall_572

    .line 9053
    :try_start_5e
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_66
    if-ge v4, v0, :cond_89

    .line 9055
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 9056
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 9057
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_89

    :cond_86
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 9061
    :cond_89
    :goto_89
    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_5e .. :try_end_8a} :catchall_59e

    return-void

    .line 8831
    :cond_8b
    :try_start_8b
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 8832
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    if-eqz v2, :cond_9f

    .line 8833
    const-class v2, Landroid/app/Notification$CallStyle;

    .line 8834
    invoke-virtual {v8, v2}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_9f

    move v2, v1

    goto :goto_a0

    :cond_9f
    move v2, v4

    .line 8836
    :goto_a0
    invoke-virtual {v8}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v9

    if-nez v9, :cond_104

    if-nez v2, :cond_104

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 8837
    invoke-virtual {v0, v6}, Lcom/android/server/notification/NotificationManagerService;->isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 8838
    :cond_b2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 8839
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_d7

    const-string v0, "NotificationService"

    .line 8840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suppressing notification from package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_8b .. :try_end_d7} :catchall_572

    .line 9053
    :cond_d7
    :try_start_d7
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_df
    if-ge v4, v0, :cond_102

    .line 9055
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 9056
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 9057
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_102

    :cond_ff
    add-int/lit8 v4, v4, 0x1

    goto :goto_df

    .line 9061
    :cond_102
    :goto_102
    monitor-exit v3
    :try_end_103
    .catchall {:try_start_d7 .. :try_end_103} :catchall_59e

    return-void

    .line 8846
    :cond_104
    :try_start_104
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 8848
    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_176

    const-string/jumbo v2, "ranker_group"

    .line 8849
    invoke-virtual {v8}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_176

    .line 8850
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 8851
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v10

    .line 8850
    invoke-virtual {v2, v0, v9, v10}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 8852
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_176

    const-string v0, "NotificationService"

    .line 8853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are not grouped notifications. groupKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catchall {:try_start_104 .. :try_end_149} :catchall_572

    .line 9053
    :try_start_149
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_151
    if-ge v4, v0, :cond_174

    .line 9055
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 9056
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_171

    .line 9057
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_174

    :cond_171
    add-int/lit8 v4, v4, 0x1

    goto :goto_151

    .line 9061
    :cond_174
    :goto_174
    monitor-exit v3
    :try_end_175
    .catchall {:try_start_149 .. :try_end_175} :catchall_59e

    return-void

    .line 8859
    :cond_176
    :try_start_176
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 8860
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v9

    invoke-virtual {v0, v2, v9}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(Ljava/lang/String;I)Z

    move-result v0

    .line 8861
    invoke-virtual {v6, v0}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    if-eqz v0, :cond_196

    .line 8863
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V

    .line 8865
    :cond_196
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    if-eqz v0, :cond_1bb

    .line 8868
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v2

    if-nez v2, :cond_1af

    goto :goto_1bb

    .line 8871
    :cond_1af
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    goto :goto_1c8

    .line 8869
    :cond_1bb
    :goto_1bb
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationInstanceIdSequence(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/InstanceIdSequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    .line 8874
    :goto_1c8
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_222

    .line 8876
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8877
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 8878
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v9

    .line 8879
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->postElapsedTimeMs:J

    .line 8878
    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;J)V

    .line 8880
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v7, v6}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 8881
    invoke-virtual {v6, v2}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 8882
    invoke-virtual {v6, v2}, Lcom/android/server/notification/NotificationRecord;->setTextChanged(Z)V

    .line 8883
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mpostedNotificationLog(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    .line 8885
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationReminder(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationReminder;

    move-result-object v2

    if-eqz v2, :cond_26f

    .line 8886
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationReminder(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationReminder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/notification/NotificationReminder;->addNotificationRecord(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_26f

    .line 8890
    :cond_222
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 8891
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8892
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v2

    invoke-virtual {v2, v6, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 8893
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v9

    .line 8894
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->postElapsedTimeMs:J

    .line 8893
    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationUpdated(Ljava/lang/String;Landroid/os/UserHandle;J)V

    .line 8896
    iget v2, v8, Landroid/app/Notification;->flags:I

    .line 8897
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->flags:I

    and-int/lit8 v9, v9, 0x40

    or-int/2addr v2, v9

    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 8898
    iput-boolean v1, v6, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 8899
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v0, v6}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 8900
    invoke-virtual {v6, v2}, Lcom/android/server/notification/NotificationRecord;->setTextChanged(Z)V

    .line 8903
    :cond_26f
    :goto_26f
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8907
    iget v2, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v9, v2, 0x40

    const/4 v10, 0x2

    if-eqz v9, :cond_28e

    or-int/lit8 v2, v2, 0x20

    .line 8908
    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 8909
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v9, v9, Lcom/android/server/notification/NotificationManagerService;->mAllowFgsDismissal:Z

    if-nez v9, :cond_28e

    or-int/2addr v2, v10

    .line 8910
    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 8914
    :cond_28e
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v2, v6}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 8915
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v2, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 8916
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v2, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2, v6}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    .line 8920
    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    const/4 v11, 0x4

    if-eqz v9, :cond_49f

    .line 8924
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misInCall(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v9

    if-eqz v9, :cond_2cc

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v9, v9, Lcom/android/server/notification/NotificationManagerService;->mIsDisableHunByCall:Z

    if-eqz v9, :cond_2cc

    const-string v9, "NotificationService"

    const-string v12, "Disable HeadsUp by Call"

    .line 8925
    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8926
    iget v9, v8, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v8, Landroid/app/Notification;->semFlags:I

    move v9, v1

    goto :goto_2cd

    :cond_2cc
    move v9, v4

    :goto_2cd
    if-nez v9, :cond_32b

    .line 8932
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v12}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmSmartPopupEnable(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v12

    if-eqz v12, :cond_32b

    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v12}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmMultiStarEnable(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v12

    if-eqz v12, :cond_32b

    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v12}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmFloatingPackageList(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_32b

    const-string v12, "NotificationService"

    .line 8933
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MultiStar Ghost Floatiog on, List = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v14}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmFloatingPackageList(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8934
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v12}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmFloatingPackageList(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "all"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_325

    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v12}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmFloatingPackageList(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32b

    .line 8935
    :cond_325
    iget v12, v8, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v12, v12, 0x8

    iput v12, v8, Landroid/app/Notification;->semFlags:I

    :cond_32b
    if-nez v9, :cond_449

    .line 8943
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object v9

    if-eqz v9, :cond_449

    .line 8944
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v12, "isHeadUp"

    .line 8945
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v13

    if-lt v13, v11, :cond_345

    move v13, v1

    goto :goto_346

    :cond_345
    move v13, v4

    :goto_346
    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v12, "isUpdate"

    .line 8946
    iget-boolean v13, v6, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v12, "isInterrupt"

    .line 8947
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v13

    if-eqz v13, :cond_36a

    iget-object v13, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v13, v13, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 8948
    invoke-virtual {v13}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v13

    iget v13, v13, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_36a

    move v13, v1

    goto :goto_36b

    :cond_36a
    move v13, v4

    .line 8947
    :goto_36b
    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v12, "visibility"

    .line 8949
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v13

    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v12, "sound"

    .line 8950
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v12, "vibrate"

    .line 8951
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getVibration()Landroid/os/VibrationEffect;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v12, "bubble"

    .line 8952
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v13

    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v12, "smartPopup"

    .line 8953
    invoke-virtual {v9, v12, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "canBypassDnd"

    .line 8954
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v13

    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8956
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v12

    if-lt v12, v11, :cond_449

    const-string v11, "call"

    .line 8959
    invoke-virtual {v6, v11}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3c1

    iget-object v11, v8, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v11, :cond_3bf

    goto :goto_3c1

    :cond_3bf
    move v11, v4

    goto :goto_3c2

    :cond_3c1
    :goto_3c1
    move v11, v1

    :goto_3c2
    if-eqz v11, :cond_3d3

    const-string v9, "NotificationService"

    const-string v10, "Category call notification, so make not work edgelighting"

    .line 8964
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8965
    iget v9, v8, Landroid/app/Notification;->semFlags:I

    or-int/lit16 v9, v9, 0x1000

    iput v9, v8, Landroid/app/Notification;->semFlags:I

    goto/16 :goto_449

    .line 8967
    :cond_3d3
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v11}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object v11

    invoke-virtual {v11, v5, v9}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z

    move-result v9

    if-eqz v9, :cond_3fc

    const-string v9, "NotificationService"

    const-string v10, "Changed notification by edgelighting."

    .line 8968
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8969
    iget v9, v8, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v9, v9, 0x8

    or-int/lit16 v9, v9, 0x2000

    .line 8970
    iput v9, v8, Landroid/app/Notification;->semFlags:I

    .line 8973
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mreceiveFollowedNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    goto :goto_449

    .line 8975
    :cond_3fc
    sget-boolean v8, Lcom/android/server/notification/NmRune;->NM_SUPPORT_CLEAR_COVER_NOTI_LIST:Z

    if-eqz v8, :cond_449

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmCoverManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v8

    if-eqz v8, :cond_449

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmCoverManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v8

    .line 8976
    invoke-virtual {v8}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v8

    if-eqz v8, :cond_449

    .line 8977
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmCoverManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v8

    if-eqz v8, :cond_428

    .line 8978
    invoke-virtual {v8}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v9

    if-nez v9, :cond_428

    move v9, v1

    goto :goto_429

    :cond_428
    move v9, v4

    :goto_429
    if-eqz v8, :cond_42f

    .line 8979
    invoke-virtual {v8}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v10

    :cond_42f
    if-eqz v9, :cond_449

    const/16 v8, 0x11

    if-ne v10, v8, :cond_449

    const-string v8, "NotificationService"

    const-string v9, "clear view cover is closed, so cancel delayed wakelock"

    .line 8981
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8984
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mreceiveFollowedNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 8994
    :cond_449
    :goto_449
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v8

    if-nez v8, :cond_456

    .line 8995
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v8, v6}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v8

    goto :goto_457

    :cond_456
    move v8, v4

    :goto_457
    if-eqz v0, :cond_45d

    .line 8999
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .line 9000
    :cond_45d
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v9

    invoke-virtual {v9, v6, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    if-eqz v7, :cond_476

    .line 9001
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48d

    :cond_476
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 9002
    invoke-static {v9, v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCritical(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    if-nez v9, :cond_48d

    .line 9003
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v7

    new-instance v9, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v5}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_49d

    :cond_48d
    if-eqz v7, :cond_49d

    .line 9011
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v5

    new-instance v7, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v6}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_49d
    :goto_49d
    move v9, v8

    goto :goto_4f1

    :cond_49f
    const-string v7, "NotificationService"

    .line 9015
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not posting notification without small icon: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4d6

    .line 9016
    iget-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v7, :cond_4d6

    .line 9017
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v7

    .line 9018
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v8

    .line 9017
    invoke-virtual {v7, v6, v11, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 9019
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v7

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;

    invoke-direct {v8, p0, v5}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4d6
    const-string v7, "NotificationService"

    .line 9029
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9030
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9029
    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v4

    .line 9033
    :goto_4f1
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v5

    if-eqz v5, :cond_508

    .line 9034
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v7

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V

    .line 9039
    :cond_508
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 9040
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationManagerService;->maybeRegisterMessageSent(Lcom/android/server/notification/NotificationRecord;)V

    .line 9041
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v6, v1}, Lcom/android/server/notification/NotificationManagerService;->maybeReportForegroundServiceUpdate(Lcom/android/server/notification/NotificationRecord;Z)V

    .line 9044
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmSmartAlertController(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SmartAlertController;

    move-result-object v1

    if-eqz v1, :cond_52c

    .line 9045
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmSmartAlertController(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SmartAlertController;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Lcom/android/server/notification/SmartAlertController;->checkMissedEvent(Ljava/util/ArrayList;)V

    .line 9050
    :cond_52c
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 9051
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/notification/NotificationManagerService;->getGroupInstanceId(Ljava/lang/String;)Lcom/android/internal/logging/InstanceId;

    move-result-object v10

    move-object v7, v0

    move v8, v2

    .line 9050
    invoke-interface/range {v5 .. v10}, Lcom/android/server/notification/NotificationRecordLogger;->maybeLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
    :try_end_545
    .catchall {:try_start_176 .. :try_end_545} :catchall_572

    .line 9053
    :try_start_545
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_54d
    if-ge v4, v0, :cond_570

    .line 9055
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 9056
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56d

    .line 9057
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_570

    :cond_56d
    add-int/lit8 v4, v4, 0x1

    goto :goto_54d

    .line 9062
    :cond_570
    :goto_570
    monitor-exit v3

    return-void

    :catchall_572
    move-exception v0

    .line 9053
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_57b
    if-ge v4, v1, :cond_59d

    .line 9055
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 9056
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_596

    add-int/lit8 v4, v4, 0x1

    goto :goto_57b

    .line 9057
    :cond_596
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9061
    :cond_59d
    throw v0

    :catchall_59e
    move-exception p0

    .line 9062
    monitor-exit v3
    :try_end_5a0
    .catchall {:try_start_545 .. :try_end_5a0} :catchall_59e

    throw p0
.end method

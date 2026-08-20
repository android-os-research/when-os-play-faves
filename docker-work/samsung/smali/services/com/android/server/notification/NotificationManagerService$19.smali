.class public Lcom/android/server/notification/NotificationManagerService$19;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$cancellationElapsedTimeMs:J

.field public final synthetic val$channelId:Ljava/lang/String;

.field public final synthetic val$doit:Z

.field public final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic val$mustHaveFlags:I

.field public final synthetic val$mustNotHaveFlags:I

.field public final synthetic val$pkg:Ljava/lang/String;

.field public final synthetic val$reason:I

.field public final synthetic val$userId:I


# direct methods
.method public static synthetic $r8$lambda$9lTUFv6tsRoIG-df6Mhmu75snKs(III)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$19;->lambda$run$0(III)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;IIIIZLjava/lang/String;J)V
    .registers 14

    .line 11098
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$callingPid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$userId:I

    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$mustHaveFlags:I

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$mustNotHaveFlags:I

    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$reason:I

    iput-boolean p10, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$doit:Z

    iput-object p11, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$channelId:Ljava/lang/String;

    iput-wide p12, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$cancellationElapsedTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(III)Z
    .registers 5

    and-int v0, p2, p0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_6

    return v1

    :cond_6
    and-int p0, p2, p1

    if-eqz p0, :cond_b

    return v1

    :cond_b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public run()V
    .registers 23

    move-object/from16 v0, p0

    .line 11101
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 11102
    :goto_e
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$callingUid:I

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$callingPid:I

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$pkg:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$userId:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$mustHaveFlags:I

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$mustNotHaveFlags:I

    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$reason:I

    move-object v9, v1

    invoke-static/range {v2 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 11108
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$doit:Z

    if-nez v2, :cond_25

    return-void

    .line 11112
    :cond_25
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v15, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v15

    .line 11113
    :try_start_2a
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$mustHaveFlags:I

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$mustNotHaveFlags:I

    new-instance v14, Lcom/android/server/notification/NotificationManagerService$19$$ExternalSyntheticLambda0;

    invoke-direct {v14, v2, v3}, Lcom/android/server/notification/NotificationManagerService$19$$ExternalSyntheticLambda0;-><init>(II)V

    .line 11122
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$callingUid:I

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$callingPid:I

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$pkg:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$channelId:Ljava/lang/String;

    const/4 v10, 0x0

    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$userId:I

    iget v13, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$reason:I

    const/16 v16, 0x1

    move/from16 v18, v13

    iget-wide v12, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$cancellationElapsedTimeMs:J
    :try_end_4b
    .catchall {:try_start_2a .. :try_end_4b} :catchall_8e

    move-object v9, v14

    move-wide/from16 v19, v12

    const/4 v12, 0x0

    move/from16 v13, v18

    move-object/from16 v18, v14

    move-object v14, v1

    move-object/from16 v21, v15

    move/from16 v15, v16

    move-wide/from16 v16, v19

    :try_start_5a
    invoke-static/range {v2 .. v17}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 11126
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$callingUid:I

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$callingPid:I

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$pkg:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$channelId:Ljava/lang/String;

    const/4 v10, 0x0

    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$userId:I

    iget v13, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$reason:I

    const/4 v15, 0x0

    move/from16 v16, v13

    iget-wide v12, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$cancellationElapsedTimeMs:J

    move-object/from16 v9, v18

    move-wide/from16 v17, v12

    const/4 v12, 0x0

    move/from16 v13, v16

    move-object v14, v1

    move-wide/from16 v16, v17

    invoke-static/range {v2 .. v17}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 11131
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$userId:I

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$19;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;)Z

    .line 11132
    monitor-exit v21

    return-void

    :catchall_8e
    move-exception v0

    move-object/from16 v21, v15

    :goto_91
    monitor-exit v21
    :try_end_92
    .catchall {:try_start_5a .. :try_end_92} :catchall_93

    throw v0

    :catchall_93
    move-exception v0

    goto :goto_91
.end method

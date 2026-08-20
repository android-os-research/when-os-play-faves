.class public Lcom/android/server/notification/NotificationManagerService$20;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
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

.field public final synthetic val$includeCurrentProfiles:Z

.field public final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic val$reason:I

.field public final synthetic val$userId:I


# direct methods
.method public static synthetic $r8$lambda$lewy7iIkiGakqXqBN_WO5xLTZkg(II)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService$20;->lambda$run$0(II)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIZJ)V
    .registers 10

    .line 11242
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$20;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$20;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$20;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$20;->val$callingPid:I

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$20;->val$userId:I

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$20;->val$reason:I

    iput-boolean p7, p0, Lcom/android/server/notification/NotificationManagerService$20;->val$includeCurrentProfiles:Z

    iput-wide p8, p0, Lcom/android/server/notification/NotificationManagerService$20;->val$cancellationElapsedTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(II)Z
    .registers 3

    const/16 v0, 0xb

    if-eq v0, p0, :cond_b

    const/4 v0, 0x3

    if-ne v0, p0, :cond_8

    goto :goto_b

    :cond_8
    const/16 p0, 0x22

    goto :goto_d

    :cond_b
    :goto_b
    const/16 p0, 0x1022

    :goto_d
    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public run()V
    .registers 23

    move-object/from16 v0, p0

    .line 11245
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$20;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 11247
    :try_start_7
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v2, :cond_d

    const/4 v2, 0x0

    goto :goto_13

    :cond_d
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 11248
    :goto_13
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$callingUid:I

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$callingPid:I

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$userId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$reason:I

    move-object v10, v2

    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 11251
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$reason:I

    new-instance v15, Lcom/android/server/notification/NotificationManagerService$20$$ExternalSyntheticLambda0;

    invoke-direct {v15, v3}, Lcom/android/server/notification/NotificationManagerService$20$$ExternalSyntheticLambda0;-><init>(I)V

    .line 11263
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$20;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$callingUid:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$callingPid:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v11, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$includeCurrentProfiles:Z

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$userId:I

    iget v14, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$reason:I

    const/16 v16, 0x1

    move/from16 v18, v14

    iget-wide v13, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$cancellationElapsedTimeMs:J

    move-object v10, v15

    move-wide/from16 v19, v13

    const/4 v13, 0x1

    move/from16 v14, v18

    move-object/from16 v21, v15

    move-object v15, v2

    move-wide/from16 v17, v19

    invoke-static/range {v3 .. v18}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 11267
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$20;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$callingUid:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$callingPid:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v11, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$includeCurrentProfiles:Z

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$userId:I

    iget v14, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$reason:I

    const/16 v16, 0x0

    move/from16 v17, v14

    iget-wide v13, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$cancellationElapsedTimeMs:J

    move-object/from16 v10, v21

    move-wide/from16 v18, v13

    const/4 v13, 0x1

    move/from16 v14, v17

    move-object v15, v2

    move-wide/from16 v17, v18

    invoke-static/range {v3 .. v18}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 11271
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$20;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$userId:I

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$20;->val$includeCurrentProfiles:Z

    invoke-virtual {v2, v3, v0}, Lcom/android/server/notification/SnoozeHelper;->cancel(IZ)V

    .line 11272
    monitor-exit v1

    return-void

    :catchall_7f
    move-exception v0

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_7 .. :try_end_81} :catchall_7f

    throw v0
.end method

.class public Lcom/android/server/notification/NotificationManagerService$11;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/GroupHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->getGroupHelper()Lcom/android/server/notification/GroupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 3071
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAutoGroup(Ljava/lang/String;)V
    .registers 3

    .line 3074
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3075
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->addAutogroupKeyLocked(Ljava/lang/String;)V

    .line 3076
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 3089
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public removeAutoGroup(Ljava/lang/String;)V
    .registers 3

    .line 3081
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3082
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeAutogroupKeyLocked(Ljava/lang/String;)V

    .line 3083
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public removeAutoGroupSummary(ILjava/lang/String;)V
    .registers 4

    .line 3095
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3096
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->clearAutogroupSummaryLocked(ILjava/lang/String;)V

    .line 3097
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public updateAutogroupSummary(ILjava/lang/String;Z)V
    .registers 6

    if-eqz p2, :cond_12

    .line 3102
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmActivityManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    .line 3103
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 3104
    :goto_13
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3105
    :try_start_18
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->updateAutobundledSummaryFlags(ILjava/lang/String;ZZ)V

    .line 3106
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw p0
.end method

.class public Lcom/android/server/notification/NotificationReminder$4;
.super Ljava/lang/Object;
.source "NotificationReminder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationReminder;->removeFromNotiList(Lcom/android/server/notification/NotificationRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;

.field public final synthetic val$record:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    .line 240
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$4;->this$0:Lcom/android/server/notification/NotificationReminder;

    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder$4;->val$record:Lcom/android/server/notification/NotificationRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$4;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_5
    const-string v1, "NotificationReminder"

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeFromNotiList record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$4;->val$record:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$4;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v2, v1, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$4;->val$record:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mfindNotificationByListLocked(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    .line 246
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$4;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 247
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    throw p0
.end method

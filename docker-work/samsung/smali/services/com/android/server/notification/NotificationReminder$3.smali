.class public Lcom/android/server/notification/NotificationReminder$3;
.super Ljava/lang/Object;
.source "NotificationReminder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationReminder;->addNotificationRecord(Lcom/android/server/notification/NotificationRecord;)V
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

    .line 228
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder$3;->val$record:Lcom/android/server/notification/NotificationRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 231
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_5
    const-string v1, "NotificationReminder"

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNotificationRecord record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$3;->val$record:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$3;->val$record:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_30

    throw p0
.end method

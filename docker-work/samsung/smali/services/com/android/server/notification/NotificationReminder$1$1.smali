.class public Lcom/android/server/notification/NotificationReminder$1$1;
.super Ljava/lang/Object;
.source "NotificationReminder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationReminder$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/NotificationReminder$1;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder$1;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Lcom/android/server/notification/NotificationReminder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Lcom/android/server/notification/NotificationReminder$1;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 105
    :try_start_7
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Lcom/android/server/notification/NotificationReminder$1;

    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v2, v1, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$misRemindNeeded(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 106
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Lcom/android/server/notification/NotificationReminder$1;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mplaySoundVibration(Lcom/android/server/notification/NotificationReminder;)V

    .line 108
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0
.end method

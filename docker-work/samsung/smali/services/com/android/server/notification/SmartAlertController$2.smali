.class public Lcom/android/server/notification/SmartAlertController$2;
.super Ljava/lang/Object;
.source "SmartAlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/SmartAlertController;->checkMissedEvent(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;

.field public final synthetic val$notiList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V
    .registers 3

    .line 134
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    iput-object p2, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 137
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 139
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fputmMissedEventExist(Lcom/android/server/notification/SmartAlertController;Z)V

    .line 140
    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_47

    .line 143
    iget-object v5, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 144
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    if-eqz v6, :cond_44

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->semMissedCount:I

    if-lez v6, :cond_44

    .line 145
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v0, v5, :cond_44

    const-string v0, "SmartAlertController"

    const-string v2, "SmartAlert - Found Missed Event"

    .line 146
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fputmMissedEventExist(Lcom/android/server/notification/SmartAlertController;Z)V

    goto :goto_47

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 153
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmScreenOn(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmMissedEventExist(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 154
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-virtual {v0}, Lcom/android/server/notification/SmartAlertController;->registerListener()V

    .line 156
    :cond_5c
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmMissedEventExist(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 157
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-virtual {p0, v3}, Lcom/android/server/notification/SmartAlertController;->unregisterListener(Z)V

    .line 159
    :cond_69
    monitor-exit v1

    return-void

    :catchall_6b
    move-exception p0

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_6b

    throw p0
.end method

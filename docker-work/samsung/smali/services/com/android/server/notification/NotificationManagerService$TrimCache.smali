.class public Lcom/android/server/notification/NotificationManagerService$TrimCache;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrimCache"
.end annotation


# instance fields
.field public heavy:Landroid/service/notification/StatusBarNotification;

.field public sbnClone:Landroid/service/notification/StatusBarNotification;

.field public sbnCloneLight:Landroid/service/notification/StatusBarNotification;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 11944
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11945
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;
    .registers 3

    .line 11949
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getOnNotificationPostedTrim(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    .line 11950
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    if-nez p1, :cond_19

    .line 11951
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    .line 11953
    :cond_19
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    return-object p0

    .line 11955
    :cond_1c
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    if-nez p1, :cond_28

    .line 11956
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    .line 11958
    :cond_28
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

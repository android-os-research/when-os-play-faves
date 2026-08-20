.class public final Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
.super Landroid/service/notification/IStatusBarNotificationHolder$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusBarNotificationHolder"
.end annotation


# instance fields
.field public mValue:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    .line 13699
    invoke-direct {p0}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;-><init>()V

    .line 13700
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public get()Landroid/service/notification/StatusBarNotification;
    .registers 3

    .line 13706
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    const/4 v1, 0x0

    .line 13707
    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

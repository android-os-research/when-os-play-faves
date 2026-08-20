.class public Lcom/android/server/notification/NotificationManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
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

    .line 2085
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 2088
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.notification.REQUEST_REBIND_LISTENER"

    .line 2089
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p1, -0x2

    const-string v0, "android.intent.extra.user_handle"

    .line 2090
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "packageName"

    .line 2091
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "className"

    .line 2092
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2093
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$menableNotificationListener(Lcom/android/server/notification/NotificationManagerService;Landroid/content/ComponentName;I)V

    :cond_2a
    return-void
.end method

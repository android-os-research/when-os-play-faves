.class public Lcom/android/server/net/NetworkPolicyManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 1525
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "android.net.NETWORK_TEMPLATE"

    .line 1531
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;

    .line 1532
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1533
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/16 p2, 0x22

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V

    goto :goto_59

    .line 1534
    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1535
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/16 p2, 0x2d

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V

    goto :goto_59

    .line 1537
    :cond_30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.server.net.action.SNOOZE_TETHERING_WARNING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 1538
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmClock(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/time/Clock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmTetheringNotiSnooze(Lcom/android/server/net/NetworkPolicyManagerService;J)V

    .line 1539
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3ef

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x0

    .line 1540
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 1541
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_59
    :goto_59
    return-void
.end method

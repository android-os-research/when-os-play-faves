.class public Lcom/android/server/TelephonyRegistry$2;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .registers 2

    .line 616
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 619
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 621
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, 0x0

    .line 622
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 624
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p2}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmHandler(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmHandler(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_94

    :cond_28
    const-string v0, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    .line 625
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 628
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 626
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 629
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 631
    invoke-static {v0, p1}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mgetPhoneIdFromSubId(Lcom/android/server/TelephonyRegistry;I)I

    move-result v0

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    .line 629
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 639
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0, p2}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mvalidatePhoneId(Lcom/android/server/TelephonyRegistry;I)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmDefaultSubId(Lcom/android/server/TelephonyRegistry;)I

    move-result v0

    if-ne p1, v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmDefaultPhoneId(Lcom/android/server/TelephonyRegistry;)I

    move-result v0

    if-eq p2, v0, :cond_73

    .line 642
    :cond_5e
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmHandler(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmHandler(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_94

    .line 645
    :cond_73
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p2, p1}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mgetPhoneIdFromSubId(Lcom/android/server/TelephonyRegistry;I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_94

    .line 646
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p1, p2}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fputmDefaultSubId(Lcom/android/server/TelephonyRegistry;I)V

    .line 647
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p0, p2}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fputmDefaultPhoneId(Lcom/android/server/TelephonyRegistry;I)V

    goto :goto_94

    :cond_87
    const-string p2, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 650
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 651
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$monMultiSimConfigChanged(Lcom/android/server/TelephonyRegistry;)V

    :cond_94
    :goto_94
    return-void
.end method

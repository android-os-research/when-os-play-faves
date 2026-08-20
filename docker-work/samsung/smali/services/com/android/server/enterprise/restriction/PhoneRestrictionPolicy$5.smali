.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .registers 2

    .line 2613
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 2617
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhoneRestrictionPolicy"

    if-nez p1, :cond_e

    const-string p0, "action is null"

    .line 2619
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2622
    :cond_e
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 2623
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 2625
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSmsMmsDeliveryHandler(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 2626
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSmsMmsDeliveryHandler(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2628
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$mnotifyRcsChangesAllUser(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    .line 2629
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$mnotifySmsPatternCheck(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    goto :goto_69

    :cond_38
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 2630
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_63

    const-string p2, "android.intent.action.REBOOT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    goto :goto_63

    :cond_49
    const-string p2, "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

    .line 2635
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 2636
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSimPinHandler(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSimPinBind(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_69

    .line 2633
    :cond_63
    :goto_63
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fputmIsPhoneShuttingDown(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Z)V

    :cond_69
    :goto_69
    return-void
.end method

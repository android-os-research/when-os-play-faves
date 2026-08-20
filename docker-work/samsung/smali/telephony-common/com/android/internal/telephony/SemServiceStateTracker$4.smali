.class Lcom/android/internal/telephony/SemServiceStateTracker$4;
.super Ljava/lang/Object;
.source "SemServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemServiceStateTracker;)V
    .registers 2

    .line 958
    iput-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 960
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, -0x2

    if-eq p2, p1, :cond_47

    const/4 p1, -0x1

    if-eq p2, p1, :cond_a

    goto :goto_61

    .line 964
    :cond_a
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "root_key"

    const-string v0, "NETWORK_OPERATORS"

    .line 965
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 966
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string v0, "network_manual_selection_when_bootup"

    .line 967
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 969
    :try_start_23
    iget-object p2, p0, Lcom/android/internal/telephony/SemServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_61

    :catch_2f
    move-exception p1

    .line 971
    iget-object p2, p0, Lcom/android/internal/telephony/SemServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRescanDialogClickListener - startActivity fail. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLoge(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    goto :goto_61

    .line 976
    :cond_47
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const-string p2, "sendMessageDelayed(EVENT_NETWORK_STATE_CHANGED_BY_RESCAN)"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    .line 977
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const/16 p2, 0x3f1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 980
    :goto_61
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fputmRescanDialog(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/app/AlertDialog;)V

    return-void
.end method

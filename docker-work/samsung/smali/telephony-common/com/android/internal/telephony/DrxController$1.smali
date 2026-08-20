.class Lcom/android/internal/telephony/DrxController$1;
.super Landroid/content/BroadcastReceiver;
.source "DrxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DrxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/DrxController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/DrxController;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/DrxController$1;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "phone"

    const/4 v0, -0x1

    .line 87
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$1;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-static {v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/DrxController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq v0, p1, :cond_14

    return-void

    .line 92
    :cond_14
    iget-object p1, p0, Lcom/android/internal/telephony/DrxController$1;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mlog(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.ACTION_DRX_BACK_TO_DEFAULT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 95
    iget-object p0, p0, Lcom/android/internal/telephony/DrxController$1;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-static {p0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mchangeDrxToDefault(Lcom/android/internal/telephony/DrxController;)V

    :cond_3f
    return-void
.end method

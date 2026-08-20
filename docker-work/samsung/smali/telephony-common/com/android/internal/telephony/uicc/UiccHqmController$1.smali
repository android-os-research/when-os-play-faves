.class Lcom/android/internal/telephony/uicc/UiccHqmController$1;
.super Landroid/content/BroadcastReceiver;
.source "UiccHqmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccHqmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccHqmController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccHqmController;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccHqmController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccHqmController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccHqmController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "feature"

    const/4 v2, 0x0

    .line 92
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.intent.action.UICC_HQM_DATA"

    .line 94
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    const/4 p1, 0x2

    if-eq v0, p1, :cond_55

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "not handled feature : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    .line 97
    :cond_55
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccHqmController;

    const-string p1, "slot"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "event"

    .line 98
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "result"

    .line 99
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "error"

    .line 100
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/internal/telephony/uicc/UiccHqmController;->-$$Nest$msendSchgInfo(Lcom/android/internal/telephony/uicc/UiccHqmController;IIILjava/lang/String;)V

    goto :goto_b2

    :cond_73
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const-string p1, "phone"

    .line 108
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccHqmController;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/uicc/UiccHqmController;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccHqmController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccHqmController;

    const-string v2, "ss"

    .line 110
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-static {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccHqmController;->-$$Nest$mgetSimState(Lcom/android/internal/telephony/uicc/UiccHqmController;ILjava/lang/String;)I

    move-result p2

    aput p2, v0, p1

    .line 111
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccHqmController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccHqmController;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/uicc/UiccHqmController;->-$$Nest$msetPbStateBySimState(Lcom/android/internal/telephony/uicc/UiccHqmController;I)V

    .line 112
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccHqmController;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->-$$Nest$msendUiccHqm(Lcom/android/internal/telephony/uicc/UiccHqmController;)V

    goto :goto_b2

    :cond_a0
    const-string p2, "com.samsung.intent.action.UICC_HQM_TIME_UP"

    .line 113
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 114
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccHqmController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccHqmController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/uicc/UiccHqmController;->-$$Nest$fputmUiccHqmState(Lcom/android/internal/telephony/uicc/UiccHqmController;I)V

    .line 115
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccHqmController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccHqmController;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->-$$Nest$msendUiccHqm(Lcom/android/internal/telephony/uicc/UiccHqmController;)V

    :cond_b2
    :goto_b2
    return-void
.end method

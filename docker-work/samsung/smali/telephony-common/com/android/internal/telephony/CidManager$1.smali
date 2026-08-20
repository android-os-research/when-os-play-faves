.class Lcom/android/internal/telephony/CidManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CidManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CidManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CidManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CidManager;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/CidManager$1;->this$0:Lcom/android/internal/telephony/CidManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/android/internal/telephony/CidManager$1;->this$0:Lcom/android/internal/telephony/CidManager;

    iget-object p2, p2, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent.getAction() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 110
    iget-object p1, p0, Lcom/android/internal/telephony/CidManager$1;->this$0:Lcom/android/internal/telephony/CidManager;

    invoke-static {p1}, Lcom/android/internal/telephony/CidManager;->-$$Nest$fgetmMaxInterfaceCountForSlot(Lcom/android/internal/telephony/CidManager;)I

    move-result p1

    const-string p2, "ril.max_interface0"

    const/4 v0, 0x4

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq p1, v1, :cond_62

    .line 111
    iget-object p1, p0, Lcom/android/internal/telephony/CidManager$1;->this$0:Lcom/android/internal/telephony/CidManager;

    iget-object p1, p1, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxInterfaceCountForSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CidManager$1;->this$0:Lcom/android/internal/telephony/CidManager;

    invoke-static {v2}, Lcom/android/internal/telephony/CidManager;->-$$Nest$fgetmMaxInterfaceCountForSlot(Lcom/android/internal/telephony/CidManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ril.max_interface0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p0, p0, Lcom/android/internal/telephony/CidManager$1;->this$0:Lcom/android/internal/telephony/CidManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CidManager;->init()V

    :cond_62
    return-void
.end method

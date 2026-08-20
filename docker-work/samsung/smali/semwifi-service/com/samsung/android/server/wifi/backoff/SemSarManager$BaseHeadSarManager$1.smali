.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;)V
    .registers 2

    .line 458
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 461
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.samsung.media.action.receiver_sar"

    .line 462
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "SemWifiBackOff.Sar"

    const/4 v1, 0x0

    if-eqz p1, :cond_51

    .line 463
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;

    const-string v2, "android.samsung.media.extra.receiver"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsRcvEnabled:Z

    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "received android.samsung.media.action.receiver_sar, mIsRcvEnabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;

    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsRcvEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mPrevBackoffEnabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;

    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mWifiEnabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;

    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsRcvEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->triggerReceiverRoutine(Z)V

    goto :goto_84

    .line 467
    :cond_51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_84

    const-string p1, "state"

    .line 468
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 469
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received ACTION_PHONE_STATE_CHANGED, phoneState="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_84

    .line 471
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager$1;->this$1:Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->triggerReceiverRoutine(Z)V

    :cond_84
    :goto_84
    return-void
.end method

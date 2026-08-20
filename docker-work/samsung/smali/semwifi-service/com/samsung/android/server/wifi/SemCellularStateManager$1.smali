.class Lcom/samsung/android/server/wifi/SemCellularStateManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemCellularStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemCellularStateManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SemCellularStateManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    .line 138
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    const-string v0, "policyData"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmIsMobileDataLimited(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_DATA_LIMIT_INTENT: mIsMobileDataLimited = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmIsMobileDataLimited(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mnotifyCellularStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    goto :goto_7c

    :cond_3a
    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 143
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmWifiCarrierInfoManager(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimCardReady()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmIsSimCardReady(Lcom/samsung/android/server/wifi/SemCellularStateManager;Z)V

    const-string p1, "android.telephony.extra.SIM_STATE"

    .line 144
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_SIM_CARD_STATE_CHANGED: mIsSimCardReady = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmIsSimCardReady(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", sim_state = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$1;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mnotifyCellularStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    :cond_7c
    :goto_7c
    return-void
.end method

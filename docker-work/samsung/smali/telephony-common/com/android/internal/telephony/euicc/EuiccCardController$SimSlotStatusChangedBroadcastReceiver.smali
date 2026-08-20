.class Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimSlotStatusChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 77
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->isEmbeddedCardPresent()Z

    move-result p1

    if-nez p1, :cond_15

    return-void

    .line 80
    :cond_15
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->isEmbeddedSlotActivated()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 81
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$fgetmEuiccController(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/euicc/EuiccController;->startOtaUpdatingIfNecessary()V

    .line 83
    :cond_26
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/euicc/EuiccCardController;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$fgetmSimSlotStatusChangeReceiver(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_35
    return-void
.end method

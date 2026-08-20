.class public Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NfcConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcStateReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 57
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Action_nfc_state_changed"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-static {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$fgetmAdapterStateChangedHandler(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_52

    :cond_1f
    const-string p1, "com.sec.android.nfc.AUTH_READY"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 60
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-static {p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$fgetmEnableRequest(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 62
    iget-object p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-static {p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$fgetmEnableRequest(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$msendStateChanged(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    :cond_52
    :goto_52
    return-void
.end method

.class public Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "NfcConnectivity.java"

# interfaces
.implements Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v0, -0x1

    .line 71
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 72
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_ADAPTER_STATE_CHANGED state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-static {p2, p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$fputmState(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_50

    const/16 p2, 0xb

    if-eq p1, p2, :cond_50

    const/16 p2, 0xe

    if-eq p1, p2, :cond_49

    const/4 p2, 0x4

    if-eq p1, p2, :cond_49

    const/4 p2, 0x5

    if-eq p1, p2, :cond_36

    goto :goto_63

    .line 90
    :cond_36
    iget-object p2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-static {p2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$fgetmEnableRequest(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_50

    .line 91
    iget-object p2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$menableInternal(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Z)Z

    goto :goto_50

    .line 78
    :cond_49
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$msendStateChanged(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    goto :goto_63

    .line 97
    :cond_50
    :goto_50
    iget-object p2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-static {p2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$fgetmPrevState(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)I

    move-result p2

    if-ne p2, p1, :cond_63

    .line 98
    iget-object p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$msendStateChanged(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    .line 99
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-static {p0, v0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->-$$Nest$fputmPrevState(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    :cond_63
    :goto_63
    return-void
.end method

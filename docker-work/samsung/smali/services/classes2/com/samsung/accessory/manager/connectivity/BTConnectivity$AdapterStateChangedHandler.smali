.class public Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "BTConnectivity.java"

# interfaces
.implements Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/BTConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 44
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1a

    const/16 p2, 0xc

    if-eq p1, p2, :cond_11

    goto :goto_22

    .line 51
    :cond_11
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    goto :goto_22

    .line 54
    :cond_1a
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    :goto_22
    return-void
.end method

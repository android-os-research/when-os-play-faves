.class public Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;
.super Ljava/lang/Object;
.source "BluetoothRouteProvider.java"

# interfaces
.implements Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/BluetoothRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterStateChangedReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothRouteProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;)V
    .registers 2

    .line 522
    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 p3, -0x1

    .line 524
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_29

    const/16 p2, 0xd

    if-ne p1, p2, :cond_10

    goto :goto_29

    :cond_10
    const/16 p2, 0xc

    if-ne p1, p2, :cond_35

    .line 530
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p1}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mbuildBluetoothRoutes(Lcom/android/server/media/BluetoothRouteProvider;)V

    .line 531
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object p1, p1, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_35

    .line 532
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    goto :goto_35

    .line 527
    :cond_29
    :goto_29
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object p1, p1, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 528
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    :cond_35
    :goto_35
    return-void
.end method

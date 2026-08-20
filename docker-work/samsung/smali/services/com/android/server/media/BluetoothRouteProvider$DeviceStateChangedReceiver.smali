.class public Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;
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
    name = "DeviceStateChangedReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothRouteProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;)V
    .registers 2

    .line 538
    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;)V

    return-void
.end method


# virtual methods
.method public final handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    .line 577
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 578
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v0, v0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_40

    if-nez v0, :cond_39

    .line 581
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p1, p3}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mcreateBluetoothRoute(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object p1

    .line 582
    iget-object p2, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-lez p2, :cond_6a

    .line 583
    iget-object p2, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object p2, p2, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    goto :goto_6a

    .line 587
    :cond_39
    iget-object p0, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_6a

    :cond_40
    const/4 v1, 0x3

    if-eq p2, v1, :cond_45

    if-nez p2, :cond_6a

    :cond_45
    if-eqz v0, :cond_6a

    .line 592
    iget-object p2, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 593
    iget-object p1, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-nez p1, :cond_6a

    .line 594
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object p2, p1, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mremoveActiveRoute(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    .line 595
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .registers 7

    .line 541
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_ae

    goto :goto_52

    :sswitch_11
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_52

    :cond_1a
    const/4 v2, 0x5

    goto :goto_52

    :sswitch_1c
    const-string v0, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_52

    :cond_25
    const/4 v2, 0x4

    goto :goto_52

    :sswitch_27
    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_52

    :cond_30
    const/4 v2, 0x3

    goto :goto_52

    :sswitch_32
    const-string v0, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_52

    :cond_3b
    move v2, v1

    goto :goto_52

    :sswitch_3d
    const-string v0, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_52

    :cond_46
    const/4 v2, 0x1

    goto :goto_52

    :sswitch_48
    const-string v0, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    :goto_52
    packed-switch v2, :pswitch_data_c8

    goto :goto_ad

    .line 564
    :pswitch_56
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_ad

    .line 550
    :pswitch_5a
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    const/16 p2, 0x17

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/BluetoothRouteProvider;I)V

    if-eqz p3, :cond_68

    .line 552
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p1, p3}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$maddActiveHearingAidDevices(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)V

    .line 554
    :cond_68
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    goto :goto_ad

    .line 543
    :pswitch_6e
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/BluetoothRouteProvider;I)V

    if-eqz p3, :cond_88

    .line 545
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object p2, p1, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$maddActiveRoute(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    .line 547
    :cond_88
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    goto :goto_ad

    :pswitch_8e
    const/16 p1, 0x15

    .line 567
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_ad

    .line 557
    :pswitch_94
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    const/16 p2, 0x1a

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/BluetoothRouteProvider;I)V

    if-eqz p3, :cond_a2

    .line 559
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p1, p3}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$maddActiveLeAudioDevices(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)V

    .line 561
    :cond_a2
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    goto :goto_ad

    :pswitch_a8
    const/16 p1, 0x16

    .line 570
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    :goto_ad
    return-void

    :sswitch_data_ae
    .sparse-switch
        -0x693eab85 -> :sswitch_48
        -0x2caca392 -> :sswitch_3d
        -0x2486726f -> :sswitch_32
        0x1d0d7e43 -> :sswitch_27
        0x461dab18 -> :sswitch_1c
        0x4a286686 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_94
        :pswitch_8e
        :pswitch_6e
        :pswitch_5a
        :pswitch_56
    .end packed-switch
.end method

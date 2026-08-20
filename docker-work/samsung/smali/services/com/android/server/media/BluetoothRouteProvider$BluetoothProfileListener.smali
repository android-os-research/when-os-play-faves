.class public final Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;
.super Ljava/lang/Object;
.source "BluetoothRouteProvider.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/BluetoothRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BluetoothProfileListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothRouteProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;)V
    .registers 2

    .line 455
    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;-><init>(Lcom/android/server/media/BluetoothRouteProvider;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x16

    if-eq p1, v0, :cond_c

    return-void

    .line 470
    :cond_c
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothLeAudio;

    iput-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    .line 471
    invoke-static {p1}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$fgetmBluetoothAdapter(Lcom/android/server/media/BluetoothRouteProvider;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p1

    goto :goto_3b

    .line 465
    :cond_1c
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHearingAid;

    iput-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    .line 466
    invoke-static {p1}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$fgetmBluetoothAdapter(Lcom/android/server/media/BluetoothRouteProvider;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p1

    goto :goto_3b

    .line 460
    :cond_2c
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    iput-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    .line 462
    invoke-static {p1}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$fgetmBluetoothAdapter(Lcom/android/server/media/BluetoothRouteProvider;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p1

    .line 476
    :goto_3b
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_43
    :goto_43
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 477
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v1, v1, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    if-nez v1, :cond_70

    .line 479
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mcreateBluetoothRoute(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object v1

    .line 480
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v2, v2, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_70
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 483
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$maddActiveRoute(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    goto :goto_43

    .line 486
    :cond_7c
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_17

    const/16 v0, 0x15

    if-eq p1, v0, :cond_12

    const/16 v0, 0x16

    if-eq p1, v0, :cond_d

    return-void

    .line 498
    :cond_d
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iput-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    goto :goto_1b

    .line 495
    :cond_12
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iput-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_1b

    .line 492
    :cond_17
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iput-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    :goto_1b
    return-void
.end method

.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;
.super Ljava/lang/Object;
.source "SubscriberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeepGattDeviceInfo"
.end annotation


# instance fields
.field private advertiseStarted:Z

.field private final keepDeviceCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

.field private mcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

.field private final mcfDevice:Lcom/samsung/android/mcf/McfDevice;


# direct methods
.method static bridge synthetic -$$Nest$fgetmcfDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;)Lcom/samsung/android/mcf/McfDevice;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->mcfDevice:Lcom/samsung/android/mcf/McfDevice;

    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;)V
    .registers 3

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->mcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 680
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->keepDeviceCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    return-void
.end method


# virtual methods
.method getAdvertiseStarted()Z
    .registers 1

    .line 695
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->advertiseStarted:Z

    return p0
.end method

.method getKeepDeviceCallback()Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;
    .registers 1

    .line 689
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->keepDeviceCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    return-object p0
.end method

.method getMcfAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
    .registers 1

    .line 692
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->mcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    return-object p0
.end method

.method getMcfDevice()Lcom/samsung/android/mcf/McfDevice;
    .registers 1

    .line 686
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->mcfDevice:Lcom/samsung/android/mcf/McfDevice;

    return-object p0
.end method

.method setAdvertiseCallback(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)V
    .registers 2

    .line 683
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->mcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    return-void
.end method

.method setAdvertiseStarted(Z)V
    .registers 2

    .line 698
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->advertiseStarted:Z

    return-void
.end method

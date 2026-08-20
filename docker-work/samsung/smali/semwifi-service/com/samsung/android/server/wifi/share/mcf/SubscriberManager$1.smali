.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$1;
.super Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
.source "SubscriberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startAdvertiseTo(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;-><init>()V

    return-void
.end method

.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiProfileAndQoSProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)V
    .registers 2

    .line 1515
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 1522
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3f

    const/4 v2, 0x5

    if-eq v0, v2, :cond_39

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2f

    const/16 p1, 0xb

    if-eq v0, p1, :cond_1f

    const/16 p1, 0xe

    if-eq v0, p1, :cond_15

    goto :goto_50

    .line 1538
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmCache(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->removeAll()V

    goto :goto_50

    .line 1534
    :cond_1f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$msetMcfServiceForSubscriber(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Z)V

    .line 1535
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$mcheckAndUnbindMcfService(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)V

    goto :goto_50

    .line 1529
    :cond_2f
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_50

    .line 1530
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(I)V

    goto :goto_50

    .line 1541
    :cond_39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->deferMessage(Landroid/os/Message;)V

    goto :goto_50

    .line 1524
    :cond_3f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$mcheckConditions(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 1525
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmDeviceIdleState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_50
    :goto_50
    return v1
.end method

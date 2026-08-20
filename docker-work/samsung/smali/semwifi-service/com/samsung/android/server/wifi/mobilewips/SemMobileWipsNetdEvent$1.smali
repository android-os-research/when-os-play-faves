.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "SemMobileWipsNetdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method

.method private sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 80
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 81
    instance-of v1, p1, Landroid/app/admin/ConnectEvent;

    if-eqz v1, :cond_11

    const/16 v1, 0x26

    .line 82
    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_19

    .line 83
    :cond_11
    instance-of v1, p1, Landroid/app/admin/DnsEvent;

    if-eqz v1, :cond_19

    const/16 v1, 0x25

    .line 84
    iput v1, v0, Landroid/os/Message;->what:I

    .line 86
    :cond_19
    :goto_19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "network_event"

    .line 87
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetISemMobileWipsCallback(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;->sendServiceHandlerMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .registers 13

    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetmIsEnabled(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetmPaused(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2b

    .line 71
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    new-instance p5, Landroid/app/admin/ConnectEvent;

    move-object v1, p5

    move-object v2, p1

    move v3, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/admin/ConnectEvent;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    .line 73
    invoke-direct {p0, p5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .registers 19

    move-object v0, p0

    .line 54
    iget-object v1, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetmIsEnabled(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetmPaused(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_33

    :cond_12
    if-nez p6, :cond_15

    return-void

    .line 61
    :cond_15
    iget-object v1, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v2, p9

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 62
    new-instance v1, Landroid/app/admin/DnsEvent;

    move-object v2, v1

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Landroid/app/admin/DnsEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V

    .line 63
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    :cond_33
    :goto_33
    return-void
.end method

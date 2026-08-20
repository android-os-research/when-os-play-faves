.class Lcom/samsung/android/server/wifi/share/mcf/McfController$1;
.super Ljava/lang/Object;
.source "McfController.java"

# interfaces
.implements Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/McfController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;


# direct methods
.method public static synthetic $r8$lambda$QZMuWgCfW5ZBLcLATDHJckxJmmA(Lcom/samsung/android/server/wifi/share/mcf/McfController$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->lambda$onServiceDisconnected$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$vEuyK9IMMyaQeN6N94IBAVXChqY(Lcom/samsung/android/server/wifi/share/mcf/McfController$1;Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->lambda$onServiceConnected$0(Lcom/samsung/android/mcf/McfAdapter;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/McfController;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0(Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 4

    const-string v0, "WifiProfileShare.MCF"

    const-string v1, "onServiceConnected"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmCasterManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->closeCaster(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmSubscriberManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->closeSubscriber(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fputmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;Lcom/samsung/android/mcf/McfAdapter;)V

    .line 255
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmCasterManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->openCaster(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 256
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmSubscriberManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->openSubscriber(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 258
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 259
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;->onServiceConnected()V

    :cond_59
    return-void
.end method

.method private synthetic lambda$onServiceDisconnected$1()V
    .registers 3

    const-string v0, "WifiProfileShare.MCF"

    const-string v1, "onServiceDisconnected"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmCasterManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->closeCaster(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmSubscriberManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->closeSubscriber(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fputmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;Lcom/samsung/android/mcf/McfAdapter;)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 272
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;->onFailedToBindService()V

    :cond_3c
    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/share/mcf/McfController$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController$1$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/share/mcf/McfController$1;Lcom/samsung/android/mcf/McfAdapter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected()V
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/share/mcf/McfController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/share/mcf/McfController$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceRemoteException()V
    .registers 2

    const-string p0, "WifiProfileShare.MCF"

    const-string v0, "onServiceRemoteException  mcf server is null"

    .line 278
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

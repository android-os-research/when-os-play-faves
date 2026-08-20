.class final Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;
.super Ljava/lang/Object;
.source "SemMobileWipsFrameworkService.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InterfaceEventHandler"
.end annotation


# instance fields
.field private final mIfaceEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;


# direct methods
.method public static synthetic $r8$lambda$10An8D1tyB_8VLm-yDFfzpKhc-o(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->lambda$notifyEventsToService$0(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .registers 2

    .line 1025
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->mIfaceEvents:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    return-void
.end method

.method private buildEventMessage(ILjava/lang/String;)Landroid/os/Message;
    .registers 5

    .line 1048
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iface"

    .line 1049
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWipsServiceHandler(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    move-result-object p0

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method private isPrimaryIfaceName(Ljava/lang/String;)Z
    .registers 3

    .line 1088
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmBootCompleted(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_20

    .line 1092
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_20
    :goto_20
    const-string p0, "SemMobileWipsFrameworkService"

    const-string p1, "booting not completed"

    .line 1089
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$notifyEventsToService$0(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    .line 1056
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->buildEventMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private declared-synchronized notifyEventsToService(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 1054
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->mIfaceEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_16

    .line 1056
    new-instance v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1057
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 1059
    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized storeInterfaceEvent(ILjava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 1062
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->mIfaceEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1063
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->mIfaceEvents:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->mIfaceEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_3f

    const/16 v0, 0x11

    if-eq p1, v0, :cond_38

    const/16 v0, 0x18

    if-eq p1, v0, :cond_38

    packed-switch p1, :pswitch_data_44

    goto :goto_3f

    .line 1079
    :pswitch_29
    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_3f

    .line 1075
    :pswitch_2d
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1076
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 1072
    :cond_38
    :pswitch_38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    .line 1085
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_44
    .packed-switch 0x7
        :pswitch_2d
        :pswitch_38
        :pswitch_38
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public notifyEvent(ILjava/lang/String;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 1040
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->isPrimaryIfaceName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1041
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->buildEventMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_14

    .line 1043
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->storeInterfaceEvent(ILjava/lang/String;)V

    :goto_14
    return-void
.end method

.method public onPrimaryInterfaceChanged(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_e

    .line 1031
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->notifyEventsToService(Ljava/lang/String;)V

    .line 1032
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->setInterfaceName(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

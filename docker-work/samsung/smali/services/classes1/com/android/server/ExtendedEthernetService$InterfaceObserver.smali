.class public Lcom/android/server/ExtendedEthernetService$InterfaceObserver;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "ExtendedEthernetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ExtendedEthernetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InterfaceObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExtendedEthernetService;


# direct methods
.method public static synthetic $r8$lambda$FYFmrcppWYZc6WMFnPSunkF5FuM(Lcom/android/server/ExtendedEthernetService$InterfaceObserver;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;->lambda$interfaceLinkStateChanged$2(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$VuyLoX7DBRNuCSskq8bTrvIE3EA(Lcom/android/server/ExtendedEthernetService$InterfaceObserver;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;->lambda$interfaceRemoved$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wq_IyndyDAssC3VfT9lJ8Ad8SSA(Lcom/android/server/ExtendedEthernetService$InterfaceObserver;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;->lambda$interfaceAdded$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ExtendedEthernetService;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ExtendedEthernetService;Lcom/android/server/ExtendedEthernetService$InterfaceObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;-><init>(Lcom/android/server/ExtendedEthernetService;)V

    return-void
.end method

.method private synthetic lambda$interfaceAdded$0(Ljava/lang/String;)V
    .registers 2

    .line 266
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {p0, p1}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$monInterfaceAdded(Lcom/android/server/ExtendedEthernetService;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$interfaceLinkStateChanged$2(Ljava/lang/String;Z)V
    .registers 3

    .line 282
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {p0, p1, p2}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$monInterfaceLinkStateChanged(Lcom/android/server/ExtendedEthernetService;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$interfaceRemoved$1(Ljava/lang/String;)V
    .registers 2

    .line 274
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {p0, p1}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$monInterfaceRemoved(Lcom/android/server/ExtendedEthernetService;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {v0}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmIfaceMatch(Lcom/android/server/ExtendedEthernetService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interfaceAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtendedEthernetService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {v0}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmHandler(Lcom/android/server/ExtendedEthernetService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/ExtendedEthernetService$InterfaceObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ExtendedEthernetService$InterfaceObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ExtendedEthernetService$InterfaceObserver;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 5

    .line 280
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {v0}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmIfaceMatch(Lcom/android/server/ExtendedEthernetService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interfaceLinkStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtendedEthernetService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {v0}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmHandler(Lcom/android/server/ExtendedEthernetService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/ExtendedEthernetService$InterfaceObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/ExtendedEthernetService$InterfaceObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ExtendedEthernetService$InterfaceObserver;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_39
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {v0}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmIfaceMatch(Lcom/android/server/ExtendedEthernetService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interfaceRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtendedEthernetService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetService$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetService;

    invoke-static {v0}, Lcom/android/server/ExtendedEthernetService;->-$$Nest$fgetmHandler(Lcom/android/server/ExtendedEthernetService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/ExtendedEthernetService$InterfaceObserver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ExtendedEthernetService$InterfaceObserver$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ExtendedEthernetService$InterfaceObserver;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31
    return-void
.end method

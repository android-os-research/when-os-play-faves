.class Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;
.super Ljava/lang/Object;
.source "SemWifiTwtMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->setWifiScpmExecutorList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

.field final synthetic val$configuration:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/lang/String;)V
    .registers 3

    .line 383
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScpmConfigurationName()Ljava/lang/String;
    .registers 1

    .line 386
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    return-object p0
.end method

.method public onScpmPolicyUpdated(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 5

    .line 409
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtSupported(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 412
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsScheduledPmSupported(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    move-result v0

    if-nez v0, :cond_34

    return-void

    .line 416
    :cond_34
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle-IA;)V

    .line 417
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 418
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->configuration:Ljava/lang/String;

    .line 419
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCPM: new policy available ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 421
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    move-result-object p0

    const/16 v1, 0x8

    .line 422
    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 421
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 5

    .line 391
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtSupported(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 394
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsScheduledPmSupported(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    move-result v0

    if-nez v0, :cond_34

    return-void

    .line 398
    :cond_34
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle-IA;)V

    .line 399
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 400
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->configuration:Ljava/lang/String;

    .line 401
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCPM: registered ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->val$configuration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 403
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    move-result-object p0

    const/16 v1, 0x8

    .line 404
    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 403
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

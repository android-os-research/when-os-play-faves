.class Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;
.super Ljava/lang/Object;
.source "SemWifiServiceDetector.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->setWifiScpmExecutorList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

.field final synthetic val$configuration:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Ljava/lang/String;)V
    .registers 3

    .line 165
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->val$configuration:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScpmConfigurationName()Ljava/lang/String;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->val$configuration:Ljava/lang/String;

    return-object p0
.end method

.method public onScpmPolicyUpdated(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 5

    .line 186
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmIsFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 189
    :cond_9
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle-IA;)V

    .line 190
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;->provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 191
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->val$configuration:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;->configuration:Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCPM: new policy available ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->val$configuration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 193
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    move-result-object p0

    const/16 v1, 0x9

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmIsFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 176
    :cond_9
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle-IA;)V

    .line 177
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;->provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 178
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->val$configuration:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;->configuration:Ljava/lang/String;

    .line 179
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCPM: registered ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->val$configuration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 180
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    move-result-object p0

    const/16 v1, 0x9

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

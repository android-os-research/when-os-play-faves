.class Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;
.super Lcom/android/internal/util/State;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PoorLinkState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 3475
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 3478
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "SemIWCMonitor"

    if-eqz v0, :cond_20

    .line 3479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetMISC_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3482
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "IWC enter PoorLink State"

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3483
    :cond_38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastInvalidEnterTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V

    .line 3484
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 3485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TS updated mLastInvalidEnterTimestamp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastInvalidEnterTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return-void
.end method

.method public exit()V
    .registers 5

    .line 3490
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "SemIWCMonitor"

    if-eqz v0, :cond_20

    .line 3491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exit\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastPoorLinkTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V

    .line 3493
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 3494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TS updated mLastPoorLinkTimestamp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastPoorLinkTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 2

    .line 3500
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p0, 0x0

    return p0
.end method

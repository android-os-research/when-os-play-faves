.class Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2;
.super Landroid/content/BroadcastReceiver;
.source "IssueTrackerLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;


# direct methods
.method public static synthetic $r8$lambda$OqYxH1e8P2S2aVPk70OsDNTcyTU(ILcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2;->lambda$onReceive$0(ILcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onReceive$0(ILcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V
    .registers 2

    .line 117
    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;->onDebugModeChanged(I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "mode"

    const/4 v0, -0x1

    .line 99
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "SemWifi.IssueTracker"

    if-eqz p1, :cond_3c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_31

    const/4 v0, 0x2

    if-eq p1, v0, :cond_31

    const/4 v0, 0x4

    if-eq p1, v0, :cond_31

    const/16 v0, 0x10

    if-eq p1, v0, :cond_31

    const/16 v0, 0x40

    if-eq p1, v0, :cond_31

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fgetadvancedDebugFlags(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)I

    move-result v1

    or-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fputadvancedDebugFlags(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;I)V

    goto :goto_41

    .line 109
    :cond_3c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fputadvancedDebugFlags(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;I)V

    .line 116
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fgetlisteners(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Ljava/util/Set;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

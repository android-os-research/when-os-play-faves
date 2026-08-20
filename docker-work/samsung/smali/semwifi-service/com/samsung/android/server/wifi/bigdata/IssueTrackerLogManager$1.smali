.class Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;
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
.method public static synthetic $r8$lambda$I0JnbKx0g0yizKmJiO5NN2k5zeA(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;->lambda$onReceive$0(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V
    .registers 2

    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fgetisActive(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;->onStateChanged(Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2b

    const-string p2, "ONOFF"

    .line 87
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fputisActive(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;Z)V

    .line 89
    iget-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fgetlisteners(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Ljava/util/Set;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$1;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_2b
    return-void
.end method

.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;
.super Lcom/samsung/android/mcf/SubscribeCallback;
.source "SubscriberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/SubscribeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMcfServiceStateChanged(II)V
    .registers 5

    .line 376
    invoke-super {p0, p1, p2}, Lcom/samsung/android/mcf/SubscribeCallback;->onMcfServiceStateChanged(II)V

    .line 377
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmMcfSubscriber(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/mcf/McfSubscriber;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1e

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1e

    .line 378
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmMcfSubscriber(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/mcf/McfSubscriber;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/mcf/McfSubscriber;->isNetworkEnabled(I)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fputmIsNetworkEnabled(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Z)V

    .line 380
    :cond_1e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-ME--- onMcfServiceStateChanged, status : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " network:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmIsNetworkEnabled(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiProfileShare.McfSub"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

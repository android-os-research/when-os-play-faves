.class public Lcom/android/server/connectivity/NetdEventListenerService$1;
.super Landroid/content/BroadcastReceiver;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetdEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;)V
    .registers 2

    .line 716
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-eqz p2, :cond_38

    .line 720
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_38

    .line 724
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 725
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_14

    return-void

    :cond_14
    const-string p2, "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

    .line 726
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_33

    const-string p2, "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

    .line 727
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    goto :goto_33

    :cond_25
    const-string p2, "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

    .line 729
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 730
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-static {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->-$$Nest$mdeleteMobileDataLogFile(Lcom/android/server/connectivity/NetdEventListenerService;)V

    goto :goto_38

    .line 728
    :cond_33
    :goto_33
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->writeMobileDataDnsFile()V

    :cond_38
    :goto_38
    return-void
.end method

.class public Lcom/att/iqi/libs/IQIServiceBroker$7;
.super Landroid/content/BroadcastReceiver;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/libs/IQIServiceBroker;->suspendPackage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .registers 2

    .line 582
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 586
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "app has been force stopped, actually suspending now"

    invoke-static {p2}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 587
    :cond_b
    iget-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->tryDisconnecting()V

    .line 588
    iget-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmPackageSuspended(Lcom/att/iqi/libs/IQIServiceBroker;Z)V

    .line 589
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

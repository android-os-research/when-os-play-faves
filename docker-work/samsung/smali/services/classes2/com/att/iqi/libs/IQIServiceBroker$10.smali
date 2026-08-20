.class public Lcom/att/iqi/libs/IQIServiceBroker$10;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/libs/IQIServiceBroker;
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

    .line 927
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$10;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 3

    .line 930
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$10;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmContext(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 931
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker$10;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$10;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object p0

    if-eqz v0, :cond_24

    .line 933
    invoke-static {v0}, Lcom/att/iqi/libs/IQIConcierge;->updateSubscriptions(Landroid/telephony/SubscriptionManager;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    goto :goto_25

    :cond_24
    const/4 v0, 0x3

    .line 932
    :goto_25
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 931
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

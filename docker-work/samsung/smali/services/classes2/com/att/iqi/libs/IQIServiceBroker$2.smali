.class public Lcom/att/iqi/libs/IQIServiceBroker$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 151
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string p1, "com.att.iqi.extra.IQI_STATE"

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string/jumbo p2, "service_state"

    const/4 v1, 0x1

    if-eqz p1, :cond_2b

    .line 155
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    iget v3, v2, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    if-nez v3, :cond_2b

    .line 156
    iput v1, v2, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    .line 157
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object p1

    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    iget v1, v1, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    invoke-virtual {p1, p2, v1}, Lcom/att/iqi/libs/PreferenceStore;->setInteger(Ljava/lang/String;I)V

    .line 159
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 160
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0, v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mregisterReceivers(Lcom/att/iqi/libs/IQIServiceBroker;Z)V

    goto :goto_4a

    :cond_2b
    if-nez p1, :cond_4a

    .line 161
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    iget v2, p1, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    if-ne v2, v1, :cond_4a

    .line 162
    iput v0, p1, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    .line 163
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object p1

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    iget v0, v0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    invoke-virtual {p1, p2, v0}, Lcom/att/iqi/libs/PreferenceStore;->setInteger(Ljava/lang/String;I)V

    .line 165
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->tryDisconnecting()V

    .line 166
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$munregisterReceivers(Lcom/att/iqi/libs/IQIServiceBroker;)V

    :cond_4a
    :goto_4a
    return-void
.end method

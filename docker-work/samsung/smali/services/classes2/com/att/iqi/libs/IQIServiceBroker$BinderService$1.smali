.class public Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;
.super Landroid/content/BroadcastReceiver;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->disableService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

.field public final synthetic val$msg:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker$BinderService;Landroid/os/Message;)V
    .registers 3

    .line 528
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

    iput-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 531
    iget-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

    iget-object p2, p2, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->val$msg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iget-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

    iget-object p2, p2, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mdisablePackage(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 533
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

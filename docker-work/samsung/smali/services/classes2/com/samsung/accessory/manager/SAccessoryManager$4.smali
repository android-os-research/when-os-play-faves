.class public Lcom/samsung/accessory/manager/SAccessoryManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2

    .line 455
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 458
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REQUEST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 459
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 460
    iget-object p2, p0, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {p2}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetmAuthHandler(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 461
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 462
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {p0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetmAuthHandler(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_27
    return-void
.end method

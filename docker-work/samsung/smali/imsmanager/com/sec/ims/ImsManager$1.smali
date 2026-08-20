.class Lcom/sec/ims/ImsManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/ims/ImsManager;->connectService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/ImsManager;


# direct methods
.method constructor <init>(Lcom/sec/ims/ImsManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sec/ims/ImsManager;

    .line 379
    iput-object p1, p0, Lcom/sec/ims/ImsManager$1;->this$0:Lcom/sec/ims/ImsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/ImsManager$1;->this$0:Lcom/sec/ims/ImsManager;

    invoke-static {v1}, Lcom/sec/ims/ImsManager;->-$$Nest$fgetmPhoneId(Lcom/sec/ims/ImsManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.ims.imsmanager.RESTART"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 384
    iget-object v0, p0, Lcom/sec/ims/ImsManager$1;->this$0:Lcom/sec/ims/ImsManager;

    invoke-static {v0}, Lcom/sec/ims/ImsManager;->-$$Nest$mgetImsService(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 385
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    iget-object v1, p0, Lcom/sec/ims/ImsManager$1;->this$0:Lcom/sec/ims/ImsManager;

    invoke-static {v1, v0}, Lcom/sec/ims/ImsManager;->-$$Nest$monConnectService(Lcom/sec/ims/ImsManager;Lcom/sec/ims/IImsService;)V

    .line 387
    .end local v0    # "imsService":Lcom/sec/ims/IImsService;
    :cond_50
    return-void
.end method

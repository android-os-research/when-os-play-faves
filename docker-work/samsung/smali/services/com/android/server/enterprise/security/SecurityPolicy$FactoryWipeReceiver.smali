.class public Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;
.super Lcom/android/server/MasterClearReceiver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FactoryWipeReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .registers 2

    .line 1363
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Lcom/android/server/MasterClearReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1367
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1370
    new-instance p1, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;

    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler-IA;)V

    const/4 p0, 0x1

    .line 1371
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1372
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p0

    .line 1374
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    return-void
.end method

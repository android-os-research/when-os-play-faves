.class public Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UcsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UcsReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UcsReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 377
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UcsReceiver intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.knox.intent.action.UCM_PLUGIN_STATUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 379
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 380
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 382
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UcsReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyUCMConfigStatus(Landroid/os/Bundle;)V

    goto :goto_4d

    .line 384
    :cond_3a
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UcsReceiver no bundle extras received from plugin"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 387
    :cond_44
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UcsReceiver no extras received from plugin...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    return-void
.end method

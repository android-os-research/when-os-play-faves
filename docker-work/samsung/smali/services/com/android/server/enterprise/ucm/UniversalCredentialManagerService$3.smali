.class public Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .registers 2

    .line 657
    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$3;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 660
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$3;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    .line 661
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    .line 662
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v2

    .line 664
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 665
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_PACKAGE_REMOVED : replacingApp -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_44

    .line 667
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$3;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4d

    .line 669
    :cond_44
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ACTION_PACKAGE_REMOVED : No need to cleanup db entries for app update"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    return-void
.end method

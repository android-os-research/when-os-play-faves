.class public Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->registerSystemReceiver()V
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

    .line 600
    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 603
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 604
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "receive Locale changed intent"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mshowEnforcedLockTypeNotificationForAllUser(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    return-void
.end method

.class public Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$1;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->registerPersonaObserver()V
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

    .line 327
    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$1;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .registers 2

    return-void
.end method

.method public onPersonaActive(I)V
    .registers 2

    return-void
.end method

.method public onRemovePersona(I)V
    .registers 2

    return-void
.end method

.method public onResetPersona(I)V
    .registers 2

    return-void
.end method

.method public onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    .registers 7

    .line 348
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " inside onstatechange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " old "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$1;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p2

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 350
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 351
    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {p3, p1}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    const/4 p1, 0x1

    .line 352
    iput p1, p2, Landroid/os/Message;->arg2:I

    goto :goto_45

    :cond_42
    const/4 p1, 0x0

    .line 354
    iput p1, p2, Landroid/os/Message;->arg2:I

    .line 356
    :goto_45
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$1;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

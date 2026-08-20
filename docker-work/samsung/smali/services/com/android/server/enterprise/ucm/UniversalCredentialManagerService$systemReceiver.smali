.class public Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "systemReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .registers 2

    .line 610
    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;-><init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 613
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 614
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inside mBReciever onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 615
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "android.intent.extra.user_handle"

    if-eqz v0, :cond_5c

    const/4 p1, -0x1

    .line 616
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 617
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_USER_REMOVED UserHandle : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object p2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 619
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 620
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_10a

    :cond_5c
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 621
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 622
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 623
    iget-object p2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 624
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mshowEnforcedLockTypeNotificationForAllUser(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    .line 625
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$msetKeyguardProperty(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    goto/16 :goto_10a

    :cond_84
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 626
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f6

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f6

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 627
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    goto :goto_f6

    :cond_9d
    const-string v0, "android.intent.action.DEVICE_LOCKED_CHANGED"

    .line 630
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10a

    const/4 p1, 0x0

    .line 631
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 632
    iget-object p2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mgetKeyguardManager(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/app/KeyguardManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p2

    .line 633
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLockEventReceiver. userId ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] isDeviceLocked ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 635
    iput p1, v0, Landroid/os/Message;->arg1:I

    xor-int/lit8 p1, p2, 0x1

    .line 636
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 637
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10a

    .line 628
    :cond_f6
    :goto_f6
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 629
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$systemReceiver;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10a
    :goto_10a
    return-void
.end method

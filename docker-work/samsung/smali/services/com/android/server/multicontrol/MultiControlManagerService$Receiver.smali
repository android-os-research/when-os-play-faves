.class public Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiControlManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/multicontrol/MultiControlManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/android/server/multicontrol/MultiControlManagerService$Receiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 147
    sget-boolean p2, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz p2, :cond_21

    invoke-static {}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive(), action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    if-eqz p2, :cond_47

    .line 150
    invoke-static {}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Shutdown received with UserId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_47
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_54

    .line 152
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$fputmIsBootComplete(Lcom/android/server/multicontrol/MultiControlManagerService;Z)V

    :cond_54
    return-void
.end method

.method public register()V
    .registers 7

    .line 137
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PHONE_STATE"

    .line 138
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 139
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-static {v0}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$fgetmContext(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-static {v1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

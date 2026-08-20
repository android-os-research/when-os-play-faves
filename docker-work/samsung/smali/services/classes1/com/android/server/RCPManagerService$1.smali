.class public Lcom/android/server/RCPManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v1, "com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_27

    .line 136
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Received com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Connected BT Gear : sending Notification policy broadcast"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v0, p1, v1}, Lcom/android/server/RCPManagerService;->-$$Nest$msendRCPPolicyBroadcastToGearManager(Lcom/android/server/RCPManagerService;Landroid/content/Context;I)V

    .line 147
    :cond_27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "android.intent.extra.user_handle"

    .line 148
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v0, "android.intent.extra.USER"

    .line 149
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    if-eqz p2, :cond_79

    .line 150
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 151
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_MANAGED_PROFILE_ADDED : Starting RCP Proxy for user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v0}, Lcom/android/server/RCPManagerService;->-$$Nest$mcheckIfGearConnected(Lcom/android/server/RCPManagerService;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 162
    iget-object p0, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/server/RCPManagerService;->-$$Nest$msendRCPPolicyBroadcastToGearManager(Lcom/android/server/RCPManagerService;Landroid/content/Context;I)V

    :cond_79
    return-void
.end method

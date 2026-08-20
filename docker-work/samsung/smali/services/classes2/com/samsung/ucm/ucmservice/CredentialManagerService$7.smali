.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 2

    .line 638
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "The exception occurs "

    .line 641
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside mRefreshReceiver onReceive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 643
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c9

    const-string/jumbo p2, "onReceive : ACTION_BOOT_COMPLETED"

    .line 644
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :try_start_2a
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgents()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_30

    goto :goto_47

    :catch_30
    move-exception p2

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :goto_47
    :try_start_47
    invoke-static {}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->registerHALService()I

    move-result p2

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerHALService : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_60} :catch_61

    goto :goto_78

    :catch_61
    move-exception p2

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :goto_78
    :try_start_78
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mrunSefTestForEseCommTA(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    const-string/jumbo p2, "runSefTestForEseCommTA executed."

    .line 658
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_83} :catch_84

    goto :goto_9b

    :catch_84
    move-exception p2

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_9b
    :try_start_9b
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$misAppletPluginExist(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result p2

    if-nez p2, :cond_108

    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$misUcmDarEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result p2

    if-nez p2, :cond_108

    .line 664
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mrunLccmScript(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_b0} :catch_b1

    goto :goto_108

    :catch_b1
    move-exception p0

    .line 667
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_108

    .line 670
    :cond_c9
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fgetmContext(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 671
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fgetmEmergencyEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result p1

    if-eqz p1, :cond_e3

    const-string p0, "Already UPSM is enabled nothing to do"

    .line 672
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_108

    .line 674
    :cond_e3
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fputmEmergencyEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Z)V

    const-string p0, "Already UPSM disabled -> enabled"

    .line 675
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_108

    .line 678
    :cond_ef
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fgetmEmergencyEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result p1

    if-eqz p1, :cond_108

    const-string p1, "Already UPSM enabled -> disabled"

    .line 679
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mrefreshAgentList(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Bundle;)V

    .line 681
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fputmEmergencyEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Z)V

    :cond_108
    :goto_108
    return-void
.end method

.class public Lcom/android/server/VpnManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "VpnManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VpnManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/VpnManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/VpnManagerService;)V
    .registers 2

    .line 773
    iput-object p1, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 776
    iget-object p1, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {p1}, Lcom/android/server/VpnManagerService;->-$$Nest$mensureRunningOnHandlerThread(Lcom/android/server/VpnManagerService;)V

    .line 777
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    .line 778
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    .line 779
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 780
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 782
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    const-string v4, "com.android.server.action.LOCKDOWN_RESET"

    .line 784
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 785
    iget-object v4, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {v4}, Lcom/android/server/VpnManagerService;->-$$Nest$monVpnLockdownReset(Lcom/android/server/VpnManagerService;)V

    :cond_31
    if-ne v0, v1, :cond_34

    return-void

    :cond_34
    const-string v1, "android.intent.action.USER_STARTED"

    .line 791
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 792
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {p0, v0}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserStarted(Lcom/android/server/VpnManagerService;I)V

    goto/16 :goto_b7

    :cond_43
    const-string v1, "android.intent.action.USER_STOPPED"

    .line 793
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 794
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {p0, v0}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserStopped(Lcom/android/server/VpnManagerService;I)V

    goto :goto_b7

    :cond_51
    const-string v1, "android.intent.action.USER_ADDED"

    .line 795
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 796
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {p0, v0}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserAdded(Lcom/android/server/VpnManagerService;I)V

    goto :goto_b7

    :cond_5f
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 797
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 798
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {p0, v0}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserRemoved(Lcom/android/server/VpnManagerService;I)V

    goto :goto_b7

    :cond_6d
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 799
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 800
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {p0, v0}, Lcom/android/server/VpnManagerService;->-$$Nest$monUserUnlocked(Lcom/android/server/VpnManagerService;I)V

    goto :goto_b7

    :cond_7b
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 801
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 802
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {p0, v3, v2}, Lcom/android/server/VpnManagerService;->-$$Nest$monPackageReplaced(Lcom/android/server/VpnManagerService;Ljava/lang/String;I)V

    goto :goto_b7

    :cond_89
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 803
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    const/4 p1, 0x0

    const-string v0, "android.intent.extra.REPLACING"

    .line 804
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 806
    iget-object p0, p0, Lcom/android/server/VpnManagerService$1;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {p0, v3, v2, p1}, Lcom/android/server/VpnManagerService;->-$$Nest$monPackageRemoved(Lcom/android/server/VpnManagerService;Ljava/lang/String;IZ)V

    goto :goto_b7

    .line 808
    :cond_9e
    invoke-static {}, Lcom/android/server/VpnManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "received unexpected intent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b7
    return-void
.end method

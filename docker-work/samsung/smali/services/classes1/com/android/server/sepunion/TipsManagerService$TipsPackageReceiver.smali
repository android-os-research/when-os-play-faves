.class public Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TipsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/TipsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TipsPackageReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.samsung.android.app.tips"

    if-nez v0, :cond_46

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_46

    .line 185
    :cond_1b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 187
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[GalaxyTips] Tips was uninstalled."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fputmTipsPackageExist(Lcom/android/server/sepunion/TipsManagerService;Z)V

    goto/16 :goto_cd

    .line 145
    :cond_46
    :goto_46
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cd

    .line 146
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[GalaxyTips] Tips was installed. Start to register all filters"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fputmTipsPackageExist(Lcom/android/server/sepunion/TipsManagerService;Z)V

    .line 150
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsOnBoot(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result p2

    if-eqz p2, :cond_74

    .line 152
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipReceiver(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    :cond_74
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 157
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p2, "samsung.galaxy.tips.application.terminated"

    .line 158
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 159
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsNetworkGranted(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result p2

    if-nez p2, :cond_97

    const-string/jumbo p2, "samsung.galaxy.tips.network_granted"

    .line 162
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    :cond_97
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsHUNAlreadyShown(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result p2

    if-nez p2, :cond_a9

    const-string p2, "android.intent.action.NEW_OUTGOING_CALL"

    .line 165
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.PHONE_STATE"

    .line 166
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    :cond_a9
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipReceiver(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 171
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsHandler(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    move-result-object v1

    const/16 v2, 0x2714

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x1d4c0

    invoke-static/range {v1 .. v7}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 172
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p0, v0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fputmTipsOnBoot(Lcom/android/server/sepunion/TipsManagerService;Z)V

    :cond_cd
    :goto_cd
    return-void
.end method

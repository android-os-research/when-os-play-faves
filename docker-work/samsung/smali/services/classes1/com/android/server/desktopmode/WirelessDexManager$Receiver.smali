.class public Lcom/android/server/desktopmode/WirelessDexManager$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/WirelessDexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/WirelessDexManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/WirelessDexManager;Lcom/android/server/desktopmode/WirelessDexManager$Receiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 137
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive(), action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_21
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/WirelessDexManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "state"

    if-eqz v1, :cond_6c

    const/4 p1, 0x0

    .line 140
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 141
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isDexOnPcOrWirelessDexConnected()Z

    move-result p1

    if-eqz p1, :cond_66

    .line 142
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_50

    invoke-static {}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Disconnect Wireless DeX / DFP when HDMI plugged"

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_50
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/WirelessDexManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    const/16 p2, 0x3e9

    invoke-interface {p1, p2}, Lcom/android/server/desktopmode/IStateManager;->notifyDisplayDisconnectionRequest(I)V

    .line 145
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/WirelessDexManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-interface {p1, p2}, Lcom/android/server/desktopmode/IStateManager;->notifyDisplayDisconnectionRequest(I)V

    .line 148
    :cond_66
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->disconnect()V

    goto :goto_c7

    :cond_6c
    const-string v1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c7

    const/4 p1, -0x1

    .line 151
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    const-string v2, "by_user"

    .line 152
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 153
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_be

    invoke-static {}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiDisplay Connection state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", disconnectedByUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isWirelessDex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsWirelessDexEntered="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmIsWirelessDexEntered(Lcom/android/server/desktopmode/WirelessDexManager;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    if-nez p1, :cond_c7

    if-nez p2, :cond_c7

    .line 158
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$mshowToastToNotifyNetworkDisconnection(Lcom/android/server/desktopmode/WirelessDexManager;)V

    :cond_c7
    :goto_c7
    return-void
.end method

.method public register()V
    .registers 7

    .line 128
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.HDMI_PLUGGED"

    .line 129
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 130
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;
.super Lcom/android/internal/util/State;
.source "WifiProfileAndQoSProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PasswordRequestedState"
.end annotation


# instance fields
.field private mIsStarted:Z

.field final synthetic this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)V
    .registers 2

    .line 1747
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)V

    return-void
.end method

.method private resetTimer()V
    .registers 5

    .line 1750
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/16 v1, 0xa

    # invokes: Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->access$800(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V

    .line 1751
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private startSubscribeForPassword()Z
    .registers 6

    .line 1791
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->mIsStarted:Z

    const-string v1, "WifiProfileShare.Sub"

    if-eqz v0, :cond_d

    const-string p0, "already started subscriber mode: password"

    .line 1792
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 1795
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmScanMatcherUtil(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmLastRequestedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v4

    .line 1796
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWpa3SaeSupported()Z

    move-result v4

    .line 1795
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->getConfigKeyForPassword(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fputmLastRequestedConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmScanMatcherUtil(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmLastRequestedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmLastRequestedConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->getMcfDataForRequestingPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v0

    if-nez v0, :cond_4f

    const-string p0, "can not start subscriber mode for password, McfData is null"

    .line 1800
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1803
    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start subscriber mode: password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmSubscriberCallback(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->startSubscriberForPassword(Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->mIsStarted:Z

    return v0
.end method

.method private stopSubscribeForPassword()V
    .registers 3

    const-string v0, "WifiProfileShare.Sub"

    const-string v1, "stop subscriber mode"

    .line 1779
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fputmLastPasswordCallback(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V

    .line 1783
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fputmLastRequestedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Ljava/lang/String;)V

    .line 1784
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fputmLastRequestedConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1786
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->mIsStarted:Z

    .line 1787
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->stopSubscriberModeForPassword()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 1756
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 1757
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$mcheckAndBindMcfService(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)V

    .line 1758
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$msetMcfServiceForSubscriber(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Z)V

    .line 1761
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->resetTimer()V

    .line 1762
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/16 v1, 0xb

    # invokes: Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->access$900(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V

    .line 1764
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$msetPasswordShare(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V

    return-void
.end method

.method public exit()V
    .registers 5

    .line 1769
    invoke-super {p0}, Lcom/android/internal/util/State;->exit()V

    .line 1770
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->stopSubscribeForPassword()V

    .line 1772
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/16 v1, 0xa

    # invokes: Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->access$1000(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V

    .line 1773
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/16 v1, 0xb

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessageDelayed(IJ)V

    .line 1775
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$msetPasswordShare(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 11

    .line 1814
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_de

    const/4 v1, 0x4

    if-eq v0, v1, :cond_de

    const/4 v1, 0x5

    const/4 v3, 0x2

    const/16 v4, 0x16

    const-string v5, "WifiProfileShare.Sub"

    const/4 v6, 0x0

    if-eq v0, v1, :cond_a4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9a

    const/16 v7, 0x8

    if-eq v0, v7, :cond_de

    const/16 v7, 0x14

    if-eq v0, v7, :cond_7c

    const/16 v7, 0xa

    if-eq v0, v7, :cond_73

    const/16 v7, 0xb

    if-eq v0, v7, :cond_de

    if-eq v0, v4, :cond_38

    const/16 v1, 0x17

    if-eq v0, v1, :cond_2c

    return v6

    .line 1852
    :cond_2c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_33

    move v6, v2

    :cond_33
    invoke-static {p0, v6}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$mcallbackToClient(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Z)V

    goto/16 :goto_de

    .line 1816
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mcf service connected retry "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->startSubscribeForPassword()Z

    move-result v0

    if-nez v0, :cond_de

    .line 1818
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-le v0, v3, :cond_64

    const-string p1, "failed to request password to device"

    .line 1819
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(I)V

    goto/16 :goto_de

    .line 1823
    :cond_64
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/16 v4, 0x16

    iget p0, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v5, p0, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x7d0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessageDelayed(IIIJ)V

    goto :goto_de

    :cond_73
    const-string p1, "device requesting password for 1 hour"

    .line 1828
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->resetTimer()V

    goto :goto_de

    .line 1848
    :cond_7c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_83

    move v6, v2

    :cond_83
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmLastRequestedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v6, v1, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$mcallbackToClient(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1849
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmDeviceIdleState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_de

    .line 1832
    :cond_9a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmDeviceIdleState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_de

    .line 1835
    :cond_a4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_b4

    .line 1836
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->startSubscriberForPassword()V

    goto :goto_de

    .line 1837
    :cond_b4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_c4

    .line 1838
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->stopPostAdvertise()V

    goto :goto_de

    :cond_c4
    const-string p1, "cancel previous password request"

    .line 1840
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->mIsStarted:Z

    .line 1842
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->stopSubscriberModeForPassword()V

    .line 1843
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->resetTimer()V

    .line 1844
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$PasswordRequestedState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(I)V

    :cond_de
    :goto_de
    return v2
.end method

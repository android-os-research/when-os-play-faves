.class Lcom/android/internal/telephony/cat/CatBIPManager$4;
.super Landroid/content/BroadcastReceiver;
.source "CatBIPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/CatBIPManager;->registerReceiverForCloseChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/cat/CatBIPManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .registers 2

    .line 1599
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1602
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c9

    const-string p1, "state"

    .line 1603
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c9

    const-string p1, "apnType"

    .line 1604
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1605
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p2}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmCapabilityType(Lcom/android/internal/telephony/cat/CatBIPManager;)I

    move-result p2

    const/16 v0, 0x1f

    if-ne p2, v0, :cond_34

    if-eqz p1, :cond_34

    const-string p2, "bip"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6a

    :cond_34
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p2}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmCapabilityType(Lcom/android/internal/telephony/cat/CatBIPManager;)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_47

    if-eqz p1, :cond_47

    const-string p2, "fota"

    .line 1606
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6a

    :cond_47
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p2}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmCapabilityType(Lcom/android/internal/telephony/cat/CatBIPManager;)I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_59

    const-string p2, "default"

    .line 1607
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6a

    :cond_59
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p2}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmCapabilityType(Lcom/android/internal/telephony/cat/CatBIPManager;)I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_6b

    const-string p2, "ims"

    .line 1608
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    :cond_6a
    return-void

    .line 1613
    :cond_6b
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    const/4 p2, 0x0

    if-eqz p1, :cond_a5

    .line 1614
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne p1, v0, :cond_a5

    .line 1615
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    .line 1617
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1618
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    const/4 p2, 0x0

    .line 1619
    iput-object p2, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1620
    invoke-static {p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$msendTerminalResponse(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    const-string p1, "disconnected - Close Channel Sent close Channel TR:"

    .line 1621
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1623
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget p2, p1, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-static {p1, p2}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$mgetBIPConnection(Lcom/android/internal/telephony/cat/CatBIPManager;I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 1624
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$mfreeChannel(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_c9

    .line 1625
    :cond_a5
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmPdnReuse(Lcom/android/internal/telephony/cat/CatBIPManager;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c9

    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmKeepOpenParams(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/OpenChannelParams;

    move-result-object p1

    if-eqz p1, :cond_c9

    const-string p1, "pdn reuse is true and keep open param is not null"

    .line 1626
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fputmPdnReuse(Lcom/android/internal/telephony/cat/CatBIPManager;Z)V

    .line 1628
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$fgetmKeepOpenParams(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/OpenChannelParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V

    :cond_c9
    :goto_c9
    return-void
.end method

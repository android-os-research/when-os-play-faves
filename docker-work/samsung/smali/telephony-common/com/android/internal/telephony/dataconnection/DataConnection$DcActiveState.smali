.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
.super Lcom/android/internal/telephony/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActiveState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method public static synthetic blacklist $r8$lambda$vO_bbNvoViRkF4F2biv0E5zyLNk(Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->lambda$processMessage$0()V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 2

    .line 3438
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method

.method private synthetic blacklist lambda$processMessage$0()V
    .registers 2

    .line 3808
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setPduSessionId(I)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 14

    .line 3441
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActiveState: enter dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3442
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3444
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmId(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mgetApnTypeBitmask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    int-to-long v5, v0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mcanHandleDefault(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v7

    const/16 v1, 0x4b

    const/4 v2, 0x3

    .line 3442
    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIIIJZ)V

    .line 3446
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v1, 0x0

    const v2, 0x42000

    const-string v3, "connected"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    .line 3449
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x4000f

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3451
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v4, 0x40010

    invoke-virtual {v0, v2, v4, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3454
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmImsPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_a0

    .line 3455
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmImsPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3457
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmImsPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_a0
    const-string v0, "persist.radio.multisim.config"

    const-string v2, ""

    .line 3463
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dsda"

    .line 3464
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 3465
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmMsimSubMode(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3466
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x4002a

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3472
    :cond_d3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mneedRegisterListenerForNonDds(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 3473
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mregisterListenerForNonDds(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3479
    :cond_e0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDcController(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->addActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3482
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmStatusT3346(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11d

    .line 3483
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T3346 is true, setDetailedState to suspended, isActive() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3484
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isActive()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 3485
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyDataConnectionState(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3489
    :cond_11d
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmRilRat(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateTcpBufferSizes(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3490
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmRilRat(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateLinkBandwidthsFromCarrierConfig(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3492
    new-instance v0, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    const/4 v3, 0x0

    .line 3493
    invoke-virtual {v0, v3}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    const-string v4, "MOBILE"

    .line 3494
    invoke-virtual {v0, v4}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 3495
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mgetNetworkType(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v4

    .line 3496
    invoke-virtual {v0, v4}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 3497
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 3498
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmApnSetting(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyExtraInfo(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 3499
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v4

    const-string v5, "android.telephony.action.CARRIER_SIGNAL_REDIRECTED"

    .line 3500
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CarrierSignalAgent;->hasRegisteredReceivers(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16f

    .line 3503
    invoke-virtual {v0, v3}, Landroid/net/NetworkAgentConfig$Builder;->setProvisioningNotificationEnabled(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 3506
    :cond_16f
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 3507
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_182

    .line 3508
    invoke-virtual {v0, v4}, Landroid/net/NetworkAgentConfig$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 3512
    :cond_182
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->shouldSkip464Xlat()Z

    move-result v4

    if-eqz v4, :cond_18d

    .line 3513
    invoke-virtual {v0, v3}, Landroid/net/NetworkAgentConfig$Builder;->setNat64DetectionEnabled(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 3516
    :cond_18d
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$misUnmeteredUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmUnmeteredUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 3517
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$misMmsUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmMmsUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 3518
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$misEnterpriseUse(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v5

    if-nez v5, :cond_1b7

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$misPrioritizeBandwidthUse(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v5

    if-nez v5, :cond_1b7

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 3519
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$misPrioritizeLatencyUse(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v5

    if-eqz v5, :cond_1b8

    :cond_1b7
    move v3, v2

    :cond_1b8
    invoke-static {v4, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmEnterpriseUse(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 3522
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRestrictedNetworkOverride = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmRestrictedNetworkOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mUnmeteredUseOnly = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmUnmeteredUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mMmsUseOnly = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmMmsUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mEnterpriseUse = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmEnterpriseUse(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3531
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/vcn/VcnManager;

    move-result-object v3

    new-instance v4, Landroid/os/HandlerExecutor;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 3532
    invoke-virtual {v5}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmVcnPolicyChangeListener(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    move-result-object v5

    .line 3531
    invoke-virtual {v3, v4, v5}, Landroid/net/vcn/VcnManager;->addVcnNetworkPolicyChangeListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    .line 3534
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2f5

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    if-ne v3, v4, :cond_2f5

    .line 3539
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mgetHandoverSourceTransport(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    if-eqz v0, :cond_25b

    .line 3540
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v3, :cond_25b

    .line 3541
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataConnectionByApnType(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    goto :goto_25c

    :cond_25b
    move-object v0, v1

    :goto_25c
    if-eqz v0, :cond_262

    const/4 v3, 0x3

    .line 3547
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setHandoverState(I)V

    .line 3550
    :cond_262
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverSourceNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_2e4

    .line 3551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer network agent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverSourceNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " successfully."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3553
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3554
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverLocalLog(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3555
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverSourceNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)V

    .line 3556
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmTransportType(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->acquireOwnership(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3562
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->updateLegacySubtype(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3564
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3566
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmLinkProperties(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3567
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmHandoverSourceNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)V

    goto/16 :goto_3c1

    :cond_2e4
    const-string v0, "Failed to get network agent from original data connection"

    .line 3570
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 3571
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverLocalLog(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 3575
    :cond_2f5
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mcalculateScore(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmScore(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3576
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3577
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 3576
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getNetworkFactory(I)Lcom/android/internal/telephony/data/TelephonyNetworkFactory;

    move-result-object v3

    if-nez v3, :cond_310

    move-object v10, v1

    goto :goto_315

    .line 3578
    :cond_310
    invoke-virtual {v3}, Lcom/android/internal/telephony/NetworkFactory;->getProvider()Landroid/net/NetworkProvider;

    move-result-object v3

    move-object v10, v3

    .line 3580
    :goto_315
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDisabledApnTypeBitMask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mgetDisallowedApnTypes(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v3, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDisabledApnTypeBitMask(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3582
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v3

    if-eqz v3, :cond_34e

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v3, :cond_34e

    .line 3583
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDisabledApnTypeBitMask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v6

    not-int v6, v6

    and-int/2addr v5, v6

    invoke-static {v3, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDisabledApnTypeBitMask(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3586
    :cond_34e
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateLinkPropertiesHttpProxy(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3587
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v12, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmScore(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v8

    .line 3588
    invoke-virtual {v0}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v9

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmTransportType(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v11

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/Phone;ILandroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;I)V

    invoke-static {v3, v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)V

    .line 3590
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    const-wide/16 v5, 0x7d0

    invoke-static {v5, v6}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/NetworkAgent;->setLingerDuration(Ljava/time/Duration;)V

    .line 3593
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 3595
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    .line 3594
    invoke-virtual {v0, v3, v5}, Landroid/net/vcn/VcnManager;->applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object v0

    .line 3596
    invoke-virtual {v0}, Landroid/net/vcn/VcnNetworkPolicyResult;->isTeardownRequested()Z

    move-result v0

    if-eqz v0, :cond_3a7

    .line 3597
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "vcnRequestedTeardown"

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownAll(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_3b0

    .line 3605
    :cond_3a7
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->markConnected()V

    .line 3613
    :goto_3b0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3621
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v3, 0x40021

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3625
    :goto_3c1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$msyncQosToNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3627
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmTransportType(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    if-ne v0, v2, :cond_3f6

    .line 3628
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 3629
    invoke-virtual {v3}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const v4, 0x40012

    .line 3628
    invoke-interface {v0, v3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3630
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 3631
    invoke-virtual {v3}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const v4, 0x40017

    .line 3630
    invoke-interface {v0, v3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3633
    :cond_3f6
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyDataConnectionState(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3634
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 3635
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mgetApnTypeBitmask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result p0

    .line 3634
    invoke-virtual {v0, v1, v3, p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDataCallEvent(IIII)V

    return-void
.end method

.method public blacklist exit()V
    .registers 6

    .line 3640
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActiveState: exit dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3641
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 3642
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 3645
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mneedRegisterListenerForNonDds(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 3646
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$munregisterListenerForNonDds(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    :cond_49
    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    .line 3651
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsda"

    .line 3652
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 3653
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 3657
    :cond_68
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmTransportType(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_93

    .line 3658
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V

    .line 3659
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLceInfo(Landroid/os/Handler;)V

    .line 3666
    :cond_93
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 3672
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$msyncCopiedQosToNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3674
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverState(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    if-ne v0, v1, :cond_b3

    .line 3675
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->unregister(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3677
    :cond_b3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->releaseOwnership(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3679
    :cond_be
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)V

    .line 3681
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 3682
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mgetApnTypeBitmask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v2

    const/4 v4, 0x2

    .line 3681
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDataCallEvent(IIII)V

    .line 3684
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmVcnPolicyChangeListener(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/vcn/VcnManager;->removeVcnNetworkPolicyChangeListener(Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    .line 3686
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object v0

    if-eqz v0, :cond_102

    .line 3688
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->unregisterCarrierPrivilegesListener(Landroid/os/Handler;)V

    :cond_102
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 11

    .line 3696
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "mms"

    const-string v2, "modem"

    const-string v3, " dc="

    const/4 v4, 0x2

    const-string v5, "carrier_config"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_7f4

    .line 4159
    :pswitch_11
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActiveState not handled msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_7f3

    .line 4151
    :pswitch_31
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v0, "DcActiveState check suspend state if msimsubmode change"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 4152
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mcheckAndUpdateSuspendForDsda(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_60b

    .line 4107
    :pswitch_3f
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmStatusT3346(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 4108
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v0, "DcActiveState T3346 EVENT_DATA_CONNECTION_T3346 T3346_TIMER_STOP_V01"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 4109
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 4110
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    if-eqz p1, :cond_60b

    .line 4111
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_60b

    .line 4096
    :pswitch_6b
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmStatusT3346(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 4097
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v0, "DcActiveState T3346 EVENT_DATA_CONNECTION_T3346 T3346_TIMER_START_V01"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 4098
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 4099
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    if-eqz p1, :cond_60b

    .line 4100
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_60b

    .line 4040
    :pswitch_97
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 4041
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_b9

    .line 4042
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_LINK_BANDWIDTH_ESTIMATOR_UPDATE e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_60b

    .line 4044
    :cond_b9
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 4045
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v1, "bandwidth_estimator"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$misBandwidthSourceKey(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60b

    .line 4047
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateLinkBandwidthsFromBandwidthEstimator(Lcom/android/internal/telephony/dataconnection/DataConnection;II)V

    goto/16 :goto_60b

    .line 4144
    :pswitch_de
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    .line 4145
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_60b

    .line 4131
    :pswitch_ed
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 4132
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 4133
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmAdministratorUids(Lcom/android/internal/telephony/dataconnection/DataConnection;[I)V

    .line 4137
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    if-eqz p1, :cond_60b

    .line 4138
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 4139
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 4138
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_60b

    .line 3856
    :pswitch_11a
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmRilRat(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateTcpBufferSizes(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3860
    :pswitch_123
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$misBandwidthSourceKey(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_134

    .line 3861
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmRilRat(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateLinkBandwidthsFromCarrierConfig(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3863
    :cond_134
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    if-eqz p1, :cond_60b

    .line 3864
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_60b

    .line 3870
    :pswitch_14f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3871
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmUnmeteredOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v0

    if-ne p1, v0, :cond_161

    goto/16 :goto_60b

    .line 3875
    :cond_161
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmUnmeteredOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 3876
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    if-eqz p1, :cond_60b

    .line 3877
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->updateLegacySubtype(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3878
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_60b

    .line 4118
    :pswitch_18c
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmRilRat(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateTcpBufferSizes(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 4119
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$misBandwidthSourceKey(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a6

    .line 4120
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmRilRat(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateLinkBandwidthsFromCarrierConfig(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 4122
    :cond_1a6
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    if-eqz p1, :cond_60b

    .line 4123
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmLinkProperties(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 4124
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_60b

    .line 4090
    :pswitch_1d2
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateScore(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_60b

    .line 4056
    :pswitch_1d9
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmRestrictedNetworkOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result p1

    if-eqz p1, :cond_215

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mshouldRestrictNetwork(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result p1

    if-nez p1, :cond_215

    .line 4058
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data connection becomes not-restricted. dc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 4067
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmRestrictedNetworkOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 4068
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 4077
    :cond_215
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmUnmeteredUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result p1

    if-eqz p1, :cond_23b

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$misUnmeteredUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result p1

    if-nez p1, :cond_23b

    .line 4078
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmUnmeteredUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 4079
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 4083
    :cond_23b
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$misMmsUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmMmsUseOnly(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    goto/16 :goto_60b

    .line 4028
    :pswitch_246
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 4029
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_268

    .line 4030
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_LINK_CAPACITY_CHANGED e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_60b

    .line 4032
    :cond_268
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$misBandwidthSourceKey(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60b

    .line 4033
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateLinkBandwidthsFromModem(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/util/List;)V

    goto/16 :goto_60b

    .line 3957
    :pswitch_27b
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3958
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->keepaliveTracker:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$DcKeepaliveTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$DcKeepaliveTracker;->getHandleForSlot(I)I

    move-result v0

    if-gez v0, :cond_2ae

    .line 3960
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No slot found for stopSocketKeepalive! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 3961
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p0

    const/16 v0, -0x21

    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    goto/16 :goto_60b

    .line 3966
    :cond_2ae
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping keepalive with handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    .line 3969
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v2, 0x40014

    .line 3970
    invoke-virtual {p0, v2, v0, p1, v6}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3969
    invoke-interface {v1, v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->stopNattKeepalive(ILandroid/os/Message;)V

    goto/16 :goto_60b

    .line 3932
    :pswitch_2da
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/KeepalivePacketData;

    .line 3933
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 3934
    iget v2, p1, Landroid/os/Message;->arg2:I

    mul-int/lit16 v2, v2, 0x3e8

    .line 3935
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmTransportType(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v3

    if-ne v3, v8, :cond_304

    .line 3936
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    const v4, 0x40013

    .line 3938
    invoke-virtual {p0, v4, v1, v7, v6}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3936
    invoke-interface {p1, v3, v0, v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V

    goto/16 :goto_60b

    .line 3948
    :cond_304
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_60b

    .line 3949
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, -0x14

    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    goto/16 :goto_60b

    .line 4009
    :pswitch_31b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 4010
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4013
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_358

    .line 4014
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_KEEPALIVE_STOPPED: error stopping keepalive for handle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " e="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 4016
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->keepaliveTracker:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$DcKeepaliveTracker;

    new-instance p1, Lcom/android/internal/telephony/data/KeepaliveStatus;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$DcKeepaliveTracker;->handleKeepaliveStatus(Lcom/android/internal/telephony/data/KeepaliveStatus;)V

    goto/16 :goto_60b

    .line 4019
    :cond_358
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keepalive Stop Requested for handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 4020
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->keepaliveTracker:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$DcKeepaliveTracker;

    new-instance v0, Lcom/android/internal/telephony/data/KeepaliveStatus;

    invoke-direct {v0, p1, v8}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$DcKeepaliveTracker;->handleKeepaliveStatus(Lcom/android/internal/telephony/data/KeepaliveStatus;)V

    goto/16 :goto_60b

    .line 3976
    :pswitch_380
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3977
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3978
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3a9

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_38f

    goto :goto_3a9

    .line 3984
    :cond_38f
    check-cast v1, Lcom/android/internal/telephony/data/KeepaliveStatus;

    if-nez v1, :cond_39c

    .line 3986
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string p1, "Null KeepaliveStatus received!"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_60b

    .line 3988
    :cond_39c
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->keepaliveTracker:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$DcKeepaliveTracker;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$DcKeepaliveTracker;->handleKeepaliveStarted(ILcom/android/internal/telephony/data/KeepaliveStatus;)V

    goto/16 :goto_60b

    .line 3979
    :cond_3a9
    :goto_3a9
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_KEEPALIVE_STARTED: error starting keepalive, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 3981
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p0

    const/16 v0, -0x1f

    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkAgent;->sendSocketKeepaliveEvent(II)V

    goto/16 :goto_60b

    .line 3995
    :pswitch_3ce
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3996
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3ee

    .line 3997
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_KEEPALIVE_STATUS: error in keepalive, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 4000
    :cond_3ee
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_60b

    .line 4001
    check-cast p1, Lcom/android/internal/telephony/data/KeepaliveStatus;

    .line 4002
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->keepaliveTracker:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$DcKeepaliveTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$DcKeepaliveTracker;->handleKeepaliveStatus(Lcom/android/internal/telephony/data/KeepaliveStatus;)V

    goto/16 :goto_60b

    .line 3884
    :pswitch_401
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3885
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmCongestedOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v0

    if-ne p1, v0, :cond_413

    goto/16 :goto_60b

    .line 3889
    :cond_413
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmCongestedOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 3890
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    if-eqz p1, :cond_60b

    .line 3891
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->updateLegacySubtype(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3892
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_60b

    .line 3911
    :pswitch_43e
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3912
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    if-eqz p1, :cond_60b

    .line 3913
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_60b

    .line 3920
    :pswitch_45e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3921
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_480

    .line 3922
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_BW_REFRESH_RESPONSE: error ignoring, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_60b

    .line 3924
    :cond_480
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$misBandwidthSourceKey(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60b

    .line 3925
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateLinkBandwidthsFromModem(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/util/List;)V

    goto/16 :goto_60b

    .line 3899
    :pswitch_493
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    if-eqz p1, :cond_60b

    .line 3900
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->updateLegacySubtype(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3901
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_60b

    .line 3827
    :pswitch_4b9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3828
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 3829
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDataRegState(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3830
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateTcpBufferSizes(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3831
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$misBandwidthSourceKey(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f0

    .line 3832
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateLinkBandwidthsFromCarrierConfig(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3834
    :cond_4f0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmRilRat(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3836
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DcActiveState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED drs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDataRegState(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRilRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmRilRat(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3840
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3841
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    if-eqz p1, :cond_561

    .line 3842
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->updateLegacySubtype(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3845
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3847
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmLinkProperties(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3850
    :cond_561
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmRilRat(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result p0

    .line 3851
    invoke-static {p0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p0

    .line 3850
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onDrsOrRatChanged(I)V

    goto/16 :goto_60b

    .line 3799
    :pswitch_576
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActiveState EVENT_LOST_CONNECTION dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3803
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCidManager()Lcom/android/internal/telephony/CidManager;

    move-result-object v0

    if-eqz v0, :cond_5a1

    .line 3804
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v1, "lostDataConnection"

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownAll(Ljava/lang/String;ILandroid/os/Message;)V

    .line 3806
    :cond_5a1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mreleasePduSessionId(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Runnable;)V

    .line 3816
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/16 v1, 0x869

    if-ne v0, v1, :cond_5bd

    .line 3817
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmInactiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(I)V

    goto :goto_5c9

    .line 3819
    :cond_5bd
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmInactiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object p1

    const v0, 0x10004

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(I)V

    .line 3822
    :goto_5c9
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmInactiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_60b

    .line 3785
    :pswitch_5d3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActiveState EVENT_DISCONNECT clearing apn contexts, dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3788
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 3789
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDisconnectParams(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    .line 3790
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 3791
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    iput v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    .line 3792
    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mtearDownData(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    .line 3793
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDisconnectingState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_60b
    :goto_60b
    move v7, v8

    goto/16 :goto_7f3

    .line 3730
    :pswitch_60e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 3735
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDebugLevelNotLow()Z

    move-result v0

    if-eqz v0, :cond_638

    .line 3737
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActiveState: EVENT_DISCONNECT dp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3741
    :cond_638
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmIsSetProcTypeForMms(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v0

    if-eqz v0, :cond_656

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3742
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_656

    .line 3743
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$msetProcTypeInfo(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 3744
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmIsSetProcTypeForMms(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 3747
    :cond_656
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmApnContexts(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6fd

    .line 3749
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActiveState msg.what=EVENT_DISCONNECT RefCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmApnContexts(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/util/Map;

    move-result-object v2

    .line 3750
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3749
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3753
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmApnContexts(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v8, :cond_6ca

    .line 3754
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmApnContexts(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3757
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6ac

    .line 3758
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mcleanUpTcpSockets(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3761
    :cond_6ac
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDisconnectParams(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    .line 3762
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 3763
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    iput v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    .line 3764
    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mtearDownData(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    .line 3765
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDisconnectingState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_60b

    .line 3767
    :cond_6ca
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmApnContexts(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3770
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDisabledApnTypeBitMask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v1

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDisabledApnTypeBitMask(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3771
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3773
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0, p1, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto/16 :goto_60b

    .line 3776
    :cond_6fd
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActiveState ERROR no such apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in this dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3778
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0, p1, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto/16 :goto_60b

    .line 3698
    :pswitch_726
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 3700
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 3701
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    const-string v2, "ro.boot.hardware"

    const-string v4, ""

    .line 3702
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "qcom"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 3703
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmApnContexts(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_74d
    :goto_74d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 3704
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-eq v0, v5, :cond_74d

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 3705
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KOR"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74d

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3706
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ims"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74d

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3707
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74d

    .line 3708
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$msetProcTypeInfo(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 3709
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmIsSetProcTypeForMms(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    goto :goto_74d

    .line 3715
    :cond_7a0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmApnContexts(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3718
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDisabledApnTypeBitMask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v1

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDisabledApnTypeBitMask(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3719
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3722
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActiveState: EVENT_CONNECT cp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3724
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v0, -0x1

    invoke-static {p0, p1, v7, v0, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IIZ)V

    goto/16 :goto_60b

    :goto_7f3
    return v7

    :pswitch_data_7f4
    .packed-switch 0x40000
        :pswitch_726
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_60e
        :pswitch_11
        :pswitch_5d3
        :pswitch_11
        :pswitch_11
        :pswitch_576
        :pswitch_11
        :pswitch_4b9
        :pswitch_493
        :pswitch_493
        :pswitch_45e
        :pswitch_43e
        :pswitch_43e
        :pswitch_401
        :pswitch_3ce
        :pswitch_380
        :pswitch_31b
        :pswitch_2da
        :pswitch_27b
        :pswitch_246
        :pswitch_11
        :pswitch_1d9
        :pswitch_1d2
        :pswitch_18c
        :pswitch_14f
        :pswitch_11a
        :pswitch_123
        :pswitch_ed
        :pswitch_43e
        :pswitch_43e
        :pswitch_de
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_97
        :pswitch_6b
        :pswitch_3f
        :pswitch_31
    .end packed-switch
.end method

.class public Lcom/android/server/net/NetworkPolicyManagerService$17;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 7207
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .registers 7

    .line 7209
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p1

    const-string v0, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v1, ""

    const/4 v2, 0x0

    .line 7210
    invoke-virtual {p1, v2, v0, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    const-string v0, "VZW-"

    .line 7212
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2b

    :cond_17
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string v0, "ATT"

    .line 7213
    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$misNaGsm(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2b

    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string v0, "TMO"

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$misNaGsm(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 7215
    :cond_2b
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result p1

    .line 7216
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "activevideo"

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    .line 7217
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v4, "epdg"

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmHasEpdgCall(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const-string v1, "NetworkPolicy"

    .line 7219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneStateListenerVideoCall - hasVideoCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasActiveVideoCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mHasEpdgCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmHasEpdgCall(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7222
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmIsVideoCall(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v1

    if-eq v1, p1, :cond_d4

    if-eqz v0, :cond_9e

    .line 7224
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmIsVideoCall(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const-string p1, "NetworkPolicy"

    const-string v0, "Video call start."

    .line 7225
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7226
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7227
    :try_start_94
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 7228
    monitor-exit v0

    goto :goto_d4

    :catchall_9b
    move-exception p0

    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_9b

    throw p0

    :cond_9e
    if-nez p1, :cond_d4

    .line 7230
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmIsVideoCall(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 7231
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmVideoCallLimitAlreadySent(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 7232
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmVideoCallWarningAlreadySent(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const-string p1, "NetworkPolicy"

    const-string v0, "Video call end."

    .line 7233
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7234
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7235
    :try_start_bb
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 7236
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 7237
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 7238
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 7239
    monitor-exit p1

    goto :goto_d4

    :catchall_d1
    move-exception p0

    monitor-exit p1
    :try_end_d3
    .catchall {:try_start_bb .. :try_end_d3} :catchall_d1

    throw p0

    :cond_d4
    :goto_d4
    return-void
.end method

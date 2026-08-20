.class final Lcom/android/internal/telephony/data/DataNetwork$DefaultState;
.super Lcom/android/internal/telephony/State;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 981
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork$DefaultState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 8

    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v1, "Registering all events."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/data/DataConfigManager;->registerForConfigUpdate(Landroid/os/Handler;I)V

    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 987
    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    const/4 v3, 0x0

    .line 986
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DisplayInfoController;->registerForTelephonyDisplayInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;I)V

    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v1, :cond_6c

    aget v4, v0, v2

    .line 991
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v5}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataServiceManagers(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 992
    invoke-virtual {v5}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/data/DataServiceManager;->registerForDataCallListChanged(Landroid/os/Handler;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 994
    :cond_6c
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->registerCarrierPrivilegesListener(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 998
    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x18

    .line 997
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForCssIndicatorChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1000
    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x16

    .line 999
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1002
    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v4, 0x17

    .line 1001
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_fa

    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1006
    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1005
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1007
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1008
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    .line 1007
    invoke-virtual {v0, p0, v4, v3}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_fa
    return-void
.end method

.method public blacklist exit()V
    .registers 6

    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v1, "Unregistering all events."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 1023
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 1025
    :cond_41
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForCssIndicatorChanged(Landroid/os/Handler;)V

    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->unregisterCarrierPrivilegesListener(Landroid/os/Handler;)V

    .line 1030
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_99
    if-ge v2, v1, :cond_b5

    aget v3, v0, v2

    .line 1031
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataServiceManagers(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1032
    invoke-virtual {v4}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/data/DataServiceManager;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    .line 1034
    :cond_b5
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1036
    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1035
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DisplayInfoController;->unregisterForTelephonyDisplayInfoChanged(Landroid/os/Handler;)V

    .line 1037
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataConfigManager;->unregisterForConfigUpdate(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 4

    .line 1042
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_102

    .line 1101
    :pswitch_5
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto/16 :goto_ff

    .line 1078
    :pswitch_23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1079
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmAdministratorUids(Lcom/android/internal/telephony/data/DataNetwork;[I)V

    .line 1081
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_ff

    .line 1097
    :pswitch_3c
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore the handover to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1098
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " request."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1097
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto/16 :goto_ff

    .line 1063
    :pswitch_5f
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAttachedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    const/4 v1, 0x0

    .line 1064
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setState(I)V

    const/4 v1, 0x0

    .line 1065
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setAttachedNetwork(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto :goto_69

    .line 1067
    :cond_7e
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v0, "All network requests detached."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1068
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAttachedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    goto :goto_ff

    .line 1047
    :pswitch_8f
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onDrsOrRatChanged(I)V

    .line 1048
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1049
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto :goto_ff

    .line 1072
    :pswitch_a9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1073
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1074
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDataStateChanged(Lcom/android/internal/telephony/data/DataNetwork;ILjava/util/List;)V

    goto :goto_ff

    .line 1094
    :pswitch_bf
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_ff

    .line 1058
    :pswitch_dc
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDetachNetworkRequest(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    .line 1059
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkScore(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto :goto_ff

    .line 1053
    :pswitch_eb
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onAttachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    .line 1054
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkScore(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto :goto_ff

    .line 1044
    :pswitch_fa
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDataConfigUpdated(Lcom/android/internal/telephony/data/DataNetwork;)V

    :goto_ff
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_fa
        :pswitch_eb
        :pswitch_dc
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_bf
        :pswitch_a9
        :pswitch_8f
        :pswitch_5f
        :pswitch_bf
        :pswitch_5
        :pswitch_bf
        :pswitch_3c
        :pswitch_5
        :pswitch_5
        :pswitch_bf
        :pswitch_23
        :pswitch_5
        :pswitch_bf
        :pswitch_bf
        :pswitch_bf
        :pswitch_bf
        :pswitch_bf
    .end packed-switch
.end method

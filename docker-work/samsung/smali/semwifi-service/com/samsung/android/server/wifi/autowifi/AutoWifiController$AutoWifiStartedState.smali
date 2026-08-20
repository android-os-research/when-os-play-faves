.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoWifiStartedState"
.end annotation


# instance fields
.field mIsInitialGeofenceState:Z

.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 2

    .line 1021
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleGeofenceStateChanged()V
    .registers 2

    .line 1103
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetupFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    .line 1104
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->isFavoriteNetworkInRanged()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1105
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    goto :goto_18

    .line 1107
    :cond_12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    :goto_18
    return-void
.end method

.method private hasFavoriteNetwork()Z
    .registers 1

    .line 1099
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isFavoriteNetworkInRanged()Z
    .registers 4

    .line 1112
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetInRangedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1113
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 1026
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    const/4 v0, 0x1

    .line 1027
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->mIsInitialGeofenceState:Z

    .line 1028
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->handleGeofenceStateChanged()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 1036
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_10d

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v3, :cond_e2

    const/16 v3, 0xa

    if-eq v0, v3, :cond_d2

    const/16 v3, 0x64

    if-eq v0, v3, :cond_bf

    const/4 v3, 0x7

    if-eq v0, v3, :cond_9d

    const/16 v3, 0x8

    if-eq v0, v3, :cond_6a

    const/16 v3, 0x67

    if-eq v0, v3, :cond_4e

    const/16 v1, 0x68

    if-eq v0, v1, :cond_22

    return v4

    .line 1073
    :cond_22
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_27

    goto :goto_28

    :cond_27
    move v2, v4

    .line 1074
    :goto_28
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_4d

    if-nez v2, :cond_4d

    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 1075
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misAvailableWifiOffFunction(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    if-eqz p1, :cond_4d

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->hasFavoriteNetwork()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 1076
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWaitForWifiOffState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_4d
    return v4

    .line 1083
    :cond_4e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1084
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_65

    .line 1086
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_65

    .line 1087
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->removeScoreHistory(Ljava/lang/String;)V

    .line 1089
    :cond_65
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->handleGeofenceStateChanged()V

    goto/16 :goto_114

    .line 1064
    :cond_6a
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->mIsInitialGeofenceState:Z

    if-eqz p1, :cond_70

    .line 1065
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->mIsInitialGeofenceState:Z

    .line 1067
    :cond_70
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_114

    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    if-nez p1, :cond_114

    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 1068
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misAvailableWifiOffFunction(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    if-eqz p1, :cond_114

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->hasFavoriteNetwork()Z

    move-result p1

    if-eqz p1, :cond_114

    .line 1069
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWaitForWifiOffState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_114

    .line 1041
    :cond_9d
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->mIsInitialGeofenceState:Z

    if-eqz p1, :cond_a3

    .line 1042
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->mIsInitialGeofenceState:Z

    .line 1044
    :cond_a3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->hasFavoriteNetwork()Z

    move-result p1

    if-eqz p1, :cond_114

    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_114

    .line 1045
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmSearchFavoriteNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_114

    .line 1058
    :cond_bf
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_c4

    move v4, v2

    :cond_c4
    if-eqz v4, :cond_114

    .line 1059
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result p1

    if-ne p1, v2, :cond_114

    .line 1060
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->handleGeofenceStateChanged()V

    goto :goto_114

    .line 1080
    :cond_d2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->measureNetworkLocation(Ljava/lang/String;)Z

    goto :goto_114

    .line 1049
    :cond_e2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_e8

    move p1, v2

    goto :goto_e9

    :cond_e8
    move p1, v4

    :goto_e9
    if-eqz p1, :cond_fd

    .line 1050
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result v0

    if-ne v0, v2, :cond_fd

    .line 1051
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmUserControlState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_10c

    :cond_fd
    if-nez p1, :cond_10c

    .line 1052
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result p1

    if-ne p1, v1, :cond_10c

    .line 1054
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    :cond_10c
    :goto_10c
    return v4

    :cond_10d
    const-string p0, "AutoWifiController"

    const-string p1, "already started"

    .line 1038
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_114
    :goto_114
    return v2
.end method

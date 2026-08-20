.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;
.super Lcom/android/internal/util/State;
.source "SilentRoamingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 2

    .line 1081
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 8

    .line 1084
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 1085
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "SilentRoamingManager"

    const/4 v2, 0x1

    if-eqz v0, :cond_1b7

    const/4 v3, 0x0

    if-eq v0, v2, :cond_17d

    const/4 v4, 0x4

    if-eq v0, v4, :cond_279

    const/4 v4, 0x5

    if-eq v0, v4, :cond_14b

    const/4 v4, 0x6

    if-eq v0, v4, :cond_116

    const/4 v4, 0x7

    const/16 v5, 0xd

    if-eq v0, v4, :cond_bf

    const/16 v3, 0x9

    if-eq v0, v3, :cond_b4

    const/16 v3, 0xa

    if-eq v0, v3, :cond_a9

    const/16 v3, 0xc

    if-eq v0, v3, :cond_279

    if-eq v0, v5, :cond_5c

    const/16 v3, 0xf

    if-eq v0, v3, :cond_55

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unhandled message : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_279

    .line 1178
    :cond_55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdateLastSelectedNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    goto/16 :goto_279

    .line 1143
    :cond_5c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getAutojoinGlobal()Z

    move-result p1

    if-nez p1, :cond_70

    .line 1145
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-string p1, "mIsAutoJoin is false do nothing "

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    return v2

    .line 1148
    :cond_70
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_9e

    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mavoidStartingSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-nez p1, :cond_9e

    .line 1149
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmUseAlternativeSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_93

    .line 1150
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmAlternativeEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_279

    .line 1152
    :cond_93
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_279

    .line 1155
    :cond_9e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDisabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_279

    .line 1160
    :cond_a9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/net/wifi/ScanResult;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdateFullScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;[Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_279

    .line 1163
    :cond_b4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/net/wifi/ScanResult;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePartialScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;[Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_279

    .line 1123
    :cond_bf
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$misSilentRoamingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-nez p1, :cond_d5

    .line 1124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p0

    if-eqz p0, :cond_d4

    const-string p0, "Silent Roaming OFF"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    return v2

    .line 1127
    :cond_d5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-nez p1, :cond_de

    return v2

    .line 1130
    :cond_de
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_104

    .line 1131
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mclearPnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1132
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1133
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1134
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmAllowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_279

    .line 1135
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mallowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    goto/16 :goto_279

    .line 1138
    :cond_104
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->queryAutojoinGlobal()V

    .line 1139
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v5, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessageDelayed(IJ)V

    goto/16 :goto_279

    .line 1181
    :cond_116
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_11b

    move v3, v2

    .line 1182
    :cond_11b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-nez p1, :cond_279

    if-eqz v3, :cond_279

    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mavoidStartingSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-nez p1, :cond_279

    .line 1183
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmUseAlternativeSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_140

    .line 1184
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmAlternativeEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_279

    .line 1186
    :cond_140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_279

    .line 1166
    :cond_14b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_151

    move p1, v2

    goto :goto_152

    :cond_151
    move p1, v3

    :goto_152
    if-eqz p1, :cond_16b

    .line 1168
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmMaxPnoSsidPerScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result p1

    if-gez p1, :cond_279

    .line 1169
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->getMaxPnoSsidsPerScan()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmMaxPnoSsidPerScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    goto/16 :goto_279

    .line 1172
    :cond_16b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1173
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mclearPnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1174
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    goto/16 :goto_279

    .line 1114
    :cond_17d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received CMD_STOP_PNO_SCAN , ConnectingWatchdogCount= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1115
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mclearPnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1116
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1117
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1118
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmAllowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_279

    .line 1119
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mallowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    goto/16 :goto_279

    .line 1087
    :cond_1b7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmRoamingWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->reset()V

    .line 1088
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "starting Silent Roaming Wi-Fi: screenOn= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isWifiConnected= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", wifiEnabled= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_279

    .line 1092
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_225

    .line 1093
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)V

    .line 1094
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastConnectedTime(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;J)V

    .line 1095
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdateCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1097
    :cond_225
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->getMaxPnoSsidsPerScan()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmMaxPnoSsidPerScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1098
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-nez p1, :cond_279

    .line 1099
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_26b

    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mavoidStartingSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-nez p1, :cond_26b

    .line 1100
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmUseAlternativeSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_25c

    .line 1101
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmAlternativeEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_279

    .line 1103
    :cond_25c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_279

    .line 1107
    :cond_26b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePnoNetworkList(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1108
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$DefaultState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDisabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_279
    :goto_279
    return v2
.end method

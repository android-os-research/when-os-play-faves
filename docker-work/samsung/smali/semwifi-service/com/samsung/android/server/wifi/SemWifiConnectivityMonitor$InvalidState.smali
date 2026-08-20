.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;
.super Lcom/android/internal/util/State;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 4166
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 9

    .line 4169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4171
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4172
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIs204CheckInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4173
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetLinkDetectMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 4176
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v4, 0x87016

    invoke-virtual {v0, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4181
    :cond_44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v4, 0x21014

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    .line 4182
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v4, 0x21019

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    invoke-virtual {v0, v4, v5, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    .line 4183
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmScoreQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQCStopCheck()V

    .line 4184
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misSkipInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_7a

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmUserSelectionConfirmed()Z

    move-result v4

    if-nez v4, :cond_78

    goto :goto_7a

    :cond_78
    move v4, v2

    goto :goto_7b

    :cond_7a
    :goto_7a
    move v4, v3

    :goto_7b
    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmQai3InvalidAwaitFinished(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4185
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    if-eqz v0, :cond_94

    .line 4186
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmEleNeedRecoveryFromEle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4187
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->clearEleMoving()V

    .line 4190
    :cond_94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misMultiNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 4191
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-static {v0, v2, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZ)V

    goto/16 :goto_181

    .line 4192
    :cond_a8
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmUserSelectionConfirmed()Z

    move-result v0

    if-eqz v0, :cond_181

    .line 4193
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAirPlaneMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misSkipInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    if-ne v0, v3, :cond_ef

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4194
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mapplyQai3Policy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_f1

    :cond_d6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misCarrierWifi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misVzwNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_ef

    goto :goto_f1

    :cond_ef
    move v0, v2

    goto :goto_f2

    :cond_f1
    :goto_f1
    move v0, v3

    :goto_f2
    if-eqz v0, :cond_12d

    .line 4195
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misVzwNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_12d

    .line 4196
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_12d

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v4

    if-ne v4, v3, :cond_12d

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4197
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mapplyQai3Policy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_12d

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misCarrierWifi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_12d

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misSkipInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_12d

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAirPlaneMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_12d

    move v0, v2

    .line 4201
    :cond_12d
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_147

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mapplyQai3Policy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_147

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmQai3InvalidAwaitFinished(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_147

    move v4, v3

    goto :goto_148

    :cond_147
    move v4, v2

    :goto_148
    if-nez v0, :cond_155

    .line 4202
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v5

    if-nez v5, :cond_153

    goto :goto_155

    :cond_153
    move v5, v2

    goto :goto_156

    :cond_155
    :goto_155
    move v5, v3

    .line 4203
    :goto_156
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mapplyQai3Policy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v7

    invoke-static {v6, v0, v4, v7, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZZ)V

    .line 4204
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mapplyQai3Policy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_181

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_181

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmQai3InvalidAwaitFinished(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_181

    .line 4205
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v4, 0x2114e

    const-wide/16 v5, 0x7530

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    .line 4209
    :cond_181
    :goto_181
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    if-ne v0, v3, :cond_190

    .line 4210
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    goto/16 :goto_20d

    .line 4211
    :cond_190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1a2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_20d

    .line 4212
    :cond_1a2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckEnabledTime(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;J)V

    .line 4214
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_1e5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInDhcpSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    goto :goto_1e5

    .line 4218
    :cond_1bc
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mstartScan(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start scan to find alternative networks. "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentMode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20d

    .line 4215
    :cond_1e5
    :goto_1e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do not start scan for alternative networks because mIsInRoamSession="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsInDhcpSession="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInDhcpSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4223
    :cond_20d
    :goto_20d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 4224
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_236

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_236

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    goto :goto_238

    :cond_236
    const/16 v0, -0x3d

    :goto_238
    const/16 v4, -0x40

    if-le v0, v4, :cond_24e

    .line 4228
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.android.HEAT_WIFI_UNWANTED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4229
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4231
    :cond_24e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMStatusChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4234
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_279

    .line 4235
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$minChinaNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setNetworkStatCheckDns(Z)V

    .line 4236
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v4

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidQosMapOnQcResult(IZ)V

    .line 4238
    :cond_279
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidNoInternet(Z)V

    .line 4242
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCheckValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2d1

    .line 4243
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmInvalidationRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4246
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    const/16 v4, -0x41

    if-lt v0, v4, :cond_2b9

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2b9

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    const/16 v4, 0x2b

    if-lt v0, v4, :cond_2b9

    .line 4247
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    goto :goto_2d1

    .line 4248
    :cond_2b9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_2c7

    const-string v0, "Do not set validationBlock when screen is off"

    .line 4249
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d1

    .line 4252
    :cond_2c7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmOvercomingCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4253
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4256
    :cond_2d1
    :goto_2d1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmCheckValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    return-void
.end method

.method public exit()V
    .registers 3

    .line 4262
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v1, 0x21139

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1900(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4263
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v1, 0x2114e

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$2000(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4264
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmQai3InvalidAwaitFinished(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 11

    .line 4269
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x600

    const v2, 0x2102c

    const/4 v3, 0x2

    const-string v4, "WifiConnectivityMonitor"

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_404

    return v5

    .line 4422
    :sswitch_10
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object p1

    if-nez p1, :cond_19

    return v6

    .line 4423
    :cond_19
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_b3

    const/16 v0, 0x10

    .line 4424
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_35

    goto/16 :goto_b3

    .line 4425
    :cond_35
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmQai3InvalidAwaitFinished(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4426
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misMultiNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-eqz p1, :cond_43

    return v6

    .line 4427
    :cond_43
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAirPlaneMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-nez p1, :cond_86

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4428
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misSkipInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-nez p1, :cond_86

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    if-ne p1, v6, :cond_84

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmQai3InvalidAwaitFinished(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-nez p1, :cond_84

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4429
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mapplyQai3Policy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-nez p1, :cond_86

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-nez p1, :cond_86

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4430
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misCarrierWifi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-nez p1, :cond_86

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misVzwNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-eqz p1, :cond_84

    goto :goto_86

    :cond_84
    move p1, v5

    goto :goto_87

    :cond_86
    :goto_86
    move p1, v6

    :goto_87
    if-nez p1, :cond_94

    .line 4431
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_92

    goto :goto_94

    :cond_92
    move v0, v5

    goto :goto_95

    :cond_94
    :goto_94
    move v0, v6

    .line 4432
    :goto_95
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mapplyQai3Policy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmQai3InvalidAwaitFinished(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-nez v1, :cond_ae

    move v5, v6

    .line 4433
    :cond_ae
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, p1, v5, v5, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZZ)V

    :cond_b3
    :goto_b3
    return v6

    .line 4321
    :sswitch_b4
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_bf

    const-string p1, "INVALIDATED_DETECTED"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4323
    :cond_bf
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmGoodTargetCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4325
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    move-result p1

    if-nez p1, :cond_cf

    .line 4327
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmAnalyticsDisconnectReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;S)V

    .line 4329
    :cond_cf
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    const/16 v0, 0x11

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 4330
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->line:I

    .line 4331
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetQcFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V

    .line 4332
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    return v6

    .line 4316
    :sswitch_fe
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_109

    const-string p1, "VALIDATED_DETECTED"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    :cond_109
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfputmUserSelectionConfirmed(Z)V

    .line 4318
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v6

    .line 4419
    :sswitch_116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/16 p1, 0xe

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    return v6

    .line 4371
    :sswitch_11e
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v6, :cond_124

    move v0, v6

    goto :goto_125

    :cond_124
    move v0, v5

    .line 4372
    :goto_125
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v6, :cond_12b

    move p1, v6

    goto :goto_12c

    :cond_12b
    move p1, v5

    .line 4373
    :goto_12c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " EVENT_USER_SELECTION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-nez v1, :cond_168

    .line 4377
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfputmUserSelectionConfirmed(Z)V

    .line 4378
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return v6

    :cond_168
    if-eqz v0, :cond_175

    if-eqz p1, :cond_175

    .line 4383
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mclearDisabledReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;II)V

    .line 4386
    :cond_175
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2, v3, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetNoInternetAccessExpected(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IZ)V

    const/4 v2, 0x7

    if-eqz v0, :cond_199

    .line 4388
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v3, v6}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    if-nez p1, :cond_193

    .line 4390
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {p1, v0, v2, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z

    .line 4392
    :cond_193
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v6, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZ)V

    goto :goto_1a0

    .line 4394
    :cond_199
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z

    .line 4396
    :goto_1a0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendConfigurationChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4397
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfputmUserSelectionConfirmed(Z)V

    .line 4398
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return v6

    .line 4401
    :sswitch_1ae
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v6, :cond_1b3

    move v5, v6

    .line 4402
    :cond_1b3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-nez v5, :cond_200

    if-eqz p1, :cond_200

    .line 4404
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmBssidCache(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f0

    .line 4405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BssidStatistics parameters cleared - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmBssidCache(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->clearParameters()V

    .line 4408
    :cond_1f0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V

    .line 4409
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_200
    return v6

    .line 4413
    :sswitch_201
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    move-result p1

    if-eqz p1, :cond_21b

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmUserSelectionConfirmed()Z

    move-result p1

    if-eqz p1, :cond_21b

    .line 4414
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 4415
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    :cond_21b
    return v6

    .line 4336
    :sswitch_21c
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_227

    const-string p1, "VALIDATION_CHECK_FORCE"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4337
    :cond_227
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckEnabledTime(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;J)V

    .line 4338
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidationCheckTime(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    div-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckTime(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4339
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    add-int/2addr v0, v6

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4340
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_264

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mValidationCheckCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    :cond_264
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/16 v0, 0x12

    const/4 v1, 0x4

    invoke-virtual {p1, v6, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportNetworkConnectivityToNM(ZII)Z

    move-result p1

    .line 4344
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    if-le v0, v1, :cond_294

    .line 4345
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4346
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    const-string v0, "mValidationCheckCount expired"

    .line 4347
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_28c

    .line 4349
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    goto :goto_293

    .line 4351
    :cond_28c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    :goto_293
    return v6

    .line 4355
    :cond_294
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidationCheckTime(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    return v6

    .line 4359
    :sswitch_2a1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v6, :cond_2a7

    move p1, v6

    goto :goto_2a8

    :cond_2a7
    move p1, v5

    .line 4360
    :goto_2a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECTIVITY_VALIDATION_RESULT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2cd

    .line 4363
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4364
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4365
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$2100(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    :cond_2cd
    return v6

    .line 4309
    :sswitch_2ce
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_2d9

    const-string p1, "QC_RESET_204_CHECK_INTERVAL"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    :cond_2d9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIs204CheckInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    return v6

    .line 4313
    :sswitch_2df
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportNetworkConnectivityToNM(II)Z

    return v6

    .line 4271
    :sswitch_2e9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateSettings(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4273
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    .line 4274
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4275
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    if-eq p1, v0, :cond_403

    .line 4276
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misMultiNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_30a

    return v6

    .line 4277
    :cond_30a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAirPlaneMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_34d

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4278
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misSkipInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_34d

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    if-ne v0, v6, :cond_34b

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmQai3InvalidAwaitFinished(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_34b

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4279
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mapplyQai3Policy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_34d

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_34d

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4280
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misCarrierWifi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_34d

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misVzwNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_34b

    goto :goto_34d

    :cond_34b
    move v0, v5

    goto :goto_34e

    :cond_34d
    :goto_34d
    move v0, v6

    :goto_34e
    if-eqz v0, :cond_389

    .line 4281
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misVzwNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-eqz v2, :cond_389

    .line 4282
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_389

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    if-ne v2, v6, :cond_389

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4283
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mapplyQai3Policy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-eqz v2, :cond_389

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misCarrierWifi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_389

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misSkipInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_389

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAirPlaneMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_389

    move v0, v5

    :cond_389
    if-nez v0, :cond_396

    .line 4287
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_394

    goto :goto_396

    :cond_394
    move v2, v5

    goto :goto_397

    :cond_396
    :goto_396
    move v2, v6

    .line 4288
    :goto_397
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v7

    if-eqz v7, :cond_3b1

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mapplyQai3Policy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v7

    if-eqz v7, :cond_3b1

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmQai3InvalidAwaitFinished(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v7

    if-nez v7, :cond_3b1

    move v7, v6

    goto :goto_3b2

    :cond_3b1
    move v7, v5

    .line 4290
    :goto_3b2
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v8, v0, v7, v7, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZZ)V

    .line 4291
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    if-ne v0, v6, :cond_3c5

    .line 4292
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    goto :goto_403

    .line 4293
    :cond_3c5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v3, :cond_3e1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    if-ne v0, v2, :cond_3d7

    goto :goto_3e1

    .line 4304
    :cond_3d7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_403

    :cond_3e1
    :goto_3e1
    if-ne p1, v6, :cond_3f3

    .line 4295
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    move-result p1

    if-eqz p1, :cond_3f3

    .line 4296
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmAnalyticsDisconnectReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;S)V

    const-string p1, "POOR_LINK_DETECT_sent"

    .line 4297
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    :cond_3f3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    if-ne p1, v2, :cond_403

    .line 4301
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const p1, 0x21014

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    :cond_403
    :goto_403
    return v6

    :sswitch_data_404
    .sparse-switch
        0x21006 -> :sswitch_2e9
        0x21024 -> :sswitch_2df
        0x21025 -> :sswitch_2ce
        0x2102b -> :sswitch_2a1
        0x2102c -> :sswitch_21c
        0x21040 -> :sswitch_201
        0x2104a -> :sswitch_1ae
        0x21060 -> :sswitch_11e
        0x210dc -> :sswitch_116
        0x21130 -> :sswitch_fe
        0x21131 -> :sswitch_b4
        0x2114e -> :sswitch_10
    .end sparse-switch
.end method

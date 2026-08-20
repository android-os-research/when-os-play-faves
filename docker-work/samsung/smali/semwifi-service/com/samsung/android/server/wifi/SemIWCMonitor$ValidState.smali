.class Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;
.super Lcom/android/internal/util/State;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 3139
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 3142
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "SemIWCMonitor"

    if-eqz v0, :cond_20

    .line 3143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_46

    .line 3146
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentWifiInfo is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    :cond_46
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const/16 v1, -0x40

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateValidLastRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3151
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3152
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPreviousLinkLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3153
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLossHasGone(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3154
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPreviousLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;D)V

    return-void
.end method

.method public exit()V
    .registers 2

    .line 3159
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exit\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemIWCMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3165
    iget v2, v1, Landroid/os/Message;->what:I

    const v3, 0x210cc

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_55

    const v3, 0x210ce

    if-eq v2, v3, :cond_14

    return v5

    .line 3303
    :cond_14
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "SemIWCMonitor"

    .line 3304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMD_IWC_DNS_CHECK_RESULT "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Last Result "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmDnsResult(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    :cond_40
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eq v2, v6, :cond_4f

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_49

    goto :goto_4f

    .line 3309
    :cond_49
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmDnsResult(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    goto :goto_54

    .line 3307
    :cond_4f
    :goto_4f
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0, v6}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmDnsResult(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    :goto_54
    return v6

    .line 3167
    :cond_55
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 3168
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-nez v2, :cond_6e

    const-string v0, "SemIWCMonitor"

    const-string v1, " mCurrentWifiInfo is null"

    .line 3169
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 3172
    :cond_6e
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    .line 3174
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v3

    .line 3175
    :try_start_7b
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmValidLastRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v7

    add-int/2addr v7, v2

    div-int/2addr v7, v4

    .line 3176
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_361

    .line 3177
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 3178
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 3180
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v8

    invoke-static {v4, v8}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPreviousRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3181
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmCurrentRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3183
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v4

    if-eqz v4, :cond_cc

    const-string v4, "SemIWCMonitor"

    .line 3184
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fetch RSSI succeed, rssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mrssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " txbad="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " txgood="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    :cond_cc
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3189
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastTimeSample(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v10

    sub-long v10, v8, v10

    const-wide/16 v12, 0x7d0

    cmp-long v4, v10, v12

    if-gez v4, :cond_345

    .line 3190
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastTxBad(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v4

    sub-int v4, v3, v4

    .line 3191
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastTxGood(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v10

    sub-int v10, v1, v10

    add-int/2addr v10, v4

    .line 3194
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmPingEnabled(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v11

    const/16 v12, -0x41

    if-eqz v11, :cond_10d

    if-ge v2, v12, :cond_10d

    .line 3195
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v11

    if-eqz v11, :cond_108

    const-string v11, "SemIWCMonitor"

    const-string v13, "Start ping to gateway"

    .line 3196
    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    :cond_108
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {v11, v6}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->pingToGateway(Z)V

    :cond_10d
    if-lez v10, :cond_345

    int-to-double v13, v4

    int-to-double v10, v10

    div-double/2addr v13, v10

    .line 3202
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPreviousLinkLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3203
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmPoorLinkStateTesting(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v10

    if-eqz v10, :cond_12f

    .line 3204
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v5

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    goto/16 :goto_2dc

    .line 3205
    :cond_12f
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v10

    if-eqz v10, :cond_149

    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v10

    const/16 v11, -0x46

    if-gt v10, v11, :cond_157

    :cond_149
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 3206
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v10

    const/16 v11, -0x40

    if-le v10, v11, :cond_172

    .line 3207
    :cond_157
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v4

    if-eqz v4, :cond_166

    const-string v4, "SemIWCMonitor"

    const-string v7, "@IWC - Good Rx state"

    .line 3208
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    :cond_166
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3210
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLossHasGone(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    goto/16 :goto_2dc

    :cond_172
    const/16 v10, 0x1e

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    if-ge v4, v10, :cond_26a

    cmpl-double v10, v13, v15

    if-ltz v10, :cond_17e

    goto/16 :goto_26a

    :cond_17e
    const/4 v10, 0x4

    const-wide v15, 0x3fb999999999999aL    # 0.1

    if-le v4, v10, :cond_1a5

    cmpl-double v11, v13, v15

    if-ltz v11, :cond_1a5

    .line 3222
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v7

    if-eqz v7, :cond_199

    const-string v7, "SemIWCMonitor"

    const-string v10, "@IWC - (dbad > 4)&&(loss >= 0.1)"

    .line 3223
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    :cond_199
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {v7, v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    goto/16 :goto_2a3

    :cond_1a5
    if-ge v7, v12, :cond_1d4

    .line 3225
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v7

    if-eqz v7, :cond_1d4

    if-gt v4, v10, :cond_1b9

    cmpl-double v7, v13, v15

    if-ltz v7, :cond_1d4

    .line 3227
    :cond_1b9
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v7

    if-eqz v7, :cond_1c8

    const-string v7, "SemIWCMonitor"

    const-string v10, "@IWC - rssi < -65) && (mCurrentWifiInfo.is24GHz()) && ((dbad > 4)||(loss >= 0.1))"

    .line 3228
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    :cond_1c8
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {v7, v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    goto/16 :goto_2a3

    .line 3231
    :cond_1d4
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v7

    const/4 v10, 0x6

    if-gt v7, v10, :cond_200

    cmpl-double v7, v13, v15

    if-ltz v7, :cond_200

    .line 3232
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v7

    if-eqz v7, :cond_1f4

    const-string v7, "SemIWCMonitor"

    const-string v10, "@IWC - (mCurrentWifiInfo.getLinkSpeed() <= 6) && (loss >= 0.1)"

    .line 3233
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    :cond_1f4
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {v7, v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    goto/16 :goto_2a3

    .line 3235
    :cond_200
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLossHasGone(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v7

    if-nez v7, :cond_236

    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmPreviousLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;)D

    move-result-wide v10

    cmpl-double v7, v13, v10

    if-lez v7, :cond_236

    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmPreviousLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;)D

    move-result-wide v10

    cmpl-double v7, v10, v15

    if-ltz v7, :cond_236

    .line 3236
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v7

    if-eqz v7, :cond_22b

    const-string v7, "SemIWCMonitor"

    const-string v10, "@IWC - loss increasing"

    .line 3237
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    :cond_22b
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {v7, v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    goto :goto_2a3

    :cond_236
    if-lez v4, :cond_2a3

    .line 3240
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v7

    if-nez v7, :cond_25a

    .line 3241
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v7

    if-eqz v7, :cond_24f

    const-string v7, "SemIWCMonitor"

    const-string v10, "@IWC - loss begin occurring"

    .line 3242
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    :cond_24f
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {v7, v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    goto :goto_2a3

    .line 3245
    :cond_25a
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v7

    if-eqz v7, :cond_2a3

    const-string v7, "SemIWCMonitor"

    const-string v10, "@IWC - loss still can be seen, keep the value!"

    .line 3246
    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a3

    .line 3213
    :cond_26a
    :goto_26a
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v7

    if-eqz v7, :cond_279

    const-string v7, "SemIWCMonitor"

    const-string v10, "@IWC - (dbad >= 30) || (loss >= 0.5)"

    .line 3214
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    :cond_279
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {v7, v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    cmpl-double v7, v13, v15

    if-ltz v7, :cond_2a3

    const/4 v7, 0x5

    if-lt v4, v7, :cond_2a3

    .line 3217
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {v7, v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3218
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v7

    if-eqz v7, :cond_2a3

    const-string v7, "SemIWCMonitor"

    const-string v10, "@IWC - (loss >= 0.5) && (dbad >= 5)"

    .line 3219
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a3
    :goto_2a3
    if-nez v4, :cond_2d2

    .line 3253
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLossHasGone(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v4, v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLossHasGone(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    if-le v7, v6, :cond_2dc

    .line 3254
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v4

    if-eqz v4, :cond_2c0

    const-string v4, "SemIWCMonitor"

    const-string v7, "@IWC - loss has gone"

    .line 3255
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    :cond_2c0
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3257
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLossHasGone(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3258
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-wide/16 v10, 0x0

    invoke-static {v4, v10, v11}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPreviousLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;D)V

    goto :goto_2dc

    .line 3261
    :cond_2d2
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLossHasGone(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3262
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4, v13, v14}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPreviousLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;D)V

    .line 3265
    :cond_2dc
    :goto_2dc
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v4

    if-eqz v4, :cond_31c

    const-string v4, "SemIWCMonitor"

    .line 3266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@IWC - mLinkLossOccurred-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mLossHasGone-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLossHasGone(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mPreviousLoss-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmPreviousLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;)D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    :cond_31c
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmPreviousLinkLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v5

    if-ne v4, v5, :cond_340

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    .line 3274
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmPoorLinkState(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$PoorLinkState;

    move-result-object v5

    if-ne v4, v5, :cond_345

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v4

    if-nez v4, :cond_345

    .line 3275
    :cond_340
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateLinkLossNotification(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 3280
    :cond_345
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4, v8, v9}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastTimeSample(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V

    .line 3281
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastTxBad(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3282
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastTxGood(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3283
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v1

    .line 3284
    :try_start_357
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmValidLastRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3285
    monitor-exit v1

    return v6

    :catchall_35e
    move-exception v0

    monitor-exit v1
    :try_end_360
    .catchall {:try_start_357 .. :try_end_360} :catchall_35e

    throw v0

    :catchall_361
    move-exception v0

    .line 3176
    :try_start_362
    monitor-exit v3
    :try_end_363
    .catchall {:try_start_362 .. :try_end_363} :catchall_361

    throw v0
.end method

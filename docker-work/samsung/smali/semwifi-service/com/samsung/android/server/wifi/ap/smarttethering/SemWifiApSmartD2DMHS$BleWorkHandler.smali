.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;
.super Landroid/os/Handler;
.source "SemWifiApSmartD2DMHS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BleWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;Landroid/os/Looper;)V
    .registers 3

    .line 170
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 171
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 175
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x4e20

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq p1, v2, :cond_e4

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq p1, v4, :cond_ca

    if-eq p1, v3, :cond_72

    const/4 v4, 0x4

    if-eq p1, v4, :cond_13

    goto/16 :goto_142

    .line 189
    :cond_13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "wifi_ap_smart_d2d_mhs"

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_142

    .line 191
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->checkPreConditions()I

    move-result p1

    if-nez p1, :cond_37

    .line 194
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->startWifiApSmartD2DMHSAdvertize()V

    .line 195
    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_142

    .line 197
    :cond_37
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPreConditions failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Landroid/util/LocalLog;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\tcheckPreConditions failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_142

    .line 209
    :cond_72
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetmWifiApBleScanResults(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 210
    :try_start_79
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetmWifiApBleScanResults(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 211
    monitor-exit p1
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_c7

    .line 212
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Z

    move-result p1

    if-nez p1, :cond_bd

    if-nez v2, :cond_bd

    .line 213
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not updating BLE scan result isAdvRunning "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$mclearLocalResults(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)V

    .line 215
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->removeMessages(I)V

    return-void

    .line 218
    :cond_bd
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$mupdateLocalResults(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)V

    .line 219
    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_142

    :catchall_c7
    move-exception p0

    .line 211
    :try_start_c8
    monitor-exit p1
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw p0

    .line 203
    :cond_ca
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_ap_smart_d2d_mhs"

    invoke-static {p1, v0, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->stopWifiApSmartD2DMHSAdvertize()V

    .line 205
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$mclearLocalResults(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)V

    goto :goto_142

    .line 177
    :cond_e4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->checkPreConditions()I

    move-result p1

    if-nez p1, :cond_109

    .line 179
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$mclearLocalResults(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)V

    .line 180
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "wifi_ap_smart_d2d_mhs"

    invoke-static {p1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->startWifiApSmartD2DMHSAdvertize()V

    .line 182
    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_142

    .line 184
    :cond_109
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPreConditions failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Landroid/util/LocalLog;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\tcheckPreConditions failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_142
    :goto_142
    return-void
.end method

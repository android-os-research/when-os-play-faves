.class Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$1;
.super Ljava/lang/Object;
.source "SemClientModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->initializeSoftApChipInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

.field final synthetic val$wifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;)V
    .registers 3

    .line 1258
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$1;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$1;->val$wifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "SemClientModeManager"

    const-string v1, "on runnable"

    .line 1261
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xf

    :goto_9
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_4d

    .line 1264
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$1;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 1265
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$1;->val$wifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->readSoftApInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 1266
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$1;->val$wifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->isReady()Z

    move-result v1

    if-nez v1, :cond_48

    .line 1267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry to read softap.info file cnt_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    .line 1269
    :try_start_3d
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_46

    :catch_41
    const-string v1, "Thread sleep fail"

    .line 1271
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    move v1, v2

    goto :goto_9

    :cond_48
    const-string p0, "chipset information is ready"

    .line 1274
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return-void
.end method

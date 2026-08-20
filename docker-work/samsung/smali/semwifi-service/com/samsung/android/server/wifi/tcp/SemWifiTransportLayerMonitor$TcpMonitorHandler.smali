.class Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;
.super Landroid/os/Handler;
.source "SemWifiTransportLayerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TcpMonitorHandler"
.end annotation


# static fields
.field private static final MSG_AP_RESET_DETECTION_COUNT:I = 0x16

.field private static final MSG_AP_RESET_DETECTION_HISTORY:I = 0x15

.field private static final MSG_AP_UPDATE_INFO:I = 0x14

.field private static final MSG_PACKAGE_ADD_INFO:I = 0x2

.field private static final MSG_PACKAGE_CREATE_INFO:I = 0x1

.field private static final MSG_PACKAGE_FOREGROUND_CHANGED:I = 0x9

.field private static final MSG_PACKAGE_REMOVE_INFO:I = 0x4

.field private static final MSG_PACKAGE_SET_CATEGORY:I = 0x8

.field private static final MSG_PACKAGE_UPDATE_CATEGORY:I = 0x6

.field private static final MSG_PACKAGE_UPDATE_CATEGORY_FAIL_HISTORY:I = 0x7

.field private static final MSG_PACKAGE_UPDATE_DETECTED_COUNT:I = 0xb

.field private static final MSG_PACKAGE_UPDATE_INFO:I = 0x3

.field private static final MSG_PACKAGE_UPDATE_MISSING_INFO_LIST:I = 0x5

.field private static final MSG_PACKAGE_UPDATE_VOIP_INFO:I = 0xa

.field private static final MSG_SAVE_FILES:I = 0x28

.field private static final MSG_SAVE_PACKAGE_INFO:I = 0x29

.field private static final MSG_SAVE_SWITCH_UID__INFO:I = 0x2a

.field private static final MSG_SWITCH_ENABLED_UID_LIST_UPDATED:I = 0x1f

.field private static final MSG_SWITCH_ENABLED_UID_UPDATE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "SemWifiTransportLayerMonitor.TcpMonitorHandler"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Landroid/os/Looper;)V
    .registers 3

    .line 140
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 141
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1e

    const/16 v2, 0x15

    const/16 v3, 0x2a

    const/4 v4, 0x1

    const-string v5, ", "

    const/4 v6, 0x0

    const-string v7, "SemWifiTransportLayerMonitor.TcpMonitorHandler"

    if-eq v0, v1, :cond_753

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_67b

    const-string v1, "FAILED"

    const/4 v2, 0x3

    const-string v3, "NONE"

    const/4 v8, 0x6

    const/16 v9, 0x29

    packed-switch v0, :pswitch_data_7e0

    packed-switch v0, :pswitch_data_7fa

    packed-switch v0, :pswitch_data_804

    goto/16 :goto_7df

    :pswitch_27
    const-string p1, "MSG_SAVE_SWITCH_UID__INFO"

    .line 453
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiTransportLayerFileManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->saveSwitchEnabledUidListToFile(Ljava/util/ArrayList;)Z

    goto/16 :goto_7df

    :pswitch_3d
    const-string p1, "MSG_SAVE_PACKAGE_INFO"

    .line 448
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiTransportLayerFileManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->saveWifiPackageInfoToFile(Ljava/util/HashMap;)Z

    goto/16 :goto_7df

    :pswitch_53
    const-string p1, "MSG_SAVE_FILES"

    .line 438
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_63

    const-string p1, "MSG_SAVE_FILES - saveWifiPackageInfoList"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_63
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiTransportLayerFileManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->saveWifiPackageInfoToFile(Ljava/util/HashMap;)Z

    .line 441
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_7d

    const-string p1, "MSG_SAVE_FILES - saveWifiApInfoList"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_7d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiTransportLayerFileManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->saveWifiApInfoToFile(Ljava/util/HashMap;)Z

    .line 443
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_97

    const-string p1, "MSG_SAVE_FILES - saveWifiSwitchableAppList"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_97
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiTransportLayerFileManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->saveSwitchEnabledUidListToFile(Ljava/util/ArrayList;)Z

    goto/16 :goto_7df

    .line 366
    :pswitch_a8
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string v0, "MSG_AP_RESET_DETECTION_COUNT"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_b3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7df

    .line 368
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7df

    .line 370
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7df

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 371
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->resetSwitchForIndivdiaulAppsDetectionCount(Ljava/lang/String;)V

    goto :goto_d1

    .line 347
    :pswitch_e1
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, "MSG_AP_RESET_DETECTION_HISTORY"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_ec
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7df

    .line 349
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 350
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_11d

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 351
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 352
    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setDetectedCount(I)V

    .line 354
    :cond_11d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7df

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7df

    .line 355
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    move-result-object p1

    .line 356
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_145
    :goto_145
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7df

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 357
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    .line 358
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_145

    .line 336
    :pswitch_163
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_16e

    const-string v0, "MSG_AP_UPDATE_INFO"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_16e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7df

    .line 338
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 339
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 340
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_197
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiApInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7df

    .line 323
    :pswitch_1a6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7df

    .line 324
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 325
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_1c6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_PACKAGE_UPDATE_DETECTED_COUNT - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_1c6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7df

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7df

    .line 328
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p0

    .line 329
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDetectedCount()I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setDetectedCount(I)V

    goto/16 :goto_7df

    .line 311
    :pswitch_208
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7df

    .line 312
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 314
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7df

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7df

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    .line 315
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isVoip()Z

    move-result v0

    if-nez v0, :cond_7df

    .line 316
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_256

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_PACKAGE_UPDATE_VOIP_INFO - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_256
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setIsVoip(Z)V

    goto/16 :goto_7df

    .line 301
    :pswitch_26b
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7df

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7df

    .line 302
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 303
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 304
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_2a7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_PACKAGE_FOREGROUND_CHANGED - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentUserId(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2a7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$mgetOrCreatePackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;ILjava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fputmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)V

    goto/16 :goto_7df

    .line 285
    :pswitch_2b2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7df

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7df

    .line 286
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 287
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_PACKAGE_SET_CATEGORY - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_7df

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7df

    .line 292
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setCategory(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_7df

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v1

    if-ne v1, v0, :cond_7df

    .line 294
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setCategory(Ljava/lang/String;)V

    goto/16 :goto_7df

    .line 269
    :pswitch_324
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7df

    .line 270
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 271
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_344

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_PACKAGE_UPDATE_CATEGORY_FAIL_HISTORY - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_344
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7df

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7df

    .line 274
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->addCategoryUpdateFailCount()V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 276
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategoryUpdateFailCount()I

    move-result v0

    if-le v0, v2, :cond_7df

    .line 277
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 278
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setCategory(Ljava/lang/String;)V

    goto/16 :goto_7df

    .line 240
    :pswitch_39a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_471

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_471

    .line 241
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 242
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v4

    if-eqz v4, :cond_3c2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_UPDATE_PACKAGE_CATEGORY - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_3c2
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->getApplicationCategory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_41d

    .line 245
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41d

    .line 247
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_471

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_471

    .line 248
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setCategory(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_471

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v1

    if-ne v1, v0, :cond_471

    .line 250
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentWifiPackageInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setCategory(Ljava/lang/String;)V

    goto :goto_471

    .line 255
    :cond_41d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_471

    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_471

    .line 256
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->addCategoryUpdateFailCount()V

    .line 257
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 258
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategoryUpdateFailCount()I

    move-result p1

    if-le p1, v2, :cond_471

    .line 259
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 260
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->setCategory(Ljava/lang/String;)V

    .line 265
    :cond_471
    :goto_471
    invoke-virtual {p0, v9}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7df

    .line 209
    :pswitch_476
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4c9

    .line 210
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_485

    const-string v0, "MSG_PACKAGE_UPDATE_MISSING_INFO_LIST"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_485
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_4c9

    .line 214
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_48f
    :goto_48f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 215
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_48f

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48f

    .line 216
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48f

    .line 222
    :cond_4c9
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_4d4

    const-string p1, "MSG_PACKAGE_UPDATE_MISSING_INFO_LIST - update none categories"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_4d4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_521

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_521

    .line 226
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4fb
    :goto_4fb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_521

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 227
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4fb

    .line 228
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4fb

    .line 232
    :cond_521
    invoke-virtual {p0, v9}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendEmptyMessage(I)Z

    .line 233
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmPackageUpdateHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

    move-result-object v0

    if-eqz v0, :cond_7df

    .line 234
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmPackageUpdateHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

    move-result-object v0

    const/4 v1, 0x2

    .line 235
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 234
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7df

    .line 197
    :pswitch_53c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7df

    .line 198
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 199
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_55c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_PACKAGE_REMOVE_INFO - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_55c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_581

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    .line 202
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_581
    invoke-virtual {p0, v9}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7df

    .line 181
    :pswitch_586
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7df

    .line 182
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 183
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_5a6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_PACKAGE_UPDATE_INFO - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_5a6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getWifiPackageInfo(I)Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_7df

    .line 187
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->updatePackageInfo(Landroid/content/Context;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7df

    .line 190
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7df

    .line 167
    :pswitch_5d2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7df

    .line 168
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 169
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_5f8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_PACKAGE_ADD_INFO - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_5f8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_611

    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_611
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v0

    .line 175
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p0, v8, v0, v6, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    invoke-virtual {p0, v9}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7df

    .line 150
    :pswitch_625
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7df

    .line 151
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 152
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_64f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_PACKAGE_CREATE_INFO - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_64f
    new-instance v1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_66f

    .line 158
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_66f
    invoke-virtual {p0, v8, v0, v6, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    invoke-virtual {p0, v9}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7df

    .line 400
    :cond_67b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7df

    .line 402
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 404
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_69d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_SWITCH_ENABLED_UID_LIST_UPDATED - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69d
    if-eqz p1, :cond_74e

    .line 407
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6a9
    :goto_6a9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_703

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 408
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a9

    .line 409
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v4

    if-eqz v4, :cond_6dd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_SWITCH_ENABLED_UID_LIST_UPDATED - delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_6dd
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    move-result-object v4

    if-eqz v4, :cond_6f2

    .line 412
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    move-result-object v4

    invoke-virtual {p0, v2, v1, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    :cond_6f2
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-virtual {v4, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->getPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->resetSwitchForIndivdiaulAppsDetectionCount(Ljava/lang/String;)V

    .line 416
    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    const/16 v5, 0xb

    invoke-static {v4, v1, v5, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$msendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;IIZ)V

    goto :goto_6a9

    .line 422
    :cond_703
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_707
    :goto_707
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_749

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 423
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_707

    .line 424
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result v2

    if-eqz v2, :cond_741

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_SWITCH_ENABLED_UID_LIST_UPDATED - insert "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_741
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    const/16 v4, 0xa

    invoke-static {v2, v1, v4, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$msendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;IIZ)V

    goto :goto_707

    .line 430
    :cond_749
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fputmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Ljava/util/ArrayList;)V

    .line 432
    :cond_74e
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7df

    .line 379
    :cond_753
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7df

    .line 380
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 381
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-nez p1, :cond_75e

    move v4, v6

    .line 382
    :cond_75e
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_77e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_SWITCH_ENABLED_UID_UPDATE - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77e
    if-eqz v4, :cond_7a6

    .line 385
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7dc

    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7dc

    .line 386
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7dc

    .line 389
    :cond_7a6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7d5

    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d5

    .line 390
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiSwitchEnabledUidList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 393
    :cond_7d5
    invoke-virtual {p0, v2, v0, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    :cond_7dc
    :goto_7dc
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendEmptyMessage(I)Z

    :cond_7df
    :goto_7df
    return-void

    :pswitch_data_7e0
    .packed-switch 0x1
        :pswitch_625
        :pswitch_5d2
        :pswitch_586
        :pswitch_53c
        :pswitch_476
        :pswitch_39a
        :pswitch_324
        :pswitch_2b2
        :pswitch_26b
        :pswitch_208
        :pswitch_1a6
    .end packed-switch

    :pswitch_data_7fa
    .packed-switch 0x14
        :pswitch_163
        :pswitch_e1
        :pswitch_a8
    .end packed-switch

    :pswitch_data_804
    .packed-switch 0x28
        :pswitch_53
        :pswitch_3d
        :pswitch_27
    .end packed-switch
.end method

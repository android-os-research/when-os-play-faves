.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->registerBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .registers 2

    .line 9805
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const-string p1, "adminUid"

    const-string/jumbo v0, "sealedHardKeyIntentState"

    const-string/jumbo v1, "sealedStatusBarIconsState"

    const-string/jumbo v2, "sealedStatusBarClockState"

    const-string/jumbo v3, "sealedStatusBarMode"

    const-string v4, "KNOX_CUSTOM"

    .line 9809
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v5, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11d

    .line 9812
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$mgetMultiWindowState(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result p2

    const/4 v5, 0x0

    if-nez p2, :cond_2a

    .line 9813
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p2, v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setMultiWindowState(Z)I

    .line 9817
    :cond_2a
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$mgetDeviceSpeakerEnabledStateInternal(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result p2

    const/4 v6, 0x1

    if-eqz p2, :cond_38

    .line 9818
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p2, v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setDeviceSpeakerEnabledState(Z)I

    .line 9821
    :cond_38
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getProKioskState()Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 9822
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 9823
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p2, v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    :cond_4d
    const/4 p2, -0x1

    const/4 v7, 0x4

    const/16 v8, 0x3e8

    .line 9829
    :try_start_51
    iget-object v9, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v9}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v9

    invoke-virtual {v9, v8, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_73

    .line 9830
    iget-object v9, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v9}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v9

    const-string/jumbo v10, "statusBarMode"

    invoke-virtual {v9, v8, v4, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 9831
    iget-object v9, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v9}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v9

    invoke-virtual {v9, v8, v4, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_73} :catch_73

    .line 9837
    :catch_73
    :cond_73
    :try_start_73
    iget-object v3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    invoke-virtual {v3, v8, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_94

    .line 9838
    iget-object v3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    const-string/jumbo v9, "statusBarClockState"

    invoke-virtual {v3, v8, v4, v9, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 9839
    iget-object v3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    invoke-virtual {v3, v8, v4, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_94} :catch_94

    .line 9845
    :catch_94
    :cond_94
    :try_start_94
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    invoke-virtual {v2, v8, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b5

    .line 9846
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    const-string/jumbo v3, "statusBarIconsState"

    invoke-virtual {v2, v8, v4, v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 9847
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    invoke-virtual {v2, v8, v4, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b5} :catch_b5

    .line 9854
    :catch_b5
    :cond_b5
    :try_start_b5
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    invoke-virtual {v1, v8, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_d5

    .line 9855
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    const-string v2, "hardKeyIntentMode"

    invoke-virtual {v1, v8, v4, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 9856
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    invoke-virtual {v1, v8, v4, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_d5} :catch_d5

    .line 9863
    :catch_d5
    :cond_d5
    :try_start_d5
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p2

    invoke-virtual {p2, v8, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_d5 .. :try_end_de} :catch_df

    goto :goto_ef

    :catch_df
    const-string p2, "KnoxCustomManagerService"

    const-string v0, "initializing KNOX_CUSTOM with default values"

    .line 9865
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9866
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p2

    invoke-virtual {p2, v8, v4, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 9870
    :goto_ef
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p1, v8}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$mloadHardKeyReportList(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;I)V

    .line 9873
    :try_start_f4
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$mgetKnoxNDALicenseActivated(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result p1

    if-eqz p1, :cond_11d

    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmKLM(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    move-result-object p1

    const-string p2, ""

    const-string v0, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    .line 9876
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11d

    const-string p1, "ACTION_LOCKED_BOOT_COMPLETED"

    const-string p2, "All license already revoked, so Clear all configurations"

    .line 9877
    invoke-static {p1, p2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9878
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$mclearAllApplicationRestrictions(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V

    .line 9879
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p0, v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setKnoxNDALicenseActivated(Z)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_11d} :catch_11d

    :catch_11d
    :cond_11d
    return-void
.end method

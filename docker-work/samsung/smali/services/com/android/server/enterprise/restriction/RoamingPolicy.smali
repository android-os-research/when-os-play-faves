.class public Lcom/android/server/enterprise/restriction/RoamingPolicy;
.super Lcom/samsung/android/knox/restriction/IRoamingPolicy$Stub;
.source "RoamingPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final NON_ROAMING_AUTO_SYNC_SETTING:Ljava/lang/String; = "nonRoamingAutoSyncSetting"

.field public static final TAG:Ljava/lang/String; = "RoamingPolicy"

.field public static final TUI_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.telephonyui"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public mPolicyState:Ljava/lang/String;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mSimFactoryIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public static bridge synthetic -$$Nest$mblockSyncIfRoaming(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->blockSyncIfRoaming()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/restriction/RoamingPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy$Stub;-><init>()V

    const-string v0, ""

    .line 92
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mPolicyState:Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;-><init>(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mSimFactoryIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 200
    new-instance v1, Lcom/android/server/enterprise/restriction/RoamingPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy$2;-><init>(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    .line 97
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 98
    new-instance p1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 100
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->registerRoamingListener()V

    .line 102
    :cond_37
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final blockSyncIfRoaming()V
    .registers 5

    .line 172
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_32

    .line 175
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 174
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    const-string/jumbo v1, "gsm.operator.isroaming"

    const-string v3, "false"

    .line 176
    invoke-static {v0, v1, v3}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v0, v2

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :cond_32
    :goto_32
    const-string v1, "RoamingPolicy"

    if-eqz v0, :cond_47

    const-string v0, "Entering Roaming"

    .line 181
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->storeUserAutoSyncSetting()V

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->setMasterSyncAutomatically(Z)V

    goto :goto_4f

    :cond_47
    const-string v0, "Leaving Roaming"

    .line 186
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->restoreUserAutoSyncSetting()V

    :goto_4f
    return-void
.end method

.method public final deregisterRoamingListener()V
    .registers 3

    const-string v0, "RoamingPolicy"

    const-string/jumbo v1, "unregistering roaming listener"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :try_start_8
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mSimFactoryIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_19

    :catch_10
    move-exception p0

    const-string v1, "Exception thrown!"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_19
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 486
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    const-string p0, "Permission Denial: can\'t dump Roaming Policy"

    .line 488
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 492
    :cond_10
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mPolicyState:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mPolicyState:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public final enforceOwnerOnlyAndRoamingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 217
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_ROAMING"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 217
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 195
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 197
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getEnterpriseDumpHelper()Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;
    .registers 3

    .line 478
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    if-nez v0, :cond_d

    .line 479
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 481
    :cond_d
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    return-object p0
.end method

.method public isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 363
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ROAMING"

    const-string/jumbo v0, "roamingDataEnabled"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 366
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_23

    :cond_22
    const/4 p1, 0x1

    .line 372
    :goto_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isDataRoamingEnabled : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RoamingPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 300
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ROAMING"

    const-string/jumbo v0, "roamingPushEnabled"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 303
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_23

    :cond_22
    const/4 p1, 0x1

    .line 310
    :goto_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isRoamingPushEnabled : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RoamingPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 260
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ROAMING"

    const-string/jumbo v0, "roamingSyncEnabled"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 263
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_23

    :cond_22
    const/4 p1, 0x1

    .line 270
    :goto_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isRoamingSyncEnabled : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RoamingPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 433
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ROAMING"

    const-string/jumbo v0, "roamingVoiceCallsEnabled"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 436
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_23

    :cond_22
    const/4 p1, 0x1

    :goto_23
    return p1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAdminRemoved : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RoamingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const/4 v0, 0x0

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "Roaming Sync is not being applied, so de-register listener and restore sync setting"

    .line 388
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->deregisterRoamingListener()V

    .line 390
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->restoreUserAutoSyncSetting()V

    .line 393
    :cond_33
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_3c

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updateSystemUIMonitor(I)V

    .line 396
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updatePolicyState()V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public final registerRoamingListener()V
    .registers 3

    const-string v0, "RoamingPolicy"

    const-string/jumbo v1, "registering roaming listener"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SERVICE_STATE"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mSimFactoryIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final restoreUserAutoSyncSetting()V
    .registers 6

    .line 140
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "nonRoamingAutoSyncSetting"

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "generic"

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreUserAutoSyncSetting : stored user sync setting is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RoamingPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_40

    const-string v3, "1"

    .line 148
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->setMasterSyncAutomatically(Z)V

    .line 149
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    :cond_40
    return-void
.end method

.method public final setMasterSyncAutomatically(Z)V
    .registers 7

    .line 154
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_2b

    aget v2, p0, v1

    .line 156
    invoke-static {p1, v2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMasterSyncAutomatically : userid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RoamingPolicy"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2b
    return-void
.end method

.method public setRoamingData(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 9

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->enforceOwnerOnlyAndRoamingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 324
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "ROAMING"

    const-string/jumbo v3, "roamingDataEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    .line 327
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 339
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.ROAMING_SETROAMINGDATA_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.app.telephonyui"

    .line 340
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string/jumbo v3, "roamingData"

    .line 341
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 343
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.knox.permission.KNOX_ROAMING"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 344
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataRoaming : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RoamingPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->setRoamingDataAllowedSystemUI(IZ)V

    .line 349
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updatePolicyState()V

    return p2
.end method

.method public final setRoamingDataAllowedSystemUI(IZ)V
    .registers 5

    .line 450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 452
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 453
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setRoamingDataAllowedAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 457
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "RoamingPolicy"

    const-string/jumbo p2, "setRoamingDataAllowedSystemUI() failed. "

    .line 455
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 457
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 458
    throw p0
.end method

.method public setRoamingPush(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->enforceOwnerOnlyAndRoamingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 283
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "ROAMING"

    const-string/jumbo v2, "roamingPushEnabled"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRoamingPush : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RoamingPolicy"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updatePolicyState()V

    return p1
.end method

.method public setRoamingSync(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->enforceOwnerOnlyAndRoamingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 230
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "ROAMING"

    const-string/jumbo v3, "roamingSyncEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRoamingSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RoamingPolicy"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 237
    :try_start_2c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-nez p1, :cond_36

    .line 238
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->registerRoamingListener()V

    goto :goto_3c

    .line 240
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->deregisterRoamingListener()V

    .line 241
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->restoreUserAutoSyncSetting()V
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_43

    .line 245
    :goto_3c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updatePolicyState()V

    return v0

    :catchall_43
    move-exception p0

    .line 245
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    throw p0
.end method

.method public setRoamingVoiceCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->enforceOwnerOnlyAndRoamingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 417
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "ROAMING"

    const-string/jumbo v2, "roamingVoiceCallsEnabled"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 419
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updatePolicyState()V

    return p1
.end method

.method public final storeUserAutoSyncSetting()V
    .registers 6

    .line 125
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "nonRoamingAutoSyncSetting"

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "1"

    goto :goto_19

    :cond_17
    const-string v1, "0"

    .line 130
    :goto_19
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "value"

    .line 131
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "storeUserAutoSyncSetting : storing user sync setting as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RoamingPolicy"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "generic"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    return-void
.end method

.method public systemReady()V
    .registers 1

    .line 401
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updatePolicyState()V

    return-void
.end method

.method public final updatePolicyState()V
    .registers 7

    .line 466
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->getEnterpriseDumpHelper()Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    move-result-object v0

    const-string v1, "adminUid"

    const-string/jumbo v2, "roamingSyncEnabled"

    const-string/jumbo v3, "roamingPushEnabled"

    const-string/jumbo v4, "roamingDataEnabled"

    const-string/jumbo v5, "roamingVoiceCallsEnabled"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "ROAMING"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->readTable(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mPolicyState:Ljava/lang/String;

    return-void
.end method

.method public final updateSystemUIMonitor(I)V
    .registers 3

    const/4 v0, 0x0

    .line 446
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->setRoamingDataAllowedSystemUI(IZ)V

    return-void
.end method

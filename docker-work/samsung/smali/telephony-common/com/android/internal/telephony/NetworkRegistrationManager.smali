.class public Lcom/android/internal/telephony/NetworkRegistrationManager;
.super Landroid/os/Handler;
.source "NetworkRegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;,
        Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;,
        Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;
    }
.end annotation


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mCallbackTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private blacklist mDeathRecipient:Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

.field private blacklist mINetworkService:Landroid/telephony/INetworkService;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mRegStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

.field private final blacklist mTag:Ljava/lang/String;

.field private blacklist mTargetBindingPackageName:Ljava/lang/String;

.field private final blacklist mTransportType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackTable(Lcom/android/internal/telephony/NetworkRegistrationManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mDeathRecipient:Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmINetworkService(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegStateChangeRegistrants(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransportType(Lcom/android/internal/telephony/NetworkRegistrationManager;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeathRecipient(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mDeathRecipient:Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmINetworkService(Lcom/android/internal/telephony/NetworkRegistrationManager;Landroid/telephony/INetworkService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTargetBindingPackageName(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/telephony/Phone;)V
    .registers 9

    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/NetworkRegistrationManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/NetworkRegistrationManager$1;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    .line 92
    iput p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    .line 93
    iput-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2c

    const-string p1, "C"

    goto :goto_2e

    :cond_2c
    const-string p1, "I"

    .line 96
    :goto_2e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NRM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTag:Ljava/lang/String;

    .line 99
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "carrier_config"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 102
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 103
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 105
    :try_start_6b
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 106
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 105
    invoke-virtual {v2, p2, v4, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p2

    .line 107
    invoke-virtual {p2, v0, p1, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_81
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_81} :catch_82

    goto :goto_9b

    :catch_82
    move-exception p1

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package name not found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    .line 112
    :goto_9b
    invoke-static {p0, v3, v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->rebindService()V

    return-void
.end method

.method private blacklist bindService(Ljava/lang/String;)V
    .registers 6

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_9b

    .line 283
    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p1, "Can\'t find the binding package"

    .line 284
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void

    .line 289
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.telephony.NetworkService"

    if-eqz v1, :cond_31

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3f

    .line 294
    :cond_31
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 301
    :goto_3f
    :try_start_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to bind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    .line 302
    invoke-static {v2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    .line 303
    new-instance v1, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection-IA;)V

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_82

    const-string p1, "Cannot bind to the data service."

    .line 306
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void

    .line 309
    :cond_82
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTargetBindingPackageName:Ljava/lang/String;
    :try_end_84
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_84} :catch_85

    goto :goto_9a

    :catch_85
    move-exception p1

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    :goto_9a
    return-void

    :cond_9b
    :goto_9b
    const-string p1, "can\'t bindService with invalid phone or phoneId."

    .line 279
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getClassName()Ljava/lang/String;
    .registers 4

    .line 367
    iget v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const v0, 0x10403ba

    const-string v1, "carrier_network_service_wlan_class_override_string"

    goto :goto_2c

    .line 379
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport type not WWAN or WLAN. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    const v0, 0x10403bf

    const-string v1, "carrier_network_service_wwan_class_override_string"

    .line 384
    :goto_2c
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_56

    .line 388
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 390
    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_56
    return-object v0
.end method

.method private blacklist getPackageName()Ljava/lang/String;
    .registers 4

    .line 333
    iget v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const v0, 0x10403bb

    const-string v1, "carrier_network_service_wlan_package_override_string"

    goto :goto_2c

    .line 345
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport type not WWAN or WLAN. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    const v0, 0x10403c0

    const-string v1, "carrier_network_service_wwan_package_override_string"

    .line 350
    :goto_2c
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_56

    .line 354
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 356
    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_56
    return-object v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 396
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 400
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist rebindService()V
    .registers 4

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTargetBindingPackageName:Ljava/lang/String;

    .line 319
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already bound or being bound."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    return-void

    .line 324
    :cond_32
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->unbindService()V

    .line 325
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->bindService(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist unbindService()V
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Landroid/telephony/INetworkService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "unbinding service"

    .line 260
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    .line 263
    :try_start_13
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/telephony/INetworkService;->removeNetworkServiceProvider(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_1f

    goto :goto_34

    :catch_1f
    move-exception v0

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove data service provider. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    .line 269
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    if-eqz v0, :cond_43

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_43
    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    .line 273
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    .line 274
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    goto :goto_1f

    .line 132
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->rebindService()V

    :goto_1f
    return-void
.end method

.method public blacklist isServiceConnected()Z
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Landroid/telephony/INetworkService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public blacklist registerForNetworkRegistrationInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    const-string v0, "registerForNetworkRegistrationInfoChanged"

    .line 148
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    .line 149
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist requestNetworkRegistrationInfo(ILandroid/os/Message;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->isServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3a

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service not connected. Domain = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1a

    const-string p1, "CS"

    goto :goto_1c

    :cond_1a
    const-string p1, "PS"

    .line 160
    :goto_1c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    .line 161
    new-instance p0, Landroid/os/AsyncResult;

    iget-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Service not connected."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 163
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 167
    :cond_3a
    new-instance v0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback-IA;)V

    .line 169
    :try_start_3f
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, p1, v0}, Landroid/telephony/INetworkService;->requestNetworkRegistrationInfo(IILandroid/telephony/INetworkServiceCallback;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4f} :catch_50

    goto :goto_76

    :catch_50
    move-exception p1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNetworkRegistrationInfo RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    .line 173
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance p0, Landroid/os/AsyncResult;

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :goto_76
    return-void
.end method

.method public blacklist unregisterForNetworkRegistrationInfoChanged(Landroid/os/Handler;)V
    .registers 2

    .line 144
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

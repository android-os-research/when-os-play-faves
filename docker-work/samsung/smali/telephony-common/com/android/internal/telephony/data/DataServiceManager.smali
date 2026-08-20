.class public Lcom/android/internal/telephony/data/DataServiceManager;
.super Landroid/os/Handler;
.source "DataServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;,
        Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;,
        Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;
    }
.end annotation


# instance fields
.field private final blacklist mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mAppOps:Landroid/app/AppOpsManager;

.field private blacklist mBound:Z

.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final blacklist mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mDeathRecipient:Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;

.field private blacklist mIDataService:Landroid/telephony/data/IDataService;

.field private blacklist mLastBoundPackageName:Ljava/lang/String;

.field private blacklist mLastDataCallResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionManager:Landroid/permission/LegacyPermissionManager;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mServiceBindingChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mServiceConnection:Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

.field private final blacklist mTag:Ljava/lang/String;

.field private blacklist mTargetBindingPackageName:Ljava/lang/String;

.field private final blacklist mTransportType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$QPpf4qpyv0pr9epB13Yg_KqjaDU(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataServiceManager;->lambda$revokePermissionsFromUnusedDataServices$1(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RDlrXbqgcbgyblUswIQ83KnS5VM(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataServiceManager;->lambda$grantPermissionsToService$0(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApnUnthrottledRegistrants(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataCallListChangedRegistrants(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mDeathRecipient:Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIDataService(Lcom/android/internal/telephony/data/DataServiceManager;)Landroid/telephony/data/IDataService;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastBoundPackageName(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mLastBoundPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastDataCallResponseList(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mLastDataCallResponseList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageMap(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceBindingChangedRegistrants(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceBindingChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransportType(Lcom/android/internal/telephony/data/DataServiceManager;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBound(Lcom/android/internal/telephony/data/DataServiceManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeathRecipient(Lcom/android/internal/telephony/data/DataServiceManager;Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mDeathRecipient:Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIDataService(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/telephony/data/IDataService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastBoundPackageName(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mLastBoundPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastDataCallResponseList(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mLastDataCallResponseList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTargetBindingPackageName(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendCompleteMessage(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Message;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;I)V
    .registers 9

    .line 397
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 108
    new-instance p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceBindingChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 110
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    .line 112
    new-instance p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 114
    new-instance p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 122
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mLastDataCallResponseList:Ljava/util/List;

    .line 124
    new-instance p2, Lcom/android/internal/telephony/data/DataServiceManager$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataServiceManager$1;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 398
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 399
    iput p3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DSM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne p3, v1, :cond_3e

    const-string p3, "C-"

    goto :goto_40

    :cond_3e
    const-string p3, "I-"

    .line 401
    :goto_40
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTag:Ljava/lang/String;

    const/4 p3, 0x0

    .line 402
    iput-boolean p3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    .line 403
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "carrier_config"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 408
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "legacy_permission"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/LegacyPermissionManager;

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 410
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 412
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 413
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 415
    :try_start_88
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 416
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 415
    invoke-virtual {v3, p1, p3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    .line 417
    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_9d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_88 .. :try_end_9d} :catch_9e

    goto :goto_b7

    :catch_9e
    move-exception p1

    .line 420
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package name not found: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 422
    :goto_b7
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 425
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->rebindDataService()V

    return-void
.end method

.method private blacklist bindDataService(Ljava/lang/String;)V
    .registers 6

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_77

    .line 486
    :cond_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p1, "Can\'t find the binding package"

    .line 487
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void

    .line 492
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServiceClassName()Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.telephony.data.DataService"

    if-eqz v1, :cond_30

    .line 494
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3e

    .line 497
    :cond_30
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 502
    :goto_3e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->grantPermissionsToService(Ljava/lang/String;)V

    .line 505
    :try_start_41
    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection-IA;)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceConnection:Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

    .line 506
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceConnection:Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string p1, "Cannot bind to the data service."

    .line 508
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void

    .line 511
    :cond_5e
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTargetBindingPackageName:Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_60} :catch_61

    goto :goto_76

    :catch_61
    move-exception p1

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot bind to the data service. Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    :goto_76
    return-void

    :cond_77
    :goto_77
    const-string p1, "can\'t bindDataService with invalid phone or phoneId."

    .line 482
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getAllDataServicePackageNames()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 535
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 536
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.data.DataService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x100000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 539
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 540
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 541
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_31

    goto :goto_20

    .line 542
    :cond_31
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_37
    return-object v0
.end method

.method private blacklist getDataServiceClassName()Ljava/lang/String;
    .registers 2

    .line 606
    iget v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServiceClassName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getDataServiceClassName(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    const p1, 0x10403b8

    const-string v0, "carrier_data_service_wlan_class_override_string"

    goto :goto_28

    .line 632
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport type not WWAN or WLAN. type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    const p1, 0x10403bd

    const-string v0, "carrier_data_service_wwan_class_override_string"

    .line 637
    :goto_28
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 639
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_52

    .line 641
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 643
    invoke-virtual {p0, v0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_52
    return-object p1
.end method

.method private blacklist getDataServicePackageName(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    const p1, 0x10403b9

    const-string v0, "carrier_data_service_wlan_package_override_string"

    goto :goto_2e

    .line 583
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport type not WWAN or WLAN. type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    .line 584
    invoke-static {p0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    const p1, 0x10403be

    const-string v0, "carrier_data_service_wwan_package_override_string"

    .line 588
    :goto_2e
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 590
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_58

    .line 592
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 594
    invoke-virtual {p0, v0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_58
    return-object p1
.end method

.method private blacklist grantPermissionsToService(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 165
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 167
    :try_start_b
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 168
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/util/concurrent/CountDownLatch;)V

    .line 167
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v3, 0x3a98

    .line 176
    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/util/TelephonyUtils;->waitUntilReady(Ljava/util/concurrent/CountDownLatch;J)V

    .line 177
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    const-string v0, "android:manage_ipsec_tunnels"

    .line 178
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    aget-object v4, v1, v2

    .line 177
    invoke-virtual {p1, v0, v3, v4, v2}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V

    .line 179
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    const-string v0, "android:fine_location"

    .line 180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    aget-object v1, v1, v2

    .line 179
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception p1

    const-string v0, "Binder to package manager died, permission grant for DataService failed."

    .line 182
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 183
    throw p1
.end method

.method private blacklist handleRequestUnresponded(Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;)V
    .registers 5

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unresponded on transport "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    .line 449
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " seconds."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    const-string v0, "f5d5cbe6-9bd6-4009-b764-42b1b649b1de"

    .line 454
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 455
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    .line 453
    invoke-static {v0, p1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic blacklist lambda$grantPermissionsToService$0(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .registers 3

    .line 170
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 171
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_f

    :cond_a
    const-string p1, "Failed to grant permissions to service."

    .line 173
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method private synthetic blacklist lambda$revokePermissionsFromUnusedDataServices$1(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .registers 3

    .line 205
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 206
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_f

    :cond_a
    const-string p1, "Failed to revoke permissions from data services."

    .line 208
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 1000
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1004
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist rebindDataService()V
    .registers 4

    .line 518
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 520
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTargetBindingPackageName:Ljava/lang/String;

    .line 521
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already bound or being bound."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    return-void

    .line 526
    :cond_32
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->unbindDataService()V

    .line 527
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->bindDataService(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist revokePermissionsFromUnusedDataServices()V
    .registers 8

    .line 193
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->getAllDataServicePackageNames()Ljava/util/Set;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1e

    aget v4, v1, v3

    .line 195
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServicePackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 198
    :cond_1e
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 200
    :try_start_24
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 201
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 202
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 203
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v1}, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/util/concurrent/CountDownLatch;)V

    .line 202
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/permission/LegacyPermissionManager;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v2, 0x3a98

    .line 211
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/util/TelephonyUtils;->waitUntilReady(Ljava/util/concurrent/CountDownLatch;J)V

    .line 212
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    const-string v3, "android:manage_ipsec_tunnels"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V

    .line 215
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    const-string v3, "android:fine_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_70} :catch_72

    goto :goto_4d

    :cond_71
    return-void

    :catch_72
    move-exception v0

    const-string v1, "Binder to package manager died; failed to revoke DataService permissions."

    .line 219
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 220
    throw v0
.end method

.method private blacklist sendCompleteMessage(Landroid/os/Message;I)V
    .registers 3

    if-eqz p1, :cond_7

    .line 651
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 652
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    return-void
.end method

.method private blacklist setupCallbackHelper(Ljava/lang/String;Landroid/os/Message;)Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;
    .registers 5

    .line 814
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 815
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    if-nez v0, :cond_d

    const/4 p1, 0x4

    .line 816
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    const/4 p0, 0x0

    return-object p0

    .line 820
    :cond_d
    new-instance v0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    if-eqz p2, :cond_32

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": onCompleteMessage set"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 824
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 826
    :cond_32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": onCompleteMessage not set"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    :goto_46
    return-object v0
.end method

.method private blacklist unbindDataService()V
    .registers 4

    .line 460
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->revokePermissionsFromUnusedDataServices()V

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    if-eqz v0, :cond_37

    invoke-interface {v0}, Landroid/telephony/data/IDataService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "unbinding service"

    .line 462
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 465
    :try_start_16
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/telephony/data/IDataService;->removeDataServiceProvider(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_37

    :catch_22
    move-exception v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove data service provider. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 471
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceConnection:Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

    if-eqz v0, :cond_46

    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceConnection:Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_46
    const/4 v0, 0x0

    .line 474
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    .line 475
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceConnection:Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

    .line 476
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTargetBindingPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 477
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    return-void
.end method


# virtual methods
.method public blacklist cancelHandover(ILandroid/os/Message;)V
    .registers 8

    const-string v0, "cancelHandover"

    .line 794
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/data/DataServiceManager;->setupCallbackHelper(Ljava/lang/String;Landroid/os/Message;)Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_d

    .line 796
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    :cond_d
    const/4 v2, 0x2

    .line 801
    :try_start_e
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x927c0

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 803
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, p1, v0}, Landroid/telephony/data/IDataService;->cancelHandover(IILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_23} :catch_24

    goto :goto_35

    :catch_24
    const-string p1, "Cannot invoke cancelHandover on data service."

    .line 805
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 806
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    :goto_35
    return-void
.end method

.method public blacklist deactivateDataCall(IILandroid/os/Message;)V
    .registers 9

    const-string v0, "deactivateDataCall"

    .line 723
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 724
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    const/4 v2, 0x4

    if-nez v1, :cond_13

    const-string p1, "Data service not bound."

    .line 725
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 726
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 730
    :cond_13
    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    if-eqz p3, :cond_23

    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    const/4 v0, 0x2

    .line 736
    :try_start_24
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v3, 0x927c0

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3, p1, p2, v1}, Landroid/telephony/data/IDataService;->deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_39} :catch_3a

    goto :goto_4b

    :catch_3a
    const-string p1, "Cannot invoke deactivateDataCall on data service."

    .line 740
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 741
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    :goto_4b
    return-void
.end method

.method public blacklist getDataServicePackageName()Ljava/lang/String;
    .registers 2

    .line 553
    iget v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServicePackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 435
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    goto :goto_2a

    .line 440
    :cond_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->handleRequestUnresponded(Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;)V

    goto :goto_2a

    .line 437
    :cond_27
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->rebindDataService()V

    :goto_2a
    return-void
.end method

.method public blacklist registerForApnUnthrottled(Landroid/os/Handler;I)V
    .registers 4

    if-eqz p1, :cond_d

    .line 956
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public blacklist registerForDataCallListChanged(Landroid/os/Handler;I)V
    .registers 4

    if-eqz p1, :cond_d

    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public blacklist registerForServiceBindingChanged(Landroid/os/Handler;I)V
    .registers 5

    if-eqz p1, :cond_20

    .line 979
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceBindingChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 980
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    iget v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 981
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceBindingChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 982
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    if-eqz p0, :cond_20

    .line 983
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method public blacklist requestDataCallList(Landroid/os/Message;)V
    .registers 6

    const-string v0, "requestDataCallList"

    .line 902
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 903
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    const/4 v2, 0x4

    if-nez v1, :cond_13

    const-string v0, "Data service not bound."

    .line 904
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 905
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 909
    :cond_13
    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    if-eqz p1, :cond_23

    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3, v1}, Landroid/telephony/data/IDataService;->requestDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_40

    :catch_2f
    const-string v0, "Cannot invoke requestDataCallList on data service."

    .line 917
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    :goto_40
    return-void
.end method

.method public blacklist setDataProfile(Ljava/util/List;ZLandroid/os/Message;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    const-string v0, "setDataProfile"

    .line 875
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 876
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    const/4 v2, 0x4

    if-nez v1, :cond_13

    const-string p1, "Data service not bound."

    .line 877
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 878
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 882
    :cond_13
    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    if-eqz p3, :cond_23

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3, p1, p2, v1}, Landroid/telephony/data/IDataService;->setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_40

    :catch_2f
    const-string p1, "Cannot invoke setDataProfile on data service."

    .line 889
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 890
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    :goto_40
    return-void
.end method

.method public blacklist setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .registers 8

    const-string v0, "setInitialAttachApn"

    .line 841
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 842
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    const/4 v2, 0x4

    if-nez v1, :cond_13

    const-string p1, "Data service not bound."

    .line 843
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 844
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 848
    :cond_13
    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    if-eqz p3, :cond_23

    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3, p1, p2, v1}, Landroid/telephony/data/IDataService;->setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_40

    :catch_2f
    const-string p1, "Cannot invoke setInitialAttachApn on data service."

    .line 857
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 858
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    :goto_40
    return-void
.end method

.method public blacklist setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    const-string v2, "setupDataCall"

    .line 684
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 685
    iget-boolean v3, v0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    const/4 v4, 0x4

    if-nez v3, :cond_17

    const-string v2, "setupDataCall: Data service not bound."

    .line 686
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 687
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 691
    :cond_17
    new-instance v3, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    if-eqz v1, :cond_27

    .line 693
    iget-object v2, v0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    const/4 v2, 0x2

    .line 696
    :try_start_28
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v5, 0x927c0

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 698
    iget-object v5, v0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v2, v0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v17, v3

    invoke-interface/range {v5 .. v17}, Landroid/telephony/data/IDataService;->setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_53} :catch_54

    goto :goto_65

    :catch_54
    const-string v2, "setupDataCall: Cannot invoke setupDataCall on data service."

    .line 702
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 703
    iget-object v2, v0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    :goto_65
    return-void
.end method

.method public blacklist startHandover(ILandroid/os/Message;)V
    .registers 8

    const-string v0, "startHandover"

    .line 764
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/data/DataServiceManager;->setupCallbackHelper(Ljava/lang/String;Landroid/os/Message;)Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_12

    const-string p1, "startHandover: callback == null"

    .line 766
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 767
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    :cond_12
    const/4 v2, 0x2

    .line 772
    :try_start_13
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x927c0

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 774
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, p1, v0}, Landroid/telephony/data/IDataService;->startHandover(IILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_28} :catch_29

    goto :goto_3a

    :catch_29
    const-string p1, "Cannot invoke startHandover on data service."

    .line 776
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 777
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    :goto_3a
    return-void
.end method

.method public blacklist unregisterForApnUnthrottled(Landroid/os/Handler;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 967
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_7
    return-void
.end method

.method public blacklist unregisterForDataCallListChanged(Landroid/os/Handler;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 944
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_7
    return-void
.end method

.method public blacklist unregisterForServiceBindingChanged(Landroid/os/Handler;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 995
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceBindingChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_7
    return-void
.end method

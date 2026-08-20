.class public Lcom/android/internal/telephony/euicc/EuiccController;
.super Lcom/android/internal/telephony/euicc/IEuiccController$Stub;
.source "EuiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;
    }
.end annotation


# static fields
.field static final blacklist EXTRA_OPERATION:Ljava/lang/String; = "operation"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static blacklist sInstance:Lcom/android/internal/telephony/euicc/EuiccController;


# instance fields
.field private final blacklist mAppOpsManager:Landroid/app/AppOpsManager;

.field private final blacklist mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private blacklist mSupportedCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mUnsupportedCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$V_ySsFE-Cog52iEv7sNhriidFcc(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->lambda$refreshSubscriptionsAndSendResult$0(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/euicc/EuiccController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddExtrasToResultIntent(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/content/Intent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->addExtrasToResultIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckCarrierPrivilegeInMetadata(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->checkCarrierPrivilegeInMetadata(Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 145
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    .line 147
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/TelephonyServiceManager;->getEuiccControllerService()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->register(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const-string p2, "telephony_subscription_service"

    .line 155
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string p2, "phone"

    .line 157
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string p2, "appops"

    .line 158
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private blacklist addExtrasToResultIntent(Landroid/content/Intent;I)V
    .registers 5

    ushr-int/lit8 v0, p2, 0x18

    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    .line 532
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_OPERATION_CODE"

    .line 535
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_2c

    .line 542
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->decodeSmdxSubjectAndReasonCode(I)Landroid/util/Pair;

    move-result-object p0

    .line 544
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 545
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_SMDX_SUBJECT_CODE"

    .line 546
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_SMDX_REASON_CODE"

    .line 548
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_35

    :cond_2c
    const p0, 0xffffff

    and-int/2addr p0, p2

    const-string p2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_ERROR_CODE"

    .line 551
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_35
    return-void
.end method

.method private static blacklist awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1832
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    .line 1834
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 1836
    :goto_b
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist blockingGetEidFromEuiccService(I)Ljava/lang/String;
    .registers 6

    .line 1775
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1776
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1777
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$11;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$11;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getEid(ILcom/android/internal/telephony/euicc/EuiccConnector$GetEidCommandCallback;)V

    .line 1789
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private blacklist blockingGetEuiccInfoFromEuiccService(I)Landroid/telephony/euicc/EuiccInfo;
    .registers 6

    .line 1813
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1814
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1815
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$13;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$13;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getEuiccInfo(ILcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccInfoCommandCallback;)V

    .line 1827
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/euicc/EuiccInfo;

    return-object p0
.end method

.method private blacklist blockingGetOtaStatusFromEuiccService(I)I
    .registers 6

    .line 1793
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1794
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x5

    .line 1795
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1796
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$12;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$12;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getOtaStatus(ILcom/android/internal/telephony/euicc/EuiccConnector$GetOtaStatusCommandCallback;)V

    .line 1808
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private blacklist callerCanReadPhoneStatePrivileged()Z
    .registers 2

    .line 1980
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private blacklist callerCanWriteEmbeddedSubscriptions()Z
    .registers 2

    .line 1986
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private blacklist canManageActiveSubscriptionOnTargetSim(ILjava/lang/String;ZI)Z
    .registers 9

    .line 1882
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    .line 1883
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1884
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_41

    .line 1888
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    const/4 v3, -0x1

    if-eq p1, v3, :cond_29

    .line 1893
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v3

    if-ne v3, p1, :cond_14

    .line 1894
    :cond_29
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz p3, :cond_37

    .line 1895
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result v3

    if-ne v3, p4, :cond_14

    :cond_37
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1896
    invoke-virtual {v3, v2, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_41
    :goto_41
    return v1
.end method

.method private blacklist canManageSubscriptionOnTargetSim(ILjava/lang/String;ZI)Z
    .registers 11

    .line 1914
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    .line 1915
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 1917
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_bb

    .line 1924
    :cond_11
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->supportMultiActiveSlots()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9c

    .line 1926
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9b

    .line 1927
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_28

    goto/16 :goto_9b

    .line 1932
    :cond_28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccCardInfo;

    if-eqz v4, :cond_2c

    .line 1933
    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result v5

    if-ne v5, p1, :cond_2c

    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1935
    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->isMultipleEnabledProfilesSupported()Z

    move-result v2

    move v4, v3

    goto :goto_4e

    :cond_4c
    move v2, v1

    move v4, v2

    :goto_4e
    if-nez v4, :cond_58

    const-string p0, "EuiccController"

    const-string p1, "The target SIM is not an eUICC."

    .line 1940
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1947
    :cond_58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 1952
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v5

    if-ne v5, p1, :cond_5c

    if-eqz v2, :cond_7e

    if-eqz p3, :cond_7e

    .line 1954
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result v5

    if-ne v5, p4, :cond_5c

    .line 1955
    :cond_7e
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v4, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1961
    :cond_85
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 1963
    :try_start_89
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result p0
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_96

    if-ne p0, v3, :cond_92

    move v1, v3

    .line 1966
    :cond_92
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_96
    move-exception p0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1967
    throw p0

    :cond_9b
    :goto_9b
    return v1

    .line 1969
    :cond_9c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_bb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionInfo;

    .line 1970
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p4

    if-eqz p4, :cond_a0

    iget-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1971
    invoke-virtual {p4, p3, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a0

    return v3

    :cond_bb
    :goto_bb
    return v1
.end method

.method private blacklist checkCarrierPrivilegeInMetadata(Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Z
    .registers 7

    .line 1843
    invoke-virtual {p1}, Landroid/telephony/euicc/DownloadableSubscription;->getAccessRules()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1845
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/telephony/UiccAccessRule;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/UiccAccessRule;

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    const/4 v0, 0x0

    const-string v1, "EuiccController"

    if-nez p1, :cond_1f

    const-string p0, "No access rules but caller is unprivileged"

    .line 1848
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1854
    :cond_1f
    :try_start_1f
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x8000000

    invoke-virtual {p0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_27} :catch_43

    move p2, v0

    .line 1861
    :goto_28
    array-length v2, p1

    if-ge p2, v2, :cond_3d

    .line 1862
    aget-object v2, p1, p2

    invoke-virtual {v2, p0}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    const-string p0, "Calling package has carrier privilege to this profile"

    .line 1864
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3a
    add-int/lit8 p2, p2, 0x1

    goto :goto_28

    :cond_3d
    const-string p0, "Calling package doesn\'t have carrier privilege to this profile"

    .line 1868
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_43
    const-string p0, "Calling package valid but gone"

    .line 1857
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static blacklist get()Lcom/android/internal/telephony/euicc/EuiccController;
    .registers 3

    .line 134
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    if-nez v0, :cond_18

    .line 135
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccController;

    monitor-enter v0

    .line 136
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    if-eqz v1, :cond_d

    .line 139
    monitor-exit v0

    goto :goto_18

    .line 137
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "get() called before init()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_15
    move-exception v1

    .line 139
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    .line 141
    :cond_18
    :goto_18
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    return-object v0
.end method

.method private blacklist getNextAvailableInActivePortIndex(Lcom/android/internal/telephony/uicc/UiccSlot;)I
    .registers 6

    if-eqz p1, :cond_16

    .line 1325
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_16

    aget v2, p0, v1

    .line 1326
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v3

    if-nez v3, :cond_13

    return v2

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getRemovableNonEuiccSlot()Lcom/android/internal/telephony/uicc/UiccSlot;
    .registers 3

    .line 1375
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_26

    const/4 v0, 0x0

    .line 1377
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_26

    .line 1378
    aget-object v1, p0, v0

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_23

    aget-object v1, p0, v0

    .line 1379
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1380
    aget-object p0, p0, v0

    return-object p0

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getResolvedPortIndexForDisableSubscription(ILjava/lang/String;Z)I
    .registers 8

    .line 1182
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    .line 1183
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3e

    .line 1184
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_11

    goto :goto_3e

    .line 1189
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    if-eq p1, v1, :cond_29

    .line 1194
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v3

    if-ne v3, p1, :cond_15

    .line 1195
    :cond_29
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_15

    if-nez p3, :cond_39

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1197
    invoke-virtual {v3, v2, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1198
    :cond_39
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result p0

    return p0

    :cond_3e
    :goto_3e
    return v1
.end method

.method private blacklist getResolvedPortIndexForSubscriptionSwitch(I)I
    .registers 11

    .line 1209
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->getSlotIndexFromCardId(I)I

    move-result p1

    .line 1211
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    const-string v1, "EuiccController"

    const/4 v2, 0x0

    if-nez v0, :cond_26

    .line 1214
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Switch to inactive slot, return default port index. slotIndex: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1218
    :cond_26
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isMultipleEnabledProfileSupported()Z

    move-result p1

    if-nez p1, :cond_32

    const-string p0, "Multiple enabled profiles is not supported, return default port index"

    .line 1219
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1222
    :cond_32
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->getRemovableNonEuiccSlot()Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_45

    .line 1223
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->getRemovableNonEuiccSlot()Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isActive()Z

    move-result p1

    if-eqz p1, :cond_45

    move p1, v1

    goto :goto_46

    :cond_45
    move p1, v2

    .line 1224
    :goto_46
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    if-ne v3, v1, :cond_64

    if-eqz p1, :cond_51

    return v2

    .line 1237
    :cond_51
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object p0

    array-length p1, p0

    :goto_56
    if-ge v2, p1, :cond_9a

    aget v1, p0, v2

    .line 1238
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v3

    if-eqz v3, :cond_61

    return v1

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 1244
    :cond_64
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_6a
    if-ge v5, v4, :cond_8a

    aget v6, v3, v5

    .line 1245
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 1246
    iget-object v7, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1248
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPhoneIdFromPortIndex(I)I

    move-result v8

    .line 1247
    invoke-virtual {v7, v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    if-eqz v7, :cond_86

    .line 1249
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v7

    if-eqz v7, :cond_87

    :cond_86
    return v6

    :cond_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    :cond_8a
    if-eqz p1, :cond_93

    .line 1256
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->isRemovalNonEuiccSlotHasActiveSubscription()Z

    move-result p1

    if-nez p1, :cond_93

    move v2, v1

    :cond_93
    if-eqz v2, :cond_9a

    .line 1262
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->getNextAvailableInActivePortIndex(Lcom/android/internal/telephony/uicc/UiccSlot;)I

    move-result p0

    return p0

    :cond_9a
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getSlotIndexFromCardId(I)I
    .registers 8

    .line 1338
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "EuiccController"

    if-eqz p0, :cond_53

    .line 1339
    array-length v2, p0

    if-nez v2, :cond_f

    goto :goto_53

    .line 1343
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->convertToCardString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1344
    :goto_18
    array-length v4, p0

    if-ge v3, v4, :cond_3e

    .line 1345
    aget-object v4, p0, v3

    if-nez v4, :cond_2a

    const-string v4, "e9517acf-e1a1-455f-9231-1b5515a0d0eb"

    .line 1347
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    const-string v5, "EuiccController: Found UiccSlotInfo Null object."

    .line 1346
    invoke-static {v4, v5}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 1350
    :cond_2a
    aget-object v4, p0, v3

    if-eqz v4, :cond_33

    .line 1351
    invoke-virtual {v4}, Landroid/telephony/UiccSlotInfo;->getCardId()Ljava/lang/String;

    move-result-object v4

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    .line 1352
    :goto_34
    invoke-static {v2, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->compareIgnoreTrailingFs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    return v3

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1356
    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No UiccSlotInfo found for cardId: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_53
    :goto_53
    const-string p0, "UiccSlotInfo is null or empty"

    .line 1340
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private blacklist getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;
    .registers 6

    .line 1762
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 1763
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    if-ge v0, v1, :cond_21

    .line 1765
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1766
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne p1, v3, :cond_1e

    return-object v2

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist hasEuicc()Z
    .registers 4

    .line 1632
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_37

    .line 1633
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_37

    .line 1637
    :cond_10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccCardInfo;

    if-eqz v1, :cond_14

    .line 1638
    invoke-virtual {v1}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v1

    if-eqz v1, :cond_14

    move p0, v2

    goto :goto_2c

    :cond_2b
    move p0, v0

    :goto_2c
    if-nez p0, :cond_36

    const-string p0, "EuiccController"

    const-string v1, "The target SIM is not an eUICC."

    .line 1644
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_36
    return v2

    :cond_37
    :goto_37
    return v0
.end method

.method public static blacklist init(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccController;
    .registers 4

    .line 122
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccController;

    monitor-enter v0

    .line 123
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    if-nez v1, :cond_f

    .line 124
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/EuiccController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    goto :goto_27

    :cond_f
    const-string p0, "EuiccController"

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times! sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2b

    .line 129
    sget-object p0, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    return-object p0

    :catchall_2b
    move-exception p0

    .line 128
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method private blacklist isEsimSupportedCountry(Ljava/lang/String;)Z
    .registers 3

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSupportedCountries:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_12

    .line 376
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSupportedCountries:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isEsimUnsupportedCountry(Ljava/lang/String;)Z
    .registers 3

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mUnsupportedCountries:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_12

    .line 383
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mUnsupportedCountries:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isRemovalNonEuiccSlotHasActiveSubscription()Z
    .registers 8

    .line 1361
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->getRemovableNonEuiccSlot()Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1363
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_d
    if-ge v4, v3, :cond_28

    aget v5, v2, v4

    .line 1364
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v6

    if-eqz v6, :cond_25

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1366
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPhoneIdFromPortIndex(I)I

    move-result v5

    .line 1365
    invoke-virtual {v6, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    if-eqz v5, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_28
    return v1
.end method

.method private blacklist isTargetPortIndexValid(II)Z
    .registers 13

    const-string v0, "EuiccController"

    const/4 v1, 0x0

    if-gez p2, :cond_1a

    .line 1278
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid portIndex: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1281
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->getSlotIndexFromCardId(I)I

    move-result p1

    .line 1282
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    if-eqz p1, :cond_be

    .line 1283
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_be

    .line 1284
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v2

    array-length v2, v2

    if-lt p2, v2, :cond_38

    goto/16 :goto_be

    .line 1289
    :cond_38
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    const-string v3, " , reject the switch request to portIndex "

    const/4 v4, 0x1

    if-ne v2, v4, :cond_73

    .line 1291
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object p0

    array-length v2, p0

    move v5, v1

    :goto_49
    if-ge v5, v2, :cond_bd

    aget v6, p0, v5

    .line 1292
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v7

    if-eqz v7, :cond_70

    if-eq v6, p2, :cond_70

    .line 1295
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "In SS Mode, slot already has active port on portIndex "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_70
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 1300
    :cond_73
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-le v2, v4, :cond_bd

    .line 1304
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->isRemovalNonEuiccSlotHasActiveSubscription()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 1306
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v2

    array-length v5, v2

    move v6, v1

    :goto_87
    if-ge v6, v5, :cond_bd

    aget v7, v2, v6

    .line 1307
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v8

    if-eqz v8, :cond_ba

    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1310
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPhoneIdFromPortIndex(I)I

    move-result v9

    .line 1309
    invoke-virtual {v8, v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v8

    if-nez v8, :cond_ba

    if-eq v7, p2, :cond_ba

    .line 1312
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "In DSDS Mode, pSim has active subscription, eSim has empty active port on portIndex "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_ba
    add-int/lit8 v6, v6, 0x1

    goto :goto_87

    :cond_bd
    return v4

    :cond_be
    :goto_be
    const-string p0, "Invalid portIndex"

    .line 1285
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private synthetic blacklist lambda$refreshSubscriptionsAndSendResult$0(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .registers 4

    .line 1657
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method private blacklist supportMultiActiveSlots()Z
    .registers 2

    .line 1873
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public blacklist addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZI)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1686
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.action.RESOLVE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    .line 1687
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1688
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.phone.euicc.EuiccResolutionUiDispatcherActivity"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION"

    .line 1690
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.service.euicc.extra.RESOLUTION_CALLING_PACKAGE"

    .line 1692
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.service.euicc.extra.RESOLVABLE_ERRORS"

    .line 1693
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.service.euicc.extra.RESOLUTION_CARD_ID"

    .line 1694
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.service.euicc.extra.RESOLUTION_SUBSCRIPTION_ID"

    .line 1695
    invoke-virtual {v0, p2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.service.euicc.extra.RESOLUTION_PORT_INDEX"

    .line 1696
    invoke-virtual {v0, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.service.euicc.extra.RESOLUTION_USE_PORT_INDEX"

    .line 1697
    invoke-virtual {v0, p2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE_RETRIED"

    .line 1698
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "operation"

    .line 1700
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1701
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    const/high16 p3, 0x42000000    # 32.0f

    invoke-static {p0, p2, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

    .line 1706
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method public blacklist addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V
    .registers 21

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 1675
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZI)V

    return-void
.end method

.method public blacklist blockingGetEuiccProfileInfoList(I)Landroid/service/euicc/GetEuiccProfileInfoListResult;
    .registers 6

    .line 861
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 862
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 863
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$3;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getEuiccProfileInfoList(ILcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccProfileInfoListCommandCallback;)V

    .line 878
    :try_start_15
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_37

    :catch_19
    move-exception p0

    .line 880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "blockingGetEuiccInfoFromEuiccService got InterruptedException e: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EuiccController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 883
    :goto_37
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;

    return-object p0
.end method

.method public blacklist continueOperation(ILandroid/content/Intent;Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "android.service.euicc.extra.RESOLUTION_USE_PORT_INDEX"

    .line 177
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 181
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_c
    const-string p0, "operation"

    .line 183
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    if-eqz p0, :cond_51

    const-string v3, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    .line 189
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    .line 191
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 193
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "EuiccController"

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " continueOperation portIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android.service.euicc.extra.RESOLUTION_PORT_INDEX"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " usePortIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0, p1, p3, v3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->continueOperation(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_4d
    .catchall {:try_start_c .. :try_end_4d} :catchall_59

    .line 198
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 185
    :cond_51
    :try_start_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid resolution intent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p0

    .line 198
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    throw p0

    .line 178
    :cond_5e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to continue operation"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist decodeSmdxSubjectAndReasonCode(I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    new-instance p0, Ljava/util/Stack;

    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x6

    if-ge v0, v1, :cond_17

    and-int/lit8 v1, p1, 0xf

    .line 496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    ushr-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 500
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "^(0\\.)*"

    const-string v1, ""

    .line 504
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 505
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 507
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public blacklist deleteSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 12

    .line 985
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    .line 986
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 988
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 990
    :try_start_11
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_66

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "EuiccController"

    if-nez v3, :cond_36

    .line 992
    :try_start_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot delete nonexistent subscription: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {p0, p4, v5, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_66

    .line 1009
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_36
    if-nez v0, :cond_5b

    .line 1000
    :try_start_38
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1001
    invoke-virtual {v0, v3, p3}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5b

    .line 1002
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No permissions: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-virtual {p0, p4, v5, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_57
    .catchall {:try_start_38 .. :try_end_57} :catchall_66

    .line 1009
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1007
    :cond_5b
    :try_start_5b
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/euicc/EuiccController;->deleteSubscriptionPrivileged(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_66

    .line 1009
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_66
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1010
    throw p0
.end method

.method blacklist deleteSubscriptionPrivileged(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6

    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController$4;

    invoke-direct {v1, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccController$4;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->deleteSubscription(ILjava/lang/String;Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;)V

    return-void
.end method

.method blacklist downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v13, p3

    move/from16 v10, p4

    move-object/from16 v9, p5

    move/from16 v14, p6

    const-string v1, "EuiccController"

    .line 558
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v2

    .line 559
    iget-object v3, v0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4, v9}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const-wide/32 v3, 0xd628eb8

    .line 562
    invoke-virtual {v0, v9, v3, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->isCompatChangeEnabled(Ljava/lang/String;J)Z

    move-result v3

    .line 565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const/4 v11, 0x1

    const/4 v4, 0x0

    if-eqz v10, :cond_3b

    const/4 v5, -0x1

    move/from16 v6, p2

    if-ne v6, v5, :cond_3d

    if-eqz v3, :cond_36

    .line 571
    :try_start_31
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/euicc/EuiccController;->getResolvedPortIndexForSubscriptionSwitch(I)I

    move-result v6

    goto :goto_37

    :cond_36
    move v6, v4

    :goto_37
    if-ne v6, v5, :cond_3d

    move v4, v11

    goto :goto_3d

    :cond_3b
    move/from16 v6, p2

    :cond_3d
    :goto_3d
    move v15, v6

    .line 576
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " downloadSubscription cardId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " switchAfterDownload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " portIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " forceDeactivateSim: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " callingPackage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isConsentNeededToResolvePortIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " shouldResolvePortIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_31 .. :try_end_82} :catchall_109

    if-nez v4, :cond_a5

    if-eqz v2, :cond_a5

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v15

    move-wide v4, v7

    move-object/from16 v6, p3

    move-wide v12, v7

    move/from16 v7, p4

    move/from16 v8, p6

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 585
    :try_start_99
    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_a0

    .line 625
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_a0
    move-exception v0

    move-wide/from16 v16, v12

    goto/16 :goto_10c

    :cond_a5
    if-nez v4, :cond_d4

    .line 602
    :try_start_a7
    invoke-direct {v0, v12, v9, v11, v15}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscriptionOnTargetSim(ILjava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 604
    iget-object v11, v0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v6, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_109

    const/16 v16, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-wide v3, v7

    move-object/from16 v5, p3

    move-object v0, v6

    move/from16 v6, p4

    move-wide/from16 v17, v7

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    move/from16 v10, v16

    move-object/from16 v19, v11

    move v11, v15

    :try_start_c9
    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;ZI)V

    move-object/from16 v1, v19

    invoke-virtual {v1, v12, v13, v14, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;)V

    move-wide/from16 v16, v17

    goto :goto_ff

    :cond_d4
    move-wide/from16 v17, v7

    const-string v2, "Caller can\'t manage subscription on target SIM or  User consent is required for resolving port index. Ask user\'s consent first"

    .line 610
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"
    :try_end_e2
    .catchall {:try_start_c9 .. :try_end_e2} :catchall_105

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v7, v17

    .line 619
    :try_start_e6
    invoke-static {v7, v8, v13, v10, v9}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadNoPrivilegesOrDeactivateSimCheckMetadata(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v13
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_109

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, p5

    move-wide/from16 v16, v7

    move-object v7, v13

    move/from16 v8, p1

    move v9, v15

    move/from16 v10, p4

    .line 614
    :try_start_f7
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    move-object/from16 v1, p8

    .line 622
    invoke-virtual {v0, v1, v11, v14}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_ff
    .catchall {:try_start_f7 .. :try_end_ff} :catchall_103

    .line 625
    :goto_ff
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_103
    move-exception v0

    goto :goto_10c

    :catchall_105
    move-exception v0

    move-wide/from16 v16, v17

    goto :goto_10c

    :catchall_109
    move-exception v0

    move-wide/from16 v16, v7

    :goto_10c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 626
    throw v0
.end method

.method public blacklist downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 16

    if-eqz p3, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    move v2, v0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    .line 471
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void
.end method

.method blacklist downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 31

    move-object/from16 v10, p0

    .line 743
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/EuiccController;->hasEuicc()Z

    move-result v0

    if-nez v0, :cond_32

    .line 744
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide/from16 v6, p3

    move-object/from16 v15, p5

    move/from16 v14, p6

    move-object/from16 v8, p8

    .line 749
    invoke-static {v6, v7, v15, v14, v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadNoEuicc(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    const-string v2, "android.service.euicc.action.RESOLVE_NO_EUICC_TARGET"

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v3, p8

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p6

    .line 745
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    const/4 v0, 0x1

    move-object/from16 v4, p10

    .line 753
    invoke-virtual {v10, v4, v0, v11}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void

    :cond_32
    move-wide/from16 v6, p3

    move-object/from16 v15, p5

    move/from16 v14, p6

    move-object/from16 v8, p8

    move-object/from16 v4, p10

    .line 757
    iget-object v12, v10, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v19, Lcom/android/internal/telephony/euicc/EuiccController$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v5, p8

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController$2;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;Ljava/lang/String;JII)V

    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v18, p9

    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/telephony/euicc/EuiccConnector;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;)V

    return-void
.end method

.method blacklist downloadSubscriptionPrivilegedCheckMetadata(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 28

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p5

    move/from16 v9, p6

    move/from16 v13, p7

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " downloadSubscriptionPrivilegedCheckMetadata cardId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " switchAfterDownload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " portIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " forceDeactivateSim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EuiccController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/EuiccController;->hasEuicc()Z

    move-result v0

    if-nez v0, :cond_67

    .line 718
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide/from16 v2, p3

    move-object/from16 v6, p8

    .line 723
    invoke-static {v2, v3, v12, v9, v6}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadNoPrivilegesOrDeactivateSimCheckMetadata(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v7

    const-string v2, "android.service.euicc.action.RESOLVE_NO_EUICC_TARGET"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v3, p8

    move-object v6, v7

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p6

    .line 719
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    const/4 v0, 0x1

    move-object/from16 v8, p10

    .line 727
    invoke-virtual {v10, v8, v0, v13}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void

    :cond_67
    move-wide/from16 v2, p3

    move-object/from16 v6, p8

    move-object/from16 v8, p10

    .line 731
    iget-object v15, v10, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v7, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;

    const/16 v16, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object v10, v7

    move/from16 v7, p7

    move/from16 v9, v16

    move-object v14, v10

    move/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;ZI)V

    invoke-virtual {v15, v11, v12, v13, v14}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;)V

    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const-string v0, "===== END EUICC CLINIC ====="

    .line 1712
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    const-string v3, "Requires DUMP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-string v3, "===== BEGIN EUICC CLINIC ====="

    .line 1714
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_14
    const-string v3, "===== EUICC CONNECTOR ====="

    .line 1716
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1717
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1718
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1719
    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$10;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/internal/telephony/euicc/EuiccController$10;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p3, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->dumpEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector$DumpEuiccServiceCommandCallback;)V

    const-wide/16 v3, 0x5

    .line 1735
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_45

    const-string p0, "===== EUICC SERVICE TIMEOUT ====="

    .line 1736
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_3d} :catch_40
    .catchall {:try_start_14 .. :try_end_3d} :catchall_3e

    goto :goto_45

    :catchall_3e
    move-exception p0

    goto :goto_4c

    :catch_40
    :try_start_40
    const-string p0, "===== EUICC SERVICE INTERRUPTED ====="

    .line 1739
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_3e

    .line 1741
    :cond_45
    :goto_45
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1741
    :goto_4c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1743
    throw p0
.end method

.method public blacklist eraseSubscriptions(ILandroid/app/PendingIntent;)V
    .registers 7

    .line 1518
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1522
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1524
    :try_start_a
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$7;

    invoke-direct {v3, p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController$7;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->eraseSubscriptions(ILcom/android/internal/telephony/euicc/EuiccConnector$EraseCommandCallback;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 1551
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1552
    throw p0

    .line 1519
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to erase subscriptions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist eraseSubscriptionsWithOptions(IILandroid/app/PendingIntent;)V
    .registers 8

    .line 1558
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1562
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1564
    :try_start_a
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$8;

    invoke-direct {v3, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccController$8;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->eraseSubscriptionsWithOptions(IILcom/android/internal/telephony/euicc/EuiccConnector$EraseCommandCallback;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 1591
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1592
    throw p0

    .line 1559
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to erase subscriptions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getDefaultDownloadableSubscriptionList(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 5

    const/4 v0, 0x0

    .line 889
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->getDefaultDownloadableSubscriptionList(IZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method blacklist getDefaultDownloadableSubscriptionList(IZLjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 15

    .line 895
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 900
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 902
    :try_start_13
    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v9, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;

    move-object v2, v9

    move-object v3, p0

    move-wide v4, v0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v8, p1, p2, v9}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDefaultDownloadableSubscriptionList(IZLcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;)V
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_26

    .line 906
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_26
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    throw p0

    .line 896
    :cond_2b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get default list"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 287
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccController;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method blacklist getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 18

    move-object v0, p0

    .line 388
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 391
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v6, p4

    invoke-virtual {v1, v2, v6}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 392
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 394
    :try_start_16
    iget-object v10, v0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v11, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;

    move-object v1, v11

    move-object v2, p0

    move-wide v3, v8

    move-object v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V

    move v0, p1

    move-object v1, p2

    move v2, p3

    invoke-virtual {v10, p1, p2, p3, v11}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;)V
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_2f

    .line 399
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    throw v0

    .line 389
    :cond_34
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get metadata"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getEid(ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanReadPhoneStatePrivileged()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 213
    :try_start_6
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_f} :catch_40

    .line 218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-nez v0, :cond_33

    .line 221
    :try_start_15
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscriptionOnTargetSim(ILjava/lang/String;ZI)Z

    move-result p2

    if-eqz p2, :cond_1c

    goto :goto_33

    .line 223
    :cond_1c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Must have carrier privileges on subscription to read EID for cardId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_33
    :goto_33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetEidFromEuiccService(I)Ljava/lang/String;

    move-result-object p0
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_3b

    .line 230
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3b
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 231
    throw p0

    :catch_40
    move-exception p0

    const p1, 0x534e4554

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "159062405"

    aput-object v0, p2, v2

    const/4 v0, 0x1

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    const-string v1, "Missing UID checking"

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 216
    throw p0
.end method

.method public blacklist getEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;
    .registers 4

    .line 974
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 976
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetEuiccInfoFromEuiccService(I)Landroid/telephony/euicc/EuiccInfo;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 978
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 979
    throw p0
.end method

.method public blacklist getOtaStatus(I)I
    .registers 4

    .line 242
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 247
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetOtaStatusFromEuiccService(I)I

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 249
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    throw p0

    .line 243
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get OTA status"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getSupportedCountries(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_19

    if-eqz p1, :cond_d

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSupportedCountries:Ljava/util/List;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    if-nez p1, :cond_14

    .line 335
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mUnsupportedCountries:Ljava/util/List;

    if-eqz p0, :cond_14

    return-object p0

    .line 338
    :cond_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 330
    :cond_19
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get supported countries"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist hasCarrierPrivilegesForPackageOnAnyPhone(Ljava/lang/String;)Z
    .registers 4

    .line 2052
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2053
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2057
    :try_start_d
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1c

    const/4 p1, 0x1

    if-ne p0, p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 2060
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2061
    throw p0
.end method

.method public blacklist isCompatChangeEnabled(Ljava/lang/String;J)Z
    .registers 5

    .line 2066
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2070
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    .line 2069
    invoke-static {p2, p3, p1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    .line 2071
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCompatChangeEnabled changeId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " changeEnabled: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EuiccController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public blacklist isSimPortAvailable(IILjava/lang/String;)Z
    .registers 9

    .line 1994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1996
    :try_start_4
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_c4

    .line 1998
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2000
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/UiccCardInfo;

    if-eqz v0, :cond_11

    .line 2001
    invoke-virtual {v0}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result v2

    if-eq v2, p1, :cond_27

    goto :goto_11

    .line 2006
    :cond_27
    invoke-virtual {v0}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v2

    if-eqz v2, :cond_c3

    const/4 v2, -0x1

    if-eq p2, v2, :cond_c3

    .line 2007
    invoke-virtual {v0}, Landroid/telephony/UiccCardInfo;->getPorts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lt p2, v2, :cond_3c

    goto/16 :goto_c3

    .line 2010
    :cond_3c
    invoke-virtual {v0}, Landroid/telephony/UiccCardInfo;->getPorts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_44
    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccPortInfo;

    if-eqz v3, :cond_44

    .line 2011
    invoke-virtual {v3}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result v4

    if-eq v4, p2, :cond_59

    goto :goto_44

    .line 2015
    :cond_59
    invoke-virtual {v3}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result p0

    if-nez p0, :cond_60

    return v1

    .line 2020
    :cond_60
    invoke-virtual {v3}, Landroid/telephony/UiccPortInfo;->getIccId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_6c

    return p1

    .line 2024
    :cond_6c
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    .line 2025
    invoke-virtual {v0}, Landroid/telephony/UiccCardInfo;->getPhysicalSlotIndex()I

    move-result v0

    .line 2024
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPortForSlot(II)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    if-eqz p0, :cond_8b

    .line 2029
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p2

    if-eqz p2, :cond_8b

    .line 2030
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isEmptyProfile()Z

    move-result p0

    if-eqz p0, :cond_8b

    return p1

    .line 2033
    :cond_8b
    invoke-virtual {v3}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const-string p2, "EuiccController"

    if-nez p0, :cond_b0

    .line 2035
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid logical slot: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2038
    :cond_b0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object p0

    if-nez p0, :cond_bc

    const-string p0, "No CarrierPrivilegesTracker"

    .line 2040
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2043
    :cond_bc
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getCarrierPrivilegeStatusForPackage(Ljava/lang/String;)I

    move-result p0

    if-ne p0, p1, :cond_c3

    move v1, p1

    :cond_c3
    :goto_c3
    return v1

    :catchall_c4
    move-exception p0

    .line 1998
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1999
    throw p0
.end method

.method public blacklist isSupportedCountry(Ljava/lang/String;)Z
    .registers 5

    .line 359
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSupportedCountries:Ljava/util/List;

    const-string v1, "EuiccController"

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2e

    .line 367
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using allow list supportedCountries="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSupportedCountries:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->isEsimSupportedCountry(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 364
    :cond_2e
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using deny list unsupportedCountries="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mUnsupportedCountries:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->isEsimUnsupportedCountry(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 360
    :cond_4b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to check if the country is supported"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist refreshSubscriptionsAndSendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1655
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 1656
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->requestEmbeddedSubscriptionInfoListRefresh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist retainSubscriptionsForFactoryReset(ILandroid/app/PendingIntent;)V
    .registers 7

    .line 1597
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MASTER_CLEAR"

    const-string v2, "Must have MASTER_CLEAR to retain subscriptions for factory reset"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1601
    :try_start_d
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$9;

    invoke-direct {v3, p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController$9;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->retainSubscriptions(ILcom/android/internal/telephony/euicc/EuiccConnector$RetainSubscriptionsCommandCallback;)V
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1b

    .line 1626
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1627
    throw p0
.end method

.method public blacklist sendOtaStatusChangedBroadcast()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1752
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.action.OTA_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1753
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1755
    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1664
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2, p3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public blacklist setSupportedCountries(ZLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_b

    .line 310
    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSupportedCountries:Ljava/util/List;

    goto :goto_d

    .line 312
    :cond_b
    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mUnsupportedCountries:Ljava/util/List;

    :goto_d
    return-void

    .line 306
    :cond_e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to set supported countries"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist startOtaUpdatingIfNecessary()V
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->startOtaUpdatingIfNecessary(I)V

    return-void
.end method

.method public blacklist startOtaUpdatingIfNecessary(I)V
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/EuiccController$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->startOtaIfNecessary(ILcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;)V

    return-void
.end method

.method blacklist switchToSubscription(IIIZLjava/lang/String;Landroid/app/PendingIntent;Z)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v8, p1

    move/from16 v11, p2

    move/from16 v1, p3

    move-object/from16 v9, p5

    move-object/from16 v12, p6

    move/from16 v2, p7

    .line 1063
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v3

    .line 1064
    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5, v9}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const-wide/32 v4, 0xd628eb8

    .line 1067
    invoke-virtual {v0, v9, v4, v5}, Lcom/android/internal/telephony/euicc/EuiccController;->isCompatChangeEnabled(Ljava/lang/String;J)Z

    move-result v4

    .line 1069
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " portIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " forceDeactivateSim: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " usePortIndex: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " callingPackage: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " shouldResolvePortIndex: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "EuiccController"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    if-eqz v3, :cond_6a

    const/4 v10, 0x1

    goto :goto_6b

    :cond_6a
    move v10, v6

    :goto_6b
    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v15, 0x0

    if-ne v11, v5, :cond_a2

    if-nez v2, :cond_85

    .line 1089
    :try_start_72
    invoke-direct {v0, v8, v9, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->getResolvedPortIndexForDisableSubscription(ILjava/lang/String;Z)I

    move-result v1

    if-ne v1, v5, :cond_84

    const-string v1, "Disable is not permitted: no active subscription or cannot manage subscription"

    .line 1092
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-virtual {v0, v12, v6, v15}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_80
    .catchall {:try_start_72 .. :try_end_80} :catchall_182

    .line 1172
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_84
    const/4 v2, 0x1

    :cond_85
    if-nez v3, :cond_9a

    .line 1100
    :try_start_87
    invoke-direct {v0, v8, v9, v2, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageActiveSubscriptionOnTargetSim(ILjava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_8e

    goto :goto_9a

    :cond_8e
    const-string v1, "Not permitted to switch to empty subscription"

    .line 1104
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-virtual {v0, v12, v6, v15}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_182

    .line 1172
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_9a
    :goto_9a
    move/from16 v16, v2

    move-object v7, v15

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v15, v1

    goto/16 :goto_142

    .line 1110
    :cond_a2
    :try_start_a2
    invoke-direct {v0, v11}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    if-nez v5, :cond_c3

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot switch to nonexistent sub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-virtual {v0, v12, v6, v15}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_bf
    .catchall {:try_start_a2 .. :try_end_bf} :catchall_182

    .line 1172
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_c3
    if-eqz v3, :cond_c7

    :goto_c5
    const/4 v3, 0x1

    goto :goto_f2

    .line 1119
    :cond_c7
    :try_start_c7
    iget-object v3, v0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v5, v9}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ea

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not permitted to switch to sub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    invoke-virtual {v0, v12, v6, v15}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_e6
    .catchall {:try_start_c7 .. :try_end_e6} :catchall_182

    .line 1172
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1125
    :cond_ea
    :try_start_ea
    invoke-direct {v0, v8, v9, v2, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscriptionOnTargetSim(ILjava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_f1

    goto :goto_c5

    :cond_f1
    const/4 v3, 0x0

    .line 1130
    :goto_f2
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_11c

    .line 1132
    invoke-direct {v0, v8, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->isTargetPortIndexValid(II)Z

    move-result v4

    if-nez v4, :cond_116

    const-string v1, "Not permitted to switch to invalid portIndex"

    .line 1135
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_ERROR_CODE"

    const/16 v3, 0x2721

    .line 1137
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1139
    invoke-virtual {v0, v12, v6, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_112
    .catchall {:try_start_ea .. :try_end_112} :catchall_182

    .line 1172
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_116
    move v15, v1

    move/from16 v16, v2

    move-object v7, v5

    const/4 v6, 0x0

    goto :goto_142

    :cond_11c
    if-eqz v4, :cond_123

    .line 1146
    :try_start_11e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/euicc/EuiccController;->getResolvedPortIndexForSubscriptionSwitch(I)I

    move-result v1

    goto :goto_124

    :cond_123
    const/4 v1, 0x0

    :goto_124
    const/4 v2, -0x1

    if-ne v1, v2, :cond_129

    const/4 v6, 0x1

    goto :goto_12a

    :cond_129
    const/4 v6, 0x0

    .line 1151
    :goto_12a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Resolved portIndex: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v1

    move-object v7, v5

    const/16 v16, 0x1

    :goto_142
    if-eqz v3, :cond_15d

    if-eqz v6, :cond_147

    goto :goto_15d

    :cond_147
    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v15

    move-wide v4, v13

    move/from16 v6, p2

    move v8, v10

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, v16

    .line 1169
    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IIJILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;Z)V
    :try_end_159
    .catchall {:try_start_11e .. :try_end_159} :catchall_182

    .line 1172
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1156
    :cond_15d
    :goto_15d
    :try_start_15d
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1162
    invoke-static {v13, v14, v11, v9}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forSwitchNoPrivileges(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v7

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v4, p5

    move/from16 v8, p1

    move v9, v15

    move-object v15, v10

    move/from16 v10, v16

    move/from16 v11, p2

    .line 1157
    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZI)V

    const/4 v1, 0x1

    .line 1165
    invoke-virtual {v0, v12, v1, v15}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_17e
    .catchall {:try_start_15d .. :try_end_17e} :catchall_182

    .line 1172
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_182
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1173
    throw v0
.end method

.method public blacklist switchToSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 1049
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscription(IIIZLjava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method blacklist switchToSubscriptionPrivileged(IIJILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;Z)V
    .registers 25

    move-object v11, p0

    .line 1403
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->hasEuicc()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1405
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide/from16 v6, p3

    move/from16 v10, p5

    move-object/from16 v3, p8

    .line 1411
    invoke-static {v6, v7, v10, v3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forSwitchNoEuicc(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    const-string v2, "android.service.euicc.action.RESOLVE_NO_EUICC_TARGET"

    move-object v0, p0

    move-object v1, v12

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p10

    .line 1406
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZI)V

    const/4 v0, 0x1

    move-object/from16 v9, p9

    .line 1414
    invoke-virtual {p0, v9, v0, v12}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void

    :cond_2b
    move-wide/from16 v6, p3

    move/from16 v10, p5

    move-object/from16 v3, p8

    move-object/from16 v9, p9

    .line 1418
    iget-object v12, v11, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v13, Lcom/android/internal/telephony/euicc/EuiccController$5;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p8

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController$5;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/lang/String;JIIIZLandroid/app/PendingIntent;)V

    move-object v1, v12

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object v6, v13

    move/from16 v7, p10

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/euicc/EuiccConnector;->switchToSubscription(IILjava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;Z)V

    return-void
.end method

.method blacklist switchToSubscriptionPrivileged(IIJIZLjava/lang/String;Landroid/app/PendingIntent;Z)V
    .registers 21

    move-object v0, p0

    move/from16 v5, p5

    .line 1391
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1393
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    move-object v6, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 1395
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IIJILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public blacklist switchToSubscriptionWithPort(IIILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 14

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 1056
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscription(IIIZLjava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public blacklist updateSubscriptionNickname(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 13

    .line 1462
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    .line 1463
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1467
    :try_start_11
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_6d

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "EuiccController"

    if-nez v3, :cond_36

    .line 1469
    :try_start_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot update nickname to nonexistent sub: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-virtual {p0, p5, v5, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_6d

    .line 1512
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_36
    if-nez v0, :cond_5b

    .line 1477
    :try_start_38
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1478
    invoke-virtual {v0, v3, p4}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5b

    .line 1479
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No permissions: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    invoke-virtual {p0, p5, v5, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_57
    .catchall {:try_start_38 .. :try_end_57} :catchall_6d

    .line 1512
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1484
    :cond_5b
    :try_start_5b
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 1485
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccController$6;

    invoke-direct {v0, p0, p5}, Lcom/android/internal/telephony/euicc/EuiccController$6;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    .line 1484
    invoke-virtual {p2, p1, p4, p3, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;)V
    :try_end_69
    .catchall {:try_start_5b .. :try_end_69} :catchall_6d

    .line 1512
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6d
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1513
    throw p0
.end method

.class public Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;
.super Lcom/android/internal/telephony/ims/ImsServiceController;
.source "ImsServiceControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;,
        Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;
    }
.end annotation


# instance fields
.field private blacklist mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

.field private blacklist mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

.field private final blacklist mMmTelCompatAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMmTelFeatureFactory:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Landroid/os/Handler;Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 113
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/ims/ImsServiceController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Landroid/os/Handler;Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;Lcom/android/ims/ImsFeatureBinderRepository;)V

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    .line 82
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    .line 114
    iput-object p7, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelFeatureFactory:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;)V
    .registers 5

    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ims/ImsServiceController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;)V

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    .line 82
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    .line 106
    new-instance p1, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelFeatureFactory:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;

    return-void
.end method

.method private blacklist createMMTelCompat(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->getInterface(I)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelFeatureFactory:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;->create(Landroid/content/Context;ILcom/android/internal/telephony/ims/MmTelInterfaceAdapter;)Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    move-result-object v0

    .line 337
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    new-instance p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;-><init>()V

    .line 339
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->addRegistrationAdapter(Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;)V

    .line 343
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method private blacklist createRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 5

    const/4 v0, 0x0

    .line 376
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_17

    .line 377
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->isServiceControllerAvailable()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->createRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    goto :goto_12

    :cond_11
    move-object p0, v0

    :goto_12
    monitor-exit v1

    return-object p0

    :catchall_14
    move-exception p0

    .line 378
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    :try_start_16
    throw p0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_17} :catch_17

    :catch_17
    move-exception p0

    const-string p1, "ImsSCCompat"

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t createRcsFeature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist getInterface(I)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    if-nez p0, :cond_d

    const-string p0, "ImsSCCompat"

    const-string p1, "getInterface: IImsService returned null."

    .line 326
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 329
    :cond_d
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;

    invoke-interface {p0}, Lcom/android/ims/internal/IImsService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;-><init>(ILandroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected blacklist createFeatureContainer(IILandroid/os/IBinder;J)Lcom/android/ims/ImsFeatureContainer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/ims/ImsServiceController;->createFeatureContainer(IILandroid/os/IBinder;J)Lcom/android/ims/ImsFeatureContainer;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p1, 0x2

    .line 392
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsFeatureContainer;->setState(I)V

    :cond_a
    return-object p0
.end method

.method protected final blacklist createImsFeature(IIIJ)Landroid/os/IInterface;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "createImsFeature "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "ImsSCCompat"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-eq p3, p2, :cond_2b

    const/4 p2, 0x2

    if-eq p3, p2, :cond_26

    const/4 p0, 0x0

    return-object p0

    .line 237
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->createRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    return-object p0

    .line 233
    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->createMMTelCompat(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist disableIms(II)V
    .registers 4

    .line 145
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    const-string p2, "ImsSCCompat"

    if-nez p0, :cond_21

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableIms: adapter null for slot :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->disableIms()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_3e

    :catch_25
    move-exception p0

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t enable IMS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public final blacklist enableIms(II)V
    .registers 4

    .line 128
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    const-string p2, "ImsSCCompat"

    if-nez p0, :cond_21

    .line 130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableIms: adapter null for slot :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->enableIms()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_3e

    :catch_25
    move-exception p0

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t enable IMS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public final blacklist getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 5

    const/4 p2, 0x0

    .line 183
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_17

    .line 184
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 185
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    goto :goto_12

    :cond_11
    move-object p0, p2

    :goto_12
    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 186
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    :try_start_16
    throw p0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_17} :catch_17

    :catch_17
    move-exception p0

    const-string p1, "ImsSCCompat"

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t getRegistration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public final blacklist getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 5

    const/4 p2, 0x0

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_17

    .line 165
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 166
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p0

    goto :goto_12

    :cond_11
    move-object p0, p2

    :goto_12
    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 167
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    :try_start_16
    throw p0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_17} :catch_17

    :catch_17
    move-exception p0

    const-string p1, "ImsSCCompat"

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t getRegistration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method protected final blacklist getServiceInterface()Ljava/lang/String;
    .registers 1

    const-string p0, "android.telephony.ims.compat.ImsService"

    return-object p0
.end method

.method public blacklist getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;
    .registers 5

    const/4 v0, 0x0

    .line 204
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_17

    .line 205
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->isServiceControllerAvailable()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 206
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object p0

    goto :goto_12

    :cond_11
    move-object p0, v0

    :goto_12
    monitor-exit v1

    return-object p0

    :catchall_14
    move-exception p0

    .line 207
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    :try_start_16
    throw p0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_17} :catch_17

    :catch_17
    move-exception p0

    const-string p1, "ImsSCCompat"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t getSipTransport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected blacklist getStaticServiceCapabilities()J
    .registers 3

    const-wide/16 v0, 0x3

    return-wide v0
.end method

.method protected blacklist isServiceControllerAvailable()Z
    .registers 1

    .line 312
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method protected final blacklist notifyImsServiceReady()V
    .registers 2

    const-string p0, "ImsSCCompat"

    const-string v0, "notifyImsServiceReady"

    .line 223
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist registerImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method protected final blacklist removeImsFeature(IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_16

    .line 269
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    if-eqz p3, :cond_11

    .line 272
    invoke-virtual {p3}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->onFeatureRemoved()V

    .line 273
    :cond_11
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_16
    const/4 p3, 0x2

    if-ne p2, p3, :cond_47

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->isServiceControllerAvailable()Z

    move-result p3

    if-eqz p3, :cond_47

    .line 285
    :try_start_1f
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_2c

    .line 286
    :try_start_22
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->removeImsFeature(II)V

    .line 287
    monitor-exit p3

    goto :goto_47

    :catchall_29
    move-exception p0

    monitor-exit p3
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception p0

    const-string p1, "ImsSCCompat"

    .line 289
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t removeImsFeature: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_47
    return-void
.end method

.method protected blacklist setServiceController(Landroid/os/IBinder;)V
    .registers 5

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setServiceController "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSCCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_29

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    if-eqz v0, :cond_26

    .line 301
    invoke-interface {v0}, Lcom/android/ims/internal/IImsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_26
    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    .line 305
    :cond_29
    invoke-static {p1}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    return-void
.end method

.method public blacklist startBindToService(Landroid/content/Intent;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;I)Z
    .registers 7

    const-string p1, "ims6"

    .line 348
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_a

    return p3

    .line 354
    :cond_a
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 357
    :try_start_16
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;-><init>(Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    .line 358
    invoke-interface {p1, v1, p3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_29

    .line 360
    :catch_21
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;->binderDied()V

    const/4 p1, 0x0

    .line 361
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    :goto_29
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist unbindfromService(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;)V
    .registers 2

    return-void
.end method

.method protected blacklist unregisterImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    return-void
.end method

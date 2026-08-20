.class public Lcom/android/server/pm/PersonaLegacyStateMonitor;
.super Ljava/lang/Object;
.source "PersonaLegacyStateMonitor.java"


# static fields
.field public static final MDM_ENTERPRISE_CONTAINER_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER"

.field public static final TAG:Ljava/lang/String; = "PersonaManagerService::LegacyStateMonitor"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mObserverList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/ISystemPersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/SemPersonaState;",
            ">;"
        }
    .end annotation
.end field

.field public mUserManager:Landroid/os/UserManager;

.field public receiver:Landroid/os/ContainerStateReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEdmStorageProvider(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendIntentForRemoveContainer(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForRemoveContainer(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 53
    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 285
    new-instance v0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;-><init>(Lcom/android/server/pm/PersonaLegacyStateMonitor;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->receiver:Landroid/os/ContainerStateReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;

    .line 62
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 63
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    .line 64
    new-instance p1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 65
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 66
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->init()V

    return-void
.end method

.method public static translateStatus(Lcom/samsung/android/knox/SemPersonaState;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 169
    :cond_4
    sget-object v1, Lcom/android/server/pm/PersonaLegacyStateMonitor$2;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_1c

    return v0

    :pswitch_10
    const/16 p0, 0x5e

    return p0

    :pswitch_13
    const/16 p0, 0x5d

    return p0

    :pswitch_16
    const/16 p0, 0x5b

    return p0

    :pswitch_19
    const/16 p0, 0x5f

    return p0

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_16
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public init()V
    .registers 5

    const-string v0, "PersonaManagerService::LegacyStateMonitor"

    const-string/jumbo v1, "initialized"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 73
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 76
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    if-nez v2, :cond_2c

    goto :goto_1b

    .line 77
    :cond_2c
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 78
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_48

    .line 79
    iget-object v2, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 80
    :cond_48
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_5e

    .line 81
    iget-object v2, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 82
    :cond_5e
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_74

    .line 83
    iget-object v2, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 84
    :cond_74
    iget-object v2, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 85
    iget-object v2, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 86
    :cond_8c
    iget-object v2, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 87
    iget-object v2, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    .line 91
    :cond_a5
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->receiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v0, p0}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    return-void
.end method

.method public final notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    .registers 25

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    .line 101
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaState;

    if-nez v0, :cond_16

    .line 103
    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    :cond_16
    move-object v10, v0

    if-ne v9, v10, :cond_1a

    return-void

    .line 108
    :cond_1a
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStateChange(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") from old state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " i:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "PersonaManagerService::LegacyStateMonitor"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    if-lez v0, :cond_65

    add-int/lit8 v1, v0, -0x1

    .line 113
    :try_start_53
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ISystemPersonaObserver;

    invoke-interface {v0, v8, v10, v9}, Landroid/content/pm/ISystemPersonaObserver;->onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception v0

    .line 115
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_63
    move v0, v1

    goto :goto_4f

    .line 118
    :cond_65
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.container.action.observer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.knox.container.category.observer.containerid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.knox.container.category.observer.onstatechange"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaState;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.knox.container.extra.observer.newstate"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {v10}, Lcom/samsung/android/knox/SemPersonaState;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.knox.container.extra.observer.previousstate"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.container.OBSERVER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string/jumbo v0, "propagateNewStateChange() sendBroadcast()"

    .line 130
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 134
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 136
    invoke-static {v10}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->translateStatus(Lcom/samsung/android/knox/SemPersonaState;)I

    move-result v13

    .line 137
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->translateStatus(Lcom/samsung/android/knox/SemPersonaState;)I

    move-result v14

    const-string v15, " Package is "

    const/16 v16, 0x0

    if-eq v13, v14, :cond_130

    .line 140
    iget-object v1, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    const-string v5, "Sending admin lock intent to MDM for user "

    if-eqz v6, :cond_10f

    .line 142
    array-length v4, v6

    move/from16 v3, v16

    :goto_d4
    if-ge v3, v4, :cond_130

    aget-object v2, v6, v3

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v3, p1

    move/from16 v19, v4

    move v4, v12

    move/from16 v20, v0

    move-object v0, v5

    move v5, v13

    move-object/from16 v21, v6

    move v6, v14

    .line 143
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v18, 0x1

    move-object v5, v0

    move/from16 v4, v19

    move/from16 v0, v20

    move-object/from16 v6, v21

    goto :goto_d4

    :cond_10f
    move/from16 v20, v0

    move-object v0, v5

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move v4, v12

    move v5, v13

    move v6, v14

    .line 147
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    :cond_130
    move/from16 v20, v0

    .line 153
    :goto_132
    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v9, v0, :cond_171

    if-eq v10, v0, :cond_171

    .line 154
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16d

    .line 156
    array-length v1, v0

    move/from16 v2, v16

    :goto_149
    if-ge v2, v1, :cond_171

    aget-object v3, v0, v2

    .line 157
    invoke-virtual {v7, v3, v8, v12}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForAdminLock(Ljava/lang/String;II)V

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending admin lock change intent to MDM for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_149

    :cond_16d
    const/4 v0, 0x0

    .line 161
    invoke-virtual {v7, v0, v8, v12}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForAdminLock(Ljava/lang/String;II)V

    .line 164
    :cond_171
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Landroid/content/pm/ISystemPersonaObserver;)Z
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_9

    .line 96
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    .registers 9

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.CONTAINER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 210
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    :cond_12
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "containerid"

    .line 213
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "container_old_state"

    .line 215
    invoke-virtual {v1, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "container_new_state"

    .line 216
    invoke-virtual {v1, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "intent"

    .line 218
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 219
    iget-object p2, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance p4, Landroid/os/UserHandle;

    invoke-direct {p4, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string p5, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {p2, v0, p4, p5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    if-eqz p1, :cond_58

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_58

    .line 224
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    move-result-object p1

    .line 225
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 226
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2, p1, p5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method public final sendIntentForAdminLock(Ljava/lang/String;II)V
    .registers 8

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.CONTAINER_ADMIN_LOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 236
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    :cond_12
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "containerid"

    .line 239
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "intent"

    .line 240
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    if-eqz p1, :cond_35

    .line 242
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_3c

    .line 245
    :cond_35
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_3c
    if-eqz p1, :cond_5a

    .line 250
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    move-result-object p1

    .line 251
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 252
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_5a
    return-void
.end method

.method public final sendIntentForRemoveContainer(Ljava/lang/String;II)V
    .registers 8

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.CONTAINER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 261
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 262
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    :cond_12
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "containerid"

    .line 265
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "intent"

    .line 266
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    if-eqz p1, :cond_35

    .line 268
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_3c

    .line 271
    :cond_35
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_3c
    if-eqz p1, :cond_5a

    .line 276
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    move-result-object p1

    .line 277
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 278
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_5a
    return-void
.end method

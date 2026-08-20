.class public Lcom/android/server/enterprise/location/LocationPolicy;
.super Lcom/samsung/android/knox/location/ILocationPolicy$Stub;
.source "LocationPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "LocationPolicyService"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mLM:Landroid/location/LocationManager;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mResolver:Landroid/content/ContentResolver;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/location/LocationPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/knox/location/ILocationPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 63
    new-instance v0, Lcom/android/server/enterprise/location/LocationPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/location/LocationPolicy$1;-><init>(Lcom/android/server/enterprise/location/LocationPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    .line 59
    new-instance p1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 60
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final addToBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 8

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 400
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_43

    .line 403
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 405
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1c

    .line 406
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 410
    :cond_33
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 411
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_3c
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->saveBlockedList(ILjava/util/List;)Z

    move-result p0

    return p0

    :cond_43
    :goto_43
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .line 513
    iget-object p1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    const-string p0, "Permission Denial: can\'t dump LocationPolicyService"

    .line 515
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 518
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[LocationPolicyService]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 p3, 0x1

    .line 522
    :try_start_32
    invoke-static {p3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 523
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v3

    .line 524
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 525
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 526
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_c9

    .line 527
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c9

    .line 528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   LocationProviderState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_91
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    .line 530
    invoke-virtual {p0, v6, v7}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_a5

    move v7, p3

    .line 531
    :cond_a5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 534
    :cond_c9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   isGPSStateChangeAllowed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowedAsUser(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   isGPSOn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSOn(I)Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_107} :catch_10e
    .catchall {:try_start_32 .. :try_end_107} :catchall_109

    goto/16 :goto_3f

    :catchall_109
    move-exception p0

    .line 538
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    throw p0

    .line 538
    :catch_10e
    :cond_10e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 540
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final enforceLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 93
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOnlyLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 99
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAllBlockedProvidersInUser(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "LOCATION"

    const-string v1, "blockedProviders"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 153
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2f

    .line 155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    :cond_2f
    const-string p0, ""

    .line 159
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_34
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 141
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->setLocationManager()V

    .line 142
    iget-object p0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mLM:Landroid/location/LocationManager;

    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getBlockedList(I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    iget-object p0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "LOCATION"

    const-string v2, "blockedProviders"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 346
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p0, ""

    .line 347
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_1b
    const-string p1, ","

    .line 349
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_28
    return-object v0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 79
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getIndividualLocationProvider(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 3

    const-string p0, "LocationPolicyService"

    const-string p1, "LocationPolicy.getIndividualLocationProvider - Deprecated API LEVEL 30"

    .line 123
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 206
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public final getUserIdByPackageNameOrUid(I)I
    .registers 4

    .line 453
    iget-object p0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getUserIdByPackageNameOrUid() caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_45

    const-string v0, ":"

    .line 456
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    const/4 v1, 0x0

    .line 458
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_31
    const-string v0, "com.android.systemui"

    .line 461
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    .line 463
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 464
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 468
    :cond_45
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 469
    invoke-static {p0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    return p0
.end method

.method public final isGPSOn(I)Z
    .registers 6

    const-string v0, "LocationPolicyService"

    .line 323
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 325
    :try_start_6
    iget-object p0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mLM:Landroid/location/LocationManager;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v3}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_17
    .catchall {:try_start_6 .. :try_end_11} :catchall_15

    .line 329
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_22

    :catchall_15
    move-exception p0

    goto :goto_40

    :catch_17
    move-exception p0

    :try_start_18
    const-string/jumbo v3, "isGPSOn() failed. "

    .line 327
    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_15

    .line 329
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    .line 331
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isGPSOn() ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 329
    :goto_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    throw p0
.end method

.method public isGPSOn(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 317
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSOn(I)Z

    move-result p0

    return p0
.end method

.method public isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 215
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowedAsUser(I)Z

    move-result p0

    return p0
.end method

.method public final isGPSStateChangeAllowedAsUser(I)Z
    .registers 7

    const-string v0, "LocationPolicyService"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LOCATION"

    const-string v4, "forceProviders"

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 225
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_26

    if-eqz v3, :cond_12

    move v2, v1

    goto :goto_2d

    :catch_26
    move-exception p0

    const-string/jumbo v3, "isGPSStateChangeAllowedAsUser() : failed to get value."

    .line 231
    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_2d
    if-eqz v2, :cond_44

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isGPSStateChangeAllowedAsUser() : blocked. userId = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .registers 4

    .line 129
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z
    .registers 3

    .line 417
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllBlockedProvidersInUser(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 418
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_11

    .line 419
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
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
    .registers 4

    .line 433
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 435
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->updateSystemUIMonitor(I)V

    :cond_13
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public final removeFromBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    .line 380
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_47

    .line 383
    :cond_f
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 384
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 385
    :goto_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 386
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 387
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_40

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 392
    :cond_36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string p2, ""

    .line 393
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_40
    :goto_40
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->saveBlockedList(ILjava/util/List;)Z

    move-result p0

    return p0

    :cond_47
    :goto_47
    return v1
.end method

.method public final saveBlockedList(ILjava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockedProviders"

    const-string v2, "LOCATION"

    if-eqz p2, :cond_41

    .line 363
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 364
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 368
    :cond_36
    iget-object p0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 368
    invoke-virtual {p0, p1, v2, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_41
    const-string p2, ""

    .line 371
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object p0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 372
    invoke-virtual {p0, p1, v2, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 189
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 192
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    const-string v2, "LocationPolicyService"

    if-eqz v1, :cond_2b

    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setGPSStateChangeAllowed() :failed because userid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 196
    :cond_2b
    iget-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    xor-int/lit8 p2, p2, 0x1

    const-string v3, "LOCATION"

    const-string v4, "forceProviders"

    invoke-virtual {v1, p1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowedAsUser(I)Z

    move-result p2

    if-eqz p1, :cond_42

    .line 199
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/location/LocationPolicy;->setGPSStateChangeAllowedSystemUI(IZ)V

    .line 201
    :cond_42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setGPSStateChangeAllowed() ret = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final setGPSStateChangeAllowedSystemUI(IZ)V
    .registers 5

    .line 502
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 504
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 505
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setGPSStateChangeAllowedAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 509
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "LocationPolicyService"

    const-string/jumbo p2, "setGPSStateChangeAllowedSystemUI() failed. "

    .line 507
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 509
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    throw p0
.end method

.method public setIndividualLocationProvider(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 4

    const-string p0, "LocationPolicyService"

    const-string p1, "LocationPolicy.setLocationProviderState - Deprecated API LEVEL 30"

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final setLocationManager()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mLM:Landroid/location/LocationManager;

    return-void
.end method

.method public final setLocationProviderAllowedSystemUI(ILjava/lang/String;Z)V
    .registers 6

    .line 491
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 493
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 494
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setLocationProviderAllowedAsUser(ILjava/lang/String;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 498
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "LocationPolicyService"

    const-string/jumbo p2, "setLocationProviderAllowedSystemUI() failed. "

    .line 496
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 498
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 499
    throw p0
.end method

.method public startGPS(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "gps"

    .line 256
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_106

    .line 260
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_106

    .line 264
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 266
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowedAsUser(I)Z

    move-result v0

    if-nez v0, :cond_42

    const-string p0, "LocationPolicyService"

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startGPS() failed in container. userId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 273
    :cond_42
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string p0, "LocationPolicyService"

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startGPS() failed. start = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 277
    :cond_60
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSOn(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz p2, :cond_68

    if-nez v0, :cond_6c

    :cond_68
    if-nez p2, :cond_84

    if-nez v0, :cond_84

    :cond_6c
    const-string p0, "LocationPolicyService"

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startGPS() failed. same state has requested. = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 284
    :cond_84
    monitor-enter p0

    .line 285
    :try_start_85
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_103

    .line 287
    :try_start_89
    iget-object v3, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mLM:Landroid/location/LocationManager;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, p2, v4}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_93} :catch_9b
    .catchall {:try_start_89 .. :try_end_93} :catchall_99

    const/4 v2, 0x1

    .line 293
    :goto_94
    :try_start_94
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_103

    move v0, v2

    goto :goto_a5

    :catchall_99
    move-exception p1

    goto :goto_ff

    :catch_9b
    move-exception v3

    :try_start_9c
    const-string v4, "LocationPolicyService"

    const-string/jumbo v5, "startGPS() failed."

    .line 290
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catchall {:try_start_9c .. :try_end_a4} :catchall_99

    goto :goto_94

    .line 295
    :goto_a5
    :try_start_a5
    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_103

    .line 297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 300
    :try_start_ad
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "LocationPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_cd

    const-string/jumbo p1, "started"

    goto :goto_d0

    :cond_cd
    const-string/jumbo p1, "stopped"

    .line 301
    :goto_d0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " GPS "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 299
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_df
    .catchall {:try_start_ad .. :try_end_df} :catchall_fa

    .line 304
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string p0, "LocationPolicyService"

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startGPS() ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_fa
    move-exception p0

    .line 304
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    throw p0

    .line 293
    :goto_ff
    :try_start_ff
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    throw p1

    :catchall_103
    move-exception p1

    .line 295
    monitor-exit p0
    :try_end_105
    .catchall {:try_start_ff .. :try_end_105} :catchall_103

    throw p1

    :cond_106
    :goto_106
    const-string p0, "LocationPolicyService"

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startGPS() failed. invalid provider = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final updateSystemUIMonitor(I)V
    .registers 7

    .line 475
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 477
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowedAsUser(I)Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->setGPSStateChangeAllowedSystemUI(IZ)V

    const/4 v2, 0x0

    .line 478
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 480
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 481
    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/location/LocationPolicy;->setLocationProviderAllowedSystemUI(ILjava/lang/String;Z)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_35
    .catchall {:try_start_4 .. :try_end_2e} :catchall_33

    goto :goto_16

    .line 487
    :cond_2f
    :goto_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3f

    :catchall_33
    move-exception p0

    goto :goto_40

    :catch_35
    move-exception p0

    :try_start_36
    const-string p1, "LocationPolicyService"

    const-string/jumbo v2, "updateSystemUIMonitor() failed."

    .line 485
    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_33

    goto :goto_2f

    :goto_3f
    return-void

    .line 487
    :goto_40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    throw p0
.end method

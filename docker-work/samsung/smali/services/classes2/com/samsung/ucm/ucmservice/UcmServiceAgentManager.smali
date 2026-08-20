.class public Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;
.super Ljava/lang/Object;
.source "UcmServiceAgentManager.java"

# interfaces
.implements Lcom/samsung/ucm/ucmservice/IUcmAgentManagerDeleteDelegate;


# static fields
.field public static final CREDENTIAL_AGENT_INTENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_AGENT"

.field public static final CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

.field public static DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "UcmService.UcmAgentManager"


# instance fields
.field public mActiveAgentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mNeedToBindESE:Z

.field public final mServicesLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.UCM_AGENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    const-string/jumbo v0, "ro.build.type"

    .line 39
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mActiveAgentList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mServicesLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mNeedToBindESE:Z

    .line 46
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getAllPlugins(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "UcmService.UcmAgentManager"

    const-string v1, "getAllPlugins"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v1, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 65
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_1d

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_32

    goto :goto_1d

    .line 68
    :cond_32
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_4c
    return-object v1
.end method


# virtual methods
.method public checkESE(Ljava/lang/String;)V
    .registers 3

    .line 290
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mNeedToBindESE:Z

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->checkESEPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    .line 291
    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mNeedToBindESE:Z

    :cond_d
    return-void
.end method

.method public final checkESEPermission(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "UcmService.UcmAgentManager"

    const-string v1, "checkESEPermission"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_35

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_35

    .line 301
    :cond_11
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    .line 302
    invoke-virtual {p0, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_26

    const-string p0, "KNOX_UCM_ESE_PERMISSION is granted"

    .line 304
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_26
    const-string v2, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    .line 306
    invoke-virtual {p0, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_34

    const-string p0, "KNOX_UCM_UNIFIED_PERMISSION is granted"

    .line 308
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_34
    return v1

    :cond_35
    :goto_35
    const-string/jumbo p0, "packagename is empty"

    .line 298
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final checkESEPermissionInstalledMDM(Lcom/android/server/enterprise/storage/EdmStorageProvider;)V
    .registers 6

    if-eqz p1, :cond_55

    .line 261
    invoke-virtual {p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_55

    .line 264
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1f

    goto :goto_10

    .line 268
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check eSE Permission : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService.UcmAgentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_40

    goto :goto_10

    .line 274
    :cond_40
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_47

    goto :goto_10

    .line 279
    :cond_47
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->checkESEPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string p1, "ESE Permission exist"

    .line 280
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 281
    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mNeedToBindESE:Z

    :cond_55
    return-void
.end method

.method public deleteAndRefreshAgents(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .registers 5

    const-string v0, "UcmService.UcmAgentManager"

    const-string v1, "deletAndRefreshAgents()"

    .line 316
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_24

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletAndRefreshAgents() remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_24
    const/4 p1, 0x0

    .line 321
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->refreshAgentList(Landroid/os/Bundle;)V

    return-void
.end method

.method public getActiveAgentList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mActiveAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "UcmService.UcmAgentManager"

    const-string v1, "AgentList is empty, refreshAgent"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->refreshAgentList(Landroid/os/Bundle;)V

    .line 54
    :cond_13
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mActiveAgentList:Ljava/util/List;

    return-object p0
.end method

.method public final isEseManaged()Z
    .registers 8

    .line 210
    sget-boolean v0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->DBG:Z

    const-string v1, "UcmService.UcmAgentManager"

    if-eqz v0, :cond_b

    const-string v0, "isEseManaged"

    .line 211
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    .line 216
    :try_start_10
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "storagePackageName"

    const-string v6, "com.samsung.ucs.agent.ese"

    .line 217
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v5, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    const-string p0, "UniversalCredentialInfoTable"

    invoke-virtual {v5, p0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2a} :catch_30
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2e

    if-lez p0, :cond_49

    const/4 v0, 0x1

    goto :goto_49

    :catchall_2e
    move-exception p0

    goto :goto_65

    :catch_30
    move-exception p0

    .line 226
    :try_start_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The exception occurs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_2e

    .line 228
    :cond_49
    :goto_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    sget-boolean p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->DBG:Z

    if-eqz p0, :cond_64

    .line 231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEseManaged - status : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return v0

    .line 228
    :goto_65
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    throw p0
.end method

.method public final isPackageExisted(Ljava/lang/String;)Z
    .registers 3

    .line 237
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 239
    :try_start_8
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    const/4 p0, 0x1

    return p0

    :catch_d
    const/4 p0, 0x0

    return p0
.end method

.method public final isSystemReady()Z
    .registers 2

    .line 252
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result p0

    return p0
.end method

.method public final isSystemStorage(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.samsung.ucs.agent.ese"

    .line 247
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "com.samsung.ucs.agent.boot"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public refreshAgentList(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "UcmService.UcmAgentManager"

    :try_start_2
    const-string v1, "*****refreshAgentList is called***"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->isSystemReady()Z

    move-result v1

    if-nez v1, :cond_14

    const-string/jumbo p0, "refreshAgentList system ready is not called yet. Ignoring agent refresh logic"

    .line 80
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :cond_14
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 85
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mActiveAgentList:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-virtual {p0, v1, p1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->refreshAgentListInternal(Landroid/util/ArraySet;Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 91
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v2, :cond_4d

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Removing unwanted agent- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_4d
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    .line 95
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mActiveAgentList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_55} :catch_56

    goto :goto_25

    :catch_56
    move-exception p0

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The exception occurs "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    return-void
.end method

.method public final refreshAgentListInternal(Landroid/util/ArraySet;Landroid/os/Bundle;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, " is an active plugin"

    const-string v3, "The exception occurs "

    const-string v4, "UcmService.UcmAgentManager"

    const-string v5, "*****refreshAgentListInternal is called***"

    .line 103
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_55

    const-string v7, "event"

    .line 108
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "packageName"

    if-ne v7, v6, :cond_26

    .line 110
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v5

    move-object v5, v0

    move-object v0, v15

    goto :goto_2f

    :cond_26
    const/4 v9, 0x2

    if-ne v7, v9, :cond_2e

    .line 112
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_2e
    move-object v0, v5

    .line 114
    :goto_2f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", activatedPackage-"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",expiredPackage-"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v0

    goto :goto_56

    :cond_55
    move-object v7, v5

    .line 117
    :goto_56
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getAllPlugins(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_64
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_235

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 118
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_7c

    const-string v0, "name is empty"

    .line 120
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 123
    :cond_7c
    new-instance v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object v11, v1, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v1, v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;-><init>(Landroid/content/Context;Lcom/samsung/ucm/ucmservice/IUcmAgentManagerDeleteDelegate;Landroid/content/ComponentName;)V

    .line 125
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 128
    :try_start_87
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-------Processing started for agentPackageName------"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_9b} :catch_21a

    const-string v11, "agentPackageName -"

    if-eqz v7, :cond_bd

    .line 130
    :try_start_9f
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_bd

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not an active plugin. Its license is expired. Ignoring it..."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 136
    :cond_bd
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  agentPackageName -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "  Check if caller has UCS Plugin permission..."

    .line 137
    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_d9} :catch_21a

    :try_start_d9
    const-string v12, "  Agent has UCS PLUGIN permission. Processing further..."

    .line 139
    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v1, v9}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->isSystemStorage(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_135

    .line 141
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  agentPackageName "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is system storage. Checking system signature"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mContext:Landroid/content/Context;

    invoke-static {v12, v9, v13}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->isSystemApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_121

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  system storage found - "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not valid. Ignoring it..."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    .line 147
    :cond_121
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Valid system storage found is "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_135} :catch_1fd

    :cond_135
    :try_start_135
    const-string v12, "com.samsung.ucs.agent.ese"

    .line 155
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_151

    .line 157
    iget-boolean v12, v1, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mNeedToBindESE:Z

    if-nez v12, :cond_151

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->isEseManaged()Z

    move-result v12

    if-eqz v12, :cond_14a

    .line 159
    iput-boolean v6, v1, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mNeedToBindESE:Z

    goto :goto_151

    :cond_14a
    const-string v0, "Do not need to bind eSE Service"

    .line 161
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    .line 167
    :cond_151
    :goto_151
    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mActiveAgentList:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1ed

    if-eqz v0, :cond_1e5

    .line 168
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v12, :cond_1e5

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v12, :cond_165

    goto/16 :goto_1e5

    .line 173
    :cond_165
    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v0, v12}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V

    .line 175
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mContext:Landroid/content/Context;

    iget-object v12, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v12, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v12, v13}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->isSystemApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_180

    const-string v0, "  Adding system signed agent"

    .line 177
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17e
    move v13, v6

    goto :goto_1a6

    :cond_180
    if-eqz v5, :cond_19e

    .line 181
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17e

    :cond_19e
    if-nez v5, :cond_1a6

    const-string v0, "Agent entry is not in PersistentServices, but has proper permissions"

    .line 186
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17e

    :cond_1a6
    :goto_1a6
    if-eqz v13, :cond_1c6

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Adding new agent -"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->mActiveAgentList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e1

    .line 195
    :cond_1c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Unbind agent -"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v10}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    :goto_1e1
    move-object/from16 v9, p1

    goto/16 :goto_64

    :cond_1e5
    :goto_1e5
    const-string/jumbo v0, "resolveInfo null"

    .line 170
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    .line 199
    :cond_1ed
    sget-boolean v0, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->DBG:Z

    if-eqz v0, :cond_1f6

    const-string v0, "agent is already added in activeAgentList"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_1f6} :catch_21a

    :cond_1f6
    move-object/from16 v9, p1

    .line 200
    :try_start_1f8
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_64

    :catch_1fd
    move-exception v0

    move-object/from16 v9, p1

    .line 151
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_216} :catch_218

    goto/16 :goto_64

    :catch_218
    move-exception v0

    goto :goto_21d

    :catch_21a
    move-exception v0

    move-object/from16 v9, p1

    .line 203
    :goto_21d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    :cond_235
    return-void
.end method

.method public systemReady(Lcom/android/server/enterprise/storage/EdmStorageProvider;)V
    .registers 2

    .line 256
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->checkESEPermissionInstalledMDM(Lcom/android/server/enterprise/storage/EdmStorageProvider;)V

    return-void
.end method

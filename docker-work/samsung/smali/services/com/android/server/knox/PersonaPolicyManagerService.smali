.class public Lcom/android/server/knox/PersonaPolicyManagerService;
.super Ljava/lang/Object;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;,
        Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;
    }
.end annotation


# static fields
.field public static final INVALID_UID:I = -0x1

.field public static final PERSONA_POLICIES_XML:Ljava/lang/String; = "persona_policies.xml"

.field public static final TAG:Ljava/lang/String; = "PersonaPolicyManagerService"

.field public static volatile mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

.field public static sContext:Landroid/content/Context;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mPersonaData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;",
            ">;"
        }
    .end annotation
.end field

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$mremovePersonaData(Lcom/android/server/knox/PersonaPolicyManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->removePersonaData(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    .line 153
    new-instance v0, Lcom/android/server/knox/PersonaPolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/knox/PersonaPolicyManagerService$1;-><init>(Lcom/android/server/knox/PersonaPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p1, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    .line 139
    sput-object p1, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 3

    .line 63
    sget-object v0, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    const-string v1, "PersonaPolicyManagerService"

    invoke-static {v0, v1, p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/knox/PersonaPolicyManagerService;
    .registers 3

    .line 143
    sget-object v0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    if-nez v0, :cond_17

    .line 144
    const-class v0, Lcom/android/server/knox/PersonaPolicyManagerService;

    monitor-enter v0

    .line 145
    :try_start_7
    sget-object v1, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    if-nez v1, :cond_12

    .line 146
    new-instance v1, Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-direct {v1, p0}, Lcom/android/server/knox/PersonaPolicyManagerService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 148
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 150
    :cond_17
    :goto_17
    sget-object p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    return-object p0
.end method

.method public static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 5

    .line 255
    new-instance v0, Ljava/io/File;

    .line 256
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "persona_policies.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 258
    new-instance v0, Lcom/android/internal/util/JournaledFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public final checkReturnStatus(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p1, :cond_a

    const-string/jumbo p0, "status"

    .line 170
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final dumpRCPSettings(Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;)V
    .registers 4

    const-string v0, "PersonaPolicyManagerService"

    const-string v1, "********************START dump RCPSettings ********************"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2d

    .line 97
    :try_start_9
    iget-object v1, p1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lcom/android/server/knox/PersonaPolicyManagerService;->dumpRCPSettings(Ljava/util/HashMap;)V

    .line 98
    iget-object p1, p1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->dumpRCPSettings(Ljava/util/HashMap;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_2d

    :catch_14
    move-exception p0

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    const-string p0, "--------------------END dump RCPSettings--------------------------"

    .line 104
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dumpRCPSettings(Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;",
            ">;>;)V"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "names:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaPolicyManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 112
    array-length v0, p0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "{"

    .line 114
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    :goto_40
    if-ge v3, v0, :cond_a8

    .line 116
    aget-object v4, p0, v3

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_a5

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " :[ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    .line 119
    :goto_63
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a0

    .line 120
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;

    if-eqz v6, :cond_98

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   { name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "},"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    :cond_98
    const-string v6, "List contains NULL object."

    .line 125
    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9d
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    :cond_a0
    const-string v4, " ],"

    .line 128
    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_a8
    const-string/jumbo p0, "}"

    .line 131
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final enforceSystemService()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 481
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_9

    return-void

    .line 482
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system can call this API. Are you Process.SYSTEM_UID!!"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceSystemServiceOrSystemUI(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 488
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2e

    const/4 v0, -0x1

    .line 492
    :try_start_9
    iget-object p0, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.android.systemui"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception p0

    const-string v1, "PersonaPolicyManagerService"

    const-string v2, "Unable to resolve SystemUI\'s UID."

    .line 494
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    :goto_1f
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-ne p0, v0, :cond_26

    return-void

    .line 502
    :cond_26
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can call this API. Are you Process.SYSTEM_UID!!"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    return-void
.end method

.method public getCustomNamePersona(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    monitor-enter p0

    .line 229
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object p1

    .line 230
    iget-object p1, p1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mCustomPersonaName:Ljava/lang/String;

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    .line 231
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public getCustomNamePersonalMode(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    monitor-enter p0

    const/4 p1, 0x0

    .line 207
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object p1

    .line 208
    iget-object p1, p1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mPersonalModeLabel:Ljava/lang/String;

    monitor-exit p0

    return-object p1

    :catchall_a
    move-exception p1

    .line 209
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 540
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    .line 541
    invoke-virtual {p0, v0, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_b

    return-object v1

    .line 546
    :cond_b
    monitor-enter p0

    if-eqz v0, :cond_46

    .line 548
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 550
    iget-object v0, v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    .line 551
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_46

    .line 553
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 554
    iget-object v3, v2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 555
    iget-object v3, v2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    if-eqz v3, :cond_22

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 556
    iget-object p1, v2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    monitor-exit p0

    return-object p1

    .line 563
    :cond_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_e .. :try_end_47} :catchall_6b

    .line 564
    invoke-static {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationType(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p0

    if-eqz p0, :cond_6a

    .line 566
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getDataSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaPolicyManagerService"

    .line 567
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "configuration value set by MDM : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_6a

    return-object p0

    :cond_6a
    return-object v1

    :catchall_6b
    move-exception p1

    .line 563
    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p1
.end method

.method public final getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string/jumbo p0, "knox-import-data"

    .line 508
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "false"

    const-string/jumbo v1, "true"

    if-eqz p0, :cond_12

    if-eqz p1, :cond_11

    return-object v0

    :cond_11
    return-object v1

    :cond_12
    const-string/jumbo p0, "knox-export-data"

    .line 514
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    if-eqz p1, :cond_1e

    return-object v0

    :cond_1e
    return-object v1

    :cond_1f
    const-string/jumbo p0, "knox-sanitize-data"

    .line 520
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2b

    return-object v1

    :cond_2b
    return-object v0

    :cond_2c
    const-string/jumbo p0, "knox-sanitize-data-lockscreen"

    .line 527
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    if-eqz p1, :cond_38

    return-object v1

    :cond_38
    return-object v0

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNotificationSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 576
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 578
    invoke-virtual {p0, v0, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v1, 0x0

    const-string/jumbo v2, "mum_container_rcp_policy"

    .line 581
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    if-eqz v2, :cond_1b

    .line 584
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getNotificationSyncPolicyByUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1b
    if-nez v1, :cond_61

    .line 587
    monitor-enter p0

    if-eqz v0, :cond_58

    .line 589
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 591
    iget-object p1, p1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    .line 592
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_58

    .line 594
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 595
    iget-object v1, p2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 596
    iget-object v1, p2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    if-eqz v1, :cond_34

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 597
    iget-object p1, p2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    monitor-exit p0

    return-object p1

    .line 604
    :cond_58
    invoke-virtual {p0, v0, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_5e
    move-exception p1

    .line 605
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_20 .. :try_end_60} :catchall_5e

    throw p1

    :cond_61
    return-object v1
.end method

.method public getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;
    .registers 4

    .line 182
    monitor-enter p0

    .line 183
    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    if-nez v0, :cond_18

    .line 185
    new-instance v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    invoke-direct {v0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;-><init>(I)V

    .line 186
    iget-object v1, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 187
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->loadSettingsLocked(Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;I)V

    .line 189
    :cond_18
    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception p1

    .line 190
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "getRCPDataPolicy"

    .line 629
    invoke-static {v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 631
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 632
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 635
    :try_start_12
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 637
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 638
    throw p0
.end method

.method public getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "getRCPDataPolicyForUser"

    .line 612
    invoke-static {v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 613
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->enforceSystemServiceOrSystemUI(I)V

    .line 614
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 616
    :try_start_11
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_19

    .line 618
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    throw p0
.end method

.method public getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "getRCPNotificationPolicy"

    .line 643
    invoke-static {v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 644
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 645
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 646
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 648
    :try_start_12
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getNotificationSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 650
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 651
    throw p0
.end method

.method public getRCPNotificationPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "getRCPNotificationPolicyForUser"

    .line 623
    invoke-static {v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 624
    invoke-virtual {p0}, Lcom/android/server/knox/PersonaPolicyManagerService;->enforceSystemService()V

    .line 625
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getNotificationSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    monitor-enter p0

    .line 236
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object p2

    .line 237
    iget-object p2, p2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    .line 238
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public final loadSettingsLocked(Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;I)V
    .registers 16

    const-string v0, " "

    const-string v1, "failed parsing "

    const-string v2, "PersonaPolicyManagerService"

    .line 262
    invoke-static {p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object p2

    .line 264
    invoke-virtual {p2}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object p2

    const/4 v3, 0x0

    .line 266
    :try_start_f
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_14} :catch_1a7
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_14} :catch_18a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_14} :catch_16d
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_14} :catch_16b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_14e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_14} :catch_130

    .line 267
    :try_start_14
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const-string v6, "UTF-8"

    .line 268
    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 271
    :goto_1d
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v6, v8, :cond_28

    if-eq v6, v7, :cond_28

    goto :goto_1d

    .line 274
    :cond_28
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "policies"

    .line 275
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10b

    move-object v6, v3

    .line 281
    :cond_36
    :goto_36
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v8, :cond_1c3

    if-eq v9, v7, :cond_3f

    goto :goto_36

    .line 284
    :cond_3f
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "rcp-data-settings"

    .line 285
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    goto :goto_36

    :cond_4d
    const-string v10, "application"

    .line 287
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_53
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_53} :catch_12d
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_53} :catch_12a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_53} :catch_128
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_53} :catch_126
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_53} :catch_124
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_53} :catch_122

    const-string/jumbo v11, "name"

    if-eqz v10, :cond_68

    .line 288
    :try_start_58
    invoke-interface {v5, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 289
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 290
    iget-object v10, p1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v10, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_66
    move-object v6, v9

    goto :goto_36

    :cond_68
    const-string/jumbo v10, "rcp-notif-settings"

    .line 291
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_72

    goto :goto_36

    :cond_72
    const-string/jumbo v10, "package"

    .line 293
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 295
    invoke-interface {v5, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 296
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 297
    iget-object v10, p1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v10, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    :cond_8a
    const-string/jumbo v10, "property"

    .line 299
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ad

    .line 301
    invoke-interface {v5, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "value"

    .line 302
    invoke-interface {v5, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 303
    new-instance v11, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;

    invoke-direct {v11}, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;-><init>()V

    .line 304
    iput-object v9, v11, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    .line 305
    iput-object v10, v11, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    if-eqz v6, :cond_36

    .line 307
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_ad
    const-string/jumbo v10, "managed-applications"

    .line 309
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b7

    goto :goto_36

    :cond_b7
    const-string/jumbo v10, "secure-folder"

    .line 311
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c2

    goto/16 :goto_36

    .line 314
    :cond_c2
    invoke-interface {v5, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f2

    .line 315
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f2

    .line 316
    iget-object v11, p1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_e3

    .line 317
    iget-object v11, p1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_36

    .line 320
    :cond_e3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 321
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v10, p1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_36

    .line 326
    :cond_f2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_36

    .line 276
    :cond_10b
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings do not start with policies tag: found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_122
    .catch Ljava/lang/NullPointerException; {:try_start_58 .. :try_end_122} :catch_12d
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_122} :catch_12a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_122} :catch_128
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_122} :catch_126
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_122} :catch_124
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_58 .. :try_end_122} :catch_122

    :catch_122
    move-exception v3

    goto :goto_134

    :catch_124
    move-exception v3

    goto :goto_152

    :catch_126
    move-object v3, v4

    goto :goto_16b

    :catch_128
    move-exception v3

    goto :goto_171

    :catch_12a
    move-exception v3

    goto/16 :goto_18e

    :catch_12d
    move-exception v3

    goto/16 :goto_1ab

    :catch_130
    move-exception v4

    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    .line 349
    :goto_134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c3

    :catch_14e
    move-exception v4

    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    .line 347
    :goto_152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c3

    :catch_16b
    :goto_16b
    move-object v4, v3

    goto :goto_1c3

    :catch_16d
    move-exception v4

    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    .line 343
    :goto_171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c3

    :catch_18a
    move-exception v4

    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    .line 341
    :goto_18e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c3

    :catch_1a7
    move-exception v4

    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    .line 339
    :goto_1ab
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c3
    :goto_1c3
    if-eqz v4, :cond_1c8

    .line 353
    :try_start_1c5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1c8
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1c8} :catch_1c8

    .line 358
    :catch_1c8
    :cond_1c8
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->dumpRCPSettings(Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;)V

    return-void
.end method

.method public registerReceivers()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "registerReceivers"

    .line 472
    invoke-static {v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 473
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 474
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 475
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 476
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final removePersonaData(I)V
    .registers 5

    .line 459
    monitor-enter p0

    .line 460
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 462
    iget-object v0, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 464
    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "persona_policies.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string p1, "PersonaPolicyManagerService"

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed persona policy file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public final saveSettingsLocked(I)V
    .registers 22

    const-string/jumbo v0, "package"

    const-string v1, "application"

    const-string/jumbo v2, "secure-folder"

    const-string/jumbo v3, "managed-applications"

    const-string/jumbo v4, "rcp-notif-settings"

    const-string/jumbo v5, "rcp-data-settings"

    const-string/jumbo v6, "policies"

    const-string v7, "UTF-8"

    .line 362
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v8

    .line 363
    invoke-static/range {p1 .. p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v9

    const/4 v10, 0x0

    .line 366
    :try_start_1f
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_1c0

    .line 367
    :try_start_29
    new-instance v12, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v12}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 368
    invoke-interface {v12, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 369
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v12, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 372
    invoke-interface {v12, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    iget-object v7, v8, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3b} :catch_1b9

    const-string/jumbo v13, "value"

    const-string/jumbo v14, "key : "

    const-string v15, "PersonaPolicyManagerService"

    const-string/jumbo v10, "property"

    move-object/from16 p1, v9

    const-string/jumbo v9, "name"

    if-eqz v7, :cond_dc

    :try_start_4d
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_dc

    const/4 v7, 0x0

    .line 376
    invoke-interface {v12, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 377
    iget-object v7, v8, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_61
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_71} :catch_1bb

    move-object/from16 v16, v11

    .line 378
    :try_start_73
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v11, v8, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_ca

    .line 380
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_ca

    move-object/from16 v18, v6

    const/4 v6, 0x0

    .line 382
    invoke-interface {v12, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 383
    invoke-interface {v12, v6, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 384
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;

    const/4 v11, 0x0

    .line 386
    invoke-interface {v12, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    iget-object v11, v7, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    move-object/from16 v19, v6

    const/4 v6, 0x0

    invoke-interface {v12, v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    iget-object v7, v7, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    invoke-interface {v12, v6, v13, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    invoke-interface {v12, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v6, v19

    goto :goto_a2

    :cond_c5
    const/4 v6, 0x0

    .line 392
    invoke-interface {v12, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_cc

    :cond_ca
    move-object/from16 v18, v6

    :goto_cc
    move-object/from16 v11, v16

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    goto :goto_61

    :cond_d3
    move-object/from16 v18, v6

    move-object/from16 v16, v11

    const/4 v1, 0x0

    .line 396
    invoke-interface {v12, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_e0

    :cond_dc
    move-object/from16 v18, v6

    move-object/from16 v16, v11

    .line 398
    :goto_e0
    iget-object v1, v8, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    if-eqz v1, :cond_158

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_158

    const/4 v1, 0x0

    .line 401
    invoke-interface {v12, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    iget-object v1, v8, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f8
    :goto_f8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_154

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 403
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v6, v8, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_f8

    .line 405
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f8

    const/4 v7, 0x0

    .line 407
    invoke-interface {v12, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 408
    invoke-interface {v12, v7, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_131
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;

    const/4 v7, 0x0

    .line 411
    invoke-interface {v12, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 412
    iget-object v11, v6, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-interface {v12, v7, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    iget-object v6, v6, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    invoke-interface {v12, v7, v13, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    invoke-interface {v12, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_131

    :cond_14f
    const/4 v5, 0x0

    .line 417
    invoke-interface {v12, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f8

    :cond_154
    const/4 v0, 0x0

    .line 421
    invoke-interface {v12, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    :cond_158
    iget-object v0, v8, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    if-eqz v0, :cond_1a9

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a9

    const/4 v0, 0x0

    .line 424
    invoke-interface {v12, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    invoke-interface {v12, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    iget-object v0, v8, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 428
    :cond_173
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a2

    .line 429
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 430
    iget-object v4, v8, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 431
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_173

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    .line 432
    invoke-interface {v12, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    invoke-interface {v12, v6, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    invoke-interface {v12, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_18b

    :cond_1a2
    const/4 v0, 0x0

    .line 438
    invoke-interface {v12, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    invoke-interface {v12, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1a9
    move-object/from16 v0, v18

    const/4 v1, 0x0

    .line 441
    invoke-interface {v12, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 444
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 445
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_1b8} :catch_1bd

    goto :goto_1cb

    :catch_1b9
    move-object/from16 p1, v9

    :catch_1bb
    move-object/from16 v16, v11

    :catch_1bd
    move-object/from16 v10, v16

    goto :goto_1c3

    :catch_1c0
    move-object/from16 p1, v9

    move-object v1, v10

    :goto_1c3
    if-eqz v10, :cond_1c8

    .line 449
    :try_start_1c5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c8
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1c8} :catch_1c8

    .line 454
    :catch_1c8
    :cond_1c8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_1cb
    return-void
.end method

.method public final sendRCPPolicyChangedBroadcast(I)V
    .registers 3

    :try_start_0
    const-string/jumbo p0, "mum_container_rcp_policy"

    .line 657
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    if-eqz p0, :cond_2a

    .line 659
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->sendRCPPolicyChangedBroadcast(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_2a

    :catch_f
    move-exception p0

    .line 662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaPolicyManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return-void
.end method

.method public setCustomNamePersona(ILjava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "setAllowCustomBadgeIcon"

    .line 215
    invoke-static {v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 218
    iput-object p2, v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mCustomPersonaName:Ljava/lang/String;

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setCustomNamePersonalMode(ILjava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo p1, "setAllowCustomBadgeIcon"

    .line 194
    invoke-static {p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 197
    iput-object p2, v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mPersonalModeLabel:Ljava/lang/String;

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string/jumbo v0, "setRCPDataPolicy"

    .line 667
    invoke-static {v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "EDM"

    .line 669
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    const-string v0, ":"

    .line 670
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 671
    aget-object v0, p3, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    .line 672
    aget-object p3, p3, v2

    goto :goto_27

    .line 674
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 675
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 677
    :goto_27
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->setRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v1, :cond_30

    .line 679
    invoke-virtual {p0, v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->sendRCPPolicyChangedBroadcast(I)V

    :cond_30
    return p1
.end method

.method public setRCPDataPolicyForFota(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 722
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/PersonaPolicyManagerService;->setRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final setRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 684
    monitor-enter p0

    .line 685
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    .line 686
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 688
    iget-object v1, v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    .line 689
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1e

    .line 691
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_42

    .line 693
    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 694
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 695
    iget-object v5, v4, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 696
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 699
    :cond_3f
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 702
    :goto_42
    new-instance v2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;

    invoke-direct {v2}, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;-><init>()V

    .line 703
    iput-object p3, v2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    .line 704
    iput-object p4, v2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .line 705
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object p3, v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {p3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    const/4 p1, 0x1

    .line 708
    monitor-exit p0

    return p1

    .line 710
    :cond_59
    monitor-exit p0

    return v1

    .line 713
    :cond_5b
    monitor-exit p0

    return v1

    :catchall_5d
    move-exception p1

    .line 715
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_5d

    throw p1
.end method

.method public setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string/jumbo v0, "setRCPNotificationPolicy"

    .line 726
    invoke-static {v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 727
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 728
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 729
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->setRCPNotificationPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final setRCPNotificationPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 734
    monitor-enter p0

    .line 735
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    .line 736
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 738
    iget-object v1, v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    .line 739
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1e

    .line 741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_42

    .line 743
    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 744
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 745
    iget-object v5, v4, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 746
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 749
    :cond_3f
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 752
    :goto_42
    new-instance v2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;

    invoke-direct {v2}, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;-><init>()V

    .line 753
    iput-object p3, v2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    .line 754
    iput-object p4, v2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .line 755
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object p3, v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {p3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    const/4 p1, 0x1

    .line 758
    monitor-exit p0

    return p1

    .line 760
    :cond_59
    monitor-exit p0

    return v1

    .line 763
    :cond_5b
    monitor-exit p0

    return v1

    :catchall_5d
    move-exception p1

    .line 765
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_5d

    throw p1
.end method

.method public setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 242
    monitor-enter p0

    .line 243
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 244
    iget-object v0, v0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {p0, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 246
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    if-eqz p2, :cond_1d

    const-string p0, "DisallowPackage"

    .line 248
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 249
    sget-object p0, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Lcom/android/server/knox/ContainerDependencyWrapper;->setApplicationBlackList(Landroid/content/Context;Ljava/util/List;I)V

    :cond_1d
    const/4 p0, 0x1

    return p0

    :catchall_1f
    move-exception p1

    .line 246
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.class public abstract Lcom/android/server/infra/AbstractPerUserSystemService;
.super Ljava/lang/Object;
.source "AbstractPerUserSystemService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "TS;TM;>;M:",
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "TM;TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field public mServiceInfo:Landroid/content/pm/ServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSetupComplete:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mTag:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 75
    iput-object p2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 76
    iput p3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 77
    invoke-virtual {p0, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateIsSetupComplete(I)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 405
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "User: "

    .line 406
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    iget v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 408
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2f

    .line 409
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Service Label: "

    .line 410
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 412
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target SDK: "

    .line 413
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getTargedSdkLocked()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 416
    :cond_2f
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz v0, :cond_49

    .line 417
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Name resolver: "

    .line 418
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p2, v1}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;I)V

    .line 420
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 422
    :cond_49
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Disabled by UserManager: "

    .line 423
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 425
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Setup complete: "

    .line 426
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_78

    .line 429
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Service UID: "

    .line 430
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 433
    :cond_78
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final getComponentNameForMultipleLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceNameList(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 277
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_1c

    .line 278
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 279
    aget-object p0, p0, v0

    return-object p0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getComponentNameLocked()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 399
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getMaster()Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 243
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object p0
.end method

.method public final getServiceComponent(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 9

    .line 195
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_de

    const/4 v2, 0x0

    if-nez v1, :cond_57

    .line 200
    :try_start_a
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_35
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_35
    .catchall {:try_start_a .. :try_end_e} :catchall_de

    .line 201
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v3, v1, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-nez v3, :cond_59

    .line 204
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad service name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_32} :catch_33
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_32} :catch_33
    .catchall {:try_start_e .. :try_end_32} :catchall_de

    goto :goto_59

    :catch_33
    move-exception v3

    goto :goto_37

    :catch_35
    move-exception v3

    move-object v1, v2

    .line 207
    :goto_37
    :try_start_37
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting service info for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_de

    move-object v3, v2

    goto :goto_59

    :cond_57
    move-object v1, v2

    move-object v3, v1

    :cond_59
    :goto_59
    if-eqz v3, :cond_92

    .line 213
    :try_start_5b
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 214
    iget-object v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_dc

    .line 215
    iget-object v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set component for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " and info as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    .line 219
    :cond_92
    iput-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 220
    iget-object v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_dc

    .line 221
    iget-object v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reset component for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_ba} :catch_bb
    .catchall {:try_start_5b .. :try_end_ba} :catchall_de

    goto :goto_dc

    :catch_bb
    move-exception v3

    .line 225
    :try_start_bc
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad ServiceInfo for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 228
    :cond_dc
    :goto_dc
    monitor-exit v0

    return-object v1

    :catchall_de
    move-exception p0

    .line 229
    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_bc .. :try_end_e0} :catchall_de

    throw p0
.end method

.method public final getServiceComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 316
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_3
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    :goto_d
    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 318
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final getServiceIconLocked()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_12

    .line 350
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_12
    return-object p0
.end method

.method public final getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 1

    .line 307
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method public final getServiceLabelLocked()Ljava/lang/CharSequence;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_14

    .line 339
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 338
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method public final getServicePackageName()Ljava/lang/String;
    .registers 1

    .line 327
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    .line 328
    :cond_8
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public final getServiceUidLocked()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_14

    .line 253
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "getServiceUidLocked(): no mServiceInfo"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 p0, -0x1

    return p0

    .line 256
    :cond_14
    iget-object p0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public final getTargedSdkLocked()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 384
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :goto_a
    return p0
.end method

.method public final getUserId()I
    .registers 1

    .line 236
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    return p0
.end method

.method public handlePackageUpdateLocked(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final isDebug()Z
    .registers 1

    .line 367
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    return p0
.end method

.method public final isDisabledByUserRestrictionsLocked()Z
    .registers 1

    .line 126
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    return p0
.end method

.method public isEnabledLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 119
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isSetupCompletedLocked()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 392
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    return p0
.end method

.method public final isTemporaryServiceSetLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p0}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result p0

    return p0
.end method

.method public final isVerbose()Z
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    return p0
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 103
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "not overridden"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeSelfFromCache()V
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_5
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 359
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final resetTemporaryServiceLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p0}, Lcom/android/server/infra/ServiceNameResolver;->resetTemporaryService(I)V

    return-void
.end method

.method public final updateIsSetupComplete(I)V
    .registers 4

    .line 83
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    .line 82
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    return-void
.end method

.method public updateLocked(Z)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_47

    .line 147
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocked(u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): wasEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mSetupComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", disabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_47
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateIsSetupComplete(I)V

    .line 153
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 155
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz p1, :cond_5e

    .line 156
    invoke-interface {p1}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 157
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoListLocked()[Landroid/content/ComponentName;

    goto :goto_61

    .line 159
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    .line 161
    :goto_61
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result p0

    if-eq v0, p0, :cond_69

    const/4 p0, 0x1

    goto :goto_6a

    :cond_69
    const/4 p0, 0x0

    :goto_6a
    return p0
.end method

.method public final updateServiceInfoListLocked()[Landroid/content/ComponentName;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_8
    invoke-interface {v0}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 182
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ComponentName;

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    aput-object p0, v2, v1

    return-object v2

    .line 185
    :cond_1d
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, v2}, Lcom/android/server/infra/ServiceNameResolver;->getServiceNameList(I)[Ljava/lang/String;

    move-result-object v0

    .line 187
    array-length v2, v0

    new-array v2, v2, [Landroid/content/ComponentName;

    .line 188
    :goto_2a
    array-length v3, v0

    if-ge v1, v3, :cond_38

    .line 189
    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_38
    return-object v2
.end method

.method public final updateServiceInfoLocked()Landroid/content/ComponentName;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoListLocked()[Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 170
    array-length v0, p0

    if-nez v0, :cond_a

    goto :goto_e

    :cond_a
    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

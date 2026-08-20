.class public abstract Lcom/android/server/infra/AbstractMasterSystemService;
.super Lcom/android/server/SystemService;
.source "AbstractMasterSystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;,
        Lcom/android/server/infra/AbstractMasterSystemService$Visitor;,
        Lcom/android/server/infra/AbstractMasterSystemService$ServicePackagePolicyFlags;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "TM;TS;>;S:",
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "TS;TM;>;>",
        "Lcom/android/server/SystemService;"
    }
.end annotation


# static fields
.field public static final PACKAGE_RESTART_POLICY_NO_REFRESH:I = 0x10

.field public static final PACKAGE_RESTART_POLICY_REFRESH_EAGER:I = 0x40

.field public static final PACKAGE_RESTART_POLICY_REFRESH_LAZY:I = 0x20

.field public static final PACKAGE_UPDATE_POLICY_NO_REFRESH:I = 0x1

.field public static final PACKAGE_UPDATE_POLICY_REFRESH_EAGER:I = 0x4

.field public static final PACKAGE_UPDATE_POLICY_REFRESH_LAZY:I = 0x2


# instance fields
.field public debug:Z

.field public mAllowInstantService:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

.field public final mServicePackagePolicyFlags:I

.field public final mServicesCacheList:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field public final mTag:Ljava/lang/String;

.field public mUm:Lcom/android/server/pm/UserManagerInternal;

.field public mUpdatingPackageNames:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public verbose:Z


# direct methods
.method public static synthetic $r8$lambda$PxI_NOd_w_XVlHtV92tGC-JO0R4(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/infra/AbstractMasterSystemService;->lambda$new$0(Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServicesCacheList(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x22

    .line 212
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V
    .registers 10

    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 136
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 149
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    and-int/lit8 v0, p4, 0x7

    if-nez v0, :cond_26

    or-int/lit8 p4, p4, 0x2

    :cond_26
    and-int/lit8 v0, p4, 0x70

    if-nez v0, :cond_2c

    or-int/lit8 p4, p4, 0x20

    .line 251
    :cond_2c
    iput p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    .line 253
    iput-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz p2, :cond_3a

    .line 255
    new-instance p4, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;)V

    invoke-interface {p2, p4}, Lcom/android/server/infra/ServiceNameResolver;->setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V

    :cond_3a
    if-nez p3, :cond_40

    const/4 p1, 0x0

    .line 259
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    goto :goto_89

    .line 261
    :cond_40
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    .line 263
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p2

    .line 264
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    move-result-object p4

    .line 265
    :goto_4f
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_81

    .line 266
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 267
    invoke-virtual {p2, v0, p3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 269
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling by restrictions user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_7e
    add-int/lit8 p1, p1, 0x1

    goto :goto_4f

    .line 273
    :cond_81
    new-instance p1, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3}, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerInternal;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    .line 291
    :goto_89
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->startTrackingPackageChanges()V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    const/4 p4, 0x0

    .line 275
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 276
    iget-object p3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 277
    :try_start_8
    iget-object p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p4

    if-ne p4, p1, :cond_2c

    .line 280
    iget-boolean p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p4, :cond_2c

    .line 281
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Restriction did not change for user "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    monitor-exit p3

    return-void

    .line 285
    :cond_2c
    iget-object p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {p4, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 287
    invoke-virtual {p0, p2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 288
    monitor-exit p3

    return-void

    :catchall_54
    move-exception p0

    monitor-exit p3
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_54

    throw p0
.end method


# virtual methods
.method public assertCalledByPackageOwner(Ljava/lang/String;)V
    .registers 6

    .line 877
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 879
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 881
    array-length v1, p0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_25

    aget-object v3, p0, v2

    .line 882
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    return-void

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 885
    :cond_25
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not own "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearCacheLocked()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 838
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 891
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 892
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    const/4 v2, 0x1

    .line 897
    :try_start_5
    iput-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    iput-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 898
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 899
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Debug: "

    .line 900
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " Verbose: "

    .line 902
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "Package policy flags: "

    .line 904
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    iget v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 906
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    if-eqz v3, :cond_3a

    const-string v3, "Packages being updated: "

    .line 907
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 910
    :cond_3a
    invoke-virtual {p0, p2, p1}, Lcom/android/server/SystemService;->dumpSupportedUsers(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 911
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    const/4 v4, 0x0

    if-eqz v3, :cond_7d

    .line 912
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Name resolver: "

    .line 913
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 914
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v3, p2}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;)V

    .line 915
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 916
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    move-result-object v3

    move v5, v4

    .line 917
    :goto_57
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7d

    .line 918
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    const-string v7, "    "

    .line 919
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    .line 921
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 922
    iget-object v7, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v7, p2, v6}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;I)V

    .line 923
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 926
    :cond_7d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Users disabled by restriction: "

    .line 927
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 929
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Allow instant service: "

    .line 930
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 932
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a8

    .line 934
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Settings property: "

    .line 935
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    :cond_a8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Cached services: "

    .line 939
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v2, :cond_b9

    const-string/jumbo p1, "none"

    .line 941
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f9

    .line 943
    :cond_b9
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    move v3, v4

    :goto_bd
    if-ge v3, v2, :cond_f9

    .line 945
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Service at "

    .line 946
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 948
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move v6, v4

    .line 950
    :goto_d8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_f3

    .line 951
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 952
    iget-object v8, v7, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_e7
    .catchall {:try_start_5 .. :try_end_e7} :catchall_fe

    :try_start_e7
    const-string v9, "    "

    .line 953
    invoke-virtual {v7, v9, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 954
    monitor-exit v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_d8

    :catchall_f0
    move-exception p1

    monitor-exit v8
    :try_end_f2
    .catchall {:try_start_e7 .. :try_end_f2} :catchall_f0

    :try_start_f2
    throw p1

    .line 956
    :cond_f3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_f6
    .catchall {:try_start_f2 .. :try_end_f6} :catchall_fe

    add-int/lit8 v3, v3, 0x1

    goto :goto_bd

    .line 960
    :cond_f9
    :goto_f9
    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 961
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    return-void

    :catchall_fe
    move-exception p1

    .line 960
    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 961
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 962
    throw p1
.end method

.method public enforceCallingPermissionForManagement()V
    .registers 4

    .line 525
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAllowInstantService()Z
    .registers 2

    .line 323
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 324
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_6
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    .line 326
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getMaximumTemporaryServiceDurationMs()I
    .registers 4

    .line 495
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 593
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 594
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_15

    :cond_d
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/infra/AbstractPerUserSystemService;

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public getServiceListForUserLocked(I)Ljava/util/List;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    .line 602
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 603
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    .line 602
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 604
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_21

    .line 605
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_61

    .line 606
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result v1

    .line 607
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz v2, :cond_3a

    invoke-interface {v2}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 608
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 609
    invoke-interface {v2, p1}, Lcom/android/server/infra/ServiceNameResolver;->getServiceNameList(I)[Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->newServiceListLocked(IZ[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_46

    .line 611
    :cond_3a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 612
    invoke-virtual {p0, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_46
    if-nez v1, :cond_5b

    const/4 v1, 0x0

    .line 615
    :goto_49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5b

    .line 616
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-virtual {p0, v3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 619
    :cond_5b
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    :cond_61
    return-object v1
.end method

.method public getServiceSettingsProperty()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedUsers()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 859
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 860
    array-length v1, v0

    .line 861
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_24

    .line 863
    aget-object v4, v0, v3

    .line 864
    new-instance v5, Lcom/android/server/SystemService$TargetUser;

    invoke-direct {v5, v4}, Lcom/android/server/SystemService$TargetUser;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-virtual {p0, v5}, Lcom/android/server/SystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 865
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_24
    return-object v2
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 3

    .line 846
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_1a

    .line 847
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "lazy-loading UserManagerInternal"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_10
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Lcom/android/server/pm/UserManagerInternal;

    .line 850
    :cond_1a
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public final isBindInstantServiceAllowed()Z
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 340
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isDefaultServiceEnabled(I)Z
    .registers 3

    .line 478
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 480
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 484
    :cond_9
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_c
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->isDefaultServiceEnabled(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 486
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw p0
.end method

.method public isDisabledLocked(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 661
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public newServiceListLocked(IZ[Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    .line 552
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "newServiceListLocked not implemented. "

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TS;"
        }
    .end annotation
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x258

    if-ne p1, v0, :cond_d

    .line 297
    new-instance p1, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/os/Handler;)V

    :cond_d
    return-void
.end method

.method public onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation

    return-void
.end method

.method public onServiceNameChanged(ILjava/lang/String;Z)V
    .registers 4

    .line 797
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 798
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceListLocked(IZ)Ljava/util/List;

    .line 799
    monitor-exit p2

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onServiceNameListChanged(I[Ljava/lang/String;Z)V
    .registers 4

    .line 814
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 815
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceListLocked(IZ)Ljava/util/List;

    .line 816
    monitor-exit p2

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onServicePackageDataClearedLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 767
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServicePackageDataCleared("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public onServicePackageRestartedLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 775
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServicePackageRestarted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public onServicePackageUpdatedLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 759
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServicePackageUpdated("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public onServicePackageUpdatingLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 751
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServicePackageUpdatingLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation

    return-void
.end method

.method public onSettingsChanged(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 312
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 305
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 631
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceListForUserLocked(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 632
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_15

    :cond_d
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/infra/AbstractPerUserSystemService;

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public peekServiceListForUserLocked(I)Ljava/util/List;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    .line 642
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 643
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    .line 642
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 644
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 3

    return-void
.end method

.method public final removeCachedServiceListLocked(I)Ljava/util/List;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    .line 736
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceListForUserLocked(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 738
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    const/4 v1, 0x0

    .line 739
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 740
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    return-object v0
.end method

.method public final resetTemporaryService(I)V
    .registers 5

    .line 506
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetTemporaryService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 508
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 511
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->resetTemporaryServiceLocked()V

    .line 513
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final setAllowInstantService(Z)V
    .registers 5

    .line 351
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowInstantService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 353
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_1d
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 355
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final setDefaultServiceEnabled(IZ)Z
    .registers 7

    .line 443
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultServiceEnabled() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 446
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_25
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    .line 448
    monitor-exit v0

    return v2

    .line 450
    :cond_2c
    invoke-interface {v1, p1, p2}, Lcom/android/server/infra/ServiceNameResolver;->setDefaultServiceEnabled(IZ)Z

    move-result v1

    if-nez v1, :cond_57

    .line 452
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_55

    .line 453
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDefaultServiceEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): already "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_55
    monitor-exit v0

    return v2

    .line 458
    :cond_57
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p2

    if-eqz p2, :cond_60

    .line 460
    invoke-virtual {p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCache()V

    .line 464
    :cond_60
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 465
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_66
    move-exception p0

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_25 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public final setTemporaryService(ILjava/lang/String;I)V
    .registers 7

    .line 372
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTemporaryService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-nez v0, :cond_32

    return-void

    .line 377
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 379
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getMaximumTemporaryServiceDurationMs()I

    move-result v0

    if-gt p3, v0, :cond_54

    .line 386
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_41
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 389
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCache()V

    .line 391
    :cond_4a
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/infra/ServiceNameResolver;->setTemporaryService(ILjava/lang/String;I)V

    .line 392
    monitor-exit v1

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_41 .. :try_end_53} :catchall_51

    throw p0

    .line 382
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Max duration is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (called with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setTemporaryServices(I[Ljava/lang/String;I)V
    .registers 7

    .line 410
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTemporaryService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-nez v0, :cond_36

    return-void

    .line 415
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 417
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getMaximumTemporaryServiceDurationMs()I

    move-result v0

    if-gt p3, v0, :cond_58

    .line 424
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_45
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 427
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCache()V

    .line 429
    :cond_4e
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/infra/ServiceNameResolver;->setTemporaryServices(I[Ljava/lang/String;I)V

    .line 430
    monitor-exit v1

    return-void

    :catchall_55
    move-exception p0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_55

    throw p0

    .line 420
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Max duration is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (called with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startTrackingPackageChanges()V
    .registers 5

    .line 966
    new-instance v0, Lcom/android/server/infra/AbstractMasterSystemService$1;

    invoke-direct {v0, p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;)V

    .line 1189
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v2, v1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public updateCachedServiceListLocked(IZ)Ljava/util/List;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    .line 687
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v1, 0x0

    .line 691
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 692
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/infra/AbstractPerUserSystemService;

    if-eqz v2, :cond_35

    .line 694
    iget-object v3, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 695
    :try_start_1a
    invoke-virtual {v2, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    .line 696
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v2

    if-nez v2, :cond_27

    .line 697
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    goto :goto_30

    .line 699
    :cond_27
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 701
    :goto_30
    monitor-exit v3

    goto :goto_35

    :catchall_32
    move-exception p0

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_32

    throw p0

    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_38
    return-object v0
.end method

.method public updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TS;"
        }
    .end annotation

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    .line 674
    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceListLocked(IZ)Ljava/util/List;

    return-object v0
.end method

.method public updateCachedServiceLocked(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 652
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceListLocked(IZ)Ljava/util/List;

    return-void
.end method

.method public visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/infra/AbstractMasterSystemService$Visitor<",
            "TS;>;)V"
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_28

    .line 826
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v4, v1

    .line 827
    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_25

    .line 828
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-interface {p1, v5}, Lcom/android/server/infra/AbstractMasterSystemService$Visitor;->visit(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_28
    return-void
.end method

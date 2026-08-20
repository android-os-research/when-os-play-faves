.class public final Lcom/android/server/pm/permission/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/Permission$ProtectionLevel;,
        Lcom/android/server/pm/permission/Permission$PermissionType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Permission"

.field public static final TYPE_CONFIG:I = 0x1

.field public static final TYPE_DYNAMIC:I = 0x2

.field public static final TYPE_MANIFEST:I


# instance fields
.field public mDefinitionChanged:Z

.field public mGids:[I

.field public mGidsPerUser:Z

.field public mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field public mReconciled:Z

.field public final mType:I

.field public mUid:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PermissionInfo;I)V
    .registers 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 104
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 105
    iput p2, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 95
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 96
    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 97
    iput-object p2, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 p1, 0x2

    .line 99
    iput p1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 100
    iput p3, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    return-void
.end method

.method public static comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z
    .registers 5

    .line 576
    iget v0, p0, Landroid/content/pm/PermissionInfo;->icon:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->icon:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    .line 577
    :cond_8
    iget v0, p0, Landroid/content/pm/PermissionInfo;->logo:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->logo:I

    if-eq v0, v1, :cond_f

    return v2

    .line 578
    :cond_f
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v0, v1, :cond_16

    return v2

    .line 579
    :cond_16
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    return v2

    .line 580
    :cond_21
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    return v2

    .line 582
    :cond_2c
    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    return v2

    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method public static createOrUpdate(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/Permission;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/Permission;",
            "Landroid/content/pm/PermissionInfo;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;Z)",
            "Lcom/android/server/pm/permission/Permission;"
        }
    .end annotation

    const/high16 v0, 0x40000000    # 2.0f

    const-string v1, "Permission"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_61

    .line 416
    iget-object v4, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 418
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 419
    iget v4, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    if-ne v4, v3, :cond_32

    iget-boolean v4, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-nez v4, :cond_32

    .line 421
    iget p4, p1, Landroid/content/pm/PermissionInfo;->flags:I

    or-int/2addr p4, v0

    iput p4, p1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 422
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 423
    iput-boolean v3, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 424
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p4

    iput p4, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    goto :goto_61

    :cond_32
    if-nez p4, :cond_61

    .line 426
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New decl "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " of permission  "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is system; overriding "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    move p4, v3

    goto :goto_62

    :cond_61
    :goto_61
    move p4, v2

    :goto_62
    if-eqz p0, :cond_70

    .line 434
    iget v4, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    if-eq v4, v3, :cond_70

    .line 435
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v4

    if-nez v4, :cond_70

    move v4, v3

    goto :goto_71

    :cond_70
    move v4, v2

    :goto_71
    if-eqz p0, :cond_7f

    .line 436
    iget v5, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    if-eq v5, v3, :cond_7f

    .line 437
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v5

    if-nez v5, :cond_7f

    move v5, v3

    goto :goto_80

    :cond_7f
    move v5, v2

    :goto_80
    if-nez p0, :cond_8b

    .line 439
    new-instance p0, Lcom/android/server/pm/permission/Permission;

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v2}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 443
    :cond_8b
    iget-boolean v2, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-nez v2, :cond_124

    .line 444
    iget-object v2, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string v6, " from package "

    const-string v7, "Permission "

    if-eqz v2, :cond_cb

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 445
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    goto :goto_cb

    .line 468
    :cond_a2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: original from "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_124

    .line 446
    :cond_cb
    :goto_cb
    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {p3, v2}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p3

    if-eqz p3, :cond_115

    .line 447
    iget-object v2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 448
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    goto :goto_115

    .line 462
    :cond_e0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: base tree "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is from package "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_124

    .line 449
    :cond_115
    :goto_115
    iget p3, p1, Landroid/content/pm/PermissionInfo;->flags:I

    or-int/2addr p3, v0

    iput p3, p1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 450
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 451
    iput-boolean v3, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 452
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 481
    :cond_124
    :goto_124
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result p1

    if-eqz p1, :cond_12e

    if-nez p4, :cond_138

    if-nez v4, :cond_138

    .line 482
    :cond_12e
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result p1

    if-eqz p1, :cond_13a

    if-nez p4, :cond_138

    if-eqz v5, :cond_13a

    .line 485
    :cond_138
    iput-boolean v3, p0, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    :cond_13a
    return-object p0
.end method

.method public static enforcePermissionTree(Ljava/util/Collection;Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/pm/permission/Permission;"
        }
    .end annotation

    if-eqz p1, :cond_13

    .line 497
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 500
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result p1

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne p1, v0, :cond_13

    return-object p0

    .line 505
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calling uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed to add to or remove from the permission tree"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/pm/permission/Permission;"
        }
    .end annotation

    .line 512
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/Permission;

    .line 513
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 515
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 516
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_4

    return-object v0

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isOverridingSystemPermission(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageManagerInternal;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_25

    .line 395
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_25

    .line 399
    :cond_10
    iget-boolean p1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-nez p1, :cond_15

    return v0

    .line 402
    :cond_15
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    if-nez p0, :cond_20

    return v0

    .line 407
    :cond_20
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result p0

    return p0

    :cond_25
    :goto_25
    return v0
.end method


# virtual methods
.method public addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)Z
    .registers 8

    .line 362
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v2, 0x1

    if-ne v1, p1, :cond_28

    iget-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    iget v3, p3, Lcom/android/server/pm/permission/Permission;->mUid:I

    if-ne v1, v3, :cond_28

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v1, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 366
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 368
    invoke-static {v0, p2}, Lcom/android/server/pm/permission/Permission;->comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    move v0, v2

    .line 369
    :goto_29
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-direct {v1, p2}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 370
    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object p2, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 371
    iput p1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 372
    iput-boolean v2, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 373
    iget p1, p3, Lcom/android/server/pm/permission/Permission;->mUid:I

    iput p1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    return v0
.end method

.method public areGidsPerUser()Z
    .registers 1

    .line 158
    iget-boolean p0, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    return p0
.end method

.method public calculateFootprint(Lcom/android/server/pm/permission/Permission;)I
    .registers 3

    .line 189
    iget p0, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    iget v0, p1, Lcom/android/server/pm/permission/Permission;->mUid:I

    if-ne p0, v0, :cond_16

    .line 190
    iget-object p0, p1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    iget-object p1, p1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 191
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public computeGids(I)[I
    .registers 6

    .line 168
    iget-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    if-eqz v0, :cond_1b

    .line 169
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 170
    :goto_a
    iget-object v2, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 171
    aget v2, v2, v1

    .line 172
    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-object v0

    .line 176
    :cond_1b
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length p1, p0

    if-eqz p1, :cond_26

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    :cond_26
    return-object p0
.end method

.method public generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;
    .registers 3

    const/16 v0, 0x2710

    .line 543
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    return-object p0
.end method

.method public generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;
    .registers 5

    .line 549
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_14

    .line 550
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    const/16 v1, 0x80

    and-int/2addr p1, v1

    if-eq p1, v1, :cond_27

    const/4 p1, 0x0

    .line 552
    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    goto :goto_27

    .line 555
    :cond_14
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 556
    iget-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 557
    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 558
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_27
    :goto_27
    const/16 p1, 0x1a

    if-lt p2, p1, :cond_32

    .line 561
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput p0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    goto :goto_40

    .line 563
    :cond_32
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p1, p0, 0xf

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3e

    .line 567
    iput p0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    goto :goto_40

    .line 569
    :cond_3e
    iput p1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    :goto_40
    return-object v0
.end method

.method public getBackgroundPermission()Ljava/lang/String;
    .registers 1

    .line 525
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    return-object p0
.end method

.method public getGroup()Ljava/lang/String;
    .registers 1

    .line 530
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    return-object p0
.end method

.method public getKnownCerts()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPermissionInfo()Landroid/content/pm/PermissionInfo;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    return-object p0
.end method

.method public getProtection()I
    .registers 1

    .line 534
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public getProtectionFlags()I
    .registers 2

    .line 538
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const v0, 0xfff0

    and-int/2addr p0, v0

    return p0
.end method

.method public getProtectionLevel()I
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    return p0
.end method

.method public getRawGids()[I
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 141
    iget p0, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    return p0
.end method

.method public getUid()I
    .registers 1

    .line 145
    iget p0, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    return p0
.end method

.method public hasGids()Z
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length p0, p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isAppOp()Z
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isAppPredictor()Z
    .registers 2

    .line 317
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isCompanion()Z
    .registers 2

    .line 322
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isConfigurator()Z
    .registers 2

    .line 308
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x80000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isDefinitionChanged()Z
    .registers 1

    .line 181
    iget-boolean p0, p0, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    return p0
.end method

.method public isDevelopment()Z
    .registers 2

    .line 257
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isDynamic()Z
    .registers 2

    .line 205
    iget p0, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isHardOrSoftRestricted()Z
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 p0, p0, 0xc

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isHardRestricted()Z
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isImmutablyRestricted()Z
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isIncidentReportApprover()Z
    .registers 2

    .line 312
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x100000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isInstalled()Z
    .registers 2

    .line 218
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isInstaller()Z
    .registers 1

    .line 262
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isInstant()Z
    .registers 1

    .line 266
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isInternal()Z
    .registers 2

    .line 248
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isKnownSigner()Z
    .registers 2

    .line 338
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isNormal()Z
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0xf

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isOem()Z
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z
    .registers 5

    .line 197
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 200
    :cond_6
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 201
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method public isPre23()Z
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isPreInstalled()Z
    .registers 1

    .line 278
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isPrivileged()Z
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isRecents()Z
    .registers 2

    .line 330
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isRemoved()Z
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isRetailDemo()Z
    .registers 2

    .line 326
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isRole()Z
    .registers 2

    .line 334
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isRuntime()Z
    .registers 2

    .line 213
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isRuntimeOnly()Z
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isSetup()Z
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isSignature()Z
    .registers 2

    .line 243
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isSoftRestricted()Z
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isSystemTextClassifier()Z
    .registers 2

    .line 303
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isVendorPrivileged()Z
    .registers 2

    .line 298
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isVerifier()Z
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public setDefinitionChanged(Z)V
    .registers 2

    .line 185
    iput-boolean p1, p0, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    return-void
.end method

.method public setGids([IZ)V
    .registers 3

    .line 162
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 163
    iput-boolean p2, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    return-void
.end method

.method public setPermissionInfo(Landroid/content/pm/PermissionInfo;)V
    .registers 5

    if-eqz p1, :cond_5

    .line 115
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    goto :goto_1a

    .line 117
    :cond_5
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 119
    iget-object v2, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 120
    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 121
    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    :goto_1a
    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 123
    :goto_1f
    iput-boolean p1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    return-void
.end method

.method public transfer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 346
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 349
    :cond_b
    new-instance p1, Landroid/content/pm/PermissionInfo;

    invoke-direct {p1}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 350
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 351
    iput-object p2, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 352
    iget p2, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput p2, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 353
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const/4 p1, 0x0

    .line 354
    iput-boolean p1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 355
    iput p1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 356
    sget-object p2, Llibcore/util/EmptyArray;->INT:[I

    iput-object p2, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 357
    iput-boolean p1, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    return-void
.end method

.method public updateDynamicPermission(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .line 382
    iget v0, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 383
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 385
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, p1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 387
    iget p1, p1, Lcom/android/server/pm/permission/Permission;->mUid:I

    iput p1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    :cond_1e
    return-void
.end method

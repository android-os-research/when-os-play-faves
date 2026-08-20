.class final Landroid/permission/PermissionManager$PackageNamePermissionQuery;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageNamePermissionQuery"
.end annotation


# instance fields
.field final blacklist permName:Ljava/lang/String;

.field final blacklist pkgName:Ljava/lang/String;

.field final blacklist userId:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1615
    iput-object p1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    .line 1616
    iput-object p2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    .line 1617
    iput p3, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    .line 1618
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "rval"    # Ljava/lang/Object;

    .line 1634
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1635
    return v0

    .line 1639
    :cond_4
    :try_start_4
    move-object v1, p1

    check-cast v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_26

    .line 1642
    .local v1, "other":Landroid/permission/PermissionManager$PackageNamePermissionQuery;
    nop

    .line 1643
    iget-object v2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    .line 1644
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget v2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    iget v3, v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    if-ne v2, v3, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    nop

    .line 1643
    :goto_25
    return v0

    .line 1640
    .end local v1    # "other":Landroid/permission/PermissionManager$PackageNamePermissionQuery;
    :catch_26
    move-exception v1

    .line 1641
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1629
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1622
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    .line 1624
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1622
    const-string v1, "PackageNamePermissionQuery(pkgName=\"%s\", permName=\"%s, userId=%s\")"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

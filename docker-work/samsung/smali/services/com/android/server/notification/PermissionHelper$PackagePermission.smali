.class public Lcom/android/server/notification/PermissionHelper$PackagePermission;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/PermissionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackagePermission"
.end annotation


# instance fields
.field public final granted:Z

.field public final packageName:Ljava/lang/String;

.field public final userId:I

.field public final userModifiedSettings:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    .line 345
    iput p2, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    .line 346
    iput-boolean p3, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    .line 347
    iput-boolean p4, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userModifiedSettings:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 354
    :cond_12
    check-cast p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    .line 355
    iget v2, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    iget v3, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    if-ne v2, v3, :cond_31

    iget-boolean v2, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    iget-boolean v3, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    if-ne v2, v3, :cond_31

    iget-boolean v2, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userModifiedSettings:Z

    iget-boolean v3, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userModifiedSettings:Z

    if-ne v2, v3, :cond_31

    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    .line 357
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    return v0

    :cond_33
    :goto_33
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 362
    iget-object v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userModifiedSettings:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackagePermission{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", granted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userModifiedSettings:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

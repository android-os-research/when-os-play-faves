.class public final Lcom/android/server/devicepolicy/OwnerShellData;
.super Ljava/lang/Object;
.source "OwnerShellData.java"


# instance fields
.field public final admin:Landroid/content/ComponentName;

.field public isAffiliated:Z

.field public final isDeviceOwner:Z

.field public final isManagedProfileOwner:Z

.field public final isProfileOwner:Z

.field public final parentUserId:I

.field public final userId:I


# direct methods
.method public constructor <init>(IILandroid/content/ComponentName;ZZZ)V
    .registers 12

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v2

    :goto_c
    const-string/jumbo v4, "userId cannot be USER_NULL"

    .line 43
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 44
    iput p1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    .line 45
    iput p2, p0, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    const-string v3, "admin must not be null"

    .line 46
    invoke-static {p3, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p3

    check-cast v3, Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/devicepolicy/OwnerShellData;->admin:Landroid/content/ComponentName;

    .line 47
    iput-boolean p4, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isDeviceOwner:Z

    .line 48
    iput-boolean p5, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isProfileOwner:Z

    .line 49
    iput-boolean p6, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isManagedProfileOwner:Z

    if-eqz p6, :cond_45

    if-eq p2, v0, :cond_2c

    move p0, v1

    goto :goto_2d

    :cond_2c
    move p0, v2

    :goto_2d
    const-string/jumbo p3, "parentUserId cannot be USER_NULL for managed profile owner"

    .line 51
    invoke-static {p0, p3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eq p2, p1, :cond_37

    move p0, v1

    goto :goto_38

    :cond_37
    move p0, v2

    :goto_38
    new-array p2, v1, [Ljava/lang/Object;

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "cannot be parent of itself (%d)"

    .line 53
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public static forDeviceOwner(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/OwnerShellData;
    .registers 10

    .line 82
    new-instance v7, Lcom/android/server/devicepolicy/OwnerShellData;

    const/16 v2, -0x2710

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/devicepolicy/OwnerShellData;-><init>(IILandroid/content/ComponentName;ZZZ)V

    return-object v7
.end method

.method public static forManagedProfileOwner(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/OwnerShellData;
    .registers 11

    .line 95
    new-instance v7, Lcom/android/server/devicepolicy/OwnerShellData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/devicepolicy/OwnerShellData;-><init>(IILandroid/content/ComponentName;ZZZ)V

    return-object v7
.end method

.method public static forUserProfileOwner(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/OwnerShellData;
    .registers 10

    .line 88
    new-instance v7, Lcom/android/server/devicepolicy/OwnerShellData;

    const/16 v2, -0x2710

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/devicepolicy/OwnerShellData;-><init>(IILandroid/content/ComponentName;ZZZ)V

    return-object v7
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/devicepolicy/OwnerShellData;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[userId="

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",admin="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->admin:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isDeviceOwner:Z

    if-eqz v1, :cond_2c

    const-string v1, ",deviceOwner"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_2c
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isProfileOwner:Z

    if-eqz v1, :cond_35

    const-string v1, ",isProfileOwner"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_35
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isManagedProfileOwner:Z

    if-eqz v1, :cond_3e

    const-string v1, ",isManagedProfileOwner"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_3e
    iget v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_4e

    const-string v1, ",parentUserId="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    :cond_4e
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isAffiliated:Z

    if-eqz p0, :cond_57

    const-string p0, ",isAffiliated"

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_57
    const/16 p0, 0x5d

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

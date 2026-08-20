.class public final Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
.super Ljava/lang/Object;
.source "LegacyPermissionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/LegacyPermissionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionState"
.end annotation


# instance fields
.field public final mFlags:I

.field public final mGranted:Z

.field public final mName:Ljava/lang/String;

.field public final mRuntime:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;)V
    .registers 3

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iget-object v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 281
    iget-boolean v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    .line 282
    iget-boolean v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    .line 283
    iget p1, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    iput p1, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .registers 5

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 274
    iput-boolean p2, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    .line 275
    iput-boolean p3, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    .line 276
    iput p4, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

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

    if-eqz p1, :cond_31

    .line 330
    const-class v2, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_31

    .line 333
    :cond_10
    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 334
    iget-boolean v2, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    iget-boolean v3, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    if-ne v2, v3, :cond_2f

    iget-boolean v2, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    iget-boolean v3, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    iget v3, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    if-ne v2, v3, :cond_2f

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 337
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    return v0

    :cond_31
    :goto_31
    return v1
.end method

.method public getFlags()I
    .registers 1

    .line 322
    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 342
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isGranted()Z
    .registers 1

    .line 312
    iget-boolean p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    return p0
.end method

.method public isRuntime()Z
    .registers 1

    .line 302
    iget-boolean p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    return p0
.end method

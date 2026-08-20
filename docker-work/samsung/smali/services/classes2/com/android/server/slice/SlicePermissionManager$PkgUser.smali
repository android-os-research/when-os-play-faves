.class public Lcom/android/server/slice/SlicePermissionManager$PkgUser;
.super Ljava/lang/Object;
.source "SlicePermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SlicePermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PkgUser"
.end annotation


# static fields
.field public static final FORMAT:Ljava/lang/String; = "%s@%d"

.field public static final SEPARATOR:Ljava/lang/String; = "@"


# instance fields
.field public final mPkg:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPkg(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "@"

    const/4 v1, 0x2

    .line 417
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 418
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    const/4 v0, 0x1

    .line 419
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 421
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    .line 412
    iput p2, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 440
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 441
    :cond_14
    check-cast p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 442
    iget-object v0, p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget p1, p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    iget p0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    if-ne p1, p0, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public getPkg()Ljava/lang/String;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 430
    iget p0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 435
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 447
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s@%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

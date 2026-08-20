.class public Lcom/samsung/android/game/PkgWithUserId;
.super Ljava/lang/Object;
.source "PkgWithUserId.java"


# instance fields
.field private final pkgName:Ljava/lang/String;

.field private final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "_pkgName"    # Ljava/lang/String;
    .param p2, "_userId"    # I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/samsung/android/game/PkgWithUserId;->pkgName:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/samsung/android/game/PkgWithUserId;->userId:I

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "_pkg"    # Ljava/lang/Object;

    .line 24
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 25
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 27
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/game/PkgWithUserId;

    .line 28
    .local v2, "pkg":Lcom/samsung/android/game/PkgWithUserId;
    iget-object v3, p0, Lcom/samsung/android/game/PkgWithUserId;->pkgName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget v3, p0, Lcom/samsung/android/game/PkgWithUserId;->userId:I

    invoke-virtual {v2}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v4

    if-ne v3, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    .line 25
    .end local v2    # "pkg":Lcom/samsung/android/game/PkgWithUserId;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/samsung/android/game/PkgWithUserId;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/samsung/android/game/PkgWithUserId;->userId:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/game/PkgWithUserId;->pkgName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/game/PkgWithUserId;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

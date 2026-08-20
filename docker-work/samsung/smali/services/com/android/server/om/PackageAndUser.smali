.class public final Lcom/android/server/om/PackageAndUser;
.super Ljava/lang/Object;
.source "PackageAndUser.java"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/om/PackageAndUser;->packageName:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/android/server/om/PackageAndUser;->userId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 37
    :cond_4
    instance-of v1, p1, Lcom/android/server/om/PackageAndUser;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 40
    :cond_a
    check-cast p1, Lcom/android/server/om/PackageAndUser;

    .line 41
    iget-object v1, p0, Lcom/android/server/om/PackageAndUser;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/om/PackageAndUser;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget p0, p0, Lcom/android/server/om/PackageAndUser;->userId:I

    iget p1, p1, Lcom/android/server/om/PackageAndUser;->userId:I

    if-ne p0, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/android/server/om/PackageAndUser;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 49
    iget p0, p0, Lcom/android/server/om/PackageAndUser;->userId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/android/server/om/PackageAndUser;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/om/PackageAndUser;->userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "PackageAndUser{packageName=%s, userId=%d}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

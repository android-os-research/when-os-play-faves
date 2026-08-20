.class public Lcom/android/server/backup/BackupUtils;
.super Ljava/lang/Object;
.source "BackupUtils.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BackupUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashSignature(Landroid/content/pm/Signature;)[B
    .registers 1

    .line 116
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/BackupUtils;->hashSignature([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static hashSignature([B)[B
    .registers 2

    :try_start_0
    const-string v0, "SHA-256"

    .line 106
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    const-string p0, "BackupUtils"

    const-string v0, "No SHA-256 algorithm found!"

    .line 110
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static hashSignatureArray(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 138
    invoke-static {v1}, Lcom/android/server/backup/BackupUtils;->hashSignature([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    return-object v0
.end method

.method public static hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 124
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1a

    aget-object v3, p0, v2

    .line 126
    invoke-static {v3}, Lcom/android/server/backup/BackupUtils;->hashSignature(Landroid/content/pm/Signature;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1a
    return-object v0
.end method

.method public static signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;",
            "Landroid/content/pm/PackageInfo;",
            "Landroid/content/pm/PackageManagerInternal;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_69

    .line 41
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_69

    .line 49
    :cond_8
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    return v2

    .line 55
    :cond_11
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v0

    .line 59
    :cond_18
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v1, :cond_25

    const-string p0, "BackupUtils"

    const-string/jumbo p1, "signingInfo is empty, app was either unsigned or the flag PackageManager#GET_SIGNING_CERTIFICATES was not specified"

    .line 61
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 71
    :cond_25
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_38

    .line 78
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Landroid/content/pm/PackageManagerInternal;->isDataRestoreSafe([BLjava/lang/String;)Z

    move-result p0

    return p0

    .line 84
    :cond_38
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v1, v0

    :goto_45
    if-ge v1, v3, :cond_68

    move v4, v0

    :goto_48
    if-ge v4, p2, :cond_61

    .line 90
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_5e

    move v4, v2

    goto :goto_62

    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_61
    move v4, v0

    :goto_62
    if-nez v4, :cond_65

    return v0

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_68
    return v2

    :cond_69
    :goto_69
    return v0
.end method

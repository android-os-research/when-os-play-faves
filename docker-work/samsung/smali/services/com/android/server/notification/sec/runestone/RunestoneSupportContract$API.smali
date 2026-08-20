.class public final Lcom/android/server/notification/sec/runestone/RunestoneSupportContract$API;
.super Ljava/lang/Object;
.source "RunestoneSupportContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "API"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string/jumbo v1, "sec"

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "samsung"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 35
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x8000000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 36
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_5f

    .line 38
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_2c
    if-ge v2, v1, :cond_5e

    aget-object v4, p0, v2

    .line 39
    invoke-static {}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->-$$Nest$sfgetIS_ENG()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 40
    invoke-static {}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->-$$Nest$sfgetDEBUG_SIG()Landroid/content/pm/Signature;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5e

    move v0, p1

    goto :goto_5f

    :cond_42
    move v5, v0

    .line 44
    :goto_43
    invoke-static {}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->-$$Nest$sfgetSIG()[Landroid/content/pm/Signature;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_5b

    .line 45
    invoke-static {}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->-$$Nest$sfgetSIG()[Landroid/content/pm/Signature;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_54} :catch_5f

    if-eqz v6, :cond_58

    move v3, p1

    goto :goto_5b

    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_5e
    move v0, v3

    :catch_5f
    :cond_5f
    :goto_5f
    return v0
.end method

.method public static isPlatformSignedPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 75
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->-$$Nest$smgetPackageSignatureHexInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 78
    invoke-static {p0, p1}, Lcom/android/server/notification/sec/runestone/RunestoneSupportContract;->-$$Nest$smisPlatformKeySigned(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    :catch_e
    :cond_e
    return v0
.end method

.method public static isSupportVersion(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 5

    const/4 v0, 0x0

    .line 62
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 63
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p1, :cond_1a

    .line 64
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_13} :catch_1a

    int-to-long p0, p0

    cmp-long p0, p0, p2

    if-ltz p0, :cond_1a

    const/4 p0, 0x1

    move v0, p0

    :catch_1a
    :cond_1a
    return v0
.end method

.class public final Lcom/android/server/pm/OriginInfo;
.super Ljava/lang/Object;
.source "OriginInfo.java"


# instance fields
.field public final mCid:Ljava/lang/String;

.field public final mExisting:Z

.field public final mFile:Ljava/io/File;

.field public final mResolvedFile:Ljava/io/File;

.field public final mResolvedPath:Ljava/lang/String;

.field public final mStaged:Z


# direct methods
.method public constructor <init>(Ljava/io/File;ZZ)V
    .registers 5

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZZLjava/lang/String;)V
    .registers 5

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 74
    iput-boolean p2, p0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    .line 75
    iput-boolean p3, p0, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    .line 76
    iput-object p4, p0, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz p4, :cond_1b

    .line 79
    invoke-static {p4}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 80
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    goto :goto_2b

    :cond_1b
    if-eqz p1, :cond_26

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    goto :goto_2b

    :cond_26
    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    :goto_2b
    return-void
.end method

.method public static fromExistingFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;
    .registers 4

    .line 60
    new-instance v0, Lcom/android/server/pm/OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.method public static fromNothing()Lcom/android/server/pm/OriginInfo;
    .registers 3

    .line 56
    new-instance v0, Lcom/android/server/pm/OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.method public static fromStagedContainer(Ljava/lang/String;)Lcom/android/server/pm/OriginInfo;
    .registers 5

    .line 51
    new-instance v0, Lcom/android/server/pm/OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    return-object v0
.end method

.method public static fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;
    .registers 4

    .line 64
    new-instance v0, Lcom/android/server/pm/OriginInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.class public final Lcom/android/server/pm/dex/DexoptOptions;
.super Ljava/lang/Object;
.source "DexoptOptions.java"


# static fields
.field public static final COMPILER_FILTER_NOOP:Ljava/lang/String; = "skip"

.field public static final DEXOPT_ASYNC:I = 0x8000

.field public static final DEXOPT_AS_SHARED_LIBRARY:I = 0x40

.field public static final DEXOPT_BOOT_COMPLETE:I = 0x4

.field public static final DEXOPT_CHECK_FOR_PROFILES_UPDATES:I = 0x1

.field public static final DEXOPT_DOWNGRADE:I = 0x20

.field public static final DEXOPT_FORCE:I = 0x2

.field public static final DEXOPT_FOR_RESTORE:I = 0x800

.field public static final DEXOPT_IDLE_BACKGROUND_JOB:I = 0x200

.field public static final DEXOPT_INSTALL_WITH_DEX_METADATA_FILE:I = 0x400

.field public static final DEXOPT_ONLY_SECONDARY_DEX:I = 0x8

.field public static final DEXOPT_ONLY_SHARED_DEX:I = 0x10


# instance fields
.field public final mCompilationReason:I

.field public final mCompilerFilter:Ljava/lang/String;

.field public final mFlags:I

.field public final mPackageName:Ljava/lang/String;

.field public final mSplitName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 10

    .line 99
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x8e80

    and-int/2addr v0, p5

    if-nez v0, :cond_14

    .line 121
    iput-object p1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    .line 123
    iput p5, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    .line 124
    iput-object p4, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    .line 125
    iput p2, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    return-void

    .line 118
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid flags : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    const/4 v2, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    .line 95
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getCompilationReason()I
    .registers 1

    .line 185
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    return p0
.end method

.method public getCompilerFilter()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    return-object p0
.end method

.method public getFlags()I
    .registers 1

    .line 181
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSplitName()Ljava/lang/String;
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    return-object p0
.end method

.method public isBootComplete()Z
    .registers 1

    .line 145
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isCheckForProfileUpdates()Z
    .registers 2

    .line 133
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isCompilationEnabled()Z
    .registers 2

    .line 189
    iget-object p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    const-string/jumbo v0, "skip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isDexoptAsSharedLibrary()Z
    .registers 1

    .line 161
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isDexoptIdleBackgroundJob()Z
    .registers 1

    .line 165
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isDexoptInstallForRestore()Z
    .registers 1

    .line 173
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isDexoptInstallWithDexMetadata()Z
    .registers 1

    .line 169
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isDexoptOnlySecondaryDex()Z
    .registers 1

    .line 149
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isDexoptOnlySharedDex()Z
    .registers 1

    .line 153
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isDowngrade()Z
    .registers 1

    .line 157
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isForce()Z
    .registers 1

    .line 141
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public overrideCompilerFilter(Ljava/lang/String;)Lcom/android/server/pm/dex/DexoptOptions;
    .registers 9

    .line 197
    new-instance v6, Lcom/android/server/pm/dex/DexoptOptions;

    iget-object v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    iget-object v4, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.class public final Lcom/android/internal/content/F2fsUtils;
.super Ljava/lang/Object;
.source "F2fsUtils.java"


# static fields
.field private static final blacklist COMPRESSION_FEATURE:Ljava/lang/String; = "compression"

.field private static final blacklist DEBUG_F2FS:Z = false

.field private static final blacklist RELOCATION_FEATURE:Ljava/lang/String; = "sec_dnode_relocation"

.field private static final blacklist TAG:Ljava/lang/String; = "F2fsUtils"

.field private static final blacklist sDataDirectory:Ljava/io/File;

.field private static blacklist sKernelCompressionAvailable:Z

.field private static final blacklist sKernelFeatures:Ljava/io/File;

.field private static final blacklist sUserDataCompressionAvailable:Z

.field private static final blacklist sUserDataFeatures:Ljava/io/File;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/f2fs/features"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sKernelFeatures:Ljava/io/File;

    .line 44
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/sys/fs/by-name/userdata/features"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sUserDataFeatures:Ljava/io/File;

    .line 46
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sDataDirectory:Ljava/io/File;

    .line 55
    const-string v0, "compression"

    invoke-static {v0}, Lcom/android/internal/content/F2fsUtils;->isFeatureEnabledInKernel(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/content/F2fsUtils;->sKernelCompressionAvailable:Z

    .line 56
    nop

    .line 62
    const-string/jumbo v0, "sec_dnode_relocation"

    invoke-static {v0}, Lcom/android/internal/content/F2fsUtils;->isFeatureEnabledInKernel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/content/F2fsUtils;->sKernelCompressionAvailable:Z

    .line 68
    :cond_2d
    invoke-static {}, Lcom/android/internal/content/F2fsUtils;->isCompressionEnabledOnUserData()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/content/F2fsUtils;->sUserDataCompressionAvailable:Z

    .line 69
    nop

    .line 74
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getFilesRecursive(Ljava/io/File;)Ljava/util/List;
    .registers 7
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 271
    .local v0, "allFiles":[Ljava/io/File;
    if-nez v0, :cond_8

    .line 272
    const/4 v1, 0x0

    return-object v1

    .line 274
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_2d

    aget-object v4, v0, v3

    .line 276
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 277
    invoke-static {v4}, Lcom/android/internal/content/F2fsUtils;->getFilesRecursive(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2a

    .line 278
    :cond_21
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 279
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v4    # "f":Ljava/io/File;
    :cond_2a
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 282
    :cond_2d
    return-object v1
.end method

.method private static blacklist getFilesToRelease(Ljava/io/File;)[Ljava/io/File;
    .registers 4
    .param p0, "codePath"    # Ljava/io/File;

    .line 289
    invoke-static {p0}, Lcom/android/internal/content/F2fsUtils;->getFilesRecursive(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 290
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 291
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 292
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    return-object v1

    .line 294
    :cond_14
    return-object v1

    .line 296
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1c

    .line 297
    return-object v1

    .line 299
    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    return-object v1
.end method

.method private static blacklist isChild(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5
    .param p0, "base"    # Ljava/io/File;
    .param p1, "childPath"    # Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    move-object p0, v1

    .line 176
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 177
    .local v1, "parentFile":Ljava/io/File;
    :goto_f
    if-eqz v1, :cond_1f

    .line 178
    invoke-virtual {p0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 179
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_19
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_20

    move-object v1, v2

    goto :goto_f

    .line 183
    :cond_1f
    return v0

    .line 184
    .end local v1    # "parentFile":Ljava/io/File;
    :catch_20
    move-exception v1

    .line 185
    .local v1, "ignore":Ljava/io/IOException;
    return v0
.end method

.method private static blacklist isCompressionAllowed(Ljava/io/File;)Z
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 144
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_18

    .line 150
    .local v1, "filePath":Ljava/lang/String;
    nop

    .line 151
    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 155
    return v0

    .line 157
    :cond_d
    sget-object v2, Lcom/android/internal/content/F2fsUtils;->sDataDirectory:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/android/internal/content/F2fsUtils;->isChild(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 161
    return v0

    .line 166
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 145
    .end local v1    # "filePath":Ljava/lang/String;
    :catch_18
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method private static blacklist isCompressionEnabledOnUserData()Z
    .registers 7

    .line 226
    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sUserDataFeatures:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5b

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_5b

    .line 236
    :cond_16
    :try_start_16
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_59

    .line 242
    .local v0, "configLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 243
    if-eqz v0, :cond_58

    .line 244
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_58

    .line 245
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_58

    .line 251
    :cond_35
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "features":[Ljava/lang/String;
    array-length v4, v1

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_43
    if-ltz v4, :cond_57

    .line 253
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "compression"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 257
    return v3

    .line 252
    :cond_54
    add-int/lit8 v4, v4, -0x1

    goto :goto_43

    .line 263
    .end local v4    # "i":I
    :cond_57
    return v2

    .line 249
    .end local v1    # "features":[Ljava/lang/String;
    :cond_58
    :goto_58
    return v2

    .line 237
    .end local v0    # "configLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_59
    move-exception v0

    .line 241
    .local v0, "ignore":Ljava/io/IOException;
    return v2

    .line 232
    .end local v0    # "ignore":Ljava/io/IOException;
    :cond_5b
    :goto_5b
    return v2
.end method

.method private static blacklist isFeatureEnabledInKernel(Ljava/lang/String;)Z
    .registers 7
    .param p0, "targetFeature"    # Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sKernelFeatures:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 198
    .local v0, "features":[Ljava/io/File;
    const/4 v1, 0x0

    if-eqz v0, :cond_25

    array-length v2, v0

    if-nez v2, :cond_d

    goto :goto_25

    .line 204
    :cond_d
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_24

    .line 205
    aget-object v4, v0, v2

    .line 206
    .local v4, "feature":Ljava/io/File;
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 210
    return v3

    .line 204
    .end local v4    # "feature":Ljava/io/File;
    :cond_21
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 216
    .end local v2    # "i":I
    :cond_24
    return v1

    .line 202
    :cond_25
    :goto_25
    return v1
.end method

.method private static native blacklist nativeReleaseCompressedBlocks(Ljava/lang/String;)J
.end method

.method public static blacklist releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "file"    # Ljava/io/File;

    .line 94
    sget-boolean v0, Lcom/android/internal/content/F2fsUtils;->sKernelCompressionAvailable:Z

    if-eqz v0, :cond_3d

    sget-boolean v0, Lcom/android/internal/content/F2fsUtils;->sUserDataCompressionAvailable:Z

    if-nez v0, :cond_9

    goto :goto_3d

    .line 103
    :cond_9
    nop

    .line 104
    const-string/jumbo v0, "release_compress_blocks_on_install"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 105
    .local v0, "releaseCompressBlocks":Z
    :goto_17
    if-nez v0, :cond_1a

    .line 109
    return-void

    .line 111
    :cond_1a
    invoke-static {p1}, Lcom/android/internal/content/F2fsUtils;->isCompressionAllowed(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 115
    return-void

    .line 117
    :cond_21
    invoke-static {p1}, Lcom/android/internal/content/F2fsUtils;->getFilesToRelease(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 118
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_3c

    array-length v3, v2

    if-nez v3, :cond_2b

    goto :goto_3c

    .line 124
    :cond_2b
    array-length v3, v2

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_2d
    if-ltz v3, :cond_3b

    .line 125
    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/content/F2fsUtils;->nativeReleaseCompressedBlocks(Ljava/lang/String;)J

    .line 124
    add-int/lit8 v3, v3, -0x1

    goto :goto_2d

    .line 131
    .end local v3    # "i":I
    :cond_3b
    return-void

    .line 122
    :cond_3c
    :goto_3c
    return-void

    .line 95
    .end local v0    # "releaseCompressBlocks":Z
    .end local v2    # "files":[Ljava/io/File;
    :cond_3d
    :goto_3d
    return-void
.end method

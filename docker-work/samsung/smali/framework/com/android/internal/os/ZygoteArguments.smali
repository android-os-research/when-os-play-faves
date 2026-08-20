.class Lcom/android/internal/os/ZygoteArguments;
.super Ljava/lang/Object;
.source "ZygoteArguments.java"


# instance fields
.field blacklist mAbiListQuery:Z

.field blacklist mAllowlistedDataInfoList:[Ljava/lang/String;

.field blacklist mApiDenylistExemptions:[Ljava/lang/String;

.field blacklist mAppDataDir:Ljava/lang/String;

.field blacklist mBindMountAppDataDirs:Z

.field blacklist mBindMountAppStorageDirs:Z

.field blacklist mBootCompleted:Z

.field private blacklist mCapabilitiesSpecified:Z

.field blacklist mDisabledCompatChanges:[J

.field blacklist mEffectiveCapabilities:J

.field blacklist mGid:I

.field blacklist mGidSpecified:Z

.field blacklist mGids:[I

.field blacklist mHiddenApiAccessLogSampleRate:I

.field blacklist mHiddenApiAccessStatslogSampleRate:I

.field blacklist mInstructionSet:Ljava/lang/String;

.field blacklist mInvokeWith:Ljava/lang/String;

.field blacklist mIsTopApp:Z

.field blacklist mMountExternal:I

.field blacklist mNiceName:Ljava/lang/String;

.field blacklist mPackageName:Ljava/lang/String;

.field blacklist mPermittedCapabilities:J

.field blacklist mPidQuery:Z

.field blacklist mPkgDataInfoList:[Ljava/lang/String;

.field blacklist mPreloadApp:Ljava/lang/String;

.field blacklist mPreloadDefault:Z

.field blacklist mPreloadPackage:Ljava/lang/String;

.field blacklist mPreloadPackageCacheKey:Ljava/lang/String;

.field blacklist mPreloadPackageLibFileName:Ljava/lang/String;

.field blacklist mPreloadPackageLibs:Ljava/lang/String;

.field blacklist mRLimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field blacklist mRemainingArgs:[Ljava/lang/String;

.field blacklist mRuntimeFlags:I

.field blacklist mSeInfo:Ljava/lang/String;

.field private blacklist mSeInfoSpecified:Z

.field blacklist mStartChildZygote:Z

.field blacklist mTargetSdkVersion:I

.field private blacklist mTargetSdkVersionSpecified:Z

.field blacklist mUid:I

.field blacklist mUidSpecified:Z

.field blacklist mUsapPoolEnabled:Z

.field blacklist mUsapPoolStatusSpecified:Z


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/os/ZygoteCommandBuffer;I)V
    .registers 4
    .param p1, "args"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p2, "argCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    .line 61
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    .line 77
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    .line 107
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    .line 210
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    .line 252
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteArguments;->parseArgs(Lcom/android/internal/os/ZygoteCommandBuffer;I)V

    .line 253
    return-void
.end method

.method private static blacklist getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "arg"    # Ljava/lang/String;

    .line 547
    invoke-static {p0}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 543
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;
    .registers 3
    .param p0, "args"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteCommandBuffer;->getCount()I

    move-result v0

    .line 263
    .local v0, "argCount":I
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Lcom/android/internal/os/ZygoteArguments;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/os/ZygoteArguments;-><init>(Lcom/android/internal/os/ZygoteCommandBuffer;I)V

    :goto_d
    return-object v1
.end method

.method private blacklist parseArgs(Lcom/android/internal/os/ZygoteCommandBuffer;I)V
    .registers 15
    .param p1, "args"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p2, "argCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "unprocessedArg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 288
    .local v1, "curArg":I
    const/4 v2, 0x0

    .line 289
    .local v2, "seenRuntimeArgs":Z
    const/4 v3, 0x1

    .line 291
    .local v3, "expectRuntimeArgs":Z
    :goto_4
    const/4 v4, 0x0

    if-ge v1, p2, :cond_392

    .line 292
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 295
    add-int/lit8 v1, v1, 0x1

    .line 296
    goto/16 :goto_392

    .line 297
    :cond_17
    const-string v6, "--setuid="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "Duplicate arg specified"

    const/4 v8, 0x1

    if-eqz v6, :cond_3a

    .line 298
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    if-nez v4, :cond_34

    .line 302
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    .line 303
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    goto/16 :goto_38e

    .line 299
    :cond_34
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 304
    :cond_3a
    const-string v6, "--setgid="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 305
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    if-nez v4, :cond_54

    .line 309
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    .line 310
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    goto/16 :goto_38e

    .line 306
    :cond_54
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 311
    :cond_5a
    const-string v6, "--target-sdk-version="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 312
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    if-nez v4, :cond_74

    .line 316
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    .line 317
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    goto/16 :goto_38e

    .line 313
    :cond_74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Duplicate target-sdk-version specified"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 318
    :cond_7c
    const-string v6, "--runtime-args"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 319
    const/4 v2, 0x1

    goto/16 :goto_38e

    .line 320
    :cond_87
    const-string v6, "--runtime-flags="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 321
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto/16 :goto_38e

    .line 322
    :cond_9b
    const-string v6, "--seinfo="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 323
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    if-nez v4, :cond_b1

    .line 327
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    .line 328
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    goto/16 :goto_38e

    .line 324
    :cond_b1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 329
    :cond_b7
    const-string v6, "--capabilities="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v9, 0x2

    if-eqz v6, :cond_102

    .line 330
    iget-boolean v6, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    if-nez v6, :cond_fc

    .line 334
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    .line 335
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, "capString":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 339
    .local v7, "capStrings":[Ljava/lang/String;
    array-length v9, v7

    if-ne v9, v8, :cond_e2

    .line 340
    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 341
    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    goto :goto_fa

    .line 343
    :cond_e2
    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    .line 344
    aget-object v4, v7, v8

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 346
    .end local v6    # "capString":Ljava/lang/String;
    .end local v7    # "capStrings":[Ljava/lang/String;
    :goto_fa
    goto/16 :goto_38e

    .line 331
    :cond_fc
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 346
    :cond_102
    const-string v6, "--rlimit="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v10, 0x3

    if-eqz v6, :cond_13e

    .line 348
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "limitStrings":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v10, :cond_136

    .line 354
    array-length v6, v4

    new-array v6, v6, [I

    .line 356
    .local v6, "rlimitTuple":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_116
    array-length v9, v4

    if-ge v7, v9, :cond_124

    .line 357
    aget-object v9, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v6, v7

    .line 356
    add-int/lit8 v7, v7, 0x1

    goto :goto_116

    .line 360
    .end local v7    # "i":I
    :cond_124
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    if-nez v7, :cond_12f

    .line 361
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    .line 364
    :cond_12f
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v4    # "limitStrings":[Ljava/lang/String;
    .end local v6    # "rlimitTuple":[I
    goto/16 :goto_38e

    .line 351
    .restart local v4    # "limitStrings":[Ljava/lang/String;
    :cond_136
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "--rlimit= should have 3 comma-delimited ints"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 365
    .end local v4    # "limitStrings":[Ljava/lang/String;
    :cond_13e
    const-string v6, "--setgroups="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 366
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    if-nez v4, :cond_166

    .line 371
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "params":[Ljava/lang/String;
    array-length v6, v4

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    .line 375
    array-length v6, v4

    sub-int/2addr v6, v8

    .local v6, "i":I
    :goto_155
    if-ltz v6, :cond_164

    .line 376
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    aget-object v9, v4, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v6

    .line 375
    add-int/lit8 v6, v6, -0x1

    goto :goto_155

    .line 378
    .end local v4    # "params":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_164
    goto/16 :goto_38e

    .line 367
    :cond_166
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 378
    :cond_16c
    const-string v6, "--invoke-with"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_191

    .line 379
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v4, :cond_18b

    .line 384
    add-int/lit8 v1, v1, 0x1

    .line 385
    :try_start_17a
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;
    :try_end_180
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17a .. :try_end_180} :catch_182

    .line 389
    goto/16 :goto_38e

    .line 386
    :catch_182
    move-exception v4

    .line 387
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "--invoke-with requires argument"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 380
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_18b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 390
    :cond_191
    const-string v6, "--nice-name="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1ab

    .line 391
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-nez v4, :cond_1a5

    .line 395
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    goto/16 :goto_38e

    .line 392
    :cond_1a5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 396
    :cond_1ab
    const-string v6, "--mount-external-default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b7

    .line 397
    iput v8, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_38e

    .line 398
    :cond_1b7
    const-string v6, "--mount-external-installer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c3

    .line 399
    iput v9, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_38e

    .line 400
    :cond_1c3
    const-string v6, "--mount-external-pass-through"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1cf

    .line 401
    iput v10, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_38e

    .line 402
    :cond_1cf
    const-string v6, "--mount-external-android-writable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1dc

    .line 403
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_38e

    .line 404
    :cond_1dc
    const-string v6, "--query-abi-list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e8

    .line 405
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    goto/16 :goto_38e

    .line 406
    :cond_1e8
    const-string v6, "--get-pid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f4

    .line 407
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    goto/16 :goto_38e

    .line 408
    :cond_1f4
    const-string v6, "--boot-completed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_200

    .line 409
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    goto/16 :goto_38e

    .line 410
    :cond_200
    const-string v6, "--instruction-set="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_210

    .line 411
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    goto/16 :goto_38e

    .line 412
    :cond_210
    const-string v6, "--app-data-dir="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_220

    .line 413
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    goto/16 :goto_38e

    .line 414
    :cond_220
    const-string v6, "--preload-app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_232

    .line 415
    add-int/lit8 v1, v1, 0x1

    .line 416
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    goto/16 :goto_38e

    .line 417
    :cond_232
    const-string v6, "--preload-package"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_256

    .line 418
    add-int/lit8 v1, v1, 0x4

    .line 419
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageLibs:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageLibFileName:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageCacheKey:Ljava/lang/String;

    goto/16 :goto_38e

    .line 423
    :cond_256
    const-string v6, "--preload-default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_263

    .line 424
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    .line 425
    const/4 v3, 0x0

    goto/16 :goto_38e

    .line 426
    :cond_263
    const-string v6, "--start-child-zygote"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26f

    .line 427
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    goto/16 :goto_38e

    .line 428
    :cond_26f
    const-string v6, "--set-api-denylist-exemptions"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_293

    .line 431
    sub-int v4, p2, v1

    sub-int/2addr v4, v8

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    .line 432
    add-int/lit8 v1, v1, 0x1

    .line 433
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_281
    if-ge v1, p2, :cond_290

    .line 434
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 433
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_281

    .line 436
    .end local v4    # "i":I
    :cond_290
    const/4 v3, 0x0

    goto/16 :goto_38e

    .line 437
    :cond_293
    const-string v6, "--hidden-api-log-sampling-rate="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c3

    .line 438
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, "rateStr":Ljava/lang/String;
    :try_start_29f
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I
    :try_end_2a5
    .catch Ljava/lang/NumberFormatException; {:try_start_29f .. :try_end_2a5} :catch_2a9

    .line 444
    nop

    .line 445
    const/4 v3, 0x0

    .line 446
    .end local v4    # "rateStr":Ljava/lang/String;
    goto/16 :goto_38e

    .line 441
    .restart local v4    # "rateStr":Ljava/lang/String;
    :catch_2a9
    move-exception v6

    .line 442
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid log sampling rate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 446
    .end local v4    # "rateStr":Ljava/lang/String;
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2c3
    const-string v6, "--hidden-api-statslog-sampling-rate="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f3

    .line 447
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 449
    .restart local v4    # "rateStr":Ljava/lang/String;
    :try_start_2cf
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I
    :try_end_2d5
    .catch Ljava/lang/NumberFormatException; {:try_start_2cf .. :try_end_2d5} :catch_2d9

    .line 453
    nop

    .line 454
    const/4 v3, 0x0

    .line 455
    .end local v4    # "rateStr":Ljava/lang/String;
    goto/16 :goto_38e

    .line 450
    .restart local v4    # "rateStr":Ljava/lang/String;
    :catch_2d9
    move-exception v6

    .line 451
    .restart local v6    # "nfe":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid statslog sampling rate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 455
    .end local v4    # "rateStr":Ljava/lang/String;
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2f3
    const-string v6, "--package-name="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30d

    .line 456
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    if-nez v4, :cond_307

    .line 459
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    goto/16 :goto_38e

    .line 457
    :cond_307
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 460
    :cond_30d
    const-string v6, "--usap-pool-enabled="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_324

    .line 461
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    .line 462
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolEnabled:Z

    .line 463
    const/4 v3, 0x0

    goto/16 :goto_38e

    .line 464
    :cond_324
    const-string v6, "--is-top-app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32f

    .line 465
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    goto :goto_38e

    .line 466
    :cond_32f
    const-string v6, "--disabled-compat-changes="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35b

    .line 467
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    if-nez v4, :cond_355

    .line 470
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 471
    .local v4, "params":[Ljava/lang/String;
    array-length v6, v4

    .line 472
    .local v6, "length":I
    new-array v7, v6, [J

    iput-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    .line 473
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_345
    if-ge v7, v6, :cond_354

    .line 474
    iget-object v9, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    aget-object v10, v4, v7

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v9, v7

    .line 473
    add-int/lit8 v7, v7, 0x1

    goto :goto_345

    .line 476
    .end local v4    # "params":[Ljava/lang/String;
    .end local v6    # "length":I
    .end local v7    # "i":I
    :cond_354
    goto :goto_38e

    .line 468
    :cond_355
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 476
    :cond_35b
    const-string v6, "--pkg-data-info-map"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36a

    .line 477
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;

    goto :goto_38e

    .line 478
    :cond_36a
    const-string v6, "--allowlisted-data-info-map"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_379

    .line 479
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;

    goto :goto_38e

    .line 480
    :cond_379
    const-string v6, "--bind-mount-storage-dirs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_384

    .line 481
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    goto :goto_38e

    .line 482
    :cond_384
    const-string v6, "--bind-mount-data-dirs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_391

    .line 483
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    .line 291
    .end local v5    # "arg":Ljava/lang/String;
    :goto_38e
    add-int/2addr v1, v8

    goto/16 :goto_4

    .line 485
    .restart local v5    # "arg":Ljava/lang/String;
    :cond_391
    move-object v0, v5

    .line 492
    .end local v5    # "arg":Ljava/lang/String;
    :cond_392
    :goto_392
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    if-eqz v5, :cond_3a2

    .line 493
    if-gt p2, v1, :cond_39a

    goto/16 :goto_40c

    .line 494
    :cond_39a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --boot-completed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 496
    :cond_3a2
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-nez v5, :cond_40a

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-eqz v5, :cond_3ab

    goto :goto_40a

    .line 500
    :cond_3ab
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    if-eqz v5, :cond_3ba

    .line 501
    if-gt p2, v1, :cond_3b2

    goto :goto_40c

    .line 502
    :cond_3b2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --preload-package."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 505
    :cond_3ba
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-eqz v5, :cond_3c9

    .line 506
    if-gt p2, v1, :cond_3c1

    goto :goto_40c

    .line 507
    :cond_3c1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --preload-app."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 510
    :cond_3c9
    if-eqz v3, :cond_40c

    .line 511
    if-nez v2, :cond_3ee

    .line 512
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected argument : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 513
    if-nez v0, :cond_3e1

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v6

    goto :goto_3e2

    :cond_3e1
    move-object v6, v0

    :goto_3e2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 516
    :cond_3ee
    sub-int v5, p2, v1

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    .line 517
    const/4 v6, 0x0

    .line 518
    .local v6, "i":I
    if-eqz v0, :cond_3fb

    .line 519
    aput-object v0, v5, v4

    .line 520
    add-int/lit8 v6, v6, 0x1

    .line 522
    :cond_3fb
    :goto_3fb
    sub-int v5, p2, v1

    if-ge v6, v5, :cond_40c

    .line 523
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 522
    add-int/lit8 v6, v6, 0x1

    goto :goto_3fb

    .line 497
    .end local v6    # "i":I
    :cond_40a
    :goto_40a
    if-gt p2, v1, :cond_431

    .line 527
    :cond_40c
    :goto_40c
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-eqz v5, :cond_430

    .line 528
    const/4 v5, 0x0

    .line 529
    .local v5, "seenChildSocketArg":Z
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    array-length v7, v6

    :goto_414
    if-ge v4, v7, :cond_425

    aget-object v8, v6, v4

    .line 530
    .local v8, "arg":Ljava/lang/String;
    const-string v9, "--zygote-socket="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_422

    .line 531
    const/4 v5, 0x1

    .line 532
    goto :goto_425

    .line 529
    .end local v8    # "arg":Ljava/lang/String;
    :cond_422
    add-int/lit8 v4, v4, 0x1

    goto :goto_414

    .line 535
    :cond_425
    :goto_425
    if-eqz v5, :cond_428

    goto :goto_430

    .line 536
    :cond_428
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "--start-child-zygote specified without --zygote-socket="

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 540
    .end local v5    # "seenChildSocketArg":Z
    :cond_430
    :goto_430
    return-void

    .line 498
    :cond_431
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --query-abi-list."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

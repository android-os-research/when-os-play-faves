.class public Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdpSyntheticPasswordManager"
.end annotation


# instance fields
.field public spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field public final synthetic this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method public static synthetic $r8$lambda$U79uhHfJQuEjRQSUakV5LmnDph8(ILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->lambda$getSecureMode$0(ILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSecureMode(Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->getSecureMode(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSdpMdfppMode(Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->isSdpMdfppMode(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSpecificProcessRequired(Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->isSpecificProcessRequired(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/SyntheticPasswordManager;)V
    .registers 3

    .line 2729
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2730
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    return-void
.end method

.method public static synthetic lambda$getSecureMode$0(ILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Integer;
    .registers 2

    .line 2960
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockSettingsInternal;->getSecureMode(I)I

    move-result p0

    .line 2959
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$isSpEnabledSystemUser$1(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/lang/Boolean;
    .registers 2

    .line 3000
    invoke-virtual {p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSyntheticPasswordEnabledSystemUser(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final adjustCredentialType(II)I
    .registers 6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    .line 3047
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$fgetmStorage(Lcom/android/server/locksettings/SyntheticPasswordManager;)Lcom/android/server/locksettings/LockSettingsStorage;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-string/jumbo v2, "lockscreen.password_type"

    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int p0, v0

    .line 3049
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    move-result p2

    if-eqz p2, :cond_1b

    const/4 p0, 0x4

    return p0

    .line 3052
    :cond_1b
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityNumericPin(I)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x3

    return p0

    :cond_23
    return p1
.end method

.method public final cacheSecureMode(II)V
    .registers 4

    .line 2738
    invoke-static {p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->cacheSecureMode(II)V

    .line 2739
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2740
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v0

    const/4 p2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, p2

    const-string p1, "Cache - [ Secure Mode : %d, UserId : %d ]"

    .line 2739
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyntheticPasswordManager.SDP"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public varargs createSPBlob(Ljava/lang/String;[B[BJB[[B)[B
    .registers 14

    const/4 p0, 0x1

    if-ne p6, p0, :cond_d

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p7

    .line 3009
    invoke-static/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ[[B)[B

    move-result-object p0

    return-object p0

    .line 3013
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Make sure of input parameter"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createSyntheticPasswordBlobForked(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)V
    .registers 19

    .line 2754
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isSdpMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2755
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->createSyntheticPasswordBlobSpecific(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)V

    goto :goto_17

    :cond_a
    move-object v0, p0

    .line 2759
    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$mcreateSyntheticPasswordBlob(Lcom/android/server/locksettings/SyntheticPasswordManager;JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    :goto_17
    return-void
.end method

.method public final createSyntheticPasswordBlobSpecific(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)V
    .registers 23

    move/from16 v0, p3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    if-ne v0, v1, :cond_9

    goto :goto_e

    .line 2773
    :cond_9
    invoke-static/range {p4 .. p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-$$Nest$fgetmSyntheticPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v3

    goto :goto_12

    .line 2771
    :cond_e
    :goto_e
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getEscrowSecret()[B

    move-result-object v3

    :goto_12
    move-object v6, v3

    .line 2777
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isSdpMdfppMode()Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_31

    .line 2778
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    new-array v11, v2, [[B

    .line 2779
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getAAD()[B

    move-result-object v3

    aput-object v3, v11, v12

    move-object v4, p0

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    .line 2778
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJB[[B)[B

    move-result-object v3

    goto :goto_41

    .line 2782
    :cond_31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    new-array v11, v12, [[B

    move-object v4, p0

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    .line 2781
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJB[[B)[B

    move-result-object v3

    .line 2784
    :goto_41
    array-length v4, v3

    const/16 v5, 0x13

    add-int/2addr v4, v5

    new-array v8, v4, [B

    const/4 v4, 0x3

    .line 2785
    aput-byte v4, v8, v12

    .line 2786
    aput-byte v0, v8, v2

    .line 2787
    aput-byte v2, v8, v1

    .line 2788
    invoke-static {v8, v4, v5, v12}, Ljava/util/Arrays;->fill([BIIB)V

    .line 2789
    array-length v0, v3

    invoke-static {v3, v12, v8, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    .line 2790
    iget-object v6, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-string/jumbo v7, "spblob"

    move-wide v9, p1

    move/from16 v11, p8

    invoke-static/range {v6 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$msaveState(Lcom/android/server/locksettings/SyntheticPasswordManager;Ljava/lang/String;[BJI)V

    return-void
.end method

.method public varargs decryptSPBlob(Ljava/lang/String;[B[BB[[B)[B
    .registers 6

    const/4 p0, 0x1

    if-ne p4, p0, :cond_8

    .line 3023
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B[[B)[B

    move-result-object p0

    return-object p0

    .line 3027
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Make sure of input parameter"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public decryptSPBlobV1(Ljava/lang/String;[B[BB)[B
    .registers 5

    const/4 p0, 0x1

    if-ne p4, p0, :cond_8

    .line 3037
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0

    .line 3040
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Make sure of input parameter"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deleteSecureMode(I)V
    .registers 3

    .line 2745
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deleteSecureMode(I)V

    .line 2746
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2747
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "Delete - [ Secure Mode : X, UserId : %d ]"

    .line 2746
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyntheticPasswordManager.SDP"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public final getHandleName(J)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v1, "synthetic_password_"

    aput-object v1, p0, v0

    .line 2734
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const-string p1, "%s%x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSecureMode(I)I
    .registers 8

    const-string v0, "SyntheticPasswordManager.SDP"

    const/4 v1, -0x1

    .line 2936
    :try_start_3
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->getSecureMode(I)I

    move-result v2
    :try_end_7
    .catch Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException; {:try_start_3 .. :try_end_7} :catch_8

    goto :goto_23

    :catch_8
    move-exception v2

    .line 2939
    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverSupported()Z

    move-result v3

    if-nez v3, :cond_22

    .line 2940
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_22

    .line 2941
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_22
    move v2, v1

    :goto_23
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v1, :cond_6b

    .line 2957
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverSupported()Z

    move-result v2

    if-nez v2, :cond_6a

    .line 2958
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->isSpecificProcessRequired(I)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 2959
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$mgetLockSettingsInternal(Lcom/android/server/locksettings/SyntheticPasswordManager;)Ljava/util/Optional;

    move-result-object v2

    new-instance v5, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 2960
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_6b

    .line 2962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No secure mode for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    move v2, v3

    goto :goto_6b

    :cond_6a
    move v2, v4

    .line 2968
    :cond_6b
    :goto_6b
    invoke-virtual {p0, p1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->cacheSecureMode(II)V

    .line 2969
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_8c

    new-array p0, v3, [Ljava/lang/Object;

    .line 2970
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p0, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p0, v1

    const-string v5, "Get - [ Secure Mode : %d, UserId : %d ]"

    .line 2969
    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    new-array p0, v3, [Ljava/lang/Object;

    .line 2972
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "Secure mode for user %d = %d"

    .line 2971
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final isSdpMdfppMode(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final isSdpUser(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final isSpBlobSpecific(JI)Z
    .registers 7

    .line 2794
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->isSpecificProcessRequired(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2797
    :cond_8
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-string/jumbo v0, "spblob"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$mloadState(Lcom/android/server/locksettings/SyntheticPasswordManager;Ljava/lang/String;JI)[B

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 2798
    array-length p1, p0

    const/16 p2, 0x13

    if-ge p1, p2, :cond_19

    goto :goto_3a

    .line 2801
    :cond_19
    aget-byte p1, p0, v1

    const/4 p3, 0x1

    if-lt p1, p3, :cond_3a

    const/4 v0, 0x3

    if-le p1, v0, :cond_22

    goto :goto_3a

    .line 2806
    :cond_22
    aget-byte p1, p0, p3

    if-ltz p1, :cond_3a

    const/4 v2, 0x2

    if-le p1, v2, :cond_2a

    goto :goto_3a

    .line 2812
    :cond_2a
    aget-byte p1, p0, v2

    if-eq p1, p3, :cond_2f

    return v1

    :cond_2f
    :goto_2f
    if-ge v0, p2, :cond_39

    .line 2817
    aget-byte p1, p0, v0

    if-eqz p1, :cond_36

    return v1

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_39
    return p3

    :cond_3a
    :goto_3a
    return v1
.end method

.method public final isSpEnabledSystemUser(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final isSpecificProcessRequired(I)Z
    .registers 4

    .line 2993
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpecificProcessRequired : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    return v0
.end method

.method public pbkdf2([B[BII)[B
    .registers 5

    .line 2925
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->PBKDF2([B[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public final postDeleteState(Ljava/lang/String;I)V
    .registers 3

    const-string/jumbo p0, "pwd"

    .line 3089
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 3090
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deleteCredentialType(I)V

    :cond_c
    return-void
.end method

.method public final postReadOrWriteState(Ljava/lang/String;[BI)V
    .registers 6

    if-eqz p2, :cond_44

    .line 3067
    array-length v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_7

    goto :goto_44

    :cond_7
    const-string/jumbo v0, "pwd"

    .line 3070
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 p1, 0x0

    .line 3072
    invoke-static {p2, p1, v1}, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->bytesToInt([BII)I

    move-result p1

    .line 3071
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->adjustCredentialType(II)I

    move-result p0

    .line 3073
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->validateCredentialType(I)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 3074
    invoke-static {p3, p0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->cacheCredentialType(II)V

    .line 3075
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Credential type for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyntheticPasswordManager.SDP"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 3077
    :cond_41
    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deleteCredentialType(I)V

    :cond_44
    :goto_44
    return-void
.end method

.method public final unwrapSyntheticPasswordBlobForked(JB[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 17

    move-object v0, p0

    move v7, p7

    .line 2827
    invoke-virtual {p0, p7}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->isSdpMdfppMode(I)Z

    move-result v1

    if-nez v1, :cond_1c

    move-wide v1, p1

    invoke-virtual {p0, p1, p2, p7}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->isSpBlobSpecific(JI)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_1d

    .line 2831
    :cond_10
    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$munwrapSyntheticPasswordBlob(Lcom/android/server/locksettings/SyntheticPasswordManager;JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    return-object v0

    :cond_1c
    move-wide v1, p1

    .line 2828
    :goto_1d
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->unwrapSyntheticPasswordBlobSpecific(JB[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    return-object v0
.end method

.method public final unwrapSyntheticPasswordBlobSpecific(JB[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 27

    move-object/from16 v6, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p7

    .line 2837
    iget-object v0, v6, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-string/jumbo v1, "spblob"

    move-wide/from16 v10, p1

    invoke-static {v0, v1, v10, v11, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$mloadState(Lcom/android/server/locksettings/SyntheticPasswordManager;Ljava/lang/String;JI)[B

    move-result-object v0

    const/4 v12, 0x0

    if-nez v0, :cond_17

    return-object v12

    :cond_17
    const/4 v13, 0x0

    .line 2841
    aget-byte v14, v0, v13

    const/4 v15, 0x1

    if-lt v14, v15, :cond_17b

    const/4 v5, 0x3

    if-gt v14, v5, :cond_17b

    .line 2846
    aget-byte v1, v0, v15

    if-ne v1, v7, :cond_173

    const/4 v4, 0x2

    if-ne v14, v15, :cond_37

    .line 2856
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    .line 2857
    invoke-static {v0, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 2856
    invoke-static {v1, v0, v8}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v0

    :goto_34
    move-object v5, v0

    move v15, v4

    goto :goto_91

    :cond_37
    const/16 v1, 0x13

    if-ne v14, v4, :cond_4b

    .line 2859
    aget-byte v2, v0, v4

    .line 2862
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v3

    array-length v5, v0

    .line 2863
    invoke-static {v0, v1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 2861
    invoke-virtual {v6, v3, v0, v8, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->decryptSPBlobV1(Ljava/lang/String;[B[BB)[B

    move-result-object v0

    goto :goto_34

    .line 2866
    :cond_4b
    aget-byte v5, v0, v4

    .line 2868
    invoke-virtual {v6, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->isSdpMdfppMode(I)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 2869
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    .line 2870
    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    new-array v1, v15, [[B

    .line 2871
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getAAD()[B

    move-result-object v0

    aput-object v0, v1, v13

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p4

    move v15, v4

    move v4, v5

    move-object/from16 v5, v17

    .line 2869
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[BB[[B)[B

    move-result-object v0

    goto :goto_90

    :cond_75
    move v15, v4

    .line 2874
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    .line 2875
    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    new-array v4, v13, [[B

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p4

    move-object/from16 v16, v4

    move v4, v5

    move-object/from16 v5, v16

    .line 2873
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[BB[[B)[B

    move-result-object v0

    :goto_90
    move-object v5, v0

    :goto_91
    const-string v0, "SyntheticPasswordManager"

    if-nez v5, :cond_aa

    .line 2880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to decrypt SP for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    .line 2884
    :cond_aa
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getSecureMode()I

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_b7

    if-eq v14, v15, :cond_b5

    if-ne v14, v2, :cond_b7

    :cond_b5
    const/4 v3, 0x1

    goto :goto_b8

    :cond_b7
    move v3, v13

    :goto_b8
    if-eqz v3, :cond_bb

    move v14, v15

    .line 2892
    :cond_bb
    new-instance v4, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;

    invoke-direct {v4, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken-IA;)V

    .line 2893
    invoke-virtual {v4, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->setSecureMode(I)V

    .line 2894
    new-instance v13, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v13, v14, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(BLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;)V

    const/4 v4, 0x1

    if-eq v7, v4, :cond_d2

    if-ne v7, v15, :cond_ce

    goto :goto_d2

    .line 2903
    :cond_ce
    invoke-virtual {v13, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateDirectly([B)V

    goto :goto_f8

    .line 2897
    :cond_d2
    :goto_d2
    invoke-virtual {v13}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isSdpMdfppMode()Z

    move-result v4

    if-nez v4, :cond_f5

    iget-object v4, v6, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-static {v4, v13, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$mloadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v4

    if-nez v4, :cond_f5

    .line 2898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User is not escrowable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    .line 2901
    :cond_f5
    invoke-virtual {v13, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateFromEscrow([B)V

    :goto_f8
    if-nez v1, :cond_13e

    if-eqz v3, :cond_13c

    .line 2908
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v2, [Ljava/lang/Object;

    .line 2910
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v15

    const-string v2, "Revert to v2 SP original blob for user %d [ type : %d, prev : %d ]"

    .line 2908
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2911
    iget-object v0, v6, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const/4 v2, 0x0

    const-string/jumbo v1, "spblob"

    move-wide/from16 v3, p1

    move-object v12, v5

    move/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$msaveState(Lcom/android/server/locksettings/SyntheticPasswordManager;Ljava/lang/String;[BJI)V

    .line 2912
    iget-object v0, v6, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object v4, v13

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$mcreateSyntheticPasswordBlob(Lcom/android/server/locksettings/SyntheticPasswordManager;JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    goto :goto_16f

    :cond_13c
    move-object v12, v5

    goto :goto_16f

    :cond_13e
    move-object v12, v5

    if-ne v14, v15, :cond_16f

    .line 2916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade v2 SP blob for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object v4, v13

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 2917
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->createSyntheticPasswordBlobSpecific(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)V

    .line 2920
    :cond_16f
    :goto_16f
    invoke-static {v12}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    return-object v13

    .line 2847
    :cond_173
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid blob type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2844
    :cond_17b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown blob version"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

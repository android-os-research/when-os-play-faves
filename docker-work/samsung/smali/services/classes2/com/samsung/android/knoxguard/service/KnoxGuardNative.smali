.class public Lcom/samsung/android/knoxguard/service/KnoxGuardNative;
.super Ljava/lang/Object;
.source "KnoxGuardNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    }
.end annotation


# static fields
.field public static KGTA_FAILED:I = -0x3e8

.field public static KGTA_PARAM_DEFAULT:I = 0x0

.field public static KG_CMD_CHECKING:I = 0x12

.field public static KG_CMD_GENERATE_DH_REQUEST:I = 0x4

.field public static KG_CMD_GENERATE_HOTP_CHANLLENGE:I = 0x3

.field public static KG_CMD_GET_CLIENT_DATA:I = 0xf

.field public static KG_CMD_GET_KGID:I = 0x10

.field public static KG_CMD_GET_LOCK_ACTION:I = 0xd

.field public static KG_CMD_GET_LOCK_OBJECT:I = 0xc

.field public static KG_CMD_GET_NONCE:I = 0x15

.field public static KG_CMD_GET_POLICY:I = 0x8

.field public static KG_CMD_GET_STATUS:I = 0x1

.field public static KG_CMD_GET_TA_INFO:I = 0x16

.field public static KG_CMD_HDM_STATUS:I = 0x13

.field public static KG_CMD_LOCK:I = 0x9

.field public static KG_CMD_PROCESS_KG_ROT:I = 0x14

.field public static KG_CMD_PROVISION_CERT:I = 0x17

.field public static KG_CMD_RPMB_RESET:I = 0x11

.field public static KG_CMD_SET_CLIENT_DATA:I = 0xe

.field public static KG_CMD_UNLOCK:I = 0xa

.field public static KG_CMD_VERIFY_COMPLETETOKEN:I = 0xb

.field public static KG_CMD_VERIFY_DH_RESPONSE:I = 0x5

.field public static KG_CMD_VERIFY_HOTP_SECRET:I = 0x6

.field public static KG_CMD_VERIFY_POLICY:I = 0x7

.field public static KG_CMD_VERIFY_REGISTRATION_INFO:I = 0x2

.field public static TAG:Ljava/lang/String; = "KnoxGuardTANative"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b2s([B)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_8

    .line 540
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static generateHotpDHRequest()Ljava/lang/String;
    .registers 1

    .line 117
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->generateHotpDHRequestRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_8
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateHotpDHRequestRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 381
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_generateHotpDhRequest(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getClientData()Ljava/lang/String;
    .registers 4

    .line 240
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getClientDataRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 244
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClientData - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientDataRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 501
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getClientData(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getHdmStatus()Ljava/lang/String;
    .registers 4

    .line 276
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getHdmStatusRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHdmStatus - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHdmStatusRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 509
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getHdmStatus(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getHotpChallenge()Ljava/lang/String;
    .registers 4

    .line 141
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getHotpChallengeRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHotpChallenge - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHotpChallengeRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 401
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getHotpChallenge(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getKGID()Ljava/lang/String;
    .registers 4

    .line 252
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getKGIDRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 256
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKGID - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKGIDRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 505
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getKGID(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getKGPolicy()Ljava/lang/String;
    .registers 1

    .line 92
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getKGPolicyRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->getStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKGPolicyRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 5

    .line 355
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->readData()I

    move-result v1

    .line 358
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_25

    .line 359
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readData failed error "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 362
    :cond_25
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getPolicyRes()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getSignature()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_41

    if-nez v0, :cond_32

    goto :goto_41

    .line 369
    :cond_32
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getKGPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0

    .line 365
    :cond_41
    :goto_41
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v1, "GetKG Policy : policy or signature  null "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static getLockAction()Ljava/lang/String;
    .registers 4

    .line 216
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getLockActionRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 220
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockAction - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLockActionRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 493
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockAction(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getLockObject()[B
    .registers 4

    .line 228
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getLockObjectRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockObject - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    return-object v0
.end method

.method public static getLockObjectRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 497
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockObject(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 288
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getNonceRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 292
    :cond_8
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNonce - errwrapper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNonceRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 3

    .line 532
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getNonce(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 393
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static getTAState()I
    .registers 2

    .line 80
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAStateRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_9

    .line 82
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v0

    .line 84
    :cond_9
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v1, :cond_f

    .line 85
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    :cond_f
    return v1
.end method

.method public static getTAStateRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 351
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I
    .registers 8

    .line 203
    invoke-static/range {p0 .. p7}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->lockScreenRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_9

    .line 205
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    .line 207
    :cond_9
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lockScreen - errwrapper = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez p1, :cond_27

    .line 209
    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    :cond_27
    return p1
.end method

.method public static lockScreenRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 17

    .line 446
    new-instance v8, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 447
    invoke-static {v8}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->serialize(Ljava/lang/Object;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez p0, :cond_1d

    .line 449
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v2, "lockScreen: empty actionName"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1d
    if-nez v0, :cond_27

    .line 453
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v2, "lockScreen: empty serialzeObj"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 457
    :cond_27
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_lockScreen(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 5

    .line 397
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {v0, p0, p1, p2, p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_provisionCert(I[B[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static resetRPMB()I
    .registers 1

    const/4 v0, 0x0

    .line 300
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->resetRPMB(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static resetRPMB(Ljava/lang/String;)I
    .registers 4

    .line 307
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_9

    .line 309
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    .line 311
    :cond_9
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetRPMB - errwrapper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_28

    .line 313
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    :cond_28
    return v0
.end method

.method public static resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 2

    .line 517
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_resetRPMB(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static s2b(Ljava/lang/String;)[B
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 549
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static serialize(Ljava/lang/Object;)[B
    .registers 6

    const-string v0, "Serialize outstream failed IO exception"

    const-string v1, "Serialize failed IO exception"

    if-nez p0, :cond_a

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_a
    const/4 v2, 0x0

    .line 469
    :try_start_b
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_3a
    .catchall {:try_start_b .. :try_end_10} :catchall_37

    .line 470
    :try_start_10
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_34
    .catchall {:try_start_10 .. :try_end_15} :catchall_31

    .line 471
    :try_start_15
    invoke-virtual {v4, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 472
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_2f
    .catchall {:try_start_15 .. :try_end_1c} :catchall_4f

    .line 478
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_25

    .line 480
    :catch_20
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_25
    :try_start_25
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_4e

    .line 485
    :catch_29
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :catch_2f
    move-exception p0

    goto :goto_3d

    :catchall_31
    move-exception p0

    move-object v4, v2

    goto :goto_50

    :catch_34
    move-exception p0

    move-object v4, v2

    goto :goto_3d

    :catchall_37
    move-exception p0

    move-object v4, v2

    goto :goto_51

    :catch_3a
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    .line 475
    :goto_3d
    :try_start_3d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4f

    if-eqz v3, :cond_4b

    .line 478
    :try_start_42
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4b

    .line 480
    :catch_46
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    if-eqz v4, :cond_4e

    goto :goto_25

    :cond_4e
    :goto_4e
    return-object v2

    :catchall_4f
    move-exception p0

    :goto_50
    move-object v2, v3

    :goto_51
    if-eqz v2, :cond_5c

    .line 478
    :try_start_53
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5c

    .line 480
    :catch_57
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    if-eqz v4, :cond_67

    .line 483
    :try_start_5e
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_67

    .line 485
    :catch_62
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_67
    :goto_67
    throw p0
.end method

.method public static setClientData(Ljava/lang/String;)I
    .registers 4

    .line 333
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->setClientDataRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_9

    .line 335
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    .line 337
    :cond_9
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClientData - errwrapper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_28

    .line 339
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    :cond_28
    return v0
.end method

.method public static setClientDataRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 3

    if-nez p0, :cond_a

    .line 526
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setClientData fail: empty input"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_a
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_setClientData(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static native tz_generateHotpDhRequest(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getClientData(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getHdmStatus(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getHotpChallenge(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getKGID(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getKGPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getLockAction(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getLockObject(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getNonce(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_lockScreen(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_provisionCert(I[B[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_resetRPMB(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_setClientData(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_unlockScreen(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyCompleteToken(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyHOTPPin(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyHOTPsecret(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyHotpDhChallenge(I[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyKgRot(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyRegistrationInfo(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static unlockScreen()I
    .registers 4

    .line 190
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->unlockScreenRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_9

    .line 192
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v0

    .line 194
    :cond_9
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlockScreen - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v1, :cond_28

    .line 196
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    :cond_28
    return v1
.end method

.method public static unlockScreenRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 442
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_unlockScreen(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static userChecking()I
    .registers 4

    .line 320
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->userCheckingRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_9

    .line 322
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v0

    .line 324
    :cond_9
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userChecking - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v1, :cond_28

    .line 326
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    :cond_28
    return v1
.end method

.method public static userCheckingRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 521
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static verifyCompleteToken(Ljava/lang/String;)I
    .registers 4

    .line 104
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyCompleteTokenRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_9

    .line 106
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    .line 108
    :cond_9
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyCompleteToken - errwrapper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_28

    .line 110
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    :cond_28
    return v0
.end method

.method public static verifyCompleteTokenRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 2

    if-nez p0, :cond_c

    .line 374
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyCompleteToken input string is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 377
    :cond_c
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyCompleteToken(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static verifyHOTPPin(Ljava/lang/String;)I
    .registers 4

    .line 153
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_9

    .line 155
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    .line 157
    :cond_9
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyHOTPPin - errwrapper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_28

    .line 159
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    :cond_28
    return v0
.end method

.method public static verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 2

    if-nez p0, :cond_c

    .line 406
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyHotpPin fail, input null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 409
    :cond_c
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHOTPPin(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static verifyHOTPsecret(Ljava/lang/String;)I
    .registers 2

    if-nez p0, :cond_d

    .line 65
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyHOTPsecret input string is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    .line 68
    :cond_d
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPsecretRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_16

    .line 70
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    .line 72
    :cond_16
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_1c

    .line 73
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    :cond_1c
    return v0
.end method

.method public static verifyHOTPsecretRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 2

    if-nez p0, :cond_c

    .line 344
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyHOTPsecret input string is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 347
    :cond_c
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHOTPsecret(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static verifyHotpDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 128
    invoke-static {p0, p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHotpDHChallengeRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_9

    .line 130
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    .line 132
    :cond_9
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "verifyHotpDHChallenge - errwrapper = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez p1, :cond_28

    .line 134
    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    :cond_28
    return p1
.end method

.method public static verifyHotpDHChallengeRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 4

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    if-nez p2, :cond_7

    goto :goto_1a

    .line 389
    :cond_7
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHotpDhChallenge(I[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0

    .line 386
    :cond_1a
    :goto_1a
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "verifyHotpDHChallenge failed: input null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static verifyKgRot()Ljava/lang/String;
    .registers 4

    .line 264
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyKgRotRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyKgRot - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static verifyKgRotRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 513
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyKgRot(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 178
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyPolicyRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_8
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPolicy - errwrapper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static verifyPolicyRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4a

    if-nez p1, :cond_6

    goto :goto_4a

    .line 425
    :cond_6
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 427
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "verifyPolicy failed, empty return from TA"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 430
    :cond_1f
    iget-object v2, v1, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    move-result-object v3

    .line 433
    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->saveData(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 434
    sget p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I

    if-eq p0, p1, :cond_49

    .line 435
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "store the policy to EFS failed ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_49
    return-object v1

    .line 422
    :cond_4a
    :goto_4a
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "verifyPolicy failed, empty input"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 166
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyRegistrationInfoRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 170
    :cond_8
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyRegistrationInfo - errwrapper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static verifyRegistrationInfoRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 3

    if-eqz p0, :cond_14

    if-nez p1, :cond_5

    goto :goto_14

    .line 417
    :cond_5
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyRegistrationInfo(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0

    .line 414
    :cond_14
    :goto_14
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "verifyRegistrationInfo failed input null "

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

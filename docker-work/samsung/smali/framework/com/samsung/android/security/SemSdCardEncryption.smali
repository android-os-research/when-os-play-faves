.class public Lcom/samsung/android/security/SemSdCardEncryption;
.super Ljava/lang/Object;
.source "SemSdCardEncryption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/security/SemSdCardEncryption$Error;,
        Lcom/samsung/android/security/SemSdCardEncryption$EncryptionState;,
        Lcom/samsung/android/security/SemSdCardEncryption$Status;
    }
.end annotation


# static fields
.field public static final blacklist ADMIN_START:Ljava/lang/String; = "adminStart"

.field public static final blacklist CHECK_OTHER_DEVICE:Ljava/lang/String; = "OtherDevice"

.field private static final blacklist DEBUG:Z = true

.field public static final blacklist DECRYPT:I = 0x3

.field public static final blacklist ENCRYPT:I = 0x2

.field public static final blacklist ENCRYPT_FULL_OFF:I = 0x5

.field public static final blacklist ENCRYPT_FULL_ON:I = 0x4

.field public static final blacklist ENC_META_CHECK:I = 0x2b4

.field public static final blacklist ERROR_FEATURE_UNAVAILABLE:I = 0xc8

.field public static final blacklist ERR_INVALID_PARAMETER:I = 0xcb

.field public static final blacklist ERR_INVALID_PERMISSION:I = 0xcc

.field public static final blacklist ERR_NOK:I = 0xc9

.field public static final blacklist ERR_SD_NOT_MOUNTED:I = 0xca

.field public static final blacklist EXCL_MEDIA_OFF:I = 0x7

.field public static final blacklist EXCL_MEDIA_ON:I = 0x6

.field public static final blacklist INTERNAL_STORAGE_PATH:Ljava/lang/String; = "/mnt/sdcard"

.field private static final blacklist IS_SUPPORT_SDCARD_SLOT:Z

.field public static final blacklist MOVE_MOUNT:Ljava/lang/String; = "MoveMount"

.field private static final blacklist MSG_BASE:I = 0x0

.field private static final blacklist MSG_ERR_BASE:I = 0xc8

.field public static final blacklist NAME:Ljava/lang/String; = "DirEncryptService"

.field public static final blacklist OK:I = 0xd

.field public static final blacklist POLICY_ALREADY_SET:I = 0xa

.field public static final blacklist POLICY_CAN_NOT_BE_SET_UNDER_BUSY_STATE:I = 0xf

.field public static final blacklist POLICY_NOT_SAVED:I = 0x9

.field public static final blacklist POLICY_SAVED:I = 0x8

.field public static final blacklist SD_CARD_ENCRYPTION_ACTION:Ljava/lang/String; = "com.sec.app.action.START_SDCARD_ENCRYPTION"

.field public static blacklist SECURITY_POLICY_NOTIFICATION_ID:I = 0x0

.field public static final blacklist STATUS_BUSY:Ljava/lang/String; = "busy"

.field public static final blacklist STATUS_DONE:Ljava/lang/String; = "done"

.field public static final blacklist STATUS_FREE:Ljava/lang/String; = "free"

.field public static final blacklist STATUS_MOUNT:Ljava/lang/String; = "Mount"

.field private static final blacklist TAG:Ljava/lang/String; = "SemSdCardEncryption"

.field public static final blacklist VOLUME_STATE_HIDDEN:Ljava/lang/String; = "HiddenMount"

.field private static blacklist mPolicyChanged:Z


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

.field private blacklist m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/sdinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->IS_SUPPORT_SDCARD_SLOT:Z

    .line 66
    const v0, -0x35014542    # -8346975.0f

    sput v0, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    .line 160
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->mPolicyChanged:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mContext:Landroid/content/Context;

    .line 158
    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 159
    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    .line 166
    iput-object p1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mContext:Landroid/content/Context;

    .line 168
    new-instance v1, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 169
    const-string v1, "DirEncryptService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/security/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/security/IDirEncryptService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    .line 171
    const-string v2, "SemSdCardEncryption"

    if-nez v1, :cond_2a

    .line 172
    const-string v1, "Unable to get DirEncryptService instance."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_2a
    sget-boolean v1, Lcom/samsung/android/security/SemSdCardEncryption;->IS_SUPPORT_SDCARD_SLOT:Z

    if-nez v1, :cond_35

    .line 175
    const-string v1, "Dir Encryption not available"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    .line 178
    :cond_35
    return-void
.end method

.method public static blacklist isEncryptionFeatureEnabled()Z
    .registers 1

    .line 222
    sget-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->IS_SUPPORT_SDCARD_SLOT:Z

    if-eqz v0, :cond_6

    .line 223
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_6
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist encryptStorage(Z)I
    .registers 6
    .param p1, "state"    # Z

    .line 571
    const/16 v0, 0xc8

    .line 575
    .local v0, "result":I
    :try_start_2
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 577
    .local v1, "service":Landroid/os/IBinder;
    if-eqz v1, :cond_13

    .line 578
    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/storage/IStorageManager;->encryptExternalStorage(Z)I

    move-result v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_14

    move v0, v2

    .line 581
    .end local v1    # "service":Landroid/os/IBinder;
    :cond_13
    goto :goto_1c

    .line 579
    :catch_14
    move-exception v1

    .line 580
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "SemSdCardEncryption"

    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_1c
    return v0
.end method

.method public blacklist getAdditionalSpaceRequired()I
    .registers 5

    .line 634
    const/16 v0, 0xc8

    .line 636
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v1

    if-nez v1, :cond_9

    .line 637
    return v0

    .line 639
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v1, :cond_e

    .line 640
    return v0

    .line 643
    :cond_e
    :try_start_e
    invoke-interface {v1}, Lcom/samsung/android/security/IDirEncryptService;->getAdditionalSpaceRequired()I

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_14

    move v0, v1

    .line 646
    goto :goto_1c

    .line 644
    :catch_14
    move-exception v1

    .line 645
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "SemSdCardEncryption"

    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_1c
    return v0
.end method

.method public blacklist getCurrentStatus()I
    .registers 5

    .line 591
    const/16 v0, 0xc8

    .line 593
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v1

    if-nez v1, :cond_9

    .line 594
    return v0

    .line 596
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v1, :cond_e

    .line 597
    return v0

    .line 600
    :cond_e
    :try_start_e
    invoke-interface {v1}, Lcom/samsung/android/security/IDirEncryptService;->getCurrentStatus()I

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_14

    move v0, v1

    .line 603
    goto :goto_1c

    .line 601
    :catch_14
    move-exception v1

    .line 602
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "SemSdCardEncryption"

    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_1c
    return v0
.end method

.method public blacklist getCurrentUserID()I
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v0

    return v0
.end method

.method public blacklist getExternalSDvolFsUuid()Ljava/lang/String;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExternalSdPath()Ljava/lang/String;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKeyguardStoredPasswordQuality()I
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v0

    return v0
.end method

.method public blacklist getLastError()I
    .registers 5

    .line 613
    const/16 v0, 0xc8

    .line 615
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v1

    if-nez v1, :cond_9

    .line 616
    return v0

    .line 618
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v1, :cond_e

    .line 619
    return v0

    .line 622
    :cond_e
    :try_start_e
    invoke-interface {v1}, Lcom/samsung/android/security/IDirEncryptService;->getLastError()I

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_14

    move v0, v1

    .line 625
    goto :goto_1c

    .line 623
    :catch_14
    move-exception v1

    .line 624
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "SemSdCardEncryption"

    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_1c
    return v0
.end method

.method public blacklist getListener()Landroid/os/IVoldTaskListener;
    .registers 5

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 397
    return-object v1

    .line 399
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v0, :cond_d

    .line 400
    return-object v1

    .line 403
    :cond_d
    :try_start_d
    invoke-interface {v0}, Lcom/samsung/android/security/IDirEncryptService;->getListener()Landroid/os/IVoldTaskListener;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return-object v0

    .line 404
    :catch_12
    move-exception v0

    .line 405
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SemSdCardEncryption"

    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v0    # "re":Landroid/os/RemoteException;
    return-object v1
.end method

.method public blacklist getPolicyChanged()Z
    .registers 2

    .line 698
    sget-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->mPolicyChanged:Z

    return v0
.end method

.method public blacklist getSavedUserID()I
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getSavedUserID()I

    move-result v0

    return v0
.end method

.method public blacklist getUserDiff()Z
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getUserDiff()Z

    move-result v0

    return v0
.end method

.method public blacklist getVolumeState()Ljava/lang/String;
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isEncryptionSupported()Z
    .registers 2

    .line 235
    sget-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->IS_SUPPORT_SDCARD_SLOT:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentUserID()I

    move-result v0

    if-nez v0, :cond_c

    .line 236
    const/4 v0, 0x1

    return v0

    .line 238
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isExternalSDRemovable()Z
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->isExternalSDRemovable()Z

    move-result v0

    return v0
.end method

.method public whitelist isSdCardEncryped()Z
    .registers 5

    .line 656
    const/4 v0, 0x0

    .line 658
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v1, :cond_7

    .line 659
    const/4 v1, 0x0

    return v1

    .line 662
    :cond_7
    :try_start_7
    invoke-interface {v1}, Lcom/samsung/android/security/IDirEncryptService;->isSdCardEncryped()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_d

    move v0, v1

    .line 665
    goto :goto_15

    .line 663
    :catch_d
    move-exception v1

    .line 664
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "SemSdCardEncryption"

    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_15
    return v0
.end method

.method public blacklist isStorageCardEncryptionPoliciesApplied()Z
    .registers 5

    .line 517
    const/4 v0, 0x0

    .line 519
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v1

    if-nez v1, :cond_8

    .line 520
    return v0

    .line 522
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v1, :cond_d

    .line 523
    return v0

    .line 526
    :cond_d
    :try_start_d
    invoke-interface {v1}, Lcom/samsung/android/security/IDirEncryptService;->isStorageCardEncryptionPoliciesApplied()I

    move-result v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_18

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    move v0, v2

    .line 529
    goto :goto_20

    .line 527
    :catch_18
    move-exception v1

    .line 528
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "SemSdCardEncryption"

    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_20
    return v0
.end method

.method public blacklist mountVolume()Z
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z

    move-result v0

    return v0
.end method

.method public blacklist registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/security/IDirEncryptServiceListener;

    .line 188
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v0, :cond_5

    .line 189
    return-void

    .line 192
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Lcom/samsung/android/security/IDirEncryptService;->registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 195
    goto :goto_11

    .line 193
    :catch_9
    move-exception v0

    .line 194
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SemSdCardEncryption"

    const-string v2, "Unable to communicate with DirEncryptService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public blacklist setAdminPolicy(ZLjava/lang/String;)I
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "uuid"    # Ljava/lang/String;

    .line 479
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/samsung/android/security/SemSdCardEncryption;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setMountSDcardToHelper(Z)V
    .registers 5
    .param p1, "in"    # Z

    .line 376
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    if-nez v0, :cond_7

    .line 377
    return-void

    .line 379
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v0, :cond_c

    .line 380
    return-void

    .line 383
    :cond_c
    :try_start_c
    invoke-interface {v0, p1}, Lcom/samsung/android/security/IDirEncryptService;->setMountSDcardToHelper(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 386
    goto :goto_18

    .line 384
    :catch_10
    move-exception v0

    .line 385
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SemSdCardEncryption"

    const-string v2, "Unable to communicate with DirEncryptService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method public blacklist setNeedToCreateKey(Z)V
    .registers 5
    .param p1, "in"    # Z

    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    if-nez v0, :cond_7

    .line 357
    return-void

    .line 359
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v0, :cond_c

    .line 360
    return-void

    .line 363
    :cond_c
    :try_start_c
    invoke-interface {v0, p1}, Lcom/samsung/android/security/IDirEncryptService;->setNeedToCreateKey(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 366
    goto :goto_18

    .line 364
    :catch_10
    move-exception v0

    .line 365
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SemSdCardEncryption"

    const-string v2, "Unable to communicate with DirEncryptService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method public blacklist setPassword(Ljava/lang/String;)I
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .line 541
    const/16 v0, 0xc8

    .line 543
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    .line 544
    return v0
.end method

.method public blacklist setPolicyChanged(Z)V
    .registers 2
    .param p1, "in"    # Z

    .line 690
    sput-boolean p1, Lcom/samsung/android/security/SemSdCardEncryption;->mPolicyChanged:Z

    .line 691
    return-void
.end method

.method public blacklist setSavedUserID(I)V
    .registers 3
    .param p1, "in"    # I

    .line 318
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/security/DirEncryptionWrapper;->setSavedUserID(I)V

    .line 319
    return-void
.end method

.method public blacklist setSdCardEncryptionPolicy(IILjava/lang/String;)I
    .registers 8
    .param p1, "isPolicy"    # I
    .param p2, "status"    # I
    .param p3, "uuid"    # Ljava/lang/String;

    .line 484
    const-string v0, "SemSdCardEncryption"

    const/16 v1, 0xc8

    .line 486
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v2

    if-nez v2, :cond_b

    .line 487
    return v1

    .line 489
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v2, :cond_10

    .line 490
    return v1

    .line 493
    :cond_10
    :try_start_10
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/security/IDirEncryptService;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_16

    move v1, v2

    .line 496
    goto :goto_1c

    .line 494
    :catch_16
    move-exception v2

    .line 495
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSdCardEncryptionPolicy result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/16 v2, 0x8

    if-eq v1, v2, :cond_3b

    const/16 v2, 0xa

    if-ne v1, v2, :cond_44

    .line 500
    :cond_3b
    const-string/jumbo v2, "result : POLICY_SAVED || POLICY_ALREADY_SET"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->unmountSDCardByAdmin()V

    .line 504
    :cond_44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/security/SemSdCardEncryption;->setPolicyChanged(Z)V

    .line 506
    return v1
.end method

.method public blacklist setStorageCardEncryptionPolicy(I)I
    .registers 7
    .param p1, "encType"    # I

    .line 434
    const-string v0, "SemSdCardEncryption"

    const/16 v1, 0xc8

    .line 436
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v2

    if-nez v2, :cond_b

    .line 437
    return v1

    .line 439
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v2, :cond_10

    .line 440
    return v1

    .line 443
    :cond_10
    const/4 v3, 0x4

    const/4 v4, 0x7

    :try_start_12
    invoke-interface {v2, p1, v3, v4}, Lcom/samsung/android/security/IDirEncryptService;->setStorageCardEncryptionPolicy(III)I

    move-result v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_18

    move v1, v2

    .line 446
    goto :goto_1e

    .line 444
    :catch_18
    move-exception v2

    .line 445
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStorageCardEncryptionPolicy result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/16 v2, 0x8

    if-eq v1, v2, :cond_3d

    const/16 v2, 0xa

    if-ne v1, v2, :cond_46

    .line 451
    :cond_3d
    const-string/jumbo v2, "result : POLICY_SAVED || POLICY_ALREADY_SET"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->unmountSDCardByAdmin()V

    .line 455
    :cond_46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/security/SemSdCardEncryption;->setPolicyChanged(Z)V

    .line 457
    return v1
.end method

.method public blacklist setUserDiff(Z)V
    .registers 3
    .param p1, "in"    # Z

    .line 298
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/security/DirEncryptionWrapper;->setUserDiff(Z)V

    .line 299
    return-void
.end method

.method public blacklist unmountSDCardByAdmin()V
    .registers 4

    .line 675
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v0, :cond_5

    .line 676
    return-void

    .line 679
    :cond_5
    :try_start_5
    invoke-interface {v0}, Lcom/samsung/android/security/IDirEncryptService;->unmountSDCardByAdmin()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 682
    goto :goto_11

    .line 680
    :catch_9
    move-exception v0

    .line 681
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SemSdCardEncryption"

    const-string v2, "Unable to communicate with DirEncryptService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public blacklist unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/security/IDirEncryptServiceListener;

    .line 205
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Lcom/samsung/android/security/IDirEncryptService;

    if-nez v0, :cond_5

    .line 206
    return-void

    .line 209
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Lcom/samsung/android/security/IDirEncryptService;->unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 212
    goto :goto_11

    .line 210
    :catch_9
    move-exception v0

    .line 211
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SemSdCardEncryption"

    const-string v2, "Unable to communicate with DirEncryptService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

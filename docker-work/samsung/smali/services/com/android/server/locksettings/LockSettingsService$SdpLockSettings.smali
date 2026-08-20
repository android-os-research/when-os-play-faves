.class public Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdpLockSettings"
.end annotation


# instance fields
.field public service:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public static synthetic $r8$lambda$CdLv3sDN_0m4zFiq3b2iP0fSz-Y(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/lang/Long;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->lambda$setLockCredentialWithLegacyToken$7(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$N3uLqSKeXxD32sQcxMIEbpNuTHQ(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->lambda$onSyntheticPasswordDeserted$4(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UNoSAEPY9sKt9GE6mU8mxnpQcCY(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->lambda$prepareLegacyResetRequest$5(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c0g6PyqawpEfpPw7BWMVzLJoBcY(Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->lambda$migratePasswordHashForEnterpriseUser$9(Lcom/android/internal/widget/LockscreenCredential;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ei0UYQJyTLPvLW5xsF3iV9R_3zY(IILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->lambda$onSyntheticPasswordReWrapped$1(IILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ffiOI9hq7cocG6btzyQT-vU7Xz0(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->lambda$finalizeLegacyResetRequest$6(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o8bc1xt_RGvc5pEwmAs5JZsgcds(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)[B
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->lambda$setLockCredentialWithLegacyToken$8(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t_-ytMjiIFjfHJ_uOCFX5nRC2Jc([BILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->lambda$onSyntheticPasswordVerified$3([BILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wg1MM3yp8fXnPgN6G_pAwhwlM0E(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->lambda$onSyntheticPasswordInitialized$2(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yAadLVCUrkAmeSfnvLNPx7jz0RI(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->lambda$migrateWithAuthToken$0(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 6504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6505
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    return-void
.end method

.method public static synthetic lambda$finalizeLegacyResetRequest$6(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 2

    .line 6746
    invoke-virtual {p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onLegacyResetCredentialFinalized(I)V

    return-void
.end method

.method private synthetic lambda$migratePasswordHashForEnterpriseUser$9(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 3

    .line 6820
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    .line 6821
    :try_start_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mupdatePasswordHistory(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    if-eqz p1, :cond_e

    .line 6822
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    if-eqz p1, :cond_1a

    .line 6820
    :try_start_12
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
.end method

.method public static synthetic lambda$migrateWithAuthToken$0(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)V
    .registers 5

    .line 6533
    invoke-virtual {p2, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;->getMasterKeyVersion(I)I

    move-result v0

    if-nez v0, :cond_33

    .line 6535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MK migration required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6536
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v0

    .line 6537
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKeyPersonalized()[B

    move-result-object p1

    .line 6536
    invoke-virtual {p2, v0, p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;->updateMasterKey([B[BI)Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 p1, 0x1

    .line 6538
    invoke-virtual {p2, p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;->setMasterKeyVersion(II)V

    const-string p0, "MK migration success!"

    .line 6540
    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method public static synthetic lambda$onSyntheticPasswordDeserted$4(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 3

    .line 6603
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyDeserted([BI)V

    return-void
.end method

.method public static synthetic lambda$onSyntheticPasswordInitialized$2(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 3

    .line 6567
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyInitialized([BI)V

    return-void
.end method

.method public static synthetic lambda$onSyntheticPasswordReWrapped$1(IILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 3

    .line 6552
    invoke-virtual {p2, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onPasswordChanged(II)V

    return-void
.end method

.method public static synthetic lambda$onSyntheticPasswordVerified$3([BILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 3

    .line 6584
    invoke-virtual {p2, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyAcquired([BI)V

    return-void
.end method

.method public static synthetic lambda$prepareLegacyResetRequest$5(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 2

    .line 6741
    invoke-virtual {p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onLegacyResetCredentialStarted(I)V

    return-void
.end method

.method public static synthetic lambda$setLockCredentialWithLegacyToken$7(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/lang/Long;
    .registers 2

    .line 6756
    invoke-virtual {p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getTokenHandle(I)J

    move-result-wide p0

    .line 6755
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$setLockCredentialWithLegacyToken$8(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)[B
    .registers 2

    .line 6762
    invoke-virtual {p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->getResetTokenSafe(I)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkSdpEngineListStatus()Z
    .registers 8

    .line 6652
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/users/sdp_engine_list.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6653
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const-string p0, "LockSettingsService"

    const-string v0, "Failed to get engine list due to non-existence..."

    .line 6654
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6657
    :cond_16
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 6659
    :try_start_1b
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_a1

    .line 6661
    :try_start_1f
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 6662
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v2, "UTF-8"

    .line 6663
    invoke-interface {v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6667
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_95

    const/4 v3, 0x1

    move v4, v1

    move v5, v3

    :goto_33
    if-nez v4, :cond_8c

    if-eq v2, v3, :cond_8c

    const/4 v6, 0x2

    if-eq v2, v6, :cond_3b

    goto :goto_84

    .line 6672
    :cond_3b
    :try_start_3b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "engine"

    .line 6673
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    const-string v2, "alias"

    .line 6674
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    const-string/jumbo v2, "id"

    .line 6675
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 6676
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 6678
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 6677
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_76

    .line 6680
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_76

    move v2, v3

    goto :goto_77

    :cond_76
    move v2, v1

    :goto_77
    move v5, v2

    :cond_78
    if-eqz v5, :cond_7c

    move v4, v3

    goto :goto_84

    .line 6685
    :cond_7c
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Suspicious of damaged file..."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6692
    :cond_84
    :goto_84
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_88
    .catchall {:try_start_3b .. :try_end_88} :catchall_89

    goto :goto_33

    :catchall_89
    move-exception v0

    move v1, v4

    goto :goto_96

    :cond_8c
    if-eqz p0, :cond_ab

    .line 6694
    :try_start_8e
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_ab

    :catch_92
    move-exception p0

    move v1, v4

    goto :goto_a2

    :catchall_95
    move-exception v0

    :goto_96
    if-eqz p0, :cond_a0

    .line 6659
    :try_start_98
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_a0

    :catchall_9c
    move-exception p0

    :try_start_9d
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a0
    :goto_a0
    throw v0
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a1} :catch_a1

    :catch_a1
    move-exception p0

    :goto_a2
    const-string v0, "LockSettingsService.SDP"

    const-string/jumbo v2, "read sdp engine failed."

    .line 6695
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v1

    :cond_ab
    :goto_ab
    return v4
.end method

.method public checkSdpStatus()Z
    .registers 3

    .line 6625
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misDeviceOwner(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->updateDeviceOwnerStatus(Z)V

    .line 6628
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->checkSdpEngineListStatus()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 6629
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->getSdpManager()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 6631
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SdpEngineList Exists, Sdp service now ready [ res : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    goto :goto_48

    :cond_43
    const-string p0, "SdpEngineList is Empty."

    .line 6633
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    :goto_48
    return v1
.end method

.method public final finalizeLegacyResetRequest(I)V
    .registers 3

    .line 6745
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->getSdpManager()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getSdpManager()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/knox/dar/sdp/SdpManagerImpl;",
            ">;"
        }
    .end annotation

    .line 6515
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 6516
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mgetDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    .line 6518
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getSdpManagerInternal()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/knox/dar/sdp/SdpManagerInternal;",
            ">;"
        }
    .end annotation

    .line 6509
    const-class p0, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    .line 6511
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final isLegacyResetRequested(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final isSdpUser(I)Z
    .registers 3

    .line 6522
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 6523
    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misEnterpriseUser(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDualDarLockSettings(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;

    move-result-object p0

    .line 6524
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->isDualDARUser(I)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method public loadPasswordDataOnBootPhase()V
    .registers 9

    .line 6701
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 6702
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 6703
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 6704
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misEnterpriseUser(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 6710
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v3

    monitor-enter v3

    .line 6711
    :try_start_26
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misSyntheticPasswordBasedCredentialLocked(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 6712
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 6713
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v6}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v4

    const-string v5, "LockSettingsService.SDP"

    .line 6714
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cached credential type("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") for enterprise user "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6718
    :cond_5c
    monitor-exit v3

    goto :goto_61

    :catchall_5e
    move-exception p0

    monitor-exit v3
    :try_end_60
    .catchall {:try_start_26 .. :try_end_60} :catchall_5e

    throw p0

    :cond_61
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_64
    return-void
.end method

.method public final migratePasswordHashForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 6

    .line 6812
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misEnterpriseUser(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 6813
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_47

    .line 6816
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    const-string/jumbo v2, "migrated_password_hash"

    invoke-virtual {v0, v2, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_47

    .line 6817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Migrate password hash for enterprise user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService.SDP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6818
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 6819
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_47
    return-void
.end method

.method public migrateWithAuthToken(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 6529
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->isSdpUser(I)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverSupported()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6530
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->getSdpManagerInternal()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda7;-><init>(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_21
    return-void
.end method

.method public onSyntheticPasswordDeserted(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 4

    if-nez p1, :cond_19

    .line 6594
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SP deserted - Unexpected condition while desert sp with user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockSettingsService.SDP"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6599
    :cond_19
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->isSdpUser(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 6602
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->getSdpManager()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_31
    return-void
.end method

.method public onSyntheticPasswordInitialized(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 4

    if-nez p1, :cond_19

    .line 6558
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " SP Initialized - Unexpected condition after sp initialization with user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockSettingsService.SDP"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6563
    :cond_19
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->isSdpUser(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 6566
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->getSdpManager()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_31
    return-void
.end method

.method public onSyntheticPasswordReWrapped(II)V
    .registers 4

    .line 6548
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->isSdpUser(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 6551
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->getSdpManager()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda11;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_18
    return-void
.end method

.method public onSyntheticPasswordVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 6574
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_44

    .line 6575
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->isSdpUser(I)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string/jumbo v0, "onSyntheticPasswordVerified."

    .line 6579
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6580
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 6583
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->getSdpManager()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda5;-><init>([BI)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_44

    .line 6586
    :cond_2e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SP Verified - Unexpected condition after sp verification with user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockSettingsService.SDP"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_44
    return-void
.end method

.method public final prepareLegacyResetRequest(I)V
    .registers 3

    .line 6740
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->getSdpManager()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setLockCredentialVariant(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 8

    .line 6784
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 6785
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->isLegacyResetRequested(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_37

    new-array p2, v3, [Ljava/lang/Object;

    .line 6787
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v2

    const-string v1, "User %d requested to reset password"

    .line 6786
    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6788
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->prepareLegacyResetRequest(I)V

    .line 6789
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->setLockCredentialWithLegacyToken(Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result p2

    .line 6790
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->finalizeLegacyResetRequest(I)V

    if-eqz p2, :cond_31

    .line 6792
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->onSyntheticPasswordReWrapped(II)V

    .line 6793
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_65

    :cond_31
    const-string p0, "Continue to set credential..."

    .line 6795
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_65

    .line 6797
    :cond_37
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_65

    new-array v0, v3, [Ljava/lang/Object;

    .line 6800
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "User %d identified as secure folder user"

    .line 6799
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6801
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDarLockSettings(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->setSecureFolderLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 6803
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_65

    .line 6804
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->onSyntheticPasswordReWrapped(II)V

    :cond_65
    :goto_65
    return-object v0
.end method

.method public final setLockCredentialWithLegacyToken(Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 12

    .line 6751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set lock credential with legacy token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 6755
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->getSdpManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 6756
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v1

    const/4 v1, 0x0

    if-nez v0, :cond_37

    goto :goto_67

    .line 6761
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->getSdpManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda10;

    invoke-direct {v2, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    .line 6762
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [B

    .line 6763
    invoke-static {v7}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string p0, "Failed due to invalid token"

    .line 6764
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_67

    .line 6769
    :cond_58
    :try_start_58
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    move-object v4, p1

    move v8, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$msetLockCredentialWithToken(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_61

    goto :goto_68

    :catch_61
    move-exception p0

    const-string p1, "Unexpected failure while set credential with token"

    .line 6772
    invoke-static {p1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_67
    move p0, v1

    :goto_68
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 6777
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const/4 p2, 0x1

    .line 6778
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "Result of string credential with legacy token for user %d : %s"

    .line 6776
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return p0
.end method

.method public shouldMigratePasswordHash()V
    .registers 7

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 6608
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_54

    .line 6610
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move v2, v1

    .line 6611
    :goto_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 6612
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 6613
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misEnterpriseUser(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 6614
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    const-string/jumbo v5, "migrated_password_hash"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_51

    .line 6615
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 6616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Need password hash migration for enterprise user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LockSettingsService.SDP"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_54
    return-void
.end method

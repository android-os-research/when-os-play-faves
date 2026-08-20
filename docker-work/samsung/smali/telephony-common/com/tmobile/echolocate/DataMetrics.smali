.class public Lcom/tmobile/echolocate/DataMetrics;
.super Ljava/lang/Object;
.source "DataMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;,
        Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;,
        Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;,
        Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;,
        Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;
    }
.end annotation


# static fields
.field private static final greylist DBG:Z

.field private static final greylist ECHO_APP_SIG:Landroid/content/pm/Signature;

.field private static final greylist MY_ACCOUNT_SIG:Landroid/content/pm/Signature;

.field private static final greylist SPRINT_HUB_SIG:Landroid/content/pm/Signature;

.field private static final greylist TAG:Ljava/lang/String;


# instance fields
.field private greylist CURRENT_API_VERSION:I

.field private greylist isCscFeatureSupported3:Z

.field private greylist isCscFeatureSupported4:Z

.field private greylist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private greylist mContext:Landroid/content/Context;

.field private greylist mShouldReport:Z

.field private greylist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 47
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    .line 48
    const-class v0, Lcom/tmobile/echolocate/DataMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics;->TAG:Ljava/lang/String;

    .line 128
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics;->MY_ACCOUNT_SIG:Landroid/content/pm/Signature;

    .line 158
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics;->ECHO_APP_SIG:Landroid/content/pm/Signature;

    .line 188
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics;->SPRINT_HUB_SIG:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 15

    .line 1395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    .line 231
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->isCscFeatureSupported3:Z

    .line 232
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->isCscFeatureSupported4:Z

    .line 1396
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    .line 1398
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v1, "CscFeature_Common_SupportEchoLocatePhase4"

    invoke-virtual {p1, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tmobile/echolocate/DataMetrics;->isCscFeatureSupported4:Z

    if-nez p1, :cond_12d

    .line 1400
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "DataMetrics()"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1403
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 1404
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v1, "CscFeature_Common_SupportEchoLocatePhase2"

    invoke-virtual {p1, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1405
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->isTmoSim()Z

    move-result v1

    .line 1406
    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    const-string v3, "TMB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1407
    iget-object v3, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tmobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 1408
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->isMyAccountSigPresent()Z

    move-result v4

    .line 1409
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->isEchoAppSigPresent()Z

    move-result v5

    .line 1411
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->isSprSim()Z

    move-result v6

    .line 1412
    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    const-string v8, "SPR"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1413
    iget-object v8, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sprint"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 1414
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->isSprintHubSigPresent()Z

    move-result v9

    .line 1416
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_SupportEchoLocatePhase3"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/tmobile/echolocate/DataMetrics;->isCscFeatureSupported3:Z

    const/4 v11, 0x1

    if-nez v10, :cond_93

    .line 1419
    iput v11, p0, Lcom/tmobile/echolocate/DataMetrics;->CURRENT_API_VERSION:I

    goto :goto_96

    :cond_93
    const/4 v12, 0x3

    .line 1421
    iput v12, p0, Lcom/tmobile/echolocate/DataMetrics;->CURRENT_API_VERSION:I

    :goto_96
    const-string v12, "DataMetrics(): isCscFeatureSupported="

    if-eqz v2, :cond_e6

    if-nez p1, :cond_9e

    if-eqz v10, :cond_a9

    :cond_9e
    if-eqz v1, :cond_a9

    if-eqz v2, :cond_a9

    if-eqz v3, :cond_a9

    if-nez v4, :cond_a8

    if-eqz v5, :cond_a9

    :cond_a8
    move v0, v11

    .line 1425
    :cond_a9
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    .line 1432
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isTmoSim="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isTmoSalesCode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isCalledFromTmo="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isMyAccountSigPresent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isEchoAppSigPresent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_148

    :cond_e6
    if-eqz v7, :cond_12a

    if-nez p1, :cond_ec

    if-eqz v10, :cond_f5

    :cond_ec
    if-eqz v6, :cond_f5

    if-eqz v7, :cond_f5

    if-eqz v8, :cond_f5

    if-eqz v9, :cond_f5

    move v0, v11

    .line 1439
    :cond_f5
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    .line 1445
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isSprSim="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isSprSalesCode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isCalledFromSpr="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isSprintHubSigPresent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_148

    .line 1451
    :cond_12a
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    goto :goto_148

    .line 1455
    :cond_12d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DataMetrics(): isCscFeatureSupported4="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->isCscFeatureSupported4:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " DataMetric Disabled."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :goto_148
    return-void
.end method

.method private greylist getAntennaBars()I
    .registers 2

    .line 1132
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    .line 1133
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_20

    .line 1139
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    goto :goto_22

    :cond_20
    const/16 p0, -0x3e7

    :goto_22
    return p0
.end method

.method private greylist getCommandsToCp(I)[B
    .registers 5

    const-string p0, "getCommandToCp(): failed to close dos "

    .line 1335
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1336
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x11

    .line 1339
    :try_start_e
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x92

    .line 1340
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x5

    .line 1341
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1342
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1d} :catch_23
    .catchall {:try_start_e .. :try_end_1d} :catchall_21

    .line 1348
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_2d

    goto :goto_31

    :catchall_21
    move-exception p1

    goto :goto_36

    :catch_23
    move-exception p1

    :try_start_24
    const-string v2, "getCommandToCp(): "

    .line 1344
    invoke-static {v2, p1}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 1348
    :try_start_29
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p1

    .line 1350
    invoke-static {p0, p1}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1355
    :goto_31
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 1348
    :goto_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception v0

    .line 1350
    invoke-static {p0, v0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1353
    :goto_3e
    throw p1
.end method

.method private greylist getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 821
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v0, :cond_29

    const/4 v0, 0x1

    if-eqz p0, :cond_28

    if-eq p0, v0, :cond_28

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonDataSettings(): default on dataSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v0, -0x2

    goto :goto_29

    :cond_28
    add-int/2addr v0, p0

    .line 834
    :cond_29
    :goto_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonDataSettings(): ret="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for setting value="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 836
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist getCurrentNetworkType()Ljava/lang/String;
    .registers 4

    .line 1293
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_3b

    .line 1296
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_39

    if-eq p0, v1, :cond_3c

    if-eq p0, v0, :cond_37

    const/16 v0, 0xd

    if-eq p0, v0, :cond_35

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): default on currNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v0, -0x2

    goto :goto_3c

    :cond_35
    move v0, v2

    goto :goto_3c

    :cond_37
    move v0, v1

    goto :goto_3c

    :cond_39
    const/4 v0, 0x4

    goto :goto_3c

    :cond_3b
    const/4 v0, -0x1

    .line 1316
    :cond_3c
    :goto_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): ret="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 1318
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist getCurrentTime()Ljava/lang/String;
    .registers 2

    .line 781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist getDataActivityType()Ljava/lang/String;
    .registers 3

    .line 1099
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result p0

    const-string v0, "BOTH_OFF"

    if-eqz p0, :cond_35

    const/4 v1, 0x1

    if-eq p0, v1, :cond_33

    const/4 v1, 0x2

    if-eq p0, v1, :cond_30

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2d

    const/4 v1, 0x4

    if-eq p0, v1, :cond_35

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataActivityType(): default on currDataActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const-string v0, "NA"

    goto :goto_35

    :cond_2d
    const-string v0, "BOTH_ON"

    goto :goto_35

    :cond_30
    const-string v0, "UP_ON"

    goto :goto_35

    :cond_33
    const-string v0, "DOWN_ON"

    .line 1121
    :cond_35
    :goto_35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataActivityType(): ret="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist getMccMnc()Ljava/lang/String;
    .registers 3

    .line 1325
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMccMnc(): ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist getNetworkModeSetting()Ljava/lang/String;
    .registers 5

    .line 861
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 862
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 861
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType(I)I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p0, :cond_46

    if-eq p0, v2, :cond_44

    if-eq p0, v1, :cond_47

    if-eq p0, v0, :cond_46

    const/16 v3, 0x9

    if-eq p0, v3, :cond_42

    const/16 v3, 0xe

    if-eq p0, v3, :cond_47

    const/16 v0, 0xb

    if-eq p0, v0, :cond_40

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3e

    packed-switch p0, :pswitch_data_60

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkModeSetting(): default on networkModeSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v0, -0x2

    goto :goto_47

    :cond_3e
    :pswitch_3e
    const/4 v0, 0x5

    goto :goto_47

    :cond_40
    const/4 v0, 0x6

    goto :goto_47

    :cond_42
    :pswitch_42
    move v0, v2

    goto :goto_47

    :cond_44
    const/4 v0, 0x4

    goto :goto_47

    :cond_46
    :pswitch_46
    move v0, v1

    .line 890
    :cond_47
    :goto_47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkModeSetting(): ret= "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 892
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_60
    .packed-switch 0x12
        :pswitch_46
        :pswitch_3e
        :pswitch_42
    .end packed-switch
.end method

.method private greylist getNrPci()I
    .registers 3

    .line 1153
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    .line 1156
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "1"

    .line 1157
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    .line 1158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ril.signal.param"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1159
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    .line 1161
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1162
    array-length v0, p0

    add-int/lit8 v1, v0, -0x4

    .line 1163
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3e

    const/16 v0, 0xff

    if-eq p0, v0, :cond_3e

    goto :goto_42

    :cond_3e
    const/4 p0, -0x2

    goto :goto_42

    :cond_40
    const/16 p0, -0x3e7

    .line 1171
    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nrPci(): nrpci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return p0
.end method

.method private greylist getNrRsrp()F
    .registers 4

    .line 1183
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    .line 1186
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_41

    .line 1188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril.signal.param"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1189
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    .line 1191
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1192
    array-length v0, p0

    add-int/lit8 v2, v0, -0x3

    .line 1193
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    if-le v0, v1, :cond_41

    const/high16 v0, 0x437f0000    # 255.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_41

    goto :goto_43

    :cond_41
    const/high16 p0, -0x3cea0000    # -150.0f

    .line 1198
    :goto_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNrRsrp(): nrrsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return p0
.end method

.method private greylist getNrRsrq()F
    .registers 4

    .line 1234
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    .line 1237
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_41

    .line 1239
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril.signal.param"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1240
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    .line 1242
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1243
    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    .line 1244
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    if-le v0, v1, :cond_41

    const/high16 v0, 0x437f0000    # 255.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_41

    goto :goto_43

    :cond_41
    const/high16 p0, -0x3cea0000    # -150.0f

    .line 1249
    :goto_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNrRsrq(): nrRsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return p0
.end method

.method private greylist getNrSnr()F
    .registers 5

    .line 1208
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    .line 1211
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_44

    .line 1213
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril.signal.param"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1214
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    .line 1216
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1217
    array-length v0, p0

    add-int/lit8 v2, v0, -0x2

    .line 1218
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    if-le v0, v1, :cond_44

    float-to-double v0, p0

    const-wide v2, 0x4039800000000000L    # 25.5

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_44

    goto :goto_46

    :cond_44
    const/high16 p0, -0x3cea0000    # -150.0f

    .line 1223
    :goto_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNrSnr(): nrSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return p0
.end method

.method private greylist getPrimaryPci()I
    .registers 4

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 1265
    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    .line 1266
    invoke-direct {p0, v2}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v2

    .line 1265
    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v1

    .line 1268
    invoke-direct {p0, v1, v0}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 1269
    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1d

    const/4 v0, 0x0

    .line 1270
    aget-object p0, p0, v0

    goto :goto_1f

    :cond_1d
    const-string p0, "-2"

    .line 1274
    :goto_1f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private greylist getResultsFromBytes(I[B)[Ljava/lang/String;
    .registers 4

    if-gtz p1, :cond_9

    const-string p0, "getResultsFromBytes(): length is less than or equal to zero!"

    .line 1363
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1367
    :cond_9
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Ljava/lang/String;-><init>([BII)V

    .line 1368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getResultsFromBytes(): resultString="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string p2, "\\|"

    .line 1370
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 1371
    :goto_2a
    array-length p1, p0

    if-ge v0, p1, :cond_46

    .line 1373
    aget-object p1, p0, v0

    if-eqz p1, :cond_3f

    const-string p2, ""

    .line 1374
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_43

    :cond_3f
    const-string p1, "-2"

    .line 1376
    aput-object p1, p0, v0

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_46
    return-object p0
.end method

.method private greylist getRttSetting()Ljava/lang/String;
    .registers 5

    .line 962
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_SupportRTT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string p0, "getRttSetting(): feature not supported"

    .line 963
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const-string p0, "-1"

    return-object p0

    .line 967
    :cond_14
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_rtt_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x4

    if-eqz v0, :cond_66

    if-eq v0, v3, :cond_3d

    .line 988
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRttSetting(): default on rttSetting="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v2, -0x2

    goto :goto_67

    .line 975
    :cond_3d
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "preferred_rtt_automatic_mode"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_4d

    const/4 v2, 0x3

    goto :goto_67

    :cond_4d
    if-ne p0, v1, :cond_51

    move v2, v3

    goto :goto_67

    .line 983
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRttSetting(): default on rttAutomaticMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_67

    :cond_66
    move v2, v1

    .line 990
    :goto_67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRttSetting(): ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 992
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist getRttTranscriptSetting()Ljava/lang/String;
    .registers 2

    .line 1006
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_VoiceCall_SupportRTT"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_14

    const-string p0, "getRttTranscriptSetting(): feature not supported"

    .line 1007
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const-string p0, "-1"

    return-object p0

    :cond_14
    const-string p0, "getRttTranscriptSetting(): currently not supported"

    .line 1011
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 1013
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist getVolteSetting()Ljava/lang/String;
    .registers 3

    .line 929
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "voicecall_type"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v1, :cond_2d

    if-eqz p0, :cond_2c

    if-eq p0, v0, :cond_2a

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVolteSetting(): default on volteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v1, -0x2

    goto :goto_2d

    :cond_2a
    move v1, v0

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x2

    .line 944
    :cond_2d
    :goto_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVolteSetting(): ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 946
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist getWfcSetting()Ljava/lang/String;
    .registers 1

    const/4 p0, -0x2

    .line 913
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist isEchoAppSigPresent()Z
    .registers 8

    .line 726
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_7
    const-string v1, "com.tmobile.echolocate"

    const/16 v2, 0x40

    .line 729
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_35

    .line 733
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_16
    if-ge v2, v1, :cond_2e

    aget-object v4, p0, v2

    move v5, v0

    .line 734
    :goto_1b
    array-length v6, p0

    if-ge v5, v6, :cond_2b

    .line 735
    sget-object v6, Lcom/tmobile/echolocate/DataMetrics;->ECHO_APP_SIG:Landroid/content/pm/Signature;

    invoke-virtual {v4, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_24} :catch_30

    if-eqz v6, :cond_28

    const/4 v3, 0x1

    goto :goto_2b

    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2e
    move v0, v3

    goto :goto_35

    :catch_30
    const-string p0, "isEchoAppSigPresent(): package is not installed"

    .line 743
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    :cond_35
    :goto_35
    return v0
.end method

.method private greylist isMyAccountSigPresent()Z
    .registers 8

    .line 698
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_7
    const-string v1, "com.tmobile.pr.mytmobile"

    const/16 v2, 0x40

    .line 701
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_35

    .line 705
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_16
    if-ge v2, v1, :cond_2e

    aget-object v4, p0, v2

    move v5, v0

    .line 706
    :goto_1b
    array-length v6, p0

    if-ge v5, v6, :cond_2b

    .line 707
    sget-object v6, Lcom/tmobile/echolocate/DataMetrics;->MY_ACCOUNT_SIG:Landroid/content/pm/Signature;

    invoke-virtual {v4, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_24} :catch_30

    if-eqz v6, :cond_28

    const/4 v3, 0x1

    goto :goto_2b

    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2e
    move v0, v3

    goto :goto_35

    :catch_30
    const-string p0, "isMyAccountSigPresent(): package is not installed"

    .line 715
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    :cond_35
    :goto_35
    return v0
.end method

.method private greylist isSprSim()Z
    .registers 7

    .line 687
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    const-string v0, "310120"

    const-string v1, "312530"

    const-string v2, "310028"

    const-string v3, "311390"

    const-string v4, "310332"

    const-string v5, "311328"

    .line 688
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 690
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private greylist isSprintHubSigPresent()Z
    .registers 8

    .line 754
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_7
    const-string v1, "com.sprint.ms.smf.services"

    const/16 v2, 0x40

    .line 757
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_35

    .line 761
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_16
    if-ge v2, v1, :cond_2e

    aget-object v4, p0, v2

    move v5, v0

    .line 762
    :goto_1b
    array-length v6, p0

    if-ge v5, v6, :cond_2b

    .line 763
    sget-object v6, Lcom/tmobile/echolocate/DataMetrics;->SPRINT_HUB_SIG:Landroid/content/pm/Signature;

    invoke-virtual {v4, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_24} :catch_30

    if-eqz v6, :cond_28

    const/4 v3, 0x1

    goto :goto_2b

    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2e
    move v0, v3

    goto :goto_35

    :catch_30
    const-string p0, "isSprintHubSigPresent(): package is not installed"

    .line 771
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    :cond_35
    :goto_35
    return v0
.end method

.method private greylist isTmoSim()Z
    .registers 15

    .line 676
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    const-string v0, "310160"

    const-string v1, "310200"

    const-string v2, "310210"

    const-string v3, "310220"

    const-string v4, "310230"

    const-string v5, "310240"

    const-string v6, "310250"

    const-string v7, "310260"

    const-string v8, "310270"

    const-string v9, "310310"

    const-string v10, "310490"

    const-string v11, "310660"

    const-string v12, "310800"

    const-string v13, "00101"

    .line 677
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private greylist isWifiConnected()Z
    .registers 2

    .line 660
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    .line 661
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 662
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_10

    return v0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist logD(Ljava/lang/String;)V
    .registers 2

    .line 788
    sget-boolean v0, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v0, :cond_9

    .line 789
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private static greylist logE(Ljava/lang/String;)V
    .registers 2

    .line 797
    sget-boolean v0, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v0, :cond_9

    .line 798
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private static greylist logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 806
    sget-boolean v0, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v0, :cond_9

    .line 807
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-void
.end method


# virtual methods
.method public greylist get5gNrMmwCellLog()Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;
    .registers 6

    .line 1717
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "get5gNrMmwCellLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get5gNrMmwCellLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1723
    :cond_25
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;-><init>(Lcom/tmobile/echolocate/DataMetrics;)V

    .line 1725
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 1726
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v2

    .line 1727
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setTimeStamp(J)V

    .line 1728
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setNetworkType(I)V

    const-string v3, "1"

    .line 1730
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5d

    .line 1732
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrPci()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setNrPscellPci(I)V

    goto :goto_80

    .line 1734
    :cond_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get5gNrMmwCellLog(): nrStatus NOT connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v2, -0x2

    .line 1735
    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setNrPscellPci(I)V

    goto :goto_80

    :cond_76
    const-string v2, "get5gNrMmwCellLog(): Not LTE"

    .line 1738
    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/16 v2, -0x3e7

    .line 1739
    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setNrPscellPci(I)V

    .line 1741
    :goto_80
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrRsrp()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setSsbBrsrp(F)V

    .line 1742
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrRsrq()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setSsbBrsrq(F)V

    .line 1743
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrSnr()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setSsbBsnr(F)V

    .line 1745
    sget-boolean v2, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v2, :cond_e9

    .line 1746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get5gNrMmwCellLog(): Time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", NetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nrPscellPci="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    invoke-virtual {v0}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->getNrPscellPci()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ssbBrsrp="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrRsrp()F

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ssbBrsrq="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrRsrq()F

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ssbSnr="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrSnr()F

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1746
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_e9
    return-object v0
.end method

.method public greylist get5gUiLog()Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;
    .registers 8

    .line 1644
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "get5gUiLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 1646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get5gUiLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1650
    :cond_25
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;-><init>(Lcom/tmobile/echolocate/DataMetrics;)V

    const-string v1, "NA"

    .line 1655
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v2

    .line 1656
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1"

    .line 1658
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_aa

    .line 1659
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    packed-switch v5, :pswitch_data_116

    goto :goto_7a

    :pswitch_4f
    const-string v5, "4"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    goto :goto_7a

    :cond_58
    move v4, v6

    goto :goto_7a

    :pswitch_5a
    const-string v5, "3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_63

    goto :goto_7a

    :cond_63
    const/4 v4, 0x2

    goto :goto_7a

    :pswitch_65
    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e

    goto :goto_7a

    :cond_6e
    const/4 v4, 0x1

    goto :goto_7a

    :pswitch_70
    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    goto :goto_7a

    :cond_79
    const/4 v4, 0x0

    :goto_7a
    packed-switch v4, :pswitch_data_122

    .line 1677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get5gUiLog(): default on uiNetworkType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_b5

    :pswitch_92
    const-string v1, "2G"

    goto :goto_b5

    :pswitch_95
    const-string v1, "3G"

    goto :goto_b5

    .line 1662
    :pswitch_98
    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v1

    if-eqz v1, :cond_a3

    const-string v1, "4G_LTE"

    goto :goto_a5

    :cond_a3
    const-string v1, "4G"

    :goto_a5
    if-ne v2, v6, :cond_b5

    const-string v1, "5G"

    goto :goto_b5

    .line 1679
    :cond_aa
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_b3

    const-string v1, "NO_SIGNAL"

    goto :goto_b5

    :cond_b3
    const-string v1, "NO_ICON"

    .line 1685
    :cond_b5
    :goto_b5
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getDataActivityType()Ljava/lang/String;

    move-result-object v2

    .line 1686
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getAntennaBars()I

    move-result p0

    .line 1688
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->setTimeStamp(J)V

    .line 1689
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->setNetworkType(I)V

    .line 1690
    invoke-virtual {v0, v1}, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->setUiNetworkType(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->setUiDataTransmission(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {v0, p0}, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->setUiNumberOfAntennaBars(I)V

    .line 1694
    sget-boolean v4, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v4, :cond_114

    .line 1695
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get5gUiLog(): Time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", NetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", UiNetworkType="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", UiDataTransmission="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", UiNumberOfAntennaBars="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1695
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_114
    return-object v0

    nop

    :pswitch_data_116
    .packed-switch 0x31
        :pswitch_70
        :pswitch_65
        :pswitch_5a
        :pswitch_4f
    .end packed-switch

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_92
    .end packed-switch
.end method

.method public greylist getAPIversion()I
    .registers 4

    .line 1466
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getAPIversion()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAPIversion(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0

    .line 1471
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAPIversion(): CURRENT_API_VERSION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics;->CURRENT_API_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 1473
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics;->CURRENT_API_VERSION:I

    return p0
.end method

.method public greylist getAnchorLteCid()J
    .registers 5

    .line 1022
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrState()I

    const-string v1, "0"

    .line 1026
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x2

    if-nez v1, :cond_5c

    const-string v1, "1"

    .line 1027
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1028
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_61

    .line 1030
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 1033
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1034
    instance-of v1, v0, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_4e

    .line 1035
    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    .line 1036
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    int-to-long v0, p0

    move-wide v2, v0

    goto :goto_61

    :cond_4e
    const-string v0, "getAnchorLteCid(): CellInfo is not one of LTE"

    .line 1040
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_59

    :cond_54
    const-string v0, "getAnchorLteCid(): CellInfo.isRegistered()=false"

    .line 1044
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :goto_59
    const-wide/16 v2, -0x3e7

    goto :goto_2b

    :cond_5c
    const-string p0, "getAnchorLteCid(): current network is not available"

    .line 1049
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_61
    :goto_61
    return-wide v2
.end method

.method public greylist getBearerConfiguration()Ljava/util/List;
    .registers 23

    move-object/from16 v0, p0

    .line 2361
    iget-object v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    const-string v3, "getBearerConfiguration()"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    iget-boolean v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v1, :cond_27

    .line 2363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBearerConfiguration(): mShouldReport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 2367
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 2368
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0xb

    const/16 v5, 0x9

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0x8

    if-nez v2, :cond_6b

    const-string v0, "getBearerConfiguration(): not in LTE"

    .line 2369
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    .line 2371
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    aput-object v1, v0, v12

    const-string v1, "-999"

    aput-object v1, v0, v11

    aput-object v1, v0, v10

    aput-object v1, v0, v9

    aput-object v1, v0, v8

    aput-object v1, v0, v7

    aput-object v1, v0, v6

    aput-object v1, v0, v14

    aput-object v1, v0, v5

    aput-object v1, v0, v3

    .line 2370
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_6b
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 2398
    iget-object v15, v0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2399
    invoke-direct {v0, v14}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v3

    .line 2398
    invoke-virtual {v15, v3, v2}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v3

    .line 2401
    invoke-direct {v0, v3, v2}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "-2"

    if-eqz v0, :cond_a2

    .line 2402
    array-length v3, v0

    if-lt v3, v5, :cond_a2

    .line 2403
    aget-object v2, v0, v13

    .line 2404
    aget-object v3, v0, v12

    .line 2405
    aget-object v15, v0, v11

    .line 2406
    aget-object v16, v0, v10

    .line 2407
    aget-object v17, v0, v9

    .line 2408
    aget-object v18, v0, v8

    .line 2409
    aget-object v19, v0, v7

    .line 2410
    aget-object v20, v0, v6

    .line 2411
    aget-object v0, v0, v14

    move-object v8, v0

    move-object/from16 v0, v16

    move-object/from16 v5, v17

    move-object/from16 v14, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_aa

    :cond_a2
    move-object v0, v2

    move-object v3, v0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v14, v8

    move-object v15, v14

    .line 2414
    :goto_aa
    sget-boolean v21, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v21, :cond_116

    .line 2415
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUplinkRFConfiguration(): Time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2416
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Network="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Number of active bearers="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Bearer 1 Type of QCI="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Bearer 1 APN name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Bearer 2 Type of QCI="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Bearer 2 APN name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Bearer 3 Type of QCI="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Bearer 3 APN name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Bearer 4 Type of QCI="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Bearer 4 APN name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2415
    invoke-static {v9}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_116
    new-array v4, v4, [Ljava/lang/String;

    .line 2430
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v13

    aput-object v1, v4, v12

    aput-object v2, v4, v11

    const/4 v1, 0x3

    aput-object v3, v4, v1

    const/4 v1, 0x4

    aput-object v15, v4, v1

    const/4 v1, 0x5

    aput-object v0, v4, v1

    const/4 v0, 0x6

    aput-object v5, v4, v0

    const/4 v0, 0x7

    aput-object v14, v4, v0

    const/16 v0, 0x8

    aput-object v6, v4, v0

    const/16 v0, 0x9

    aput-object v7, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    .line 2429
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getCommonRFConfiguration()Ljava/util/List;
    .registers 18

    move-object/from16 v0, p0

    .line 1955
    iget-object v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    const-string v3, "getCommonRFConfiguration()"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    iget-boolean v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v1, :cond_27

    .line 1957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCommonRFConfiguration(): mShouldReport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 1961
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 1962
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    if-nez v2, :cond_5f

    const-string v0, "getCommonRFConfiguration(): not in LTE"

    .line 1963
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    .line 1965
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    aput-object v1, v0, v9

    const-string v1, "-999"

    aput-object v1, v0, v8

    aput-object v1, v0, v11

    aput-object v1, v0, v7

    aput-object v1, v0, v6

    aput-object v1, v0, v5

    aput-object v1, v0, v3

    .line 1964
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_5f
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 1986
    iget-object v12, v0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1987
    invoke-direct {v0, v11}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v13

    .line 1986
    invoke-virtual {v12, v13, v2}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v12

    .line 1989
    invoke-direct {v0, v12, v2}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "-2"

    if-eqz v0, :cond_85

    .line 1990
    array-length v12, v0

    if-lt v12, v5, :cond_85

    .line 1991
    aget-object v2, v0, v10

    .line 1992
    aget-object v12, v0, v9

    .line 1993
    aget-object v13, v0, v8

    .line 1994
    aget-object v14, v0, v11

    .line 1995
    aget-object v15, v0, v7

    .line 1996
    aget-object v0, v0, v6

    goto :goto_8a

    :cond_85
    move-object v0, v2

    move-object v12, v0

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    .line 1999
    :goto_8a
    sget-boolean v16, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v16, :cond_de

    .line 2000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCommonRFConfiguration(): Time="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Network="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Transmission Mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Antenna RX="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Antenna TX="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Receiver Diversity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", RRC State="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", LTE-U/LAA="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2000
    invoke-static {v3}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_de
    new-array v3, v4, [Ljava/lang/String;

    .line 2012
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    aput-object v1, v3, v9

    aput-object v2, v3, v8

    aput-object v12, v3, v11

    aput-object v13, v3, v7

    aput-object v15, v3, v6

    const/4 v1, 0x6

    aput-object v14, v3, v1

    const/4 v1, 0x7

    aput-object v0, v3, v1

    .line 2011
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getDataSetting()Ljava/util/List;
    .registers 11

    .line 2453
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getDataSetting()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 2455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataSetting(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_25
    const-string v0, "mobile_data"

    .line 2459
    invoke-direct {p0, v0}, Lcom/tmobile/echolocate/DataMetrics;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2460
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNetworkModeSetting()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_on"

    .line 2461
    invoke-direct {p0, v2}, Lcom/tmobile/echolocate/DataMetrics;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2462
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getWfcSetting()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data_roaming"

    .line 2463
    invoke-direct {p0, v4}, Lcom/tmobile/echolocate/DataMetrics;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2464
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getVolteSetting()Ljava/lang/String;

    move-result-object v5

    .line 2465
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getRttSetting()Ljava/lang/String;

    move-result-object v6

    .line 2466
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getRttTranscriptSetting()Ljava/lang/String;

    move-result-object p0

    .line 2468
    sget-boolean v7, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v7, :cond_a7

    .line 2469
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDataSetting(): Time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2470
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", MobileData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", NetworkMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", WiFi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", WiFiCalling="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", DataRoaming="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", VoLte="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", RttSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", RttTranscript="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2469
    invoke-static {v7}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_a7
    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 2482
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v5, v7, v0

    const/4 v0, 0x7

    aput-object v6, v7, v0

    const/16 v0, 0x8

    aput-object p0, v7, v0

    .line 2481
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getDownlinkCarrierInfo()Ljava/util/List;
    .registers 24

    move-object/from16 v0, p0

    .line 2034
    iget-object v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    const-string v3, "getDownlinkCarrierInfo()"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    iget-boolean v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v1, :cond_27

    .line 2036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownlinkCarrierInfo(): mShouldReport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 2040
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 2041
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0xc

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/4 v4, 0x4

    if-nez v3, :cond_6f

    const-string v0, "getDownlinkCarrierInfo(): not in LTE"

    .line 2042
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    .line 2044
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v13

    aput-object v1, v0, v12

    const-string v1, "-999"

    aput-object v1, v0, v11

    aput-object v1, v0, v10

    aput-object v1, v0, v4

    aput-object v1, v0, v15

    aput-object v1, v0, v14

    aput-object v1, v0, v9

    aput-object v1, v0, v8

    aput-object v1, v0, v7

    aput-object v1, v0, v6

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 2043
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_6f
    const/16 v3, 0x200

    new-array v3, v3, [B

    .line 2073
    iget-object v5, v0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2074
    invoke-direct {v0, v4}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v7

    .line 2073
    invoke-virtual {v5, v7, v3}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v5

    .line 2076
    invoke-direct {v0, v5, v3}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v0

    const-string v3, "-1"

    const-string v5, "-2"

    if-eqz v0, :cond_ea

    .line 2077
    array-length v7, v0

    if-lt v7, v6, :cond_ea

    .line 2078
    aget-object v7, v0, v13

    .line 2079
    aget-object v17, v0, v12

    .line 2080
    aget-object v18, v0, v11

    .line 2081
    aget-object v19, v0, v10

    .line 2083
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    move-object v0, v3

    move-object v2, v0

    move-object v5, v2

    move-object v6, v5

    :goto_9c
    move-object v8, v7

    move-object/from16 v9, v17

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move-object v7, v6

    goto/16 :goto_f3

    :cond_a6
    const-string v2, "2"

    .line 2086
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 2087
    aget-object v2, v0, v4

    .line 2088
    aget-object v5, v0, v15

    .line 2089
    aget-object v0, v0, v14

    move-object v6, v3

    move-object v8, v7

    move-object/from16 v9, v17

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move-object v3, v2

    move-object v2, v6

    move-object v7, v2

    goto :goto_f3

    :cond_c0
    const-string v2, "3"

    .line 2091
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 2092
    aget-object v3, v0, v4

    .line 2093
    aget-object v2, v0, v15

    .line 2094
    aget-object v5, v0, v14

    .line 2095
    aget-object v20, v0, v9

    .line 2096
    aget-object v21, v0, v8

    const/16 v16, 0x9

    .line 2097
    aget-object v0, v0, v16

    move-object v6, v0

    move-object v0, v5

    move-object v8, v7

    move-object/from16 v9, v17

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v7, v21

    move-object v5, v2

    move-object/from16 v2, v20

    goto :goto_f3

    :cond_e5
    move-object v0, v5

    move-object v2, v0

    move-object v3, v2

    move-object v6, v3

    goto :goto_9c

    :cond_ea
    move-object v0, v5

    move-object v2, v0

    move-object v3, v2

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v14, v9

    move-object v15, v14

    .line 2101
    :goto_f3
    sget-boolean v22, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v22, :cond_167

    .line 2102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDownlinkCarrierInfo(): Time="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Network="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Num Channels="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Primary EARFCN="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Primary Bandwidth="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Primary Band Number="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Second EARFCN="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Second Bandwidth="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Second Band Number="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Third EARFCN="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Third Bandwidth="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Third Band Number="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2102
    invoke-static {v4}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_167
    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    .line 2118
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v13

    aput-object v1, v4, v12

    aput-object v8, v4, v11

    const/4 v1, 0x3

    aput-object v9, v4, v1

    const/4 v1, 0x4

    aput-object v14, v4, v1

    const/4 v1, 0x5

    aput-object v15, v4, v1

    const/4 v1, 0x6

    aput-object v3, v4, v1

    const/4 v1, 0x7

    aput-object v5, v4, v1

    const/16 v1, 0x8

    aput-object v0, v4, v1

    const/16 v0, 0x9

    aput-object v2, v4, v0

    const/16 v0, 0xa

    aput-object v7, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    .line 2117
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getDownlinkRFConfiguration()Ljava/util/List;
    .registers 18

    move-object/from16 v0, p0

    .line 2226
    iget-object v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    const-string v3, "getDownlinkRFConfiguration()"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    iget-boolean v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v1, :cond_27

    .line 2228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownlinkRFConfiguration(): mShouldReport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 2232
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 2233
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    if-nez v2, :cond_5f

    const-string v0, "getDownlinkRFConfiguration(): not in LTE"

    .line 2234
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    .line 2236
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    aput-object v1, v0, v9

    const-string v1, "-999"

    aput-object v1, v0, v8

    aput-object v1, v0, v7

    aput-object v1, v0, v6

    aput-object v1, v0, v5

    aput-object v1, v0, v11

    aput-object v1, v0, v3

    .line 2235
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_5f
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 2257
    iget-object v12, v0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2258
    invoke-direct {v0, v11}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v13

    .line 2257
    invoke-virtual {v12, v13, v2}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v12

    .line 2260
    invoke-direct {v0, v12, v2}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "-2"

    if-eqz v0, :cond_85

    .line 2261
    array-length v12, v0

    if-lt v12, v11, :cond_85

    .line 2262
    aget-object v2, v0, v10

    .line 2263
    aget-object v12, v0, v9

    .line 2264
    aget-object v13, v0, v8

    .line 2265
    aget-object v14, v0, v7

    .line 2266
    aget-object v15, v0, v6

    .line 2267
    aget-object v0, v0, v5

    goto :goto_8a

    :cond_85
    move-object v0, v2

    move-object v12, v0

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    .line 2270
    :goto_8a
    sget-boolean v16, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v16, :cond_de

    .line 2271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDownlinkRFConfiguration(): Time="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", Network="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", Primary Modulation Scheme="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", Primary Num Layers="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", Second Modulation Scheme="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", Second Num Layers="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", Third Modulation Scheme="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", Third Num Layers="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2271
    invoke-static {v3}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_de
    new-array v3, v4, [Ljava/lang/String;

    .line 2283
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    aput-object v1, v3, v9

    aput-object v2, v3, v8

    aput-object v12, v3, v7

    aput-object v13, v3, v6

    aput-object v14, v3, v5

    const/4 v1, 0x6

    aput-object v15, v3, v1

    const/4 v1, 0x7

    aput-object v0, v3, v1

    .line 2282
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getEndcCapability()I
    .registers 1

    .line 1079
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getEndcStatus()I

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x2

    :cond_d
    return p0
.end method

.method public greylist getEndcLteLog()Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;
    .registers 6

    .line 1601
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getEndcLteLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEndcLteLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1607
    :cond_25
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;-><init>(Lcom/tmobile/echolocate/DataMetrics;)V

    .line 1609
    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrState()I

    .line 1610
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 1613
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->setTimeStamp(J)V

    .line 1614
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->setNetworkType(I)V

    .line 1615
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics;->getAnchorLteCid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->setAnchorLteCid(J)V

    .line 1617
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getPrimaryPci()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->setAnchorLtePci(I)V

    .line 1619
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics;->getEndcCapability()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->setEndcCapability(I)V

    .line 1620
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics;->getLteRrcState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->setLteRrcState(I)V

    .line 1622
    sget-boolean v2, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v2, :cond_b9

    .line 1623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEndcLteLog(): Time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", NetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AnchorLteCid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics;->getAnchorLteCid()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", AnchorLtePci="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    invoke-virtual {v0}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->getAnchorLtePci()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", EndcCapability="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics;->getEndcCapability()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", LteRrcState="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics;->getLteRrcState()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1623
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_b9
    return-object v0
.end method

.method public greylist getEndcUplinkLog()Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;
    .registers 4

    .line 1766
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getEndcUplinkLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEndcUplinkLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1772
    :cond_25
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;-><init>(Lcom/tmobile/echolocate/DataMetrics;)V

    .line 1774
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object p0

    .line 1776
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->setNetworkType(I)V

    .line 1777
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->setTimeStamp(J)V

    .line 1779
    sget-boolean v1, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v1, :cond_64

    .line 1780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEndcUplinkLog(): Time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", NetworkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1780
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_64
    return-object v0
.end method

.method public greylist getLteRrcState()I
    .registers 5

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 1062
    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x3

    .line 1063
    invoke-direct {p0, v2}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v3

    .line 1062
    invoke-virtual {v1, v3, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v1

    .line 1065
    invoke-direct {p0, v1, v0}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 1066
    array-length v0, p0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_20

    .line 1067
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_21

    :cond_20
    const/4 p0, -0x2

    :goto_21
    return p0
.end method

.method public greylist getNetworkIdentity()Ljava/util/List;
    .registers 16

    .line 1486
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getNetworkIdentity()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkIdentity(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1492
    :cond_25
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 1495
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getMccMnc()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "-2"

    if-eqz v1, :cond_46

    .line 1499
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_46

    .line 1500
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1501
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    :cond_46
    move-object v1, v4

    move-object v5, v1

    :goto_48
    const-string v6, "0"

    .line 1509
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d9

    .line 1510
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d9

    .line 1511
    iget-object v6, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_de

    .line 1513
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    :goto_65
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/CellInfo;

    .line 1516
    invoke-virtual {v10}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v11

    const-string v12, "-1"

    if-eqz v11, :cond_d3

    .line 1517
    instance-of v11, v10, Landroid/telephony/CellInfoGsm;

    if-eqz v11, :cond_95

    .line 1518
    check-cast v10, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v10}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v7

    .line 1520
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1521
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    :goto_93
    move-object v7, v12

    goto :goto_65

    .line 1522
    :cond_95
    instance-of v11, v10, Landroid/telephony/CellInfoLte;

    if-eqz v11, :cond_b2

    .line 1523
    check-cast v10, Landroid/telephony/CellInfoLte;

    invoke-virtual {v10}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    .line 1524
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1526
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v8

    move-object v8, v12

    goto :goto_65

    .line 1527
    :cond_b2
    instance-of v11, v10, Landroid/telephony/CellInfoWcdma;

    if-eqz v11, :cond_cd

    .line 1528
    check-cast v10, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v10}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    .line 1530
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1531
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_93

    :cond_cd
    const-string v10, "getNetworkIdentity(): CellInfo is not one of GSM/LTE/WCDMA"

    .line 1533
    invoke-static {v10}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_65

    :cond_d3
    const-string v10, "getNetworkIdentity(): CellInfo.isRegistered()=false"

    .line 1536
    invoke-static {v10}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_65

    :cond_d9
    const-string v6, "getNetworkIdentity(): current network is not available"

    .line 1541
    invoke-static {v6}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_de
    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    :cond_e1
    const/16 v6, 0x200

    new-array v6, v6, [B

    .line 1551
    iget-object v10, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v11, 0x1

    .line 1552
    invoke-direct {p0, v11}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v12

    .line 1551
    invoke-virtual {v10, v12, v6}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v10

    .line 1554
    invoke-direct {p0, v10, v6}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x2

    if-eqz p0, :cond_101

    .line 1555
    array-length v10, p0

    if-lt v10, v3, :cond_101

    .line 1556
    aget-object v10, p0, v2

    .line 1557
    aget-object v12, p0, v11

    .line 1558
    aget-object p0, p0, v6

    goto :goto_104

    :cond_101
    move-object p0, v4

    move-object v10, p0

    move-object v12, v10

    .line 1561
    :goto_104
    sget-boolean v13, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v13, :cond_172

    .line 1562
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getNetworkIdentity(): Time="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", Network="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", MCC="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", MNC="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", TAC="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", LAC for PCell="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", CID for PCell="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", PCI for PCell="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", PCI for SCell="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", CID for SCell2="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "NOT SUPPORTED"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", PCI for SCell2="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1562
    invoke-static {v13}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_172
    const/16 v13, 0xb

    new-array v13, v13, [Ljava/lang/String;

    .line 1577
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v2

    aput-object v0, v13, v11

    aput-object v5, v13, v6

    aput-object v1, v13, v3

    const/4 v0, 0x4

    aput-object v7, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v9, v13, v0

    const/4 v0, 0x7

    aput-object v10, v13, v0

    const/16 v0, 0x8

    aput-object v12, v13, v0

    const/16 v0, 0x9

    aput-object v4, v13, v0

    const/16 v0, 0xa

    aput-object p0, v13, v0

    .line 1576
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getSignalCondition()Ljava/util/List;
    .registers 29

    move-object/from16 v0, p0

    .line 1838
    iget-object v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    const-string v3, "getSignalCondition()"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    iget-boolean v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v1, :cond_27

    .line 1840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSignalCondition(): mShouldReport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 1844
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 1845
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0xe

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v7, 0x10

    const/16 v8, 0xb

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/4 v3, 0x2

    if-nez v2, :cond_82

    const-string v0, "getSignalCondition(): not in LTE"

    .line 1846
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/String;

    .line 1848
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v18

    aput-object v1, v0, v17

    const-string v1, "-999"

    aput-object v1, v0, v3

    aput-object v1, v0, v16

    aput-object v1, v0, v15

    aput-object v1, v0, v14

    aput-object v1, v0, v13

    aput-object v1, v0, v12

    aput-object v1, v0, v11

    aput-object v1, v0, v10

    aput-object v1, v0, v9

    aput-object v1, v0, v8

    aput-object v1, v0, v6

    aput-object v1, v0, v5

    aput-object v1, v0, v4

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1847
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_82
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 1884
    iget-object v4, v0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1885
    invoke-direct {v0, v3}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v5

    .line 1884
    invoke-virtual {v4, v5, v2}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v4

    .line 1887
    invoke-direct {v0, v4, v2}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "-50"

    const-string v4, "-150"

    if-eqz v0, :cond_cf

    .line 1888
    array-length v5, v0

    const/16 v6, 0x19

    if-lt v5, v6, :cond_cf

    .line 1889
    aget-object v4, v0, v18

    .line 1890
    aget-object v2, v0, v17

    .line 1891
    aget-object v5, v0, v3

    .line 1892
    aget-object v6, v0, v16

    .line 1893
    aget-object v19, v0, v15

    .line 1894
    aget-object v20, v0, v14

    .line 1895
    aget-object v21, v0, v13

    .line 1896
    aget-object v22, v0, v12

    .line 1897
    aget-object v23, v0, v11

    .line 1898
    aget-object v24, v0, v10

    .line 1899
    aget-object v25, v0, v9

    .line 1900
    aget-object v26, v0, v8

    const/16 v27, 0x18

    .line 1902
    aget-object v0, v0, v27

    move-object v11, v0

    move-object v9, v4

    move-object v10, v6

    move-object/from16 v12, v19

    move-object/from16 v0, v20

    move-object/from16 v4, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v6, v24

    move-object/from16 v8, v25

    move-object/from16 v15, v26

    goto :goto_db

    :cond_cf
    move-object v0, v2

    move-object v5, v0

    move-object v6, v5

    move-object v8, v6

    move-object v9, v4

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object v4, v8

    .line 1905
    :goto_db
    sget-boolean v27, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v27, :cond_174

    .line 1906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSignalStrength(): Time="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Network="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", RSRP="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", RSRQ="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", SINR="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", RSSI="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", RACH Power="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", LTE UL headroom="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "NOT SUPPORTED"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", RSRP of SCell="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", RSRQ of SCell="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", SINR of SCell="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", RSSI of SCell="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", RSRP of SCell2="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", RSRQ of SCell2="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", SINR of SCell2="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", RSSI of SCell2="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1906
    invoke-static {v3}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/16 v3, 0x10

    goto :goto_175

    :cond_174
    move v3, v7

    :goto_175
    new-array v3, v3, [Ljava/lang/String;

    .line 1926
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v18

    aput-object v1, v3, v17

    const/4 v1, 0x2

    aput-object v9, v3, v1

    aput-object v2, v3, v16

    const/4 v1, 0x4

    aput-object v5, v3, v1

    const/4 v1, 0x5

    aput-object v10, v3, v1

    const/4 v1, 0x6

    aput-object v11, v3, v1

    const-string v1, "-2"

    const/4 v2, 0x7

    aput-object v1, v3, v2

    const/16 v1, 0x8

    aput-object v12, v3, v1

    const/16 v1, 0x9

    aput-object v0, v3, v1

    const/16 v0, 0xa

    aput-object v4, v3, v0

    const/16 v0, 0xb

    aput-object v13, v3, v0

    const/16 v0, 0xc

    aput-object v14, v3, v0

    const/16 v0, 0xd

    aput-object v6, v3, v0

    const/16 v0, 0xe

    aput-object v8, v3, v0

    const/16 v0, 0xf

    aput-object v15, v3, v0

    .line 1925
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSsbBeamLog()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;",
            ">;"
        }
    .end annotation

    .line 1796
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getSsbBeamLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSsbBeamLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1802
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1803
    new-instance v1, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;

    invoke-direct {v1, p0}, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;-><init>(Lcom/tmobile/echolocate/DataMetrics;)V

    .line 1805
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_55

    .line 1807
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSsbBeamLog(): nrStatus None"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v2, -0x2

    .line 1808
    invoke-virtual {v1, v2}, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->setPci(I)V

    goto :goto_5c

    .line 1810
    :cond_55
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrPci()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->setPci(I)V

    .line 1812
    :goto_5c
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->setTimeStamp(J)V

    .line 1813
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrRsrp()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->setSsbBrsrp(F)V

    .line 1814
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1817
    sget-boolean v2, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v2, :cond_a5

    .line 1818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSsbBeamLog(): Time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pci="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    invoke-virtual {v1}, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->getPci()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ssbBrsrp="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrRsrp()F

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1818
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_a5
    return-object v0
.end method

.method public greylist getUplinkCarrierInfo()Ljava/util/List;
    .registers 20

    move-object/from16 v0, p0

    .line 2143
    iget-object v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    const-string v3, "getUplinkCarrierInfo()"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    iget-boolean v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v1, :cond_27

    .line 2145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUplinkCarrierInfo(): mShouldReport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 2149
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 2150
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x8

    const/16 v4, 0x9

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x5

    if-nez v2, :cond_63

    const-string v0, "getUplinkCarrierInfo(): not in LTE"

    .line 2151
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    .line 2153
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    aput-object v1, v0, v10

    const-string v1, "-999"

    aput-object v1, v0, v9

    aput-object v1, v0, v8

    aput-object v1, v0, v7

    aput-object v1, v0, v12

    aput-object v1, v0, v6

    aput-object v1, v0, v5

    aput-object v1, v0, v3

    .line 2152
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_63
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 2176
    iget-object v13, v0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2177
    invoke-direct {v0, v12}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v14

    .line 2176
    invoke-virtual {v13, v14, v2}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v13

    .line 2179
    invoke-direct {v0, v13, v2}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "-2"

    if-eqz v0, :cond_90

    .line 2180
    array-length v13, v0

    if-lt v13, v5, :cond_90

    .line 2181
    aget-object v2, v0, v11

    .line 2182
    aget-object v13, v0, v10

    .line 2183
    aget-object v14, v0, v9

    .line 2184
    aget-object v15, v0, v8

    .line 2185
    aget-object v16, v0, v7

    .line 2186
    aget-object v17, v0, v12

    .line 2187
    aget-object v0, v0, v6

    move-object v5, v0

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    goto :goto_96

    :cond_90
    move-object v0, v2

    move-object v3, v0

    move-object v5, v3

    move-object v13, v5

    move-object v14, v13

    move-object v15, v14

    .line 2190
    :goto_96
    sget-boolean v18, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v18, :cond_f2

    .line 2191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUplinkCarrierInfo(): Time="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2192
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", Network="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", Num Channels="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", Primary EARFCN="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", Primary Bandwidth="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", Primary Band Number="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", Second EARFCN="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", Second Bandwidth="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", Second Band Number="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2191
    invoke-static {v6}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_f2
    new-array v4, v4, [Ljava/lang/String;

    .line 2204
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    aput-object v1, v4, v10

    aput-object v2, v4, v9

    aput-object v13, v4, v8

    aput-object v14, v4, v7

    const/4 v1, 0x5

    aput-object v15, v4, v1

    const/4 v1, 0x6

    aput-object v0, v4, v1

    const/4 v0, 0x7

    aput-object v3, v4, v0

    const/16 v0, 0x8

    aput-object v5, v4, v0

    .line 2203
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUplinkRFConfiguration()Ljava/util/List;
    .registers 10

    .line 2302
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getUplinkRFConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUplinkRFConfiguration(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2308
    :cond_25
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 2309
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_50

    const-string p0, "getUplinkRFConfiguration(): not in LTE"

    .line 2310
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    new-array p0, v3, [Ljava/lang/String;

    .line 2312
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v6

    aput-object v0, p0, v5

    const-string v0, "-999"

    aput-object v0, p0, v4

    aput-object v0, p0, v2

    .line 2311
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_50
    const/16 v1, 0x200

    new-array v1, v1, [B

    .line 2325
    iget-object v7, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x7

    .line 2326
    invoke-direct {p0, v8}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v8

    .line 2325
    invoke-virtual {v7, v8, v1}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v7

    .line 2328
    invoke-direct {p0, v7, v1}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    const-string v1, "-2"

    if-eqz p0, :cond_6f

    .line 2329
    array-length v7, p0

    if-lt v7, v4, :cond_6f

    .line 2330
    aget-object v1, p0, v6

    .line 2331
    aget-object p0, p0, v5

    goto :goto_70

    :cond_6f
    move-object p0, v1

    .line 2334
    :goto_70
    sget-boolean v7, Lcom/tmobile/echolocate/DataMetrics;->DBG:Z

    if-eqz v7, :cond_a4

    .line 2335
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUplinkRFConfiguration(): Time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Network="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Primary Modulation Scheme="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Second Modulation Scheme="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2335
    invoke-static {v7}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :cond_a4
    new-array v3, v3, [Ljava/lang/String;

    .line 2343
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    aput-object v0, v3, v5

    aput-object v1, v3, v4

    aput-object p0, v3, v2

    .line 2342
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

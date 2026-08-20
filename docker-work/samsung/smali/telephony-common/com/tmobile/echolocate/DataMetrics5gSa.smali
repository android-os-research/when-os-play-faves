.class public Lcom/tmobile/echolocate/DataMetrics5gSa;
.super Ljava/lang/Object;
.source "DataMetrics5gSa.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;,
        Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;,
        Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;,
        Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;,
        Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;,
        Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;,
        Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;
    }
.end annotation


# static fields
.field private static final greylist ECHO_APP_SIG:Landroid/content/pm/Signature;

.field private static final greylist MY_ACCOUNT_SIG:Landroid/content/pm/Signature;

.field public static final greylist SEM_KEY_DEVICE_CONFIG_STRING:Ljava/lang/String; = "sem_device_config"

.field private static final greylist SPRINT_HUB_SIG:Landroid/content/pm/Signature;

.field private static final greylist TAG:Ljava/lang/String; = "DataMetrics5gSa"


# instance fields
.field private greylist CURRENT_API_VERSION:I

.field private greylist isCscFeatureSupported3:Z

.field private greylist isCscFeatureSupported4:Z

.field private greylist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private greylist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private greylist mContext:Landroid/content/Context;

.field private greylist mShouldReport:Z

.field private greylist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private greylist mTelephonyCallback:Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;

.field private greylist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private greylist overrideNetworkType:I


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetmTelephonyCallback(Lcom/tmobile/echolocate/DataMetrics5gSa;)Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;
    .registers 1

    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyCallback:Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetmTelephonyManager(Lcom/tmobile/echolocate/DataMetrics5gSa;)Landroid/telephony/TelephonyManager;
    .registers 1

    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$msetOverrideNetworkType(Lcom/tmobile/echolocate/DataMetrics5gSa;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->setOverrideNetworkType(I)V

    return-void
.end method

.method static bridge synthetic greylist -$$Nest$smlogD(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static constructor greylist <clinit>()V
    .registers 2

    .line 156
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->MY_ACCOUNT_SIG:Landroid/content/pm/Signature;

    .line 186
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->ECHO_APP_SIG:Landroid/content/pm/Signature;

    .line 216
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->SPRINT_HUB_SIG:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 15

    .line 1931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 262
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->overrideNetworkType:I

    .line 263
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    .line 264
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->isCscFeatureSupported3:Z

    .line 265
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->isCscFeatureSupported4:Z

    .line 1932
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "DataMetrics5gSa()"

    .line 1934
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1937
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1938
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 1939
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1940
    new-instance p1, Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;

    invoke-direct {p1, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyCallback:Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;

    .line 1941
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v1, "CscFeature_Common_SupportEchoLocatePhase2"

    invoke-virtual {p1, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1942
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->isTmoSim()Z

    move-result v1

    .line 1943
    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    const-string v3, "TMB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1944
    iget-object v3, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tmobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 1945
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->isMyAccountSigPresent()Z

    move-result v4

    .line 1946
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->isEchoAppSigPresent()Z

    move-result v5

    .line 1948
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->isSprSim()Z

    move-result v6

    .line 1949
    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    const-string v8, "SPR"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1950
    iget-object v8, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sprint"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 1951
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->isSprintHubSigPresent()Z

    move-result v9

    .line 1953
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_SupportEchoLocatePhase3"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->isCscFeatureSupported3:Z

    .line 1954
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_SupportEchoLocatePhase4"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->isCscFeatureSupported4:Z

    const/4 v11, 0x3

    .line 1962
    iput v11, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->CURRENT_API_VERSION:I

    const/4 v11, 0x1

    const-string v12, "DataMetrics5gSa(): isCscFeatureSupported="

    if-eqz v2, :cond_fc

    if-eqz v10, :cond_bf

    if-eqz v1, :cond_bf

    if-eqz v2, :cond_bf

    if-eqz v3, :cond_bf

    if-nez v4, :cond_be

    if-eqz v5, :cond_bf

    :cond_be
    move v0, v11

    .line 1965
    :cond_bf
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isTmoSim="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isTmoSalesCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isCalledFromTmo="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isMyAccountSigPresent="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isEchoAppSigPresent="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_144

    :cond_fc
    if-eqz v7, :cond_142

    if-nez p1, :cond_104

    .line 1978
    iget-boolean v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->isCscFeatureSupported3:Z

    if-eqz v1, :cond_10d

    :cond_104
    if-eqz v6, :cond_10d

    if-eqz v7, :cond_10d

    if-eqz v8, :cond_10d

    if-eqz v9, :cond_10d

    move v0, v11

    :cond_10d
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    .line 1984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isSprSim="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isSprSalesCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isCalledFromSpr="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isSprintHubSigPresent="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_144

    .line 1990
    :cond_142
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    .line 1992
    :goto_144
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_157

    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-eqz v0, :cond_157

    .line 1993
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyCallback:Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;

    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_157
    return-void
.end method

.method private greylist getAntennaBars()I
    .registers 2

    .line 1366
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    .line 1367
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_20

    .line 1373
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getVendorLevel()I

    move-result p0

    goto :goto_22

    :cond_20
    const/16 p0, -0x3e7

    :goto_22
    return p0
.end method

.method private greylist getCarrierConfigVersion()Ljava/lang/String;
    .registers 8

    const-string v0, "getCarrierConfigVersion message"

    const-string v1, "getCarrierConfigVersion = IN"

    .line 1758
    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1759
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 1760
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "version"

    .line 1761
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 p0, 0x0

    .line 1766
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarrierConfigVersion projection = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string v2, "content://com.samsung.ims.entitlementconfig.provider/config"

    .line 1767
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string v1, "getCarrierConfigVersion Cursor = IN"

    .line 1769
    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    if-eqz p0, :cond_71

    .line 1771
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_71

    const/4 v1, 0x0

    .line 1772
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_71

    .line 1773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierConfigVersion cursor= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1774
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_6d} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_6d} :catch_7b
    .catchall {:try_start_18 .. :try_end_6d} :catchall_79

    .line 1788
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_71
    :try_start_71
    const-string v1, "getCarrierConfigVersion cursor= null"

    .line 1776
    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/SecurityException; {:try_start_71 .. :try_end_76} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_76} :catch_7b
    .catchall {:try_start_71 .. :try_end_76} :catchall_79

    if-eqz p0, :cond_c1

    goto :goto_be

    :catchall_79
    move-exception v0

    goto :goto_c4

    :catch_7b
    move-exception v1

    :try_start_7c
    const-string v2, "getCarrierConfigVersion Exception"

    .line 1783
    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1784
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    if-eqz p0, :cond_c1

    goto :goto_be

    :catch_9d
    move-exception v1

    const-string v2, "getCarrierConfigVersion SecurityException"

    .line 1779
    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1780
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 1781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_7c .. :try_end_bc} :catchall_79

    if-eqz p0, :cond_c1

    .line 1788
    :goto_be
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_c1
    const-string p0, "-2"

    return-object p0

    :goto_c4
    if-eqz p0, :cond_c9

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1790
    :cond_c9
    throw v0
.end method

.method private greylist getCommandsToCp(I)[B
    .registers 5

    const-string p0, "getCommandToCp(): failed to close dos "

    .line 1705
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1706
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x11

    .line 1709
    :try_start_e
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x92

    .line 1710
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x5

    .line 1711
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1712
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1d} :catch_23
    .catchall {:try_start_e .. :try_end_1d} :catchall_21

    .line 1718
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

    .line 1714
    invoke-static {v2, p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 1718
    :try_start_29
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p1

    .line 1720
    invoke-static {p0, p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1725
    :goto_31
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 1718
    :goto_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception v0

    .line 1720
    invoke-static {p0, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1723
    :goto_3e
    throw p1
.end method

.method private greylist getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 973
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v0, :cond_2f

    if-eqz p0, :cond_2c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonDataSettings(): default on dataSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string p0, "-2"

    goto :goto_31

    :cond_29
    const-string p0, "ON"

    goto :goto_31

    :cond_2c
    const-string p0, "OFF"

    goto :goto_31

    :cond_2f
    const-string p0, "-1"

    .line 988
    :goto_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonDataSettings(): ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for setting value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist getCurrentNetworkType()Ljava/lang/String;
    .registers 4

    .line 1550
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_41

    .line 1553
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3f

    if-eq p0, v1, :cond_3d

    if-eq p0, v0, :cond_42

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x14

    if-eq p0, v0, :cond_39

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): default on currNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const/4 v0, -0x2

    goto :goto_42

    :cond_39
    move v0, v2

    goto :goto_42

    :cond_3b
    move v0, v1

    goto :goto_42

    :cond_3d
    const/4 v0, 0x4

    goto :goto_42

    :cond_3f
    const/4 v0, 0x5

    goto :goto_42

    :cond_41
    const/4 v0, -0x1

    .line 1576
    :cond_42
    :goto_42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): ret="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1578
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist getCurrentTime()Ljava/lang/String;
    .registers 2

    .line 933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist getDataActivityType()Ljava/lang/String;
    .registers 3

    .line 1333
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

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

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataActivityType(): default on currDataActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

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

    .line 1355
    :cond_35
    :goto_35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataActivityType(): ret="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist getMccMnc()Ljava/lang/String;
    .registers 3

    .line 1677
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMccMnc(): ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist getNetworkModeSetting()Ljava/lang/String;
    .registers 3

    .line 1016
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1017
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 1016
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType(I)I

    move-result p0

    if-eqz p0, :cond_5d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5d

    const/16 v0, 0x9

    if-eq p0, v0, :cond_57

    const/16 v0, 0xe

    if-eq p0, v0, :cond_5d

    const/16 v0, 0x12

    if-eq p0, v0, :cond_5d

    const/16 v0, 0x14

    if-eq p0, v0, :cond_57

    const/16 v0, 0xb

    if-eq p0, v0, :cond_57

    const/16 v0, 0xc

    if-eq p0, v0, :cond_57

    const/16 v0, 0x17

    if-eq p0, v0, :cond_54

    const/16 v0, 0x18

    if-eq p0, v0, :cond_54

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_54

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_54

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkModeSetting(): default on networkModeSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string p0, "-2"

    goto :goto_5f

    :cond_54
    const-string p0, "5G"

    goto :goto_5f

    :cond_57
    const-string p0, "4G"

    goto :goto_5f

    :cond_5a
    const-string p0, "2G"

    goto :goto_5f

    :cond_5d
    const-string p0, "3G"

    .line 1044
    :goto_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkModeSetting(): ret= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist getNetworkTypeWithENDC()I
    .registers 4

    .line 1504
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_60

    .line 1505
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_4b

    .line 1507
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, 0x3

    if-eq v0, v1, :cond_3c

    const/16 p0, 0x14

    if-eq v0, p0, :cond_3a

    .line 1521
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkTypeWithENDC(): default on currNetwork="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const/4 v2, -0x2

    goto :goto_4a

    :cond_3a
    const/4 v2, 0x1

    goto :goto_4a

    .line 1513
    :cond_3c
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    if-ne p0, v2, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v2, 0x2

    :goto_4a
    move v1, v2

    .line 1526
    :cond_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNetworkTypeWithENDC(): ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_74

    .line 1529
    :cond_60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNetworkTypeWithENDC(): Service state null > ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :goto_74
    return v1
.end method

.method private greylist getOverrideNetworkType(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 2016
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "5GUC"

    const/4 v2, 0x5

    const/4 v3, 0x3

    const-string v4, "5G"

    const-string v5, "NA"

    if-nez v0, :cond_45

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 2041
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getOverrideNetworkType(): default on networkType="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :cond_2f
    move-object v1, v5

    goto :goto_50

    .line 2028
    :cond_31
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->overrideNetworkType:I

    if-eqz p0, :cond_42

    const/4 p1, 0x1

    if-eq p0, p1, :cond_42

    const/4 p1, 0x2

    if-ne p0, p1, :cond_3c

    goto :goto_42

    :cond_3c
    if-ne p0, v3, :cond_3f

    goto :goto_4f

    :cond_3f
    if-ne p0, v2, :cond_2f

    goto :goto_50

    :cond_42
    :goto_42
    const-string v1, "4G_LTE"

    goto :goto_50

    .line 2018
    :cond_45
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->overrideNetworkType:I

    if-eqz p0, :cond_4f

    if-ne p0, v3, :cond_4c

    goto :goto_4f

    :cond_4c
    if-ne p0, v2, :cond_2f

    goto :goto_50

    :cond_4f
    :goto_4f
    move-object v1, v4

    .line 2043
    :goto_50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getOverrideNetworkType(): networkType="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v1
.end method

.method private greylist getResultsFromBytes(I[B)[Ljava/lang/String;
    .registers 4

    if-gtz p1, :cond_9

    const-string p0, "getResultsFromBytes(): length is less than or equal to zero!"

    .line 1733
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1737
    :cond_9
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Ljava/lang/String;-><init>([BII)V

    .line 1738
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getResultsFromBytes(): resultString="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string p2, "\\|"

    .line 1740
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 1741
    :goto_2a
    array-length p1, p0

    if-ge v0, p1, :cond_46

    .line 1743
    aget-object p1, p0, v0

    if-eqz p1, :cond_3f

    const-string p2, ""

    .line 1744
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_43

    :cond_3f
    const-string p1, "-2"

    .line 1746
    aput-object p1, p0, v0

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_46
    return-object p0
.end method

.method private greylist getRttSetting()Ljava/lang/String;
    .registers 6

    .line 1117
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_SupportRTT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "-1"

    if-nez v0, :cond_14

    const-string p0, "getRttSetting(): feature not supported"

    .line 1118
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v1

    .line 1122
    :cond_14
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_rtt_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rttSetting: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    if-eqz v0, :cond_83

    const/4 v2, 0x4

    if-eq v0, v2, :cond_51

    .line 1145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRttSetting(): default on rttSetting="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string v1, "-2"

    goto :goto_85

    .line 1130
    :cond_51
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "preferred_rtt_automatic_mode"

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_62

    const-string v1, "MANUAL"

    goto :goto_85

    :cond_62
    const/4 v0, 0x1

    if-ne p0, v0, :cond_68

    const-string v1, "AUTOMATIC"

    goto :goto_85

    :cond_68
    const/4 v0, 0x2

    if-ne p0, v0, :cond_6e

    const-string v1, "CALL"

    goto :goto_85

    .line 1140
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRttSetting(): default on rttAutomaticMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_85

    :cond_83
    const-string v1, "OFF"

    .line 1147
    :goto_85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRttSetting(): ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v1
.end method

.method private greylist getRttTranscriptSetting()Ljava/lang/String;
    .registers 2

    .line 1163
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_VoiceCall_SupportRTT"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_14

    const-string p0, "getRttTranscriptSetting(): feature not supported"

    .line 1164
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string p0, "-1"

    return-object p0

    :cond_14
    const-string p0, "getRttTranscriptSetting(): currently not supported"

    .line 1168
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 1170
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist getTechType()Ljava/lang/String;
    .registers 3

    .line 1606
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_49

    .line 1608
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    const/4 v0, 0x1

    const-string v1, "2G"

    if-eq p0, v0, :cond_4b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_46

    const/16 v0, 0xd

    if-eq p0, v0, :cond_43

    const/16 v0, 0x10

    if-eq p0, v0, :cond_4b

    const/16 v0, 0x14

    if-eq p0, v0, :cond_40

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): default on currNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string v1, "-2"

    goto :goto_4b

    :cond_40
    const-string v1, "NR"

    goto :goto_4b

    :cond_43
    const-string v1, "LTE"

    goto :goto_4b

    :cond_46
    const-string v1, "3G"

    goto :goto_4b

    :cond_49
    const-string v1, "-1"

    .line 1634
    :cond_4b
    :goto_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCurrentNetworkType(): ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v1
.end method

.method private greylist getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "getCurrentNetworkType(): ret="

    if-eqz p1, :cond_57

    const-string v1, "1"

    .line 1586
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "cpTechType: ret="

    if-eqz v1, :cond_23

    const-string p0, "NR"

    .line 1588
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_6d

    :cond_23
    const-string v1, "2"

    .line 1589
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    const-string p0, "LTE"

    .line 1591
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_6d

    .line 1593
    :cond_40
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechType()Ljava/lang/String;

    move-result-object p0

    .line 1594
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_6d

    .line 1597
    :cond_57
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechType()Ljava/lang/String;

    move-result-object p0

    .line 1598
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :goto_6d
    return-object p0
.end method

.method private greylist getUiLogNetworkType()Ljava/lang/String;
    .registers 3

    .line 1641
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_50

    .line 1643
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_47

    const/16 v0, 0xd

    if-eq p0, v0, :cond_44

    const/16 v0, 0x10

    if-eq p0, v0, :cond_41

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3e

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): default on currNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string p0, "-2"

    goto :goto_52

    :cond_3e
    const-string p0, "NR"

    goto :goto_52

    :cond_41
    const-string p0, "GSM"

    goto :goto_52

    :cond_44
    const-string p0, "LTE"

    goto :goto_52

    :cond_47
    const-string p0, "UMTS"

    goto :goto_52

    :cond_4a
    const-string p0, "EDGE"

    goto :goto_52

    :cond_4d
    const-string p0, "GPRS"

    goto :goto_52

    :cond_50
    const-string p0, "-1"

    .line 1669
    :goto_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist invokeOemRilRequestRaw(I)[Ljava/lang/String;
    .registers 6

    .line 1685
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_67

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 1687
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 1688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeOemRilRequestRaw: DefaultDataSubId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1689
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1690
    invoke-direct {p0, p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommandsToCp(I)[B

    move-result-object v3

    .line 1689
    invoke-virtual {v2, v1, v3, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForSubscriber(I[B[B)I

    move-result v1

    .line 1691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeOemRilRequestRaw: resp= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1692
    invoke-direct {p0, v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeOemRilRequestRaw: msg= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", resultFromCp= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0

    :cond_67
    const-string p0, "invokeOemRilRequestRaw: mTelephonyManager= null & resultFromCp = null"

    .line 1696
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist isEchoAppSigPresent()Z
    .registers 8

    .line 878
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_7
    const-string v1, "com.tmobile.echolocate"

    const/16 v2, 0x40

    .line 881
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_35

    .line 885
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_16
    if-ge v2, v1, :cond_2e

    aget-object v4, p0, v2

    move v5, v0

    .line 886
    :goto_1b
    array-length v6, p0

    if-ge v5, v6, :cond_2b

    .line 887
    sget-object v6, Lcom/tmobile/echolocate/DataMetrics5gSa;->ECHO_APP_SIG:Landroid/content/pm/Signature;

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

    .line 895
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    :cond_35
    :goto_35
    return v0
.end method

.method private greylist isMyAccountSigPresent()Z
    .registers 8

    .line 850
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_7
    const-string v1, "com.tmobile.pr.mytmobile"

    const/16 v2, 0x40

    .line 853
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_35

    .line 857
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_16
    if-ge v2, v1, :cond_2e

    aget-object v4, p0, v2

    move v5, v0

    .line 858
    :goto_1b
    array-length v6, p0

    if-ge v5, v6, :cond_2b

    .line 859
    sget-object v6, Lcom/tmobile/echolocate/DataMetrics5gSa;->MY_ACCOUNT_SIG:Landroid/content/pm/Signature;

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

    .line 867
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    :cond_35
    :goto_35
    return v0
.end method

.method private greylist isSprSim()Z
    .registers 7

    .line 839
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    const-string v0, "310120"

    const-string v1, "312530"

    const-string v2, "310028"

    const-string v3, "311390"

    const-string v4, "310332"

    const-string v5, "311328"

    .line 840
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 842
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private greylist isSprintHubSigPresent()Z
    .registers 8

    .line 906
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_7
    const-string v1, "com.sprint.ms.smf.services"

    const/16 v2, 0x40

    .line 909
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_35

    .line 913
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_16
    if-ge v2, v1, :cond_2e

    aget-object v4, p0, v2

    move v5, v0

    .line 914
    :goto_1b
    array-length v6, p0

    if-ge v5, v6, :cond_2b

    .line 915
    sget-object v6, Lcom/tmobile/echolocate/DataMetrics5gSa;->SPRINT_HUB_SIG:Landroid/content/pm/Signature;

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

    .line 923
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    :cond_35
    :goto_35
    return v0
.end method

.method private greylist isTmoSim()Z
    .registers 15

    .line 828
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

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

    .line 829
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 832
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private greylist isWifiConnected()Z
    .registers 2

    .line 813
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    .line 814
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 815
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

    .line 941
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static greylist logE(Ljava/lang/String;)V
    .registers 2

    .line 950
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static greylist logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 959
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private greylist setOverrideNetworkType(I)V
    .registers 2

    .line 2048
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->overrideNetworkType:I

    return-void
.end method


# virtual methods
.method public greylist buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    const-string p0, "content://com.samsung.ims.entitlementconfig.provider"

    .line 1871
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "config"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "xpath"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "tag_name"

    .line 1872
    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1873
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public greylist fillUlCarrier(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;I)Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;
    .registers 7

    .line 2857
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    .line 2858
    invoke-virtual {v0, p1}, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->setTechType(Ljava/lang/String;)V

    .line 2859
    invoke-virtual {v0, p2}, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->setArfcn(I)V

    .line 2860
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->setBandWidth(F)V

    .line 2861
    invoke-virtual {v0, p4}, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    .line 2862
    invoke-virtual {v0, p5}, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->setIsPrimary(I)V

    .line 2864
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getUlCarrierLog(): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getAnchorLteCid()J
    .registers 5

    .line 1178
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 1179
    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrState()I

    const-string v1, "0"

    .line 1182
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x2

    if-nez v1, :cond_5c

    const-string v1, "2"

    .line 1183
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1184
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_61

    .line 1186
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 1189
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1190
    instance-of v1, v0, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_4e

    .line 1191
    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    .line 1192
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    int-to-long v0, p0

    move-wide v2, v0

    goto :goto_61

    :cond_4e
    const-string v0, "getAnchorLteCid(): CellInfo is not one of LTE"

    .line 1196
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_59

    :cond_54
    const-string v0, "getAnchorLteCid(): CellInfo.isRegistered()=false"

    .line 1200
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :goto_59
    const-wide/16 v2, -0x3e7

    goto :goto_2b

    :cond_5c
    const-string p0, "getAnchorLteCid(): current network is not available"

    .line 1205
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :cond_61
    :goto_61
    return-wide v2
.end method

.method public greylist getApiVersion()I
    .registers 4

    .line 2004
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getAPIversion()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 2006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAPIversion(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0

    .line 2009
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAPIversion(): CURRENT_API_VERSION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->CURRENT_API_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 2011
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->CURRENT_API_VERSION:I

    return p0
.end method

.method public greylist getCarrierSa5gBandConfig()Ljava/util/Map;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "getCarrierSa5gBandConfig: "

    const-string v3, "-2"

    const-string v4, "ERROR"

    .line 1796
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1797
    iget-object v0, v1, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "//StandaloneBands5G_NRCA"

    const-string v7, "//StandaloneBands5G"

    .line 1798
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1d
    const/4 v10, 0x2

    if-ge v9, v10, :cond_1a5

    .line 1803
    :try_start_20
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCarrierSa5gBandConfig : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v6, v9

    invoke-virtual {v1, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa;->buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    aget-object v11, v6, v9

    invoke-virtual {v1, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa;->buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_4e
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_4e} :catch_17e
    .catch Landroid/database/SQLException; {:try_start_20 .. :try_end_4e} :catch_15d
    .catchall {:try_start_20 .. :try_end_4e} :catchall_15b

    const-string v11, "-1"

    const-string v12, "NONE"

    if-eqz v8, :cond_147

    .line 1805
    :try_start_54
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_147

    .line 1806
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 1807
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v14

    .line 1808
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCarrierSa5gBandConfig rowNum=: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1809
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCarrierSa5gBandConfig columnNum=: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_8b
    if-ge v7, v13, :cond_142

    .line 1811
    new-instance v15, Ljava/lang/String;

    const-string v10, ""

    invoke-direct {v15, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_95
    if-ge v10, v14, :cond_12f

    move-object/from16 v18, v6

    const/4 v6, 0x1

    if-le v14, v6, :cond_119

    .line 1814
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v0

    .line 1815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v13

    const-string v13, "getCarrierSa5gBandConfig TagValue: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    if-nez v10, :cond_ef

    .line 1816
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ef

    const-string v0, "/"

    .line 1817
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_125

    .line 1819
    array-length v6, v0

    const/4 v13, 0x1

    sub-int/2addr v6, v13

    aget-object v6, v0, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d9

    .line 1820
    array-length v6, v0

    sub-int/2addr v6, v13

    aget-object v0, v0, v6

    move-object v15, v0

    goto :goto_da

    :cond_d9
    move-object v15, v12

    .line 1824
    :goto_da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCarrierSa5gBandConfig Tag: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_125

    :cond_ef
    const/4 v13, 0x1

    if-ne v10, v13, :cond_125

    .line 1827
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 1828
    invoke-interface {v5, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCarrierSa5gBandConfig Value: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_125

    .line 1831
    :cond_110
    invoke-interface {v5, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "getCarrierSa5gBandConfig Value: -1"

    .line 1832
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_125

    :cond_119
    move-object/from16 v19, v0

    move/from16 v20, v13

    .line 1836
    invoke-virtual {v1, v5, v9, v12, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa;->putDefaultBandConfigValue(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "getCarrierSa5gBandConfig : columnNum > 1"

    .line 1837
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :cond_125
    :goto_125
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v18

    move-object/from16 v0, v19

    move/from16 v13, v20

    goto/16 :goto_95

    :cond_12f
    move-object/from16 v19, v0

    move-object/from16 v18, v6

    move/from16 v20, v13

    .line 1840
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, v18

    move-object/from16 v0, v19

    move/from16 v13, v20

    goto/16 :goto_8b

    :cond_142
    move-object/from16 v19, v0

    move-object/from16 v18, v6

    goto :goto_153

    :cond_147
    move-object/from16 v19, v0

    move-object/from16 v18, v6

    .line 1843
    invoke-virtual {v1, v5, v9, v12, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa;->putDefaultBandConfigValue(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "getCarrierSa5gBandConfig : cursor is null"

    .line 1844
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V
    :try_end_153
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_153} :catch_17e
    .catch Landroid/database/SQLException; {:try_start_54 .. :try_end_153} :catch_15d
    .catchall {:try_start_54 .. :try_end_153} :catchall_15b

    :goto_153
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v18

    move-object/from16 v0, v19

    goto/16 :goto_1d

    :catchall_15b
    move-exception v0

    goto :goto_19f

    :catch_15d
    move-exception v0

    const/4 v6, 0x1

    .line 1852
    :try_start_15f
    invoke-virtual {v1, v5, v6, v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->putDefaultBandConfigValue(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    .line 1853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    if-eqz v8, :cond_1aa

    goto :goto_1a7

    :catch_17e
    move-exception v0

    const/4 v6, 0x1

    .line 1848
    invoke-virtual {v1, v5, v6, v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->putDefaultBandConfigValue(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    .line 1849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1850
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_19c
    .catchall {:try_start_15f .. :try_end_19c} :catchall_15b

    if-eqz v8, :cond_1aa

    goto :goto_1a7

    :goto_19f
    if-eqz v8, :cond_1a4

    .line 1857
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1859
    :cond_1a4
    throw v0

    :cond_1a5
    if-eqz v8, :cond_1aa

    .line 1857
    :goto_1a7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1860
    :cond_1aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carrierSa5gBandConfig Size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v5
.end method

.method public greylist getCommonRFConfig(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    .line 1257
    invoke-direct {p0, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5b

    .line 1258
    array-length v0, p0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_5b

    if-nez p1, :cond_27

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonRFConfig: Transmission mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1261
    aget-object p0, p0, p1

    goto :goto_5d

    .line 1263
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonRFConfig: RRC state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1264
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_55

    const-string p0, "INACTIVE"

    goto :goto_5d

    :cond_55
    const-string p0, "CONNECTED"

    goto :goto_5d

    :cond_58
    const-string p0, "IDLE"

    goto :goto_5d

    :cond_5b
    const-string p0, "-1"

    :goto_5d
    return-object p0
.end method

.method public greylist getDlCarrierLog()Ljava/util/List;
    .registers 120
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2079
    iget-object v1, v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    const-string v3, "getDlCarrierLog()"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    iget-boolean v1, v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    const/4 v2, 0x0

    if-nez v1, :cond_27

    .line 2081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDlCarrierLog(): mShouldReport="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    return-object v2

    .line 2084
    :cond_27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x4

    .line 2114
    invoke-direct {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v9, 0x9

    const/16 v10, 0xa

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x6

    const/4 v2, 0x5

    const-string v5, "-2"

    const/4 v6, 0x2

    const/16 v19, -0x2

    if-eqz v4, :cond_2dc

    .line 2115
    array-length v8, v4

    if-lt v8, v10, :cond_2dc

    .line 2116
    aget-object v8, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2117
    aget-object v7, v4, v14

    invoke-direct {v0, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2118
    aget-object v22, v4, v6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 2119
    aget-object v23, v4, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 2120
    aget-object v24, v4, v3

    if-ne v8, v14, :cond_92

    const-string v4, "numAggChannels ==1 Data Feteched already"

    .line 2122
    invoke-static {v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move-object v3, v5

    move-object v4, v3

    move-object v6, v4

    move-object v10, v6

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v45, v14

    move-object v9, v7

    move v11, v8

    move/from16 v49, v19

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v46, v22

    move/from16 v47, v23

    move-object/from16 v48, v24

    move-object/from16 v7, v45

    move-object v8, v7

    goto/16 :goto_303

    :cond_92
    if-ne v8, v6, :cond_d1

    .line 2124
    aget-object v6, v4, v2

    invoke-direct {v0, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2125
    aget-object v26, v4, v15

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 2126
    aget-object v27, v4, v12

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2127
    aget-object v4, v4, v11

    move-object v3, v5

    move-object v10, v3

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v45, v14

    move-object v9, v7

    move v11, v8

    move/from16 v51, v19

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v46, v22

    move/from16 v47, v23

    move-object/from16 v48, v24

    move/from16 v49, v26

    move/from16 v50, v27

    move-object/from16 v7, v45

    move-object v8, v6

    move-object v6, v7

    goto/16 :goto_303

    :cond_d1
    if-ne v8, v13, :cond_12a

    .line 2129
    aget-object v6, v4, v2

    invoke-direct {v0, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2130
    aget-object v26, v4, v15

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 2131
    aget-object v27, v4, v12

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2132
    aget-object v28, v4, v11

    .line 2133
    aget-object v13, v4, v9

    invoke-direct {v0, v13}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2134
    aget-object v30, v4, v10

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v20, 0xb

    .line 2135
    aget-object v31, v4, v20

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/16 v18, 0xc

    .line 2136
    aget-object v4, v4, v18

    move-object v10, v4

    move-object v3, v5

    move-object v12, v3

    move-object/from16 v45, v12

    move-object v9, v7

    move v11, v8

    move-object v14, v13

    move/from16 v53, v19

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v46, v22

    move/from16 v47, v23

    move-object/from16 v48, v24

    move/from16 v49, v26

    move/from16 v50, v27

    move-object/from16 v4, v28

    move/from16 v51, v30

    move/from16 v52, v31

    move-object/from16 v7, v45

    move-object v13, v7

    move-object v8, v6

    move-object v6, v13

    goto/16 :goto_303

    :cond_12a
    if-ne v8, v3, :cond_19e

    .line 2138
    aget-object v6, v4, v2

    invoke-direct {v0, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2139
    aget-object v13, v4, v15

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 2140
    aget-object v13, v4, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2141
    aget-object v13, v4, v11

    .line 2142
    aget-object v3, v4, v9

    invoke-direct {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2143
    aget-object v30, v4, v10

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v20, 0xb

    .line 2144
    aget-object v31, v4, v20

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/16 v18, 0xc

    .line 2145
    aget-object v32, v4, v18

    const/16 v17, 0xd

    .line 2146
    aget-object v14, v4, v17

    invoke-direct {v0, v14}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v34, 0xe

    .line 2147
    aget-object v34, v4, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/16 v35, 0xf

    .line 2148
    aget-object v35, v4, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x10

    .line 2149
    aget-object v4, v4, v36

    move-object v12, v5

    move-object v9, v7

    move v11, v8

    move-object/from16 v45, v14

    move/from16 v55, v19

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v46, v22

    move/from16 v47, v23

    move-object/from16 v48, v24

    move/from16 v49, v26

    move/from16 v50, v27

    move/from16 v51, v30

    move/from16 v52, v31

    move-object/from16 v10, v32

    move/from16 v53, v34

    move/from16 v54, v35

    move-object v14, v3

    move-object v3, v4

    move-object v7, v12

    move-object v8, v6

    move-object v4, v13

    move-object v6, v7

    move-object v13, v6

    goto/16 :goto_303

    :cond_19e
    if-ne v8, v2, :cond_22f

    .line 2151
    aget-object v3, v4, v2

    invoke-direct {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2152
    aget-object v3, v4, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 2153
    aget-object v3, v4, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2154
    aget-object v3, v4, v11

    .line 2155
    aget-object v13, v4, v9

    invoke-direct {v0, v13}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2156
    aget-object v14, v4, v10

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v14, 0xb

    .line 2157
    aget-object v31, v4, v14

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/16 v14, 0xc

    .line 2158
    aget-object v32, v4, v14

    const/16 v14, 0xd

    .line 2159
    aget-object v10, v4, v14

    invoke-direct {v0, v10}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v10, 0xe

    .line 2160
    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v35, 0xf

    .line 2161
    aget-object v35, v4, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x10

    .line 2162
    aget-object v36, v4, v36

    const/16 v37, 0x11

    .line 2163
    aget-object v9, v4, v37

    invoke-direct {v0, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v37, 0x12

    .line 2164
    aget-object v37, v4, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    const/16 v39, 0x13

    .line 2165
    aget-object v39, v4, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    const/16 v40, 0x14

    .line 2166
    aget-object v4, v4, v40

    move v11, v8

    move-object v12, v9

    move/from16 v53, v10

    move-object/from16 v45, v14

    move/from16 v57, v19

    move/from16 v58, v57

    move/from16 v46, v22

    move/from16 v47, v23

    move-object/from16 v48, v24

    move/from16 v49, v26

    move/from16 v50, v27

    move/from16 v51, v30

    move/from16 v52, v31

    move-object/from16 v10, v32

    move/from16 v54, v35

    move/from16 v55, v37

    move/from16 v56, v39

    move-object v8, v6

    move-object v9, v7

    move-object v14, v13

    move-object v6, v4

    move-object v7, v5

    move-object v13, v7

    move-object v4, v3

    move-object/from16 v3, v36

    goto/16 :goto_303

    .line 2168
    :cond_22f
    aget-object v3, v4, v2

    invoke-direct {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2169
    aget-object v3, v4, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 2170
    aget-object v3, v4, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2171
    aget-object v3, v4, v11

    const/16 v9, 0x9

    .line 2172
    aget-object v10, v4, v9

    invoke-direct {v0, v10}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v9, 0xa

    .line 2173
    aget-object v10, v4, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v9, 0xb

    .line 2174
    aget-object v10, v4, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/16 v9, 0xc

    .line 2175
    aget-object v10, v4, v9

    const/16 v9, 0xd

    .line 2176
    aget-object v14, v4, v9

    invoke-direct {v0, v14}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v9, 0xe

    .line 2177
    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v32, 0xf

    .line 2178
    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/16 v32, 0x10

    .line 2179
    aget-object v32, v4, v32

    const/16 v36, 0x11

    .line 2180
    aget-object v11, v4, v36

    invoke-direct {v0, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v36, 0x12

    .line 2181
    aget-object v36, v4, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    const/16 v39, 0x13

    .line 2182
    aget-object v39, v4, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    const/16 v40, 0x14

    .line 2183
    aget-object v40, v4, v40

    const/16 v41, 0x15

    .line 2184
    aget-object v12, v4, v41

    invoke-direct {v0, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v41, 0x16

    .line 2185
    aget-object v41, v4, v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    const/16 v43, 0x17

    .line 2186
    aget-object v43, v4, v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    const/16 v44, 0x18

    .line 2187
    aget-object v4, v4, v44

    move/from16 v53, v9

    move-object/from16 v45, v14

    move/from16 v46, v22

    move/from16 v47, v23

    move-object/from16 v48, v24

    move/from16 v49, v26

    move/from16 v50, v27

    move/from16 v51, v30

    move/from16 v52, v31

    move/from16 v54, v35

    move/from16 v55, v36

    move/from16 v56, v39

    move/from16 v57, v41

    move/from16 v58, v43

    move-object v9, v7

    move-object v14, v13

    move-object v7, v4

    move-object v13, v12

    move-object v4, v3

    move-object v12, v11

    move-object/from16 v3, v32

    move v11, v8

    move-object v8, v6

    move-object/from16 v6, v40

    goto :goto_303

    :cond_2dc
    move-object v3, v5

    move-object v4, v3

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v45, v14

    move-object/from16 v48, v45

    move/from16 v46, v19

    move/from16 v47, v46

    move/from16 v49, v47

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    const/4 v11, 0x0

    .line 2193
    :goto_303
    iget-object v2, v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v15, "WCDMA"

    move-object/from16 v24, v1

    const-string v1, "CDMA"

    move-object/from16 v26, v7

    const-string v7, "NR"

    move-object/from16 v27, v13

    const-string v13, "LTE"

    if-eqz v2, :cond_3d3

    .line 2194
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_3d3

    .line 2204
    iget-object v2, v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v2

    if-eqz v2, :cond_38b

    .line 2206
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_38b

    .line 2207
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_38b

    .line 2208
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v16, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    :goto_33f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_386

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v40, v2

    move-object/from16 v2, v39

    check-cast v2, Landroid/telephony/CellSignalStrength;

    move-object/from16 v39, v6

    .line 2209
    instance-of v6, v2, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v6, :cond_359

    .line 2210
    move-object/from16 v31, v2

    check-cast v31, Landroid/telephony/CellSignalStrengthLte;

    .line 2212
    :cond_359
    instance-of v6, v2, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v6, :cond_361

    .line 2213
    move-object/from16 v32, v2

    check-cast v32, Landroid/telephony/CellSignalStrengthNr;

    .line 2215
    :cond_361
    instance-of v6, v2, Landroid/telephony/CellSignalStrengthCdma;

    if-eqz v6, :cond_369

    .line 2216
    move-object/from16 v16, v2

    check-cast v16, Landroid/telephony/CellSignalStrengthCdma;

    .line 2218
    :cond_369
    instance-of v6, v2, Landroid/telephony/CellSignalStrengthTdscdma;

    if-eqz v6, :cond_371

    .line 2219
    move-object/from16 v30, v2

    check-cast v30, Landroid/telephony/CellSignalStrengthTdscdma;

    .line 2221
    :cond_371
    instance-of v6, v2, Landroid/telephony/CellSignalStrengthWcdma;

    if-eqz v6, :cond_379

    .line 2222
    move-object/from16 v35, v2

    check-cast v35, Landroid/telephony/CellSignalStrengthWcdma;

    .line 2224
    :cond_379
    instance-of v6, v2, Landroid/telephony/CellSignalStrengthGsm;

    if-eqz v6, :cond_381

    .line 2225
    move-object/from16 v36, v2

    check-cast v36, Landroid/telephony/CellSignalStrengthGsm;

    :cond_381
    move-object/from16 v6, v39

    move-object/from16 v2, v40

    goto :goto_33f

    :cond_386
    move-object/from16 v39, v6

    move-object/from16 v2, v32

    goto :goto_398

    :cond_38b
    move-object/from16 v39, v6

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    :goto_398
    if-eqz v2, :cond_3a2

    .line 2235
    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3a2

    move-object v2, v7

    goto :goto_3a3

    :cond_3a2
    move-object v2, v13

    :goto_3a3
    if-eqz v31, :cond_3ac

    .line 2236
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3ac

    move-object v2, v13

    :cond_3ac
    if-eqz v16, :cond_3b5

    .line 2237
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/CellSignalStrengthCdma;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3b5

    move-object v2, v1

    :cond_3b5
    if-eqz v30, :cond_3bf

    .line 2238
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/CellSignalStrengthTdscdma;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3bf

    const-string v2, "TDSCDMA"

    :cond_3bf
    if-eqz v35, :cond_3c8

    .line 2239
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/CellSignalStrengthWcdma;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3c8

    move-object v2, v15

    :cond_3c8
    if-eqz v36, :cond_3d6

    .line 2240
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/CellSignalStrengthGsm;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3d6

    const-string v2, "GSM"

    goto :goto_3d6

    :cond_3d3
    move-object/from16 v39, v6

    move-object v2, v13

    :cond_3d6
    :goto_3d6
    const/4 v6, 0x0

    .line 2254
    invoke-virtual {v0, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonRFConfig(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v30, v3

    move-object/from16 v16, v12

    const/4 v12, 0x6

    .line 2264
    invoke-direct {v0, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_550

    .line 2265
    array-length v12, v3

    move-object/from16 v32, v10

    const/4 v10, 0x6

    if-lt v12, v10, :cond_552

    const/4 v10, 0x0

    .line 2266
    aget-object v12, v3, v10

    const/4 v10, 0x1

    .line 2267
    aget-object v33, v3, v10

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    if-ne v11, v10, :cond_416

    const-string v3, "-1"

    move-object/from16 v66, v5

    move-object/from16 v67, v66

    move-object/from16 v68, v67

    move-object v10, v12

    move-object/from16 v36, v14

    move/from16 v63, v19

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v14, v35

    const/4 v12, -0x1

    const/16 v62, -0x1

    move-object/from16 v35, v3

    goto/16 :goto_569

    :cond_416
    const/4 v10, 0x2

    if-ne v11, v10, :cond_43e

    .line 2273
    aget-object v25, v3, v10

    const/4 v10, 0x3

    .line 2274
    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v29, "-1"

    move-object/from16 v66, v5

    move-object/from16 v67, v66

    move-object/from16 v68, v67

    move-object v10, v12

    move-object/from16 v36, v14

    move/from16 v63, v19

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v14, v35

    const/16 v62, -0x1

    move v12, v3

    move-object/from16 v3, v25

    move-object/from16 v35, v29

    goto/16 :goto_569

    :cond_43e
    const/4 v10, 0x3

    if-ne v11, v10, :cond_470

    const/16 v25, 0x2

    .line 2278
    aget-object v29, v3, v25

    .line 2279
    aget-object v36, v3, v10

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    const/4 v10, 0x4

    .line 2280
    aget-object v28, v3, v10

    const/4 v10, 0x5

    .line 2281
    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v62, v3

    move-object/from16 v66, v5

    move-object/from16 v67, v66

    move-object/from16 v68, v67

    move-object v10, v12

    move/from16 v63, v19

    move/from16 v64, v63

    move/from16 v65, v64

    move-object/from16 v3, v29

    move/from16 v12, v36

    move-object/from16 v36, v14

    move/from16 v14, v35

    move-object/from16 v35, v28

    goto/16 :goto_569

    :cond_470
    const/4 v10, 0x4

    const/16 v25, 0x2

    if-ne v11, v10, :cond_4af

    .line 2283
    aget-object v28, v3, v25

    const/16 v29, 0x3

    .line 2284
    aget-object v36, v3, v29

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    .line 2285
    aget-object v40, v3, v10

    const/4 v10, 0x5

    .line 2286
    aget-object v22, v3, v10

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x6

    .line 2287
    aget-object v43, v3, v23

    const/16 v42, 0x7

    .line 2288
    aget-object v3, v3, v42

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v63, v3

    move-object/from16 v67, v5

    move-object/from16 v68, v67

    move-object v10, v12

    move/from16 v64, v19

    move/from16 v65, v64

    move/from16 v62, v22

    move-object/from16 v3, v28

    move/from16 v12, v36

    move-object/from16 v66, v43

    move-object/from16 v36, v14

    move/from16 v14, v35

    move-object/from16 v35, v40

    goto/16 :goto_569

    :cond_4af
    const/4 v10, 0x5

    const/16 v23, 0x6

    const/16 v29, 0x3

    const/16 v42, 0x7

    if-ne v11, v10, :cond_4f9

    .line 2290
    aget-object v36, v3, v25

    .line 2291
    aget-object v22, v3, v29

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    const/16 v22, 0x4

    .line 2292
    aget-object v41, v3, v22

    .line 2293
    aget-object v43, v3, v10

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2294
    aget-object v43, v3, v23

    .line 2295
    aget-object v44, v3, v42

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    const/16 v37, 0x8

    .line 2296
    aget-object v59, v3, v37

    const/16 v38, 0x9

    .line 2297
    aget-object v3, v3, v38

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v64, v3

    move-object/from16 v68, v5

    move/from16 v62, v10

    move-object v10, v12

    move/from16 v65, v19

    move-object/from16 v3, v36

    move/from16 v12, v40

    move-object/from16 v66, v43

    move/from16 v63, v44

    move-object/from16 v67, v59

    move-object/from16 v36, v14

    move/from16 v14, v35

    move-object/from16 v35, v41

    goto/16 :goto_569

    :cond_4f9
    move/from16 v10, v25

    .line 2299
    aget-object v36, v3, v10

    const/4 v10, 0x3

    .line 2300
    aget-object v40, v3, v10

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v28, 0x4

    .line 2301
    aget-object v40, v3, v28

    const/16 v22, 0x5

    .line 2302
    aget-object v41, v3, v22

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    const/16 v23, 0x6

    .line 2303
    aget-object v43, v3, v23

    const/16 v42, 0x7

    .line 2304
    aget-object v44, v3, v42

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    const/16 v37, 0x8

    .line 2305
    aget-object v59, v3, v37

    const/16 v38, 0x9

    .line 2306
    aget-object v60, v3, v38

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    const/16 v34, 0xa

    .line 2307
    aget-object v61, v3, v34

    const/16 v20, 0xb

    .line 2308
    aget-object v3, v3, v20

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v65, v3

    move-object/from16 v3, v36

    move/from16 v62, v41

    move-object/from16 v66, v43

    move/from16 v63, v44

    move-object/from16 v67, v59

    move/from16 v64, v60

    move-object/from16 v68, v61

    move-object/from16 v36, v14

    move/from16 v14, v35

    move-object/from16 v35, v40

    move-object/from16 v111, v12

    move v12, v10

    move-object/from16 v10, v111

    goto :goto_569

    :cond_550
    move-object/from16 v32, v10

    :cond_552
    move-object v3, v5

    move-object v10, v3

    move-object/from16 v35, v10

    move-object/from16 v66, v35

    move-object/from16 v67, v66

    move-object/from16 v68, v67

    move-object/from16 v36, v14

    move/from16 v12, v19

    move v14, v12

    move/from16 v62, v14

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    :goto_569
    const-wide/16 v40, -0x2

    const-wide/16 v43, -0x2

    const-wide/16 v59, -0x2

    const-wide/16 v69, -0x2

    move/from16 v61, v12

    .line 2328
    invoke-direct/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v71, v3

    .line 2329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v72, v4

    const-string v4, "CellInfo : currNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string v3, "0"

    .line 2330
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_761

    .line 2331
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_761

    .line 2332
    iget-object v3, v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_735

    .line 2334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CellInfo : currNetworkType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 2335
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move/from16 v4, v19

    move v5, v4

    move v12, v5

    move/from16 v73, v12

    move/from16 v74, v73

    move/from16 v75, v74

    move/from16 v76, v75

    move/from16 v77, v76

    :goto_5cf
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_72a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    move-object/from16 v79, v3

    move-object/from16 v3, v78

    check-cast v3, Landroid/telephony/CellInfo;

    .line 2338
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v78

    if-eqz v78, :cond_70d

    move/from16 v78, v4

    .line 2339
    instance-of v4, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v4, :cond_630

    .line 2340
    check-cast v3, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 2341
    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v4

    int-to-long v4, v4

    .line 2343
    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v3

    move/from16 v80, v12

    .line 2344
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v81, v8

    const-string v8, "CellInfo : CellInfoGsm > cellID: "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " tac "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " lac "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, -0x1

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move-object/from16 v83, v1

    move/from16 v76, v3

    move-wide/from16 v69, v4

    move/from16 v4, v78

    move/from16 v12, v80

    const/4 v5, -0x1

    goto/16 :goto_722

    :cond_630
    move-object/from16 v81, v8

    move/from16 v80, v12

    .line 2345
    instance-of v4, v3, Landroid/telephony/CellInfoNr;

    if-eqz v4, :cond_67d

    .line 2346
    check-cast v3, Landroid/telephony/CellInfoNr;

    invoke-virtual {v3}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellIdentityNr;

    move v8, v5

    .line 2347
    invoke-virtual {v3}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v4

    .line 2348
    invoke-virtual {v3}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v3

    .line 2350
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v82, v8

    const-string v8, "CellInfo : CellInfoNr > cellID: "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " tac "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " lac "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, -0x1

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move-object/from16 v83, v1

    move/from16 v73, v3

    move-wide/from16 v40, v4

    move/from16 v12, v80

    move/from16 v5, v82

    const/4 v4, -0x1

    goto/16 :goto_722

    :cond_67d
    move/from16 v82, v5

    .line 2351
    instance-of v4, v3, Landroid/telephony/CellInfoLte;

    if-eqz v4, :cond_6c3

    .line 2352
    check-cast v3, Landroid/telephony/CellInfoLte;

    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 2353
    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v4

    int-to-long v4, v4

    .line 2354
    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v8

    .line 2355
    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v3

    .line 2356
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v83, v1

    const-string v1, "CellInfo : CellInfoLte > cellID: "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " tac "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lac "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move/from16 v75, v3

    move-wide/from16 v43, v4

    move/from16 v74, v8

    goto :goto_71c

    :cond_6c3
    move-object/from16 v83, v1

    .line 2357
    instance-of v1, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v1, :cond_707

    .line 2358
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    .line 2359
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v3

    int-to-long v3, v3

    .line 2361
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v1

    .line 2362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CellInfo : CellInfoWcdma > cellID: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " tac "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " lac "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move/from16 v77, v1

    move-wide/from16 v59, v3

    move/from16 v4, v78

    move/from16 v5, v82

    const/4 v12, -0x1

    goto :goto_722

    :cond_707
    const-string v1, "CellInfo : CellInfo is not one of GSM/LTE/WCDMA"

    .line 2364
    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_71c

    :cond_70d
    move-object/from16 v83, v1

    move/from16 v78, v4

    move/from16 v82, v5

    move-object/from16 v81, v8

    move/from16 v80, v12

    const-string v1, "CellInfo : CellInfo.isRegistered()=false"

    .line 2367
    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :goto_71c
    move/from16 v4, v78

    move/from16 v12, v80

    move/from16 v5, v82

    :goto_722
    move-object/from16 v3, v79

    move-object/from16 v8, v81

    move-object/from16 v1, v83

    goto/16 :goto_5cf

    :cond_72a
    move-object/from16 v83, v1

    move/from16 v78, v4

    move/from16 v82, v5

    move-object/from16 v81, v8

    move/from16 v80, v12

    goto :goto_747

    :cond_735
    move-object/from16 v83, v1

    move-object/from16 v81, v8

    move/from16 v4, v19

    move v5, v4

    move v12, v5

    move/from16 v73, v12

    move/from16 v74, v73

    move/from16 v75, v74

    move/from16 v76, v75

    move/from16 v77, v76

    :goto_747
    move v1, v4

    move-wide/from16 v3, v40

    move-wide/from16 v84, v43

    move-wide/from16 v86, v59

    move-wide/from16 v88, v69

    move/from16 v8, v73

    move/from16 v44, v75

    move/from16 v90, v76

    move/from16 v91, v77

    move/from16 v41, v5

    move/from16 v40, v12

    move-object/from16 v43, v15

    move/from16 v12, v74

    goto :goto_782

    :cond_761
    move-object/from16 v83, v1

    move-object/from16 v81, v8

    const-string v1, "CellInfo : current network is not available"

    .line 2372
    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move/from16 v1, v19

    move v8, v1

    move v12, v8

    move/from16 v90, v12

    move/from16 v91, v90

    move-wide/from16 v3, v40

    move-wide/from16 v84, v43

    move-wide/from16 v86, v59

    move-wide/from16 v88, v69

    move-object/from16 v43, v15

    move/from16 v40, v91

    move/from16 v41, v40

    move/from16 v44, v41

    :goto_782
    const/4 v15, 0x2

    .line 2408
    invoke-direct {v0, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_ac1

    .line 2409
    array-length v15, v5

    move/from16 v59, v12

    const/16 v12, 0x19

    if-lt v15, v12, :cond_ac3

    const/4 v12, 0x0

    .line 2411
    aget-object v15, v5, v12

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v15, 0x1

    .line 2412
    aget-object v33, v5, v15

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    const/4 v15, 0x2

    .line 2413
    aget-object v25, v5, v15

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    const/16 v25, 0x3

    .line 2414
    aget-object v70, v5, v25

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v70

    const/4 v15, 0x1

    if-ne v11, v15, :cond_7e6

    move/from16 v38, v1

    move/from16 v42, v8

    move v5, v12

    move v1, v15

    move/from16 v17, v19

    move/from16 v18, v17

    move/from16 v20, v18

    move/from16 v99, v20

    move/from16 v100, v99

    move/from16 v102, v100

    move/from16 v103, v102

    move/from16 v104, v103

    move/from16 v105, v104

    move/from16 v106, v105

    move/from16 v107, v106

    move/from16 v108, v107

    move/from16 v15, v60

    move/from16 v12, v69

    move/from16 v101, v70

    const/16 v23, -0x1

    const/16 v34, -0x1

    const/16 v37, -0x1

    const/16 v94, -0x1

    const/16 v95, -0x1

    const/16 v96, -0x1

    const/16 v97, -0x1

    const/16 v98, -0x1

    goto/16 :goto_af6

    :cond_7e6
    const/4 v15, 0x2

    if-ne v11, v15, :cond_83e

    const/4 v15, 0x4

    .line 2420
    aget-object v17, v5, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v22, 0x5

    .line 2421
    aget-object v18, v5, v22

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v23, 0x6

    .line 2422
    aget-object v20, v5, v23

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/16 v42, 0x7

    .line 2423
    aget-object v5, v5, v42

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v38, v1

    move/from16 v97, v5

    move/from16 v42, v8

    move v5, v12

    move/from16 v37, v17

    move/from16 v34, v18

    move/from16 v17, v19

    move/from16 v18, v17

    move/from16 v99, v18

    move/from16 v100, v99

    move/from16 v102, v100

    move/from16 v103, v102

    move/from16 v104, v103

    move/from16 v105, v104

    move/from16 v106, v105

    move/from16 v107, v106

    move/from16 v108, v107

    move/from16 v23, v20

    move/from16 v15, v60

    move/from16 v12, v69

    move/from16 v101, v70

    const/4 v1, 0x1

    const/16 v94, -0x1

    const/16 v95, -0x1

    const/16 v96, -0x1

    const/16 v98, -0x1

    move/from16 v20, v108

    goto/16 :goto_af6

    :cond_83e
    move/from16 v73, v12

    const/4 v12, 0x3

    const/4 v15, 0x4

    const/16 v22, 0x5

    const/16 v23, 0x6

    const/16 v42, 0x7

    if-ne v11, v12, :cond_8b9

    .line 2427
    aget-object v12, v5, v15

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2428
    aget-object v15, v5, v22

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 2429
    aget-object v17, v5, v23

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 2430
    aget-object v18, v5, v42

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v23, 0x8

    .line 2431
    aget-object v23, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    const/16 v37, 0x9

    .line 2432
    aget-object v37, v5, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    const/16 v34, 0xa

    .line 2433
    aget-object v34, v5, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/16 v20, 0xb

    .line 2434
    aget-object v5, v5, v20

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v38, v1

    move/from16 v98, v5

    move/from16 v42, v8

    move/from16 v97, v18

    move/from16 v18, v19

    move/from16 v20, v18

    move/from16 v99, v20

    move/from16 v100, v99

    move/from16 v102, v100

    move/from16 v103, v102

    move/from16 v104, v103

    move/from16 v105, v104

    move/from16 v106, v105

    move/from16 v107, v106

    move/from16 v108, v107

    move/from16 v94, v23

    move/from16 v96, v34

    move/from16 v95, v37

    move/from16 v101, v70

    move/from16 v5, v73

    const/4 v1, 0x1

    move/from16 v37, v12

    move/from16 v34, v15

    move/from16 v23, v17

    move/from16 v17, v108

    move/from16 v15, v60

    move/from16 v12, v69

    goto/16 :goto_af6

    :cond_8b9
    move v12, v15

    if-ne v11, v12, :cond_94d

    .line 2436
    aget-object v15, v5, v12

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v15, 0x5

    .line 2437
    aget-object v74, v5, v15

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v23, 0x6

    .line 2438
    aget-object v23, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    const/16 v42, 0x7

    .line 2439
    aget-object v42, v5, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    const/16 v37, 0x8

    .line 2440
    aget-object v37, v5, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    const/16 v38, 0x9

    .line 2441
    aget-object v38, v5, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v34, 0xa

    .line 2442
    aget-object v34, v5, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/16 v20, 0xb

    .line 2443
    aget-object v20, v5, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/16 v18, 0xc

    .line 2444
    aget-object v18, v5, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v17, 0xd

    .line 2445
    aget-object v17, v5, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v74, 0xe

    .line 2446
    aget-object v74, v5, v74

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v74

    const/16 v75, 0xf

    .line 2447
    aget-object v5, v5, v75

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v99, v17

    move/from16 v100, v18

    move/from16 v17, v19

    move/from16 v18, v17

    move/from16 v103, v18

    move/from16 v104, v103

    move/from16 v105, v104

    move/from16 v106, v105

    move/from16 v107, v106

    move/from16 v108, v107

    move/from16 v98, v20

    move/from16 v96, v34

    move/from16 v94, v37

    move/from16 v95, v38

    move/from16 v97, v42

    move/from16 v101, v70

    move/from16 v102, v74

    move/from16 v38, v1

    move/from16 v20, v5

    :goto_93f
    move/from16 v42, v8

    move/from16 v37, v12

    move/from16 v34, v15

    :goto_945
    move/from16 v15, v60

    move/from16 v12, v69

    move/from16 v5, v73

    goto/16 :goto_af5

    :cond_94d
    const/4 v12, 0x5

    if-ne v11, v12, :cond_9fb

    const/4 v15, 0x4

    .line 2449
    aget-object v22, v5, v15

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 2450
    aget-object v74, v5, v12

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/16 v23, 0x6

    .line 2451
    aget-object v23, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    const/16 v42, 0x7

    .line 2452
    aget-object v42, v5, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    const/16 v37, 0x8

    .line 2453
    aget-object v37, v5, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    const/16 v38, 0x9

    .line 2454
    aget-object v38, v5, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v34, 0xa

    .line 2455
    aget-object v34, v5, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/16 v20, 0xb

    .line 2456
    aget-object v20, v5, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/16 v18, 0xc

    .line 2457
    aget-object v18, v5, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v17, 0xd

    .line 2458
    aget-object v17, v5, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v74, 0xe

    .line 2459
    aget-object v74, v5, v74

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v74

    const/16 v75, 0xf

    .line 2460
    aget-object v75, v5, v75

    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v75

    const/16 v76, 0x10

    .line 2461
    aget-object v76, v5, v76

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v76

    const/16 v77, 0x11

    .line 2462
    aget-object v77, v5, v77

    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v77

    const/16 v78, 0x12

    .line 2463
    aget-object v78, v5, v78

    invoke-static/range {v78 .. v78}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v78

    const/16 v79, 0x13

    .line 2464
    aget-object v5, v5, v79

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v99, v17

    move/from16 v100, v18

    move/from16 v17, v19

    move/from16 v106, v17

    move/from16 v107, v106

    move/from16 v108, v107

    move/from16 v98, v20

    move/from16 v96, v34

    move/from16 v94, v37

    move/from16 v95, v38

    move/from16 v97, v42

    move/from16 v101, v70

    move/from16 v102, v74

    move/from16 v20, v75

    move/from16 v103, v76

    move/from16 v104, v77

    move/from16 v105, v78

    move/from16 v38, v1

    move/from16 v18, v5

    move/from16 v42, v8

    move/from16 v34, v12

    move/from16 v37, v15

    goto/16 :goto_945

    :cond_9fb
    const/4 v12, 0x4

    .line 2466
    aget-object v15, v5, v12

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v15, 0x5

    .line 2467
    aget-object v74, v5, v15

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v23, 0x6

    .line 2468
    aget-object v23, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    const/16 v42, 0x7

    .line 2469
    aget-object v42, v5, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    const/16 v37, 0x8

    .line 2470
    aget-object v37, v5, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    const/16 v38, 0x9

    .line 2471
    aget-object v38, v5, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v34, 0xa

    .line 2472
    aget-object v34, v5, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/16 v20, 0xb

    .line 2473
    aget-object v20, v5, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/16 v18, 0xc

    .line 2474
    aget-object v18, v5, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v17, 0xd

    .line 2475
    aget-object v17, v5, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v74, 0xe

    .line 2476
    aget-object v74, v5, v74

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v74

    const/16 v75, 0xf

    .line 2477
    aget-object v75, v5, v75

    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v75

    const/16 v76, 0x10

    .line 2478
    aget-object v76, v5, v76

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v76

    const/16 v77, 0x11

    .line 2479
    aget-object v77, v5, v77

    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v77

    const/16 v78, 0x12

    .line 2480
    aget-object v78, v5, v78

    invoke-static/range {v78 .. v78}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v78

    const/16 v79, 0x13

    .line 2481
    aget-object v79, v5, v79

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v79

    const/16 v80, 0x14

    .line 2482
    aget-object v80, v5, v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v80

    const/16 v82, 0x15

    .line 2483
    aget-object v82, v5, v82

    invoke-static/range {v82 .. v82}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v82

    const/16 v92, 0x16

    .line 2484
    aget-object v92, v5, v92

    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v92

    const/16 v93, 0x17

    .line 2485
    aget-object v5, v5, v93

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v99, v17

    move/from16 v100, v18

    move/from16 v98, v20

    move/from16 v96, v34

    move/from16 v94, v37

    move/from16 v95, v38

    move/from16 v97, v42

    move/from16 v101, v70

    move/from16 v102, v74

    move/from16 v20, v75

    move/from16 v103, v76

    move/from16 v104, v77

    move/from16 v105, v78

    move/from16 v18, v79

    move/from16 v106, v80

    move/from16 v107, v82

    move/from16 v108, v92

    move/from16 v38, v1

    move/from16 v17, v5

    goto/16 :goto_93f

    :cond_ac1
    move/from16 v59, v12

    :cond_ac3
    move/from16 v38, v1

    move/from16 v42, v8

    move/from16 v5, v19

    move v12, v5

    move v15, v12

    move/from16 v17, v15

    move/from16 v18, v17

    move/from16 v20, v18

    move/from16 v23, v20

    move/from16 v34, v23

    move/from16 v37, v34

    move/from16 v94, v37

    move/from16 v95, v94

    move/from16 v96, v95

    move/from16 v97, v96

    move/from16 v98, v97

    move/from16 v99, v98

    move/from16 v100, v99

    move/from16 v101, v100

    move/from16 v102, v101

    move/from16 v103, v102

    move/from16 v104, v103

    move/from16 v105, v104

    move/from16 v106, v105

    move/from16 v107, v106

    move/from16 v108, v107

    :goto_af5
    const/4 v1, 0x1

    .line 2499
    :goto_af6
    invoke-direct {v0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b38

    .line 2500
    array-length v1, v8

    move-wide/from16 v69, v3

    const/4 v3, 0x3

    if-lt v1, v3, :cond_b3a

    const/4 v1, 0x0

    .line 2501
    aget-object v4, v8, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/4 v4, 0x1

    .line 2502
    aget-object v21, v8, v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v21, 0x2

    .line 2503
    aget-object v29, v8, v21

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 2504
    aget-object v60, v8, v3

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v28, 0x4

    .line 2505
    aget-object v60, v8, v28

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    const/16 v22, 0x5

    .line 2506
    aget-object v8, v8, v22

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v1, v3

    move/from16 v110, v8

    move/from16 v3, v19

    move/from16 v8, v21

    move/from16 v109, v60

    goto :goto_b44

    :cond_b38
    move-wide/from16 v69, v3

    :cond_b3a
    const/4 v1, 0x0

    move/from16 v1, v19

    move v3, v1

    move v4, v3

    move v8, v4

    move/from16 v109, v8

    move/from16 v110, v109

    :goto_b44
    if-lez v11, :cond_12d5

    move/from16 v19, v1

    const/4 v1, 0x0

    :goto_b49
    if-ge v1, v11, :cond_12d1

    move/from16 v22, v11

    .line 2516
    new-instance v11, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;

    invoke-direct {v11, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    if-nez v1, :cond_ce8

    .line 2518
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v0, v48

    .line 2519
    invoke-virtual {v11, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move/from16 v0, v46

    .line 2520
    invoke-virtual {v11, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v0, v47

    move/from16 v47, v8

    int-to-float v8, v0

    .line 2521
    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v8, 0x1

    .line 2522
    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    if-eqz v9, :cond_b7d

    .line 2523
    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b7d

    .line 2524
    invoke-virtual/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTelephonyEndcStatus()I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    goto :goto_b81

    :cond_b7d
    const/4 v8, 0x2

    .line 2526
    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    .line 2528
    :goto_b81
    invoke-virtual {v11, v10}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2529
    invoke-virtual {v11, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    .line 2530
    invoke-virtual {v11, v14}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    int-to-float v8, v5

    .line 2531
    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    int-to-float v8, v15

    .line 2532
    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    int-to-float v8, v12

    .line 2533
    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    .line 2534
    invoke-virtual {v11, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2535
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_bd5

    move v8, v14

    move/from16 v60, v15

    move-wide/from16 v14, v69

    .line 2536
    invoke-virtual {v11, v14, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v69, v3

    move/from16 v3, v42

    .line 2537
    invoke-virtual {v11, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v42, v12

    move/from16 v12, v38

    .line 2538
    invoke-virtual {v11, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v73, v5

    move/from16 v70, v8

    move-object/from16 v38, v9

    move/from16 v82, v40

    move/from16 v5, v59

    move-wide/from16 v74, v84

    move-wide/from16 v79, v86

    move-wide/from16 v76, v88

    move/from16 v78, v90

    move/from16 v40, v91

    move/from16 v9, v101

    move-object/from16 v59, v10

    move/from16 v10, v44

    move/from16 v44, v0

    move-object/from16 v0, v83

    goto/16 :goto_c76

    :cond_bd5
    move v8, v14

    move/from16 v60, v15

    move-wide/from16 v14, v69

    move/from16 v69, v3

    move/from16 v3, v42

    move/from16 v42, v12

    move/from16 v12, v38

    .line 2539
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_c13

    move/from16 v70, v8

    move-object/from16 v38, v9

    move-wide/from16 v8, v84

    .line 2540
    invoke-virtual {v11, v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v73, v5

    move/from16 v5, v59

    .line 2541
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move-object/from16 v59, v10

    move/from16 v10, v44

    .line 2542
    invoke-virtual {v11, v10}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v44, v0

    move-wide/from16 v74, v8

    move/from16 v82, v40

    move-object/from16 v0, v83

    move-wide/from16 v79, v86

    move-wide/from16 v76, v88

    move/from16 v78, v90

    :goto_c0d
    move/from16 v40, v91

    :goto_c0f
    move/from16 v9, v101

    goto/16 :goto_c76

    :cond_c13
    move/from16 v73, v5

    move/from16 v70, v8

    move-object/from16 v38, v9

    move/from16 v5, v59

    move-wide/from16 v8, v84

    move-object/from16 v59, v10

    move/from16 v10, v44

    move/from16 v44, v0

    move-object/from16 v0, v43

    .line 2543
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_c56

    move-object/from16 v43, v0

    move-object/from16 v0, v83

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v74

    if-eqz v74, :cond_c3c

    move-wide/from16 v74, v8

    move-wide/from16 v8, v86

    move-wide/from16 v76, v88

    goto :goto_c60

    :cond_c3c
    move-wide/from16 v74, v8

    move-wide/from16 v8, v88

    .line 2548
    invoke-virtual {v11, v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-wide/from16 v76, v8

    move/from16 v8, v41

    .line 2549
    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v9, v90

    .line 2550
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v78, v9

    move/from16 v82, v40

    move-wide/from16 v79, v86

    goto :goto_c0d

    :cond_c56
    move-object/from16 v43, v0

    move-wide/from16 v74, v8

    move-object/from16 v0, v83

    move-wide/from16 v76, v88

    move-wide/from16 v8, v86

    :goto_c60
    move/from16 v78, v90

    .line 2544
    invoke-virtual {v11, v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-wide/from16 v79, v8

    move/from16 v8, v40

    .line 2545
    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v9, v91

    .line 2546
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v82, v8

    move/from16 v40, v9

    goto :goto_c0f

    :goto_c76
    int-to-float v8, v9

    .line 2552
    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    move/from16 v83, v9

    const/4 v8, -0x1

    int-to-float v9, v8

    .line 2553
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2554
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2555
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2556
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2557
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move/from16 v91, v1

    move-wide/from16 v8, v74

    move/from16 v85, v94

    move/from16 v86, v95

    move/from16 v84, v97

    move/from16 v88, v98

    move/from16 v90, v99

    move/from16 v89, v100

    move/from16 v92, v103

    move/from16 v93, v104

    move/from16 v94, v105

    move/from16 v97, v107

    move/from16 v98, v108

    move/from16 v87, v109

    move/from16 v95, v110

    move-object/from16 v99, v0

    move/from16 v74, v4

    move v4, v5

    move/from16 v75, v19

    move-object/from16 v0, v24

    move-object/from16 v5, v43

    move/from16 v43, v47

    move/from16 v47, v96

    move/from16 v19, v102

    move/from16 v96, v106

    move/from16 v111, v55

    move-object/from16 v55, v16

    move/from16 v16, v111

    move/from16 v112, v37

    move/from16 v37, v23

    move/from16 v23, v34

    move/from16 v34, v112

    move/from16 v113, v57

    move-object/from16 v57, v26

    move/from16 v26, v113

    move/from16 v114, v62

    move-object/from16 v62, v35

    move/from16 v35, v52

    move/from16 v52, v114

    move/from16 v115, v51

    move-object/from16 v51, v36

    move/from16 v36, v115

    move/from16 v116, v53

    move-object/from16 v53, v45

    move/from16 v45, v116

    goto/16 :goto_1248

    :cond_ce8
    move/from16 v73, v5

    move/from16 v60, v15

    move/from16 v82, v40

    move/from16 v5, v59

    move-object/from16 v0, v83

    move-wide/from16 v74, v84

    move-wide/from16 v79, v86

    move-wide/from16 v76, v88

    move/from16 v78, v90

    move/from16 v40, v91

    move/from16 v83, v101

    move-object/from16 v59, v10

    move/from16 v10, v44

    move/from16 v44, v47

    move/from16 v47, v8

    const/4 v8, 0x1

    move-wide/from16 v111, v69

    move/from16 v69, v3

    move/from16 v70, v14

    move/from16 v3, v42

    move-wide/from16 v14, v111

    move/from16 v42, v12

    move/from16 v12, v38

    move-object/from16 v38, v9

    if-ne v1, v8, :cond_e2f

    move-object/from16 v8, v81

    .line 2559
    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v9, v72

    .line 2560
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move/from16 v8, v49

    .line 2561
    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v8, v50

    int-to-float v9, v8

    .line 2562
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v9, 0x2

    .line 2563
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    .line 2564
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    move-object/from16 v9, v71

    .line 2565
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2566
    invoke-virtual {v11, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    move/from16 v8, v61

    .line 2567
    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    move/from16 v8, v37

    int-to-float v9, v8

    .line 2568
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    move/from16 v9, v34

    move/from16 v34, v8

    int-to-float v8, v9

    .line 2569
    invoke-virtual {v11, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    move/from16 v8, v23

    move/from16 v23, v9

    int-to-float v9, v8

    .line 2570
    invoke-virtual {v11, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    .line 2571
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2572
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d77

    .line 2573
    invoke-virtual {v11, v14, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2574
    invoke-virtual {v11, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2575
    invoke-virtual {v11, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v37, v8

    move-wide/from16 v8, v74

    :goto_d6e
    move/from16 v74, v4

    move-object/from16 v75, v43

    move/from16 v43, v5

    :goto_d74
    move/from16 v5, v97

    goto :goto_dca

    .line 2576
    :cond_d77
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d8b

    move/from16 v37, v8

    move-wide/from16 v8, v74

    .line 2577
    invoke-virtual {v11, v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2578
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2579
    invoke-virtual {v11, v10}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_d6e

    :cond_d8b
    move/from16 v37, v8

    move-wide/from16 v8, v74

    move/from16 v74, v4

    move-object/from16 v4, v43

    .line 2580
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_db4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_da0

    goto :goto_db4

    :cond_da0
    move-object/from16 v75, v4

    move/from16 v43, v5

    move-wide/from16 v4, v76

    .line 2585
    invoke-virtual {v11, v4, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v4, v41

    .line 2586
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v5, v78

    .line 2587
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_d74

    :cond_db4
    :goto_db4
    move-object/from16 v75, v4

    move/from16 v43, v5

    move-wide/from16 v4, v79

    .line 2581
    invoke-virtual {v11, v4, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-wide/from16 v79, v4

    move/from16 v4, v82

    .line 2582
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v5, v40

    .line 2583
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_d74

    :goto_dca
    int-to-float v4, v5

    .line 2589
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    move/from16 v84, v5

    const/4 v4, -0x1

    int-to-float v5, v4

    .line 2590
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2591
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2592
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2593
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2594
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move/from16 v91, v1

    move/from16 v4, v43

    move/from16 v43, v47

    move-object/from16 v5, v75

    move/from16 v85, v94

    move/from16 v86, v95

    move/from16 v47, v96

    move/from16 v88, v98

    move/from16 v90, v99

    move/from16 v89, v100

    move/from16 v92, v103

    move/from16 v93, v104

    move/from16 v94, v105

    move/from16 v96, v106

    move/from16 v97, v107

    move/from16 v98, v108

    move/from16 v87, v109

    move/from16 v95, v110

    move-object/from16 v99, v0

    move/from16 v75, v19

    move-object/from16 v0, v24

    move/from16 v19, v102

    move/from16 v111, v55

    move-object/from16 v55, v16

    move/from16 v16, v111

    move/from16 v112, v57

    move-object/from16 v57, v26

    move/from16 v26, v112

    move/from16 v113, v62

    move-object/from16 v62, v35

    move/from16 v35, v52

    move/from16 v52, v113

    move/from16 v114, v51

    move-object/from16 v51, v36

    move/from16 v36, v114

    move/from16 v115, v53

    move-object/from16 v53, v45

    move/from16 v45, v115

    goto/16 :goto_1248

    :cond_e2f
    move-wide/from16 v8, v74

    move/from16 v84, v97

    move/from16 v74, v4

    move-object/from16 v75, v43

    const/4 v4, 0x2

    move/from16 v43, v5

    move/from16 v111, v37

    move/from16 v37, v23

    move/from16 v23, v34

    move/from16 v34, v111

    if-ne v1, v4, :cond_f54

    move-object/from16 v5, v36

    .line 2596
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v4, v32

    .line 2597
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move/from16 v4, v51

    .line 2598
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v36, v4

    move-object/from16 v51, v5

    move/from16 v4, v52

    int-to-float v5, v4

    .line 2599
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v5, 0x2

    .line 2600
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    .line 2601
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    move-object/from16 v5, v35

    .line 2602
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2603
    invoke-virtual {v11, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    move/from16 v35, v4

    move/from16 v4, v62

    .line 2604
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    move/from16 v52, v4

    move-object/from16 v62, v5

    move/from16 v4, v94

    int-to-float v5, v4

    .line 2605
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    move/from16 v85, v4

    move/from16 v5, v95

    int-to-float v4, v5

    .line 2606
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    move/from16 v86, v5

    move/from16 v4, v96

    int-to-float v5, v4

    .line 2607
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    move/from16 v5, v47

    .line 2608
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2609
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_eac

    .line 2610
    invoke-virtual {v11, v14, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2611
    invoke-virtual {v11, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2612
    invoke-virtual {v11, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v47, v4

    move-object/from16 v87, v75

    move/from16 v75, v43

    move/from16 v43, v5

    :goto_ea9
    move/from16 v5, v98

    goto :goto_f07

    .line 2613
    :cond_eac
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_ec8

    .line 2614
    invoke-virtual {v11, v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v47, v4

    move/from16 v4, v43

    .line 2615
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2616
    invoke-virtual {v11, v10}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v43, v5

    move-object/from16 v87, v75

    move/from16 v5, v98

    move/from16 v75, v4

    goto :goto_f07

    :cond_ec8
    move/from16 v47, v4

    move/from16 v4, v43

    move/from16 v43, v5

    move-object/from16 v5, v75

    .line 2617
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v75

    if-nez v75, :cond_ef1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v75

    if-eqz v75, :cond_edd

    goto :goto_ef1

    :cond_edd
    move/from16 v75, v4

    move-object/from16 v87, v5

    move-wide/from16 v4, v76

    .line 2622
    invoke-virtual {v11, v4, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v4, v41

    .line 2623
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v5, v78

    .line 2624
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_ea9

    :cond_ef1
    :goto_ef1
    move/from16 v75, v4

    move-object/from16 v87, v5

    move-wide/from16 v4, v79

    .line 2618
    invoke-virtual {v11, v4, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-wide/from16 v79, v4

    move/from16 v4, v82

    .line 2619
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v5, v40

    .line 2620
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_ea9

    :goto_f07
    int-to-float v4, v5

    .line 2626
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    move/from16 v88, v5

    const/4 v4, -0x1

    int-to-float v5, v4

    .line 2627
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2628
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2629
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2630
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2631
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move/from16 v91, v1

    move/from16 v4, v75

    move-object/from16 v5, v87

    move/from16 v90, v99

    move/from16 v89, v100

    move/from16 v92, v103

    move/from16 v93, v104

    move/from16 v94, v105

    move/from16 v96, v106

    move/from16 v97, v107

    move/from16 v98, v108

    move/from16 v87, v109

    move/from16 v95, v110

    move-object/from16 v99, v0

    move/from16 v75, v19

    move-object/from16 v0, v24

    move/from16 v19, v102

    move/from16 v111, v55

    move-object/from16 v55, v16

    move/from16 v16, v111

    move/from16 v112, v57

    move-object/from16 v57, v26

    move/from16 v26, v112

    move/from16 v113, v53

    move-object/from16 v53, v45

    move/from16 v45, v113

    goto/16 :goto_1248

    :cond_f54
    move-object/from16 v87, v75

    move/from16 v85, v94

    move/from16 v86, v95

    move/from16 v88, v98

    const/4 v4, 0x3

    move/from16 v75, v43

    move/from16 v43, v47

    move/from16 v47, v96

    move/from16 v111, v62

    move-object/from16 v62, v35

    move/from16 v35, v52

    move/from16 v52, v111

    move/from16 v112, v51

    move-object/from16 v51, v36

    move/from16 v36, v112

    if-ne v1, v4, :cond_106f

    move-object/from16 v5, v45

    .line 2633
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v4, v30

    .line 2634
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move/from16 v4, v53

    .line 2635
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v45, v4

    move-object/from16 v53, v5

    move/from16 v4, v54

    int-to-float v5, v4

    .line 2636
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v5, 0x2

    .line 2637
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    .line 2638
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    move-object/from16 v5, v66

    .line 2639
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2640
    invoke-virtual {v11, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    move/from16 v4, v63

    .line 2641
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    move/from16 v4, v100

    int-to-float v5, v4

    .line 2642
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    move/from16 v89, v4

    move/from16 v5, v99

    int-to-float v4, v5

    .line 2643
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    move/from16 v90, v5

    move/from16 v4, v102

    int-to-float v5, v4

    .line 2644
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    move/from16 v5, v19

    .line 2645
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2646
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_fd5

    .line 2647
    invoke-virtual {v11, v14, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2648
    invoke-virtual {v11, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2649
    invoke-virtual {v11, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v19, v4

    move-object/from16 v91, v87

    move/from16 v87, v75

    move/from16 v75, v5

    :goto_fd2
    move/from16 v5, v20

    goto :goto_1030

    .line 2650
    :cond_fd5
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_ff1

    .line 2651
    invoke-virtual {v11, v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v19, v4

    move/from16 v4, v75

    .line 2652
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2653
    invoke-virtual {v11, v10}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v75, v5

    move/from16 v5, v20

    move-object/from16 v91, v87

    move/from16 v87, v4

    goto :goto_1030

    :cond_ff1
    move/from16 v19, v4

    move/from16 v4, v75

    move/from16 v75, v5

    move-object/from16 v5, v87

    .line 2654
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v87

    if-nez v87, :cond_101a

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v87

    if-eqz v87, :cond_1006

    goto :goto_101a

    :cond_1006
    move/from16 v87, v4

    move-object/from16 v91, v5

    move-wide/from16 v4, v76

    .line 2659
    invoke-virtual {v11, v4, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v4, v41

    .line 2660
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v5, v78

    .line 2661
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_fd2

    :cond_101a
    :goto_101a
    move/from16 v87, v4

    move-object/from16 v91, v5

    move-wide/from16 v4, v79

    .line 2655
    invoke-virtual {v11, v4, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-wide/from16 v79, v4

    move/from16 v4, v82

    .line 2656
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v5, v40

    .line 2657
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_fd2

    :goto_1030
    int-to-float v4, v5

    .line 2663
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    move/from16 v20, v5

    const/4 v4, -0x1

    int-to-float v5, v4

    .line 2664
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2665
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2666
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2667
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2668
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move-object/from16 v99, v0

    move-object/from16 v0, v24

    move/from16 v4, v87

    move-object/from16 v5, v91

    move/from16 v92, v103

    move/from16 v93, v104

    move/from16 v94, v105

    move/from16 v96, v106

    move/from16 v97, v107

    move/from16 v98, v108

    move/from16 v87, v109

    move/from16 v95, v110

    move/from16 v91, v1

    move/from16 v111, v55

    move-object/from16 v55, v16

    move/from16 v16, v111

    move/from16 v112, v57

    move-object/from16 v57, v26

    move/from16 v26, v112

    goto/16 :goto_1248

    :cond_106f
    move-object/from16 v91, v87

    move/from16 v90, v99

    move/from16 v89, v100

    const/4 v4, 0x4

    move/from16 v87, v75

    move/from16 v75, v19

    move/from16 v19, v102

    move/from16 v111, v53

    move-object/from16 v53, v45

    move/from16 v45, v111

    if-ne v1, v4, :cond_116a

    move-object/from16 v5, v16

    .line 2670
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v4, v39

    .line 2671
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move/from16 v4, v55

    .line 2672
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v16, v4

    move-object/from16 v55, v5

    move/from16 v4, v56

    int-to-float v5, v4

    .line 2673
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v5, 0x2

    .line 2674
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    .line 2675
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    move-object/from16 v5, v67

    .line 2676
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2677
    invoke-virtual {v11, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    move/from16 v4, v64

    .line 2678
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    move/from16 v4, v103

    int-to-float v5, v4

    .line 2679
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    move/from16 v92, v4

    move/from16 v5, v104

    int-to-float v4, v5

    .line 2680
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    move/from16 v93, v5

    move/from16 v4, v105

    int-to-float v5, v4

    .line 2681
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    move/from16 v5, v109

    .line 2682
    invoke-virtual {v11, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2683
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v94

    if-eqz v94, :cond_10ea

    .line 2684
    invoke-virtual {v11, v14, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2685
    invoke-virtual {v11, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2686
    invoke-virtual {v11, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move-object/from16 v95, v0

    move/from16 v94, v4

    move/from16 v4, v87

    :goto_10e1
    move/from16 v87, v5

    move-object/from16 v5, v91

    move/from16 v91, v1

    :goto_10e7
    move/from16 v1, v18

    goto :goto_113f

    .line 2687
    :cond_10ea
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v94

    if-eqz v94, :cond_1100

    .line 2688
    invoke-virtual {v11, v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v94, v4

    move/from16 v4, v87

    .line 2689
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2690
    invoke-virtual {v11, v10}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move-object/from16 v95, v0

    goto :goto_10e1

    :cond_1100
    move/from16 v94, v4

    move/from16 v4, v87

    move/from16 v87, v5

    move-object/from16 v5, v91

    .line 2691
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v91

    if-nez v91, :cond_1129

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v91

    if-eqz v91, :cond_1115

    goto :goto_1129

    :cond_1115
    move-object/from16 v95, v0

    move/from16 v91, v1

    move-wide/from16 v0, v76

    .line 2696
    invoke-virtual {v11, v0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v0, v41

    .line 2697
    invoke-virtual {v11, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v1, v78

    .line 2698
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_10e7

    :cond_1129
    :goto_1129
    move-object/from16 v95, v0

    move/from16 v91, v1

    move-wide/from16 v0, v79

    .line 2692
    invoke-virtual {v11, v0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-wide/from16 v79, v0

    move/from16 v0, v82

    .line 2693
    invoke-virtual {v11, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v1, v40

    .line 2694
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_10e7

    :goto_113f
    int-to-float v0, v1

    .line 2700
    invoke-virtual {v11, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    move/from16 v18, v1

    const/4 v0, -0x1

    int-to-float v1, v0

    .line 2701
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2702
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2703
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2704
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2705
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move-object/from16 v0, v24

    move-object/from16 v99, v95

    move/from16 v96, v106

    move/from16 v97, v107

    move/from16 v98, v108

    move/from16 v95, v110

    move/from16 v111, v57

    move-object/from16 v57, v26

    move/from16 v26, v111

    goto/16 :goto_1248

    :cond_116a
    move-object/from16 v95, v0

    move-object/from16 v0, v27

    move/from16 v4, v87

    move-object/from16 v5, v91

    move/from16 v92, v103

    move/from16 v93, v104

    move/from16 v94, v105

    move/from16 v87, v109

    move/from16 v91, v1

    move/from16 v111, v55

    move-object/from16 v55, v16

    move/from16 v16, v111

    .line 2707
    invoke-virtual {v11, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v1, v26

    .line 2708
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move/from16 v0, v57

    .line 2709
    invoke-virtual {v11, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v26, v0

    move-object/from16 v57, v1

    move/from16 v0, v58

    int-to-float v1, v0

    .line 2710
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v1, 0x2

    .line 2711
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    .line 2712
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    move-object/from16 v1, v68

    .line 2713
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2714
    invoke-virtual {v11, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    move/from16 v0, v65

    .line 2715
    invoke-virtual {v11, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    move/from16 v0, v106

    int-to-float v1, v0

    .line 2716
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    move/from16 v96, v0

    move/from16 v1, v107

    int-to-float v0, v1

    .line 2717
    invoke-virtual {v11, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    move/from16 v97, v1

    move/from16 v0, v108

    int-to-float v1, v0

    .line 2718
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    move/from16 v1, v110

    .line 2719
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2720
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v98

    if-eqz v98, :cond_11e0

    .line 2721
    invoke-virtual {v11, v14, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2722
    invoke-virtual {v11, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2723
    invoke-virtual {v11, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    :goto_11d7
    move/from16 v98, v0

    move-object/from16 v99, v95

    move/from16 v95, v1

    :goto_11dd
    move/from16 v1, v17

    goto :goto_122f

    .line 2724
    :cond_11e0
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v98

    if-eqz v98, :cond_11f0

    .line 2725
    invoke-virtual {v11, v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2726
    invoke-virtual {v11, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2727
    invoke-virtual {v11, v10}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_11d7

    .line 2728
    :cond_11f0
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v98

    if-nez v98, :cond_1217

    move/from16 v98, v0

    move-object/from16 v0, v95

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_1203

    move-object/from16 v99, v0

    goto :goto_121b

    :cond_1203
    move-object/from16 v99, v0

    move/from16 v95, v1

    move-wide/from16 v0, v76

    .line 2733
    invoke-virtual {v11, v0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v0, v41

    .line 2734
    invoke-virtual {v11, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v1, v78

    .line 2735
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_11dd

    :cond_1217
    move/from16 v98, v0

    move-object/from16 v99, v95

    :goto_121b
    move/from16 v95, v1

    move-wide/from16 v0, v79

    .line 2729
    invoke-virtual {v11, v0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-wide/from16 v79, v0

    move/from16 v0, v82

    .line 2730
    invoke-virtual {v11, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v1, v40

    .line 2731
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_11dd

    :goto_122f
    int-to-float v0, v1

    .line 2737
    invoke-virtual {v11, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    move/from16 v17, v1

    const/4 v0, -0x1

    int-to-float v1, v0

    .line 2738
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2739
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2740
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2741
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2742
    invoke-virtual {v11, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move-object/from16 v0, v24

    .line 2744
    :goto_1248
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v91, 0x1

    move-object/from16 v24, v0

    move/from16 v102, v19

    move/from16 v11, v22

    move/from16 v91, v40

    move/from16 v19, v75

    move/from16 v40, v82

    move/from16 v101, v83

    move/from16 v109, v87

    move/from16 v100, v89

    move/from16 v103, v92

    move/from16 v104, v93

    move/from16 v105, v94

    move/from16 v110, v95

    move/from16 v106, v96

    move/from16 v107, v97

    move/from16 v108, v98

    move-object/from16 v83, v99

    move-object/from16 v0, p0

    move/from16 v96, v47

    move/from16 v97, v84

    move/from16 v94, v85

    move/from16 v95, v86

    move/from16 v98, v88

    move/from16 v99, v90

    move-wide/from16 v84, v8

    move-object/from16 v9, v38

    move/from16 v8, v43

    move/from16 v47, v44

    move-wide/from16 v88, v76

    move/from16 v90, v78

    move-wide/from16 v86, v79

    move-object/from16 v43, v5

    move/from16 v44, v10

    move/from16 v38, v12

    move/from16 v12, v42

    move-object/from16 v10, v59

    move/from16 v5, v73

    move/from16 v42, v3

    move/from16 v59, v4

    move/from16 v3, v69

    move/from16 v4, v74

    move-object/from16 v111, v55

    move/from16 v55, v16

    move-object/from16 v16, v111

    move/from16 v112, v34

    move/from16 v34, v23

    move/from16 v23, v37

    move/from16 v37, v112

    move-object/from16 v113, v57

    move/from16 v57, v26

    move-object/from16 v26, v113

    move/from16 v114, v52

    move/from16 v52, v35

    move-object/from16 v35, v62

    move/from16 v62, v114

    move-object/from16 v115, v51

    move/from16 v51, v36

    move-object/from16 v36, v115

    move-object/from16 v116, v53

    move/from16 v53, v45

    move-object/from16 v45, v116

    move-wide/from16 v117, v14

    move/from16 v15, v60

    move/from16 v14, v70

    move-wide/from16 v69, v117

    goto/16 :goto_b49

    :cond_12d1
    move-object/from16 v0, v24

    goto/16 :goto_13c8

    :cond_12d5
    move/from16 v73, v5

    move/from16 v60, v15

    move-object/from16 v0, v24

    move/from16 v82, v40

    move-object/from16 v5, v43

    move/from16 v4, v59

    move-object/from16 v99, v83

    move-wide/from16 v79, v86

    move-wide/from16 v76, v88

    move/from16 v78, v90

    move/from16 v40, v91

    move/from16 v83, v101

    move-object/from16 v59, v10

    move/from16 v10, v44

    move/from16 v44, v47

    move-wide/from16 v111, v69

    move/from16 v69, v3

    move/from16 v70, v14

    move/from16 v3, v42

    move-wide/from16 v14, v111

    move/from16 v42, v12

    move/from16 v12, v38

    move-object/from16 v38, v9

    move-wide/from16 v8, v84

    .line 2747
    new-instance v1, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;

    move-object/from16 v11, p0

    invoke-direct {v1, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    move-object/from16 v11, v38

    .line 2748
    invoke-virtual {v1, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v0, v48

    .line 2749
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move/from16 v0, v46

    .line 2750
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v0, v44

    int-to-float v0, v0

    .line 2751
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v0, 0x1

    .line 2752
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    if-eqz v11, :cond_1335

    .line 2753
    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1335

    .line 2754
    invoke-virtual/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTelephonyEndcStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    goto :goto_1339

    :cond_1335
    const/4 v0, 0x2

    .line 2756
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    :goto_1339
    move-object/from16 v0, v59

    .line 2758
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2759
    invoke-virtual {v1, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    move/from16 v0, v70

    .line 2760
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    move/from16 v0, v73

    int-to-float v0, v0

    .line 2761
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    move/from16 v0, v60

    int-to-float v0, v0

    .line 2762
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    move/from16 v0, v42

    int-to-float v0, v0

    .line 2763
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    move/from16 v0, v69

    .line 2764
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2765
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_136f

    .line 2766
    invoke-virtual {v1, v14, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2767
    invoke-virtual {v1, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2768
    invoke-virtual {v1, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    :goto_136c
    move/from16 v0, v83

    goto :goto_13ae

    .line 2769
    :cond_136f
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_137f

    .line 2770
    invoke-virtual {v1, v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2771
    invoke-virtual {v1, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2772
    invoke-virtual {v1, v10}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_136c

    .line 2773
    :cond_137f
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_139e

    move-object/from16 v0, v99

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_138e

    goto :goto_139e

    :cond_138e
    move-wide/from16 v2, v76

    .line 2778
    invoke-virtual {v1, v2, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v5, v41

    .line 2779
    invoke-virtual {v1, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v0, v78

    .line 2780
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_136c

    :cond_139e
    :goto_139e
    move-wide/from16 v2, v79

    .line 2774
    invoke-virtual {v1, v2, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v12, v82

    .line 2775
    invoke-virtual {v1, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v0, v40

    .line 2776
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_136c

    :goto_13ae
    int-to-float v0, v0

    .line 2782
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    const/4 v0, -0x1

    int-to-float v0, v0

    .line 2783
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2784
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2785
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2786
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2787
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move-object/from16 v0, v24

    .line 2788
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2791
    :goto_13c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDlCarrierLog(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 2792
    :goto_13e1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_1410

    .line 2793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDlCarrierLog(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;

    invoke-virtual {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_13e1

    :cond_1410
    return-object v0
.end method

.method public greylist getEndcCapability()I
    .registers 3

    .line 1284
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "LTE"

    .line 1285
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1286
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getEndcStatus()I

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, 0x2

    goto :goto_1d

    :cond_1c
    const/4 p0, -0x1

    :cond_1d
    :goto_1d
    return p0
.end method

.method public greylist getEndcStatus()I
    .registers 4

    .line 1298
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1299
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    const/4 p0, 0x1

    goto :goto_2a

    .line 1302
    :cond_17
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object p0

    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    if-eq v0, v1, :cond_27

    const/4 p0, 0x2

    goto :goto_2a

    :cond_27
    const/4 p0, -0x1

    goto :goto_2a

    :cond_29
    const/4 p0, -0x2

    :goto_2a
    return p0
.end method

.method public greylist getNetworkLog()Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;
    .registers 6

    .line 2914
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getNetworkLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 2916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2920
    :cond_25
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    .line 2922
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getMccMnc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-2"

    if-eqz v1, :cond_47

    .line 2926
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_47

    const/4 v2, 0x0

    .line 2927
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2928
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    :cond_47
    move-object v1, v2

    .line 2933
    :goto_48
    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->setMcc(Ljava/lang/String;)V

    .line 2934
    invoke-virtual {v0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->setMnc(Ljava/lang/String;)V

    .line 2935
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getEndcCapability()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->setEndcCapability(I)V

    .line 2936
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getEndcStatus()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->setEndcConnectionStatus(I)V

    .line 2939
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEndcUplinkLog(): mcc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mnc="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endcCapability="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2942
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getEndcCapability()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endcConnectionStatus="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2943
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getEndcStatus()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2939
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getRrcLog()Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;
    .registers 6

    .line 2878
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getRrcLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 2880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRrcLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2883
    :cond_25
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    .line 2884
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getNetworkTypeWithENDC()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "-1"

    const/4 v4, 0x3

    if-ne v1, v2, :cond_3f

    .line 2886
    invoke-virtual {p0, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonRFConfig(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setNrRrcState(Ljava/lang/String;)V

    .line 2887
    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setLteRrcState(Ljava/lang/String;)V

    goto :goto_66

    :cond_3f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4d

    .line 2889
    invoke-virtual {p0, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonRFConfig(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setLteRrcState(Ljava/lang/String;)V

    .line 2890
    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setNrRrcState(Ljava/lang/String;)V

    goto :goto_66

    :cond_4d
    if-ne v1, v4, :cond_60

    .line 2892
    invoke-virtual {p0, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonRFConfig(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setLteRrcState(Ljava/lang/String;)V

    const/16 v2, 0x9

    .line 2893
    invoke-virtual {p0, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonRFConfig(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setNrRrcState(Ljava/lang/String;)V

    goto :goto_66

    .line 2895
    :cond_60
    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setNrRrcState(Ljava/lang/String;)V

    .line 2896
    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setLteRrcState(Ljava/lang/String;)V

    .line 2898
    :goto_66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRrcLog getNetworkTypeWithENDC(): ="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 2900
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRrcLog():  lteRrcState="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2901
    invoke-virtual {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->getLteRrcState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nrRrcState="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2902
    invoke-virtual {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->getNrRrcState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2900
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getSettingsLog()Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;
    .registers 12

    .line 2957
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "SettingsLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2958
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 2959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2962
    :cond_25
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    const-string v1, "wifi_on"

    .line 2963
    invoke-direct {p0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2964
    invoke-direct {p0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "data_roaming"

    .line 2965
    invoke-direct {p0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2966
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getRttSetting()Ljava/lang/String;

    move-result-object v4

    .line 2967
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getRttTranscriptSetting()Ljava/lang/String;

    move-result-object v5

    .line 2968
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getNetworkModeSetting()Ljava/lang/String;

    move-result-object v6

    .line 2969
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCarrierConfigVersion()Ljava/lang/String;

    move-result-object v7

    .line 2970
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getVonrSetting()Ljava/lang/String;

    move-result-object v8

    .line 2971
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getVonrStatus()Ljava/lang/String;

    move-result-object v9

    .line 2972
    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setWifiCalling(Ljava/lang/String;)V

    .line 2973
    invoke-virtual {v0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setWifi(Ljava/lang/String;)V

    .line 2974
    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setRoaming(Ljava/lang/String;)V

    .line 2975
    invoke-virtual {v0, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setRtt(Ljava/lang/String;)V

    .line 2976
    invoke-virtual {v0, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setRttTranscript(Ljava/lang/String;)V

    .line 2977
    invoke-virtual {v0, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setNetworkMode(Ljava/lang/String;)V

    .line 2978
    invoke-virtual {v0, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setCarrierConfigVersion(Ljava/lang/String;)V

    .line 2979
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCarrierSa5gBandConfig()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setCarrierSa5gBandConfig(Ljava/util/Map;)V

    .line 2980
    invoke-virtual {v0, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setVonrSetting(Ljava/lang/String;)V

    .line 2981
    invoke-virtual {v0, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setVonrStatus(Ljava/lang/String;)V

    .line 2983
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SettingsLog(): wifiCalling="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", wifi="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roaming="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rtt="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rttTranscript="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkMode="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CarrierConfigVersion="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2990
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCarrierConfigVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CarrierSa5gBandConfig="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2991
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCarrierSa5gBandConfig()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", vonrSetting="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", vonrStatus="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2983
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getTelephonyEndcStatus()I
    .registers 3

    .line 1314
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1315
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getEndcStatus()I

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, -0x2

    .line 1317
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTelephonyEndcStatus()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return p0
.end method

.method public greylist getUiLog()Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;
    .registers 8

    .line 3007
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getUiLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 3009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUiLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_25
    const-string v0, "NA"

    .line 3015
    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrState()I

    .line 3016
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 3017
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getUiLogNetworkType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    .line 3018
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 3019
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "2"

    const-string v6, "1"

    packed-switch v4, :pswitch_data_112

    goto :goto_82

    :pswitch_50
    const-string v4, "5"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    goto :goto_82

    :cond_59
    const/4 v3, 0x4

    goto :goto_82

    :pswitch_5b
    const-string v4, "4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    goto :goto_82

    :cond_64
    const/4 v3, 0x3

    goto :goto_82

    :pswitch_66
    const-string v4, "3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    goto :goto_82

    :cond_6f
    const/4 v3, 0x2

    goto :goto_82

    :pswitch_71
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    goto :goto_82

    :cond_78
    const/4 v3, 0x1

    goto :goto_82

    :pswitch_7a
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    goto :goto_82

    :cond_81
    const/4 v3, 0x0

    :goto_82
    packed-switch v3, :pswitch_data_120

    .line 3034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get5gUiLog(): default on uiNetworkType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_b5

    :pswitch_9a
    const-string v0, "2G"

    goto :goto_b5

    :pswitch_9d
    const-string v0, "3G"

    goto :goto_b5

    .line 3024
    :pswitch_a0
    invoke-direct {p0, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getOverrideNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b5

    .line 3021
    :pswitch_a5
    invoke-direct {p0, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getOverrideNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b5

    .line 3036
    :cond_aa
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string v0, "NO_SIGNAL"

    goto :goto_b5

    :cond_b3
    const-string v0, "NO_ICON"

    .line 3041
    :goto_b5
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getDataActivityType()Ljava/lang/String;

    move-result-object v1

    .line 3042
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getAntennaBars()I

    move-result v3

    .line 3044
    new-instance v4, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;

    invoke-direct {v4, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    .line 3046
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentTime()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->setTimestamp(J)V

    .line 3047
    invoke-virtual {v4, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->setNetworkType(Ljava/lang/String;)V

    .line 3048
    invoke-virtual {v4, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->setUiNetworkType(Ljava/lang/String;)V

    .line 3049
    invoke-virtual {v4, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->setUiDataTransmission(Ljava/lang/String;)V

    .line 3050
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->setUiNumberOfAntennaBars(I)V

    .line 3052
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUiLog(): timestamp="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3053
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", networkType="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uiNetworkType="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uiDataTransmission="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uiNumberOfAntennaBars="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3052
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v4

    :pswitch_data_112
    .packed-switch 0x31
        :pswitch_7a
        :pswitch_71
        :pswitch_66
        :pswitch_5b
        :pswitch_50
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_9a
    .end packed-switch
.end method

.method public greylist getUlCarrierLog()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;",
            ">;"
        }
    .end annotation

    .line 2809
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getUlCarrierLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-nez v0, :cond_25

    .line 2811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUlCarrierLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2814
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "-2"

    const/4 v8, -0x2

    const/high16 v9, -0x40000000    # -2.0f

    const-string v10, "-2"

    const/4 v1, 0x5

    .line 2822
    invoke-direct {p0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_193

    const/4 v2, 0x1

    .line 2824
    :try_start_39
    array-length v3, v1

    const/4 v4, 0x7

    if-lt v3, v4, :cond_193

    const/4 v3, 0x0

    .line 2825
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v4, v3, 0x4

    if-lez v3, :cond_e2

    .line 2827
    array-length v3, v1
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_49} :catch_167
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_39 .. :try_end_49} :catch_13a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_49} :catch_10d

    if-lt v3, v4, :cond_e2

    move-object v3, v10

    move v10, v2

    :goto_4d
    if-ge v2, v4, :cond_193

    add-int/lit8 v5, v2, 0x1

    .line 2829
    :try_start_51
    aget-object v2, v1, v2

    invoke-direct {p0, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_57} :catch_db
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_51 .. :try_end_57} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_57} :catch_cd

    add-int/lit8 v6, v5, 0x1

    .line 2830
    :try_start_59
    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_5f} :catch_c6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_59 .. :try_end_5f} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5f} :catch_b8

    add-int/lit8 v5, v6, 0x1

    .line 2831
    :try_start_61
    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_61 .. :try_end_67} :catch_b3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_61 .. :try_end_67} :catch_ae
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_67} :catch_a9

    add-int/lit8 v13, v5, 0x1

    .line 2832
    :try_start_69
    aget-object v3, v1, v5

    .line 2833
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8
    :try_end_6f
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_6f} :catch_a3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_69 .. :try_end_6f} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6f} :catch_97

    add-int/lit8 v14, v10, 0x1

    move-object v5, p0

    move-object v6, v2

    move v7, v11

    move-object v9, v3

    :try_start_75
    invoke-virtual/range {v5 .. v10}, Lcom/tmobile/echolocate/DataMetrics5gSa;->fillUlCarrier(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;I)Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_7c} :catch_90
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_75 .. :try_end_7c} :catch_89
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7c} :catch_82

    move-object v7, v2

    move v8, v11

    move v9, v12

    move v2, v13

    move v10, v14

    goto :goto_4d

    :catch_82
    move-exception v1

    move-object v6, v3

    move v4, v11

    move v9, v12

    move v7, v14

    goto/16 :goto_bc

    :catch_89
    move-exception v1

    move-object v6, v3

    move v4, v11

    move v9, v12

    move v7, v14

    goto/16 :goto_c3

    :catch_90
    move-exception v1

    move-object v6, v3

    move v4, v11

    move v9, v12

    move v7, v14

    goto/16 :goto_ca

    :catch_97
    move-exception v1

    move-object v6, v3

    move v7, v10

    move v4, v11

    move v9, v12

    goto :goto_bc

    :catch_9d
    move-exception v1

    move-object v6, v3

    move v7, v10

    move v4, v11

    move v9, v12

    goto :goto_c3

    :catch_a3
    move-exception v1

    move-object v6, v3

    move v7, v10

    move v4, v11

    move v9, v12

    goto :goto_ca

    :catch_a9
    move-exception v1

    move-object v6, v3

    move v7, v10

    move v4, v11

    goto :goto_bc

    :catch_ae
    move-exception v1

    move-object v6, v3

    move v7, v10

    move v4, v11

    goto :goto_c3

    :catch_b3
    move-exception v1

    move-object v6, v3

    move v7, v10

    move v4, v11

    goto :goto_ca

    :catch_b8
    move-exception v1

    move-object v6, v3

    move v4, v8

    move v7, v10

    :goto_bc
    move-object v3, v2

    goto/16 :goto_112

    :catch_bf
    move-exception v1

    move-object v6, v3

    move v4, v8

    move v7, v10

    :goto_c3
    move-object v3, v2

    goto/16 :goto_13f

    :catch_c6
    move-exception v1

    move-object v6, v3

    move v4, v8

    move v7, v10

    :goto_ca
    move-object v3, v2

    goto/16 :goto_16c

    :catch_cd
    move-exception v1

    move-object v6, v3

    move-object v3, v7

    move v4, v8

    move v7, v10

    goto/16 :goto_112

    :catch_d4
    move-exception v1

    move-object v6, v3

    move-object v3, v7

    move v4, v8

    move v7, v10

    goto/16 :goto_13f

    :catch_db
    move-exception v1

    move-object v6, v3

    move-object v3, v7

    move v4, v8

    move v7, v10

    goto/16 :goto_16c

    :cond_e2
    :try_start_e2
    const-string v1, "getUlCarrierLog(): Cant getValues, incorrect Array from CP!!"

    .line 2836
    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 2837
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4
    :try_end_eb
    .catch Ljava/lang/NumberFormatException; {:try_start_e2 .. :try_end_eb} :catch_167
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e2 .. :try_end_eb} :catch_13a
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_eb} :catch_10d

    const/4 v11, 0x2

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v7

    move v3, v8

    move-object v5, v10

    :try_start_f1
    invoke-virtual/range {v1 .. v6}, Lcom/tmobile/echolocate/DataMetrics5gSa;->fillUlCarrier(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;I)Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f8
    .catch Ljava/lang/NumberFormatException; {:try_start_f1 .. :try_end_f8} :catch_106
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f1 .. :try_end_f8} :catch_100
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f8} :catch_fa

    goto/16 :goto_193

    :catch_fa
    move-exception v1

    move-object v3, v7

    move v4, v8

    move-object v6, v10

    move v7, v11

    goto :goto_112

    :catch_100
    move-exception v1

    move-object v3, v7

    move v4, v8

    move-object v6, v10

    move v7, v11

    goto :goto_13f

    :catch_106
    move-exception v1

    move-object v3, v7

    move v4, v8

    move-object v6, v10

    move v7, v11

    goto/16 :goto_16c

    :catch_10d
    move-exception v1

    move-object v3, v7

    move v4, v8

    move-object v6, v10

    move v7, v2

    .line 2849
    :goto_112
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tmobile/echolocate/DataMetrics5gSa;->fillUlCarrier(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;I)Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2850
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2851
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUlCarrierLog(): Exception"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_193

    :catch_13a
    move-exception v1

    move-object v3, v7

    move v4, v8

    move-object v6, v10

    move v7, v2

    .line 2845
    :goto_13f
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tmobile/echolocate/DataMetrics5gSa;->fillUlCarrier(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;I)Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2846
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 2847
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUlCarrierLog(): ArrayIndexOutOfBoundsException"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_193

    :catch_167
    move-exception v1

    move-object v3, v7

    move v4, v8

    move-object v6, v10

    move v7, v2

    .line 2841
    :goto_16c
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tmobile/echolocate/DataMetrics5gSa;->fillUlCarrier(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;I)Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2842
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2843
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUlCarrierLog(): NumberFormatException"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :cond_193
    :goto_193
    return-object v0
.end method

.method public greylist getVonrSetting()Ljava/lang/String;
    .registers 3

    .line 1878
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vonr_call_enable"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_31

    if-eqz p0, :cond_2e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2b

    .line 1891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userVonrSetting(): default on userVonrSetting ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string p0, "-2"

    goto :goto_33

    :cond_2b
    const-string p0, "ON"

    goto :goto_33

    :cond_2e
    const-string p0, "OFF"

    goto :goto_33

    :cond_31
    const-string p0, "-1"

    .line 1893
    :goto_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userVonrSetting(): ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method public greylist getVonrStatus()Ljava/lang/String;
    .registers 6

    .line 1899
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->semGetVoNRMode(I)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "INCAPABLE"

    const-string v3, "-1"

    if-eq v0, v1, :cond_36

    if-eqz v0, :cond_34

    const/4 v1, 0x1

    if-eq v0, v1, :cond_31

    .line 1911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVonrStatus(): default on getVonrStatus ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string v0, "-2"

    goto :goto_37

    :cond_31
    const-string v0, "CAPABLE"

    goto :goto_37

    :cond_34
    move-object v0, v2

    goto :goto_37

    :cond_36
    move-object v0, v3

    .line 1914
    :goto_37
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getVonrSetting()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    goto :goto_43

    :cond_42
    move-object v2, v0

    .line 1917
    :goto_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVonrStatus(): ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v2
.end method

.method public greylist getarfcn()I
    .registers 4

    .line 1215
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 1217
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    if-nez v1, :cond_92

    const-string v1, "1"

    .line 1218
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1219
    :cond_1d
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_97

    .line 1221
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 1224
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1225
    instance-of v1, v0, Landroid/telephony/CellInfoNr;

    if-eqz v1, :cond_61

    .line 1226
    check-cast v0, Landroid/telephony/CellInfoNr;

    invoke-virtual {v0}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellIdentityNr;

    .line 1227
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result p0

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getarfcn(): CellInfo is one of CellIdentityNr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :goto_5f
    move v2, p0

    goto :goto_97

    .line 1230
    :cond_61
    instance-of v1, v0, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_84

    .line 1231
    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    .line 1232
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result p0

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getarfcn(): CellInfo is one of CellIdentityLte "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_5f

    :cond_84
    const-string v0, "getAnchorLteCid(): CellInfo is not one of LTE"

    .line 1237
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_8f

    :cond_8a
    const-string v0, "getAnchorLteCid(): CellInfo.isRegistered()=false"

    .line 1241
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :goto_8f
    const/16 v2, -0x3e7

    goto :goto_29

    :cond_92
    const-string p0, "getAnchorLteCid(): current network is not available"

    .line 1246
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :cond_97
    :goto_97
    return v2
.end method

.method public greylist putDefaultBandConfigValue(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p0, 0x1

    if-ne p2, p0, :cond_c

    .line 1865
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-gtz p0, :cond_c

    .line 1866
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void
.end method

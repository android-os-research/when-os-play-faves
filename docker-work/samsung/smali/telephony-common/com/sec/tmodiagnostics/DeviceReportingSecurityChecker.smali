.class public Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;
.super Ljava/lang/Object;
.source "DeviceReportingSecurityChecker.java"


# static fields
.field private static final blacklist DBG:Z

.field public static final blacklist SIGNATURES:Landroid/content/pm/Signature;

.field public static final blacklist SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

.field private static final blacklist SIM_CHANGED_FILTER:Landroid/content/IntentFilter;

.field private static final blacklist SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

.field private static final blacklist SYSSCOPE_RESULT_FILTER:Landroid/content/IntentFilter;

.field private static blacklist mContext:Landroid/content/Context;

.field private static blacklist mIsEchoAppSignature:Z

.field private static blacklist mIsICDStatus:Z

.field private static blacklist mIsMyAccountSignature:Z

.field private static blacklist mIsSim:Z

.field private static blacklist mIsSprintHubSignature:Z

.field private static final blacklist mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private static blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmIsSim()Z
    .registers 1

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 1

    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmIsSim(Z)V
    .registers 1

    sput-boolean p0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisSPRSIM()Z
    .registers 1

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->isSPRSIM()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisTMOSIM()Z
    .registers 1

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->isTMOSIM()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SIM_CHANGED_FILTER:Landroid/content/IntentFilter;

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SYSSCOPE_RESULT_FILTER:Landroid/content/IntentFilter;

    const-string v0, "ro.build.type"

    .line 26
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    .line 29
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    .line 30
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    .line 31
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    .line 32
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    .line 42
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SIGNATURES:Landroid/content/pm/Signature;

    .line 72
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

    .line 102
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

    .line 154
    new-instance v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker$1;

    invoke-direct {v0}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker$1;-><init>()V

    sput-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static blacklist disable()V
    .registers 2

    .line 148
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "DeviceReportingSecurityChecker"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_b
    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_14

    .line 150
    sget-object v1, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_14
    return-void
.end method

.method public static blacklist enable(Landroid/content/Context;)V
    .registers 5

    .line 133
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    const-string v1, "DeviceReportingSecurityChecker"

    if-eqz v0, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1a
    sput-object p0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_55

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DBG == "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_39

    const-string p0, "init"

    .line 137
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_39
    sget-object p0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 139
    sget-object p0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SIM_CHANGED_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getSignatureUsingSalesCode()V

    .line 141
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getICDStatus()Z

    goto :goto_5c

    :cond_55
    if-eqz v0, :cond_5c

    const-string p0, "Context is null"

    .line 143
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return-void
.end method

.method private static blacklist getEchoAppSignature()Z
    .registers 8

    .line 239
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    const-string v1, "DeviceReportingSecurityChecker"

    if-eqz v0, :cond_b

    const-string v0, "getEchoAppSignature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_b
    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_61

    .line 241
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_14
    const-string v3, "com.tmobile.echolocate"

    const/16 v4, 0x40

    .line 243
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_3c

    .line 245
    array-length v3, v0

    move v4, v2

    :goto_22
    if-ge v4, v3, :cond_3c

    aget-object v5, v0, v4

    move v6, v2

    .line 246
    :goto_27
    array-length v7, v0

    if-ge v6, v7, :cond_39

    .line 247
    sget-object v7, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

    invoke-virtual {v5, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    const/4 v5, 0x1

    .line 248
    sput-boolean v5, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    goto :goto_39

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_39
    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 254
    :cond_3c
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_56} :catch_57

    goto :goto_61

    .line 256
    :catch_57
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v0, :cond_60

    const-string v0, "Package is not installed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return v2

    .line 260
    :cond_61
    :goto_61
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v0, :cond_7b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsEchoAppSignature : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_7b
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    return v0
.end method

.method private static blacklist getICDStatus()Z
    .registers 5

    .line 200
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    const-string v1, "DeviceReportingSecurityChecker"

    if-eqz v0, :cond_b

    const-string v2, "getICDStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string v2, "ro.boot.flash.locked"

    const-string v3, "0"

    .line 201
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "ICD check passed OK - ro.boot.flash.locked = 1"

    .line 202
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 203
    sput-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    goto :goto_41

    .line 205
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ICD check not passed : NOK - ro.boot.flash.locked = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ro.boot.verifiedbootstate"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 206
    sput-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    :goto_41
    if-eqz v0, :cond_59

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsICDStatus : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_59
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    return v0
.end method

.method private static blacklist getMyaccountSignature()Z
    .registers 8

    .line 213
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    const-string v1, "DeviceReportingSecurityChecker"

    if-eqz v0, :cond_b

    const-string v0, "getMyaccountSignature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_b
    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_61

    .line 215
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_14
    const-string v3, "com.tmobile.pr.mytmobile"

    const/16 v4, 0x40

    .line 217
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_3c

    .line 219
    array-length v3, v0

    move v4, v2

    :goto_22
    if-ge v4, v3, :cond_3c

    aget-object v5, v0, v4

    move v6, v2

    .line 220
    :goto_27
    array-length v7, v0

    if-ge v6, v7, :cond_39

    .line 221
    sget-object v7, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SIGNATURES:Landroid/content/pm/Signature;

    invoke-virtual {v5, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    const/4 v5, 0x1

    .line 222
    sput-boolean v5, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    goto :goto_39

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_39
    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 228
    :cond_3c
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_56} :catch_57

    goto :goto_61

    .line 230
    :catch_57
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v0, :cond_60

    const-string v0, "Package is not installed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return v2

    .line 234
    :cond_61
    :goto_61
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v0, :cond_7b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsMyAccountSignature : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_7b
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    return v0
.end method

.method private static blacklist getSignatureUsingSalesCode()V
    .registers 4

    const-string v0, "DeviceReportingSecurityChecker"

    const-string v1, ""

    :try_start_4
    const-string v2, "ro.csc.sales_code"

    .line 179
    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    goto :goto_15

    .line 181
    :catch_b
    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v2, :cond_14

    const-string v2, "Problem getting sales code!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object v2, v1

    :goto_15
    if-nez v2, :cond_18

    goto :goto_19

    :cond_18
    move-object v1, v2

    .line 186
    :goto_19
    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v2, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sales_code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const-string v0, "TMB"

    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 188
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getMyaccountSignature()Z

    .line 189
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getEchoAppSignature()Z

    goto :goto_53

    :cond_40
    const-string v0, "SPR"

    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 191
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getSprintHubSignature()Z

    goto :goto_53

    :cond_4c
    const/4 v0, 0x0

    .line 193
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    .line 194
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    .line 195
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    :goto_53
    return-void
.end method

.method private static blacklist getSprintHubSignature()Z
    .registers 8

    .line 265
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    const-string v1, "DeviceReportingSecurityChecker"

    if-eqz v0, :cond_b

    const-string v0, "getSprintHubSignature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_b
    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_61

    .line 267
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_14
    const-string v3, "com.sprint.ms.smf.services"

    const/16 v4, 0x40

    .line 269
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_3c

    .line 271
    array-length v3, v0

    move v4, v2

    :goto_22
    if-ge v4, v3, :cond_3c

    aget-object v5, v0, v4

    move v6, v2

    .line 272
    :goto_27
    array-length v7, v0

    if-ge v6, v7, :cond_39

    .line 273
    sget-object v7, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

    invoke-virtual {v5, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    const/4 v5, 0x1

    .line 274
    sput-boolean v5, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    goto :goto_39

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_39
    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 280
    :cond_3c
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_56} :catch_57

    goto :goto_61

    .line 282
    :catch_57
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v0, :cond_60

    const-string v0, "Package is not installed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return v2

    .line 286
    :cond_61
    :goto_61
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v0, :cond_7b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSprintHubSignature : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_7b
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    return v0
.end method

.method public static blacklist getStatus()Z
    .registers 3

    .line 291
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    const-string v1, "DeviceReportingSecurityChecker"

    if-eqz v0, :cond_b

    const-string v2, "getStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_b
    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    if-eqz v2, :cond_17

    if-eqz v0, :cond_1e

    const-string v2, "mIsICDStatus is true"

    .line 293
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_17
    if-eqz v0, :cond_1e

    const-string v2, "mIsICDStatus is false"

    .line 295
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1e
    :goto_1e
    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    if-eqz v2, :cond_29

    if-eqz v0, :cond_29

    const-string v2, "mIsSim is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_29
    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    if-eqz v2, :cond_34

    if-eqz v0, :cond_34

    const-string v2, "mIsMyAccountSignature is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_34
    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    if-eqz v2, :cond_3f

    if-eqz v0, :cond_3f

    const-string v2, "mIsEchoAppSignature is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_3f
    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    if-eqz v2, :cond_4a

    if-eqz v0, :cond_4a

    const-string v2, "mIsSprintHubSignature is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_4a
    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    if-eqz v2, :cond_66

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    if-eqz v2, :cond_66

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    if-nez v2, :cond_5e

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    if-nez v2, :cond_5e

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    if-eqz v2, :cond_66

    :cond_5e
    if-eqz v0, :cond_6d

    const-string v0, "security check passed"

    .line 302
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :cond_66
    if-eqz v0, :cond_6d

    const-string v0, "security check NOT passed"

    .line 304
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_6d
    :goto_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsICDStatus === "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsSim == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsMyAccountSignature== "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsEchoAppSignature== "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsSprintHubSignature== "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    if-eqz v0, :cond_c1

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    if-eqz v0, :cond_c1

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    if-nez v0, :cond_bf

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    if-nez v0, :cond_bf

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    if-eqz v0, :cond_c1

    :cond_bf
    const/4 v0, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v0, 0x0

    :goto_c2
    return v0
.end method

.method private static blacklist isSPRSIM()Z
    .registers 7

    const-string v0, "gsm.sim.operator.numeric"

    .line 342
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    sget-boolean v1, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    const-string v2, "DeviceReportingSecurityChecker"

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm.sim.operator.numeric = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v1, 0x0

    if-eqz v0, :cond_ad

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ad

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, ","

    .line 347
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 348
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_3f

    :cond_3d
    aput-object v0, v3, v1

    .line 352
    :goto_3f
    array-length v0, v3

    if-lez v0, :cond_ad

    move v0, v1

    .line 353
    :goto_43
    array-length v4, v3

    if-ge v0, v4, :cond_ad

    .line 354
    aget-object v4, v3, v0

    if-eqz v4, :cond_aa

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_aa

    .line 355
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 356
    sget-boolean v5, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v5, :cond_78

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.operator.numeric Arr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    const-string v5, "310120"

    .line 357
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a8

    const-string v5, "312530"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a8

    const-string v5, "310028"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a8

    const-string v5, "311390"

    .line 358
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a8

    const-string v5, "310332"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a8

    const-string v5, "311328"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    :cond_a8
    const/4 v1, 0x1

    goto :goto_ad

    :cond_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 366
    :cond_ad
    :goto_ad
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v0, :cond_c5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimFound= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c5
    return v1
.end method

.method private static blacklist isTMOSIM()Z
    .registers 7

    const-string v0, "gsm.sim.operator.numeric"

    .line 311
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    sget-boolean v1, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    const-string v2, "DeviceReportingSecurityChecker"

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm.sim.operator.numeric = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v1, 0x0

    if-eqz v0, :cond_e6

    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, ","

    .line 316
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 317
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_3f

    :cond_3d
    aput-object v0, v3, v1

    .line 321
    :goto_3f
    array-length v0, v3

    if-lez v0, :cond_e6

    move v0, v1

    .line 322
    :goto_43
    array-length v4, v3

    if-ge v0, v4, :cond_e6

    .line 323
    aget-object v4, v3, v0

    if-eqz v4, :cond_e2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e2

    .line 324
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 325
    sget-boolean v5, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v5, :cond_78

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.operator.numeric Arr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    const-string v5, "310160"

    .line 326
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    const-string v5, "310200"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    const-string v5, "310210"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    const-string v5, "310220"

    .line 327
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    const-string v5, "310230"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    const-string v5, "310240"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    const-string v5, "310250"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    const-string v5, "310260"

    .line 328
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    const-string v5, "310270"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    const-string v5, "310310"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    const-string v5, "310490"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    const-string v5, "310660"

    .line 329
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    const-string v5, "310800"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e2

    :cond_e0
    const/4 v1, 0x1

    goto :goto_e6

    :cond_e2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_43

    .line 337
    :cond_e6
    :goto_e6
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->DBG:Z

    if-eqz v0, :cond_fe

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimFound= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fe
    return v1
.end method

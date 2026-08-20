.class public Lcom/android/server/enterprise/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BIOMETRIC_STATE_OFF:I = 0x0

.field public static final BIOMETRIC_STATE_ON:I = 0x1

.field public static final BIOMETRIC_TYPE_FACE:I = 0x100

.field public static final BIOMETRIC_TYPE_FINGERPRINT:I = 0x1

.field public static final BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final CUSTOM_PERMISSION:I = 0x3

.field public static final CUSTOM_PREMIUM_PERMISSION:I = 0x4

.field public static final ENCRYPTION_TYPE_MD5:Ljava/lang/String; = "MD5"

.field public static final ENCRYPTION_TYPE_SHA256:Ljava/lang/String; = "SHA-256"

.field public static final ENCRYPTION_TYPE_X509:Ljava/lang/String; = "X.509"

.field public static final HEX_DIGITS:[C

.field public static final KEY_EVENT_KEYCODE_EMERGENCY:I = 0x3e9

.field public static final KEY_EVENT_SEM_KEYCODE_RECENT_APPS:I = 0x3e9

.field public static final MY_PID:I

.field public static final NEW_EMAIL_PKG_NAME:Ljava/lang/String; = "com.samsung.android.email.provider"

.field public static final NO_PERMISSION:I = 0x0

.field public static final PREMIUM_PERMISSION:I = 0x2

.field public static final SETTINGS_SYSTEM_SET_SHORTCUTS_MODE:Ljava/lang/String; = "set_shortcuts_mode"

.field public static final STANDARD_PERMISSION:I = 0x1

.field public static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static TAG:Ljava/lang/String; = null

.field public static final WHITELIST:Ljava/lang/String; = "WHITELIST"

.field public static customPermissions:[Ljava/lang/String;

.field public static premiumPermissions:[Ljava/lang/String;

.field public static standardPermissions:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 34

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 125
    fill-array-data v0, :array_9c

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->HEX_DIGITS:[C

    const-string v1, "com.samsung.android.knox.permission.KNOX_APN"

    const-string v2, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    const-string v3, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    const-string v4, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    const-string v5, "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    const-string v6, "com.samsung.android.knox.permission.KNOX_LDAP"

    const-string v7, "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

    const-string v8, "com.samsung.android.knox.permission.KNOX_LOCATION"

    const-string v9, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    const-string v10, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    const-string v11, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    const-string v12, "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

    const-string v13, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    const-string v14, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    const-string v15, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    const-string v16, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    const-string v17, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    const-string v18, "com.samsung.android.knox.permission.KNOX_DEX"

    const-string v19, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    const-string v20, "com.samsung.android.knox.permission.KNOX_EMAIL"

    const-string v21, "com.samsung.android.knox.permission.KNOX_ROAMING"

    const-string v22, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    const-string v23, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const-string v24, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const-string v25, "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    const-string v26, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    const-string v27, "com.samsung.android.knox.permission.KNOX_SPDCONTROL"

    const-string v28, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    const-string v29, "com.samsung.android.knox.permission.KNOX_VPN"

    const-string v30, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    const-string v31, "com.samsung.android.knox.permission.KNOX_WIFI"

    const-string v32, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    const-string v33, "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"

    .line 128
    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->standardPermissions:[Ljava/lang/String;

    const-string v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

    const-string v2, "com.samsung.android.knox.permission.KNOX_DLP_MGMT"

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const-string v4, "com.samsung.android.knox.permission.KNOX_EBILLING"

    const-string v5, "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

    const-string v6, "com.samsung.android.knox.permission.KNOX_NPA"

    const-string v7, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    const-string v8, "com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

    const-string v9, "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    const-string v10, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    const-string v11, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    const-string v12, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    const-string v13, "com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

    const-string v14, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    const-string v15, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    const-string v16, "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

    const-string v17, "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    const-string v18, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    const-string v19, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    const-string v20, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    const-string v21, "com.samsung.android.knox.permission.KNOX_HDM"

    const-string v22, "com.samsung.android.knox.permission.KNOX_CRITICAL_COMMUNICATIONS"

    .line 163
    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->premiumPermissions:[Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.permission.CUSTOM_PROKIOSK"

    const-string v1, "com.samsung.android.knox.permission.CUSTOM_SETTING"

    const-string v2, "com.samsung.android.knox.permission.CUSTOM_SYSTEM"

    const-string v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

    .line 187
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->customPermissions:[Ljava/lang/String;

    const-string v0, "EnterpriseUtils"

    .line 194
    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    .line 195
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/utils/Utils;->MY_PID:I

    return-void

    :array_9c
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2HexFormatted([B)Ljava/lang/String;
    .registers 9

    if-eqz p0, :cond_4c

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 742
    :goto_b
    array-length v3, p0

    if-ge v1, v3, :cond_47

    .line 743
    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 744
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    .line 746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2c
    if-le v4, v2, :cond_34

    add-int/lit8 v6, v4, -0x2

    .line 748
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 749
    :cond_34
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_44

    const/16 v3, 0x3a

    .line 751
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 753
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4c
    const-string p0, ""

    return-object p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    if-eqz p1, :cond_22

    .line 783
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_22

    .line 786
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 788
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    :goto_22
    return v0
.end method

.method public static comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 998
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p2, :cond_88

    if-nez p1, :cond_7

    goto/16 :goto_88

    .line 1016
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/high16 v3, 0x8000000

    const/16 v4, 0x40

    const/4 v5, 0x0

    if-nez p3, :cond_26

    .line 1019
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1a} :catch_3e
    .catchall {:try_start_12 .. :try_end_1a} :catchall_3c

    .line 1020
    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_22} :catch_24
    .catchall {:try_start_1a .. :try_end_22} :catchall_3c

    move-object v5, p0

    goto :goto_43

    :catch_24
    move-exception p0

    goto :goto_40

    .line 1022
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1, v4, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_2e} :catch_3e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_3c

    .line 1024
    :try_start_2e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v3, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_36} :catch_39
    .catchall {:try_start_2e .. :try_end_36} :catchall_3c

    move-object v5, p0

    move-object p3, v4

    goto :goto_43

    :catch_39
    move-exception p0

    move-object p3, v4

    goto :goto_40

    :catchall_3c
    move-exception p0

    goto :goto_84

    :catch_3e
    move-exception p0

    move-object p3, v5

    .line 1028
    :goto_40
    :try_start_40
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3c

    .line 1030
    :goto_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    if-eqz p3, :cond_63

    .line 1033
    iget-object p1, p3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_63

    .line 1035
    array-length p3, p1

    move v1, v0

    :goto_4f
    if-ge v1, p3, :cond_63

    aget-object v2, p1, v1

    if-eqz v2, :cond_60

    .line 1037
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    return p0

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_63
    if-eqz v5, :cond_83

    .line 1043
    iget-object p1, v5, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz p1, :cond_83

    .line 1044
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    .line 1045
    array-length p3, p1

    move v1, v0

    :goto_6f
    if-ge v1, p3, :cond_83

    aget-object v2, p1, v1

    if-eqz v2, :cond_80

    .line 1047
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    return p0

    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    :cond_83
    return v0

    .line 1030
    :goto_84
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1031
    throw p0

    .line 1011
    :cond_88
    :goto_88
    sget-object p0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    const-string p1, "Invalid arguments"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 963
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android"

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_4b

    if-nez p0, :cond_16

    .line 969
    sget-object v1, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "Could not Read package info"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    if-eqz p0, :cond_4a

    .line 971
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_4a

    if-eqz p1, :cond_4a

    .line 972
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 973
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, p0

    move v3, v0

    :goto_27
    if-ge v3, v2, :cond_31

    aget-object v4, p0, v3

    .line 974
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 976
    :cond_31
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 977
    array-length v2, p1

    move v3, v0

    :goto_38
    if-ge v3, v2, :cond_42

    aget-object v4, p1, v3

    .line 978
    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 981
    :cond_42
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    const/4 p0, 0x1

    return p0

    :cond_4a
    return v0

    :catch_4b
    move-exception p0

    .line 965
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method public static convertListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_d

    .line 539
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 540
    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, ""

    return-object p0
.end method

.method public static convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 532
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 535
    :cond_14
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;
    .registers 7

    .line 920
    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating context as user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 925
    :try_start_1a
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_23} :catch_29
    .catchall {:try_start_1a .. :try_end_23} :catchall_27

    .line 930
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_50

    :catchall_27
    move-exception p0

    goto :goto_51

    :catch_29
    move-exception p0

    .line 928
    :try_start_2a
    sget-object p2, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package name "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not be found! "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_2a .. :try_end_4c} :catchall_27

    .line 930
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    :goto_50
    return-object p0

    :goto_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 931
    throw p0
.end method

.method public static deserializeObject([B)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 479
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 481
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    .line 482
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    return-object v0
.end method

.method public static deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 511
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_e} :catch_5c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_44

    .line 512
    :try_start_e
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_3a

    .line 513
    :try_start_13
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_30

    .line 514
    :try_start_18
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_26

    .line 515
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_30

    :try_start_1f
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3a

    :try_start_22
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_25} :catch_5c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_44

    return-object v3

    :catchall_26
    move-exception v3

    .line 510
    :try_start_27
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v2

    :try_start_2c
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2f
    throw v3
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v2

    :try_start_31
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception p0

    :try_start_36
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_39
    throw v2
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p0

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v1

    :try_start_40
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_43
    throw p0
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_40 .. :try_end_44} :catch_5c
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_44

    :catch_44
    move-exception p0

    .line 519
    sget-object v1, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException to Deserialize Object from String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_5c
    move-exception p0

    .line 516
    sget-object v1, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassNotFoundException to Deserialize Object from String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static digestBytes([BLjava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 681
    :cond_5
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 682
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static encodeToString([B)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xb

    .line 663
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAdminUidForEthernetOnly(Lcom/android/server/enterprise/storage/EdmStorageProvider;)I
    .registers 4

    const/4 v0, 0x1

    .line 1109
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEX_POLICY"

    const-string v2, "ethernetOnlyEnabled"

    .line 1108
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1110
    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdminUidForEthernetOnly - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "user"

    .line 832
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 836
    :try_start_12
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 837
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 838
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 839
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_35} :catch_38
    .catchall {:try_start_12 .. :try_end_35} :catchall_36

    goto :goto_1a

    :catchall_36
    move-exception p0

    goto :goto_40

    :catch_38
    move-exception p0

    .line 842
    :try_start_39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_36

    .line 844
    :cond_3c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 845
    throw p0
.end method

.method public static getApplicationPubKeyMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p1, :cond_35

    if-nez p0, :cond_5

    goto :goto_35

    .line 718
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->getApplicationPubKeys(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 722
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 723
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "MD5"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/utils/Utils;->digestBytes([BLjava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_14

    .line 725
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_34
    return-object v0

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApplicationPubKeys(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p0, :cond_33

    if-nez p1, :cond_5

    goto :goto_33

    .line 694
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 695
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 696
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_32

    const/4 p1, 0x0

    .line 697
    :goto_1b
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1

    if-ge p1, v2, :cond_32

    .line 698
    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->getEncodedPubKey(Landroid/content/pm/Signature;)[B

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 700
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    :cond_32
    return-object v0

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApplicationSignaturesSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p0, :cond_3b

    if-nez p1, :cond_5

    goto :goto_3b

    .line 645
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 646
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 647
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_3a

    const/4 p1, 0x0

    .line 648
    :goto_1b
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1

    if-ge p1, v2, :cond_3a

    .line 649
    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->getEncodedPubKey(Landroid/content/pm/Signature;)[B

    move-result-object v1

    if-eqz v1, :cond_37

    const-string v2, "SHA-256"

    .line 651
    invoke-static {v1, v2}, Lcom/android/server/enterprise/utils/Utils;->digestBytes([BLjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_37

    .line 653
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    :cond_3a
    return-object v0

    :cond_3b
    :goto_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 4

    if-nez p0, :cond_b

    .line 863
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 866
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v0, :cond_11

    const/4 p0, 0x0

    return p0

    .line 870
    :cond_11
    invoke-static {}, Lcom/android/server/enterprise/utils/Utils;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 871
    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallingOrCurrentUserId(): move: cxtInfo.mContainerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    return p0

    .line 874
    :cond_38
    sget v0, Lcom/android/server/enterprise/utils/Utils;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_51

    .line 875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 877
    :try_start_44
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_4c

    .line 879
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_4c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 880
    throw p0

    .line 884
    :cond_51
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public static getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3

    if-nez p0, :cond_7

    .line 894
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0

    .line 897
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v0, :cond_14

    .line 898
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPseudoAdminUid()I

    move-result p0

    return p0

    .line 901
    :cond_14
    invoke-static {}, Lcom/android/server/enterprise/utils/Utils;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 902
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0

    .line 904
    :cond_29
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    return p0
.end method

.method public static getEncodedPubKey(Landroid/content/pm/Signature;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "X.509"

    .line 624
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 625
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 626
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 628
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 630
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    :cond_23
    return-object v0
.end method

.method public static getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 590
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    .line 591
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-object v2

    .line 600
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 601
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1b} :catch_1c

    move-object v2, v0

    :catch_1c
    return-object v2
.end method

.method public static getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;TT;)I"
        }
    .end annotation

    if-eqz p2, :cond_f

    .line 357
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 359
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    add-int/lit8 p0, p0, 0x1

    :cond_e
    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static getPermissionType(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 798
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->hasStandardPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 799
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->hasCustomPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 800
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->hasPremiumPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_1e

    if-eqz v1, :cond_25

    if-nez v2, :cond_17

    if-nez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_1c

    :cond_15
    const/4 p0, 0x2

    goto :goto_1c

    :cond_17
    if-nez p0, :cond_1b

    const/4 p0, 0x3

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x4

    :goto_1c
    move v0, p0

    goto :goto_25

    .line 823
    :catch_1e
    sget-object p0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    const-string p1, "NameNotFoundException"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_25
    return v0
.end method

.method public static getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 888
    const-class v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object v0
.end method

.method public static getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I
    .registers 7

    const-string v0, "adminUid"

    .line 1058
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 1061
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1062
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "proxyUid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "PROXY_ADMIN_INFO"

    .line 1063
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    .line 1066
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    const/4 v1, 0x0

    .line 1067
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 1069
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_32
    return p1
.end method

.method public static hasCustomPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 764
    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->customPermissions:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/utils/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 773
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p2, v2

    .line 774
    invoke-static {p0, p1, v3}, Lcom/android/server/enterprise/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public static hasPremiumPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 760
    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->premiumPermissions:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/utils/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasStandardPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 768
    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->standardPermissions:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/utils/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static intToHexString(II)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x8

    new-array v1, v0, [C

    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 855
    sget-object v2, Lcom/android/server/enterprise/utils/Utils;->HEX_DIGITS:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    ushr-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_4

    rsub-int/lit8 v2, v0, 0x8

    if-lt v2, p1, :cond_4

    .line 858
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static isDexActivated(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static isEthernetOnlyApplied(Lcom/android/server/enterprise/storage/EdmStorageProvider;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DEX_POLICY"

    const-string v2, "ethernetOnlyApplied"

    .line 1090
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1093
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_22

    if-eqz v1, :cond_d

    const/4 p0, 0x1

    move v0, p0

    goto :goto_41

    :catch_22
    move-exception p0

    .line 1100
    sget-object v1, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEthernetOnlyApplied : failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1103
    :cond_41
    :goto_41
    sget-object p0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEthernetOnlyApplied - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 547
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_4} :catch_6

    const/4 p0, 0x1

    return p0

    :catch_6
    return v0
.end method

.method public static isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 368
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 941
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v2

    .line 943
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_14
    if-nez v1, :cond_2d

    .line 946
    sget-object p0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldnt get Package Info for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 952
    :cond_2d
    :try_start_2d
    iget-object p1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result p0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_33} :catch_34

    return p0

    :catch_34
    move-exception p0

    .line 954
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public static isSystemApplication(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    if-nez p0, :cond_6

    goto :goto_2f

    .line 572
    :cond_6
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2e

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_2e

    .line 575
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_2e

    array-length v1, v1

    array-length v2, p1

    if-ne v1, v2, :cond_2e

    move v1, v0

    .line 576
    :goto_19
    array-length v2, p1

    if-ge v1, v2, :cond_2c

    .line 577
    aget-object v2, p1, v1

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return v0

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2c
    const/4 p0, 0x1

    return p0

    :cond_2e
    return v0

    .line 568
    :cond_2f
    :goto_2f
    sget-object p0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "invalid param, pkgInfo or signature null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "TT;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "TT;>;>;TT;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "WHITELIST"

    .line 395
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object p1

    .line 397
    :cond_f
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return-object p0

    .line 401
    :cond_1c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 402
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    const-string v3, "BLACKLIST"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 407
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 409
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 410
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 413
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {p0, v2, p2}, Lcom/android/server/enterprise/utils/Utils;->getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_9b

    .line 418
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 419
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto :goto_e6

    :cond_9b
    const/4 v2, 0x1

    if-ne p0, v2, :cond_c8

    .line 425
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p2}, Lcom/android/server/enterprise/utils/Utils;->isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ad

    move-object p2, p1

    move-object p0, v1

    goto :goto_af

    :cond_ad
    move-object p0, p1

    move-object p2, v1

    .line 432
    :goto_af
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 433
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p2, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_e6

    .line 436
    :cond_c8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p0, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 439
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p0, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 443
    :goto_e6
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 446
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public static readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "="

    .line 223
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_25

    .line 225
    sget-object p0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File Not Found : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 231
    :cond_25
    :try_start_25
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2a} :catch_93

    .line 238
    new-instance p1, Ljava/io/BufferedReader;

    const/16 v3, 0x200

    invoke-direct {p1, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 241
    :cond_31
    :try_start_31
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_69

    .line 242
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 244
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 245
    array-length v0, p0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_50

    const/4 v0, 0x1

    aget-object p0, p0, v0

    goto :goto_52

    :cond_50
    const-string p0, ""

    :goto_52
    const-string/jumbo v0, "null"

    .line 246
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_59} :catch_77
    .catchall {:try_start_31 .. :try_end_59} :catchall_75

    if-eqz v0, :cond_5c

    goto :goto_5d

    :cond_5c
    move-object v2, p0

    .line 257
    :goto_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 261
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_63} :catch_64

    goto :goto_68

    :catch_64
    move-exception p0

    .line 265
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_68
    return-object v2

    .line 257
    :cond_69
    :try_start_69
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 261
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception p0

    .line 265
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_74
    return-object v2

    :catchall_75
    move-exception p0

    goto :goto_87

    :catch_77
    move-exception p0

    .line 252
    :try_start_78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_75

    .line 257
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 261
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_81} :catch_82

    goto :goto_86

    :catch_82
    move-exception p0

    .line 265
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_86
    return-object v2

    .line 257
    :goto_87
    :try_start_87
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 261
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8d} :catch_8e

    goto :goto_92

    :catch_8e
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 267
    :goto_92
    throw p0

    :catch_93
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 234
    sget-object p0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File access error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static serializeObject(Ljava/lang/Object;)[B
    .registers 3

    .line 456
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 459
    :try_start_5
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 460
    invoke-interface {v1, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 461
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V

    .line 464
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 467
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static serializeObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 495
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_4f

    .line 496
    :try_start_9
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_45

    .line 497
    :try_start_e
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_3b

    .line 498
    :try_start_13
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 499
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 500
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_31

    .line 501
    :try_start_27
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3b

    :try_start_2a
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_45

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_4f

    return-object p0

    :catchall_31
    move-exception p0

    .line 494
    :try_start_32
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception v3

    :try_start_37
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3a
    throw p0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p0

    :try_start_3c
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v2

    :try_start_41
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw p0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p0

    :try_start_46
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception v1

    :try_start_4b
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4e
    throw p0
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4f} :catch_4f

    :catch_4f
    move-exception p0

    .line 502
    sget-object v1, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException to Serialize Object to String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static unmarshall([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 526
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 527
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 528
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    return-object p0
.end method

.method public static writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 291
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1b

    .line 293
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 296
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0x1a4

    const/4 v5, -0x1

    .line 295
    invoke-static {p2, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 303
    :cond_1b
    new-instance p2, Ljava/io/FileReader;

    invoke-direct {p2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_c0
    .catchall {:try_start_3 .. :try_end_20} :catchall_bc

    .line 304
    :try_start_20
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x200

    invoke-direct {v4, p2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_b7
    .catchall {:try_start_20 .. :try_end_27} :catchall_b2

    .line 306
    :try_start_27
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v6, v1

    .line 308
    :goto_2f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_af
    .catchall {:try_start_27 .. :try_end_33} :catchall_ac

    const-string/jumbo v8, "line.separator"

    const-string v9, "="

    if-eqz v7, :cond_64

    .line 309
    :try_start_3a
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v1

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    .line 312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v6, v0

    .line 314
    :cond_59
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2f

    :cond_64
    if-nez v6, :cond_82

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_82
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_85} :catch_af
    .catchall {:try_start_3a .. :try_end_85} :catchall_ac

    .line 327
    :try_start_85
    new-instance p0, Ljava/io/PrintStream;

    invoke-direct {p0, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8a} :catch_b7
    .catchall {:try_start_85 .. :try_end_8a} :catchall_b2

    .line 328
    :try_start_8a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_91} :catch_a5
    .catchall {:try_start_8a .. :try_end_91} :catchall_9e

    .line 335
    :try_start_91
    invoke-virtual {p2}, Ljava/io/FileReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_99

    :catch_95
    move-exception p1

    .line 344
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 347
    :goto_99
    invoke-virtual {p0}, Ljava/io/PrintStream;->close()V

    goto/16 :goto_dd

    :catchall_9e
    move-exception p1

    move-object v4, v2

    move-object v2, p2

    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    goto :goto_df

    :catch_a5
    move-exception p1

    move-object v4, v2

    move-object v2, p2

    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    goto :goto_c3

    :catchall_ac
    move-exception p0

    move-object p1, v2

    goto :goto_b5

    :catch_af
    move-exception p0

    move-object p1, v2

    goto :goto_ba

    :catchall_b2
    move-exception p0

    move-object p1, v2

    move-object v4, p1

    :goto_b5
    move-object v2, p2

    goto :goto_df

    :catch_b7
    move-exception p0

    move-object p1, v2

    move-object v4, p1

    :goto_ba
    move-object v2, p2

    goto :goto_c3

    :catchall_bc
    move-exception p0

    move-object p1, v2

    move-object v4, p1

    goto :goto_df

    :catch_c0
    move-exception p0

    move-object p1, v2

    move-object v4, p1

    .line 331
    :goto_c3
    :try_start_c3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_de

    if-eqz v2, :cond_ce

    .line 335
    :try_start_c8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    goto :goto_ce

    :catch_cc
    move-exception p0

    goto :goto_d4

    :cond_ce
    :goto_ce
    if-eqz v4, :cond_d7

    .line 340
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d3} :catch_cc

    goto :goto_d7

    .line 344
    :goto_d4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d7
    :goto_d7
    if-eqz p1, :cond_dc

    .line 347
    invoke-virtual {p1}, Ljava/io/PrintStream;->close()V

    :cond_dc
    move v0, v1

    :goto_dd
    return v0

    :catchall_de
    move-exception p0

    :goto_df
    if-eqz v2, :cond_e7

    .line 335
    :try_start_e1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    goto :goto_e7

    :catch_e5
    move-exception p2

    goto :goto_ed

    :cond_e7
    :goto_e7
    if-eqz v4, :cond_f0

    .line 340
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_ec} :catch_e5

    goto :goto_f0

    .line 344
    :goto_ed
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_f0
    :goto_f0
    if-eqz p1, :cond_f5

    .line 347
    invoke-virtual {p1}, Ljava/io/PrintStream;->close()V

    .line 350
    :cond_f5
    throw p0
.end method

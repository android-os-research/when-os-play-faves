.class public Lcom/android/server/enterprise/content/SecContentProvider2;
.super Landroid/content/ContentProvider;
.source "SecContentProvider2.java"


# static fields
.field public static final API_KEY:Ljava/lang/String; = "API"

.field public static final APPLICATION:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider2"

.field public static final CLIENTCERTIFICATEMANAGER:I = 0x2

.field public static final DATETIME:I = 0x4

.field public static final DEVICEACCOUNT:I = 0x3

.field public static final EMAIL:I = 0x6

.field public static final EMAILACCOUNT:I = 0x7

.field public static final ENTERPRISECERTENROLL:I = 0x8

.field public static final ENTERPRISECONTAINER:I = 0x9

.field public static final ENTERPRISECONTAINERSERVICE:I = 0xa

.field public static final ENTERPRISEDEVICEMANAGER:I = 0xb

.field public static final ENTERPRISELICENSE:I = 0x15

.field public static final EXCHANGEACCOUNT:I = 0xc

.field public static final KIOSKMODESEC:I = 0xd

.field public static final KNOXCUSTOMMANAGERSERVICE1:I = 0xe

.field public static final KNOXCUSTOMMANAGERSERVICE2:I = 0xf

.field public static final MISC:I = 0x10

.field public static final MULTIUSERMANAGER:I = 0x11

.field public static final PHONERESTRICTION:I = 0x12

.field public static final TAG:Ljava/lang/String; = "SecContentProvider2"

.field public static final URI_MATCHER:Landroid/content/UriMatcher;

.field public static final VPN:I = 0x13

.field public static final WIFI:I = 0x14


# instance fields
.field public final DEBUG:Z

.field public mContext:Landroid/content/Context;

.field public mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 139
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ApplicationPolicy"

    const/4 v3, 0x1

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "ClientCertificateManager"

    const/4 v3, 0x2

    .line 141
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "DeviceAccountPolicy"

    const/4 v3, 0x3

    .line 142
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "EmailPolicy"

    const/4 v3, 0x6

    .line 143
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "EmailAccountPolicy"

    const/4 v3, 0x7

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x8

    .line 145
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "EnterpriseContainerPolicy"

    const/16 v3, 0x9

    .line 146
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "EnterpriseContainerService"

    const/16 v3, 0xa

    .line 147
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "EnterpriseDeviceManager"

    const/16 v3, 0xb

    .line 148
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "ExchangeAccountPolicy"

    const/16 v3, 0xc

    .line 149
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "KioskMode"

    const/16 v3, 0xd

    .line 150
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "KnoxCustomManagerService1"

    const/16 v3, 0xe

    .line 151
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "KnoxCustomManagerService2"

    const/16 v3, 0xf

    .line 152
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "MiscPolicy"

    const/16 v3, 0x10

    .line 153
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "MultiUserManager"

    const/16 v3, 0x11

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "PhoneRestrictionPolicy"

    const/16 v3, 0x12

    .line 155
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "vpnPolicy"

    const/16 v3, 0x13

    .line 156
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "WifiPolicy"

    const/16 v3, 0x14

    .line 157
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "EnterpriseLicenseService"

    const/16 v3, 0x15

    .line 158
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->DEBUG:Z

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public final getCallerName(I)Ljava/lang/String;
    .registers 2

    .line 3542
    iget-object p0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_e

    const-string p0, "fail to get caller name"

    :cond_e
    return-object p0
.end method

.method public final getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .registers 2

    .line 3566
    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_11

    const-string/jumbo v0, "knoxcustom"

    .line 3568
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3567
    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 3571
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7

    .line 3504
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3510
    sget-object v1, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4c

    const/16 p2, 0x12

    if-eq v1, p2, :cond_40

    const/16 p2, 0xe

    const-string v0, "SecContentProvider2"

    if-eq v1, p2, :cond_2f

    const/16 p2, 0xf

    if-eq v1, p2, :cond_1e

    goto :goto_76

    .line 3532
    :cond_1e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string p0, "do notifyChange() for knoxCustomManagerService2"

    .line 3533
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 3527
    :cond_2f
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string p0, "do notifyChange() for knoxCustomManagerService1"

    .line 3528
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 3512
    :cond_40
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_76

    :cond_4c
    const-string p0, "eas_account_policy"

    .line 3516
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    if-eqz p0, :cond_76

    const-string p1, "API"

    .line 3518
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_76

    const-string/jumbo v1, "setAccountEmailPassword"

    .line 3519
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 3521
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v0, "password"

    .line 3522
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3521
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    :cond_76
    :goto_76
    return-object v3
.end method

.method public onCreate()Z
    .registers 2

    .line 164
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    return p0
.end method

.method public final populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;
    .registers 6

    .line 3496
    new-instance p0, Landroid/database/MatrixCursor;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Boolean;

    .line 3497
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 172
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "query(), uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " selection = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SecContentProvider2"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "called from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->getCallerName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/4 v5, 0x7

    const/16 v16, 0x4

    const/4 v6, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/16 v17, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq v0, v12, :cond_15b8

    if-eq v0, v9, :cond_15b3

    if-eq v0, v6, :cond_1463

    if-eq v0, v5, :cond_145e

    const-string v5, "Failed talking with KnoxCustomManager service"

    packed-switch v0, :pswitch_data_1c20

    goto/16 :goto_1c1f

    .line 1790
    :pswitch_6f
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryEnterpriseLicense(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_74
    const-string/jumbo v0, "wifi_policy"

    .line 2454
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-eqz v0, :cond_1c1f

    if-eqz v2, :cond_1c1f

    .line 2456
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1c3a

    goto/16 :goto_12a

    :sswitch_8a
    const-string/jumbo v5, "isWifiScanningAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_95

    goto/16 :goto_12a

    :cond_95
    const/16 v17, 0xb

    goto/16 :goto_12a

    :sswitch_99
    const-string v5, "getAllowUserProfiles"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a3

    goto/16 :goto_12a

    :cond_a3
    const/16 v17, 0xa

    goto/16 :goto_12a

    :sswitch_a7
    const-string/jumbo v5, "isWifiApSettingUserModificationAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b2

    goto/16 :goto_12a

    :cond_b2
    move/from16 v17, v14

    goto/16 :goto_12a

    :sswitch_b6
    const-string v5, "getAutomaticConnectionToWifi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c0

    goto/16 :goto_12a

    :cond_c0
    move/from16 v17, v15

    goto/16 :goto_12a

    :sswitch_c4
    const-string/jumbo v5, "getPromptCredentialsEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cf

    goto/16 :goto_12a

    :cond_cf
    const/16 v17, 0x7

    goto :goto_12a

    :sswitch_d2
    const-string v5, "getAllowUserPolicyChanges"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_db

    goto :goto_12a

    :cond_db
    move/from16 v17, v6

    goto :goto_12a

    :sswitch_de
    const-string v5, "edmAddOrUpdate"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e7

    goto :goto_12a

    :cond_e7
    move/from16 v17, v8

    goto :goto_12a

    :sswitch_ea
    const-string/jumbo v5, "isOpenWifiApAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f4

    goto :goto_12a

    :cond_f4
    move/from16 v17, v16

    goto :goto_12a

    :sswitch_f7
    const-string/jumbo v5, "getPasswordHidden"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_101

    goto :goto_12a

    :cond_101
    move/from16 v17, v9

    goto :goto_12a

    :sswitch_104
    const-string/jumbo v5, "isEnterpriseNetwork"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10e

    goto :goto_12a

    :cond_10e
    move/from16 v17, v10

    goto :goto_12a

    :sswitch_111
    const-string/jumbo v5, "removeNetworkConfiguration"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11b

    goto :goto_12a

    :cond_11b
    move/from16 v17, v12

    goto :goto_12a

    :sswitch_11e
    const-string/jumbo v5, "isWifiStateChangeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_128

    goto :goto_12a

    :cond_128
    move/from16 v17, v13

    :goto_12a
    packed-switch v17, :pswitch_data_1c6c

    return-object v11

    .line 2548
    :pswitch_12e
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2551
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_202

    :pswitch_13d
    if-eqz v3, :cond_161

    .line 2487
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-ge v5, v10, :cond_146

    goto :goto_161

    .line 2490
    :cond_146
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v4, v3, v13

    .line 2491
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    aget-object v3, v3, v12

    .line 2492
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2490
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v0

    .line 2495
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_202

    :cond_161
    :goto_161
    return-object v11

    .line 2528
    :pswitch_162
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2532
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_202

    .line 2498
    :pswitch_171
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2502
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_202

    .line 2512
    :pswitch_180
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2516
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_202

    .line 2480
    :pswitch_18f
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2484
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto :goto_202

    :pswitch_19d
    if-eqz v3, :cond_1b4

    .line 2458
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v10, :cond_1a6

    goto :goto_1b4

    .line 2461
    :cond_1a6
    aget-object v0, v3, v13

    if-eqz v0, :cond_202

    .line 2466
    new-instance v11, Landroid/database/MatrixCursor;

    new-array v0, v12, [Ljava/lang/String;

    aput-object v2, v0, v13

    invoke-direct {v11, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_202

    :cond_1b4
    :goto_1b4
    return-object v11

    .line 2542
    :pswitch_1b5
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2545
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto :goto_202

    .line 2505
    :pswitch_1c3
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2508
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto :goto_202

    :pswitch_1d1
    if-eqz v3, :cond_1e5

    .line 2519
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_1da

    goto :goto_1e5

    .line 2522
    :cond_1da
    aget-object v3, v3, v13

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    .line 2525
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto :goto_202

    :cond_1e5
    :goto_1e5
    return-object v11

    :pswitch_1e6
    if-eqz v3, :cond_1f4

    .line 2470
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v12, :cond_1ef

    goto :goto_1f4

    .line 2477
    :cond_1ef
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto :goto_202

    :cond_1f4
    :goto_1f4
    return-object v11

    .line 2535
    :pswitch_1f5
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2539
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    :cond_202
    :goto_202
    return-object v11

    .line 2965
    :pswitch_203
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryVPN(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_208
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryPhoneRestriction(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 2967
    :pswitch_20d
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryMultiUser(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 2971
    :pswitch_212
    invoke-virtual {v1, v2, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryMisc(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 880
    :pswitch_217
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1c1f

    if-eqz v2, :cond_1c1f

    .line 888
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1c88

    :goto_226
    move/from16 v4, v17

    goto/16 :goto_42e

    :sswitch_22a
    const-string/jumbo v4, "getScreenOffOnStatusBarDoubleTapState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_234

    goto :goto_226

    :cond_234
    const/16 v4, 0x24

    goto/16 :goto_42e

    :sswitch_238
    const-string/jumbo v4, "getVolumeButtonRotationState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_242

    goto :goto_226

    :cond_242
    const/16 v4, 0x23

    goto/16 :goto_42e

    :sswitch_246
    const-string/jumbo v4, "getSealedHideNotificationMessages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_250

    goto :goto_226

    :cond_250
    const/16 v4, 0x22

    goto/16 :goto_42e

    :sswitch_254
    const-string/jumbo v4, "getSealedPowerDialogCustomItemsState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25e

    goto :goto_226

    :cond_25e
    const/16 v4, 0x21

    goto/16 :goto_42e

    :sswitch_262
    const-string/jumbo v4, "getSettingsEnabledItems"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26c

    goto :goto_226

    :cond_26c
    const/16 v4, 0x20

    goto/16 :goto_42e

    :sswitch_270
    const-string v4, "getLoadingLogoPath"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_279

    goto :goto_226

    :cond_279
    const/16 v4, 0x1f

    goto/16 :goto_42e

    :sswitch_27d
    const-string/jumbo v4, "getRecentLongPressMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_287

    goto :goto_226

    :cond_287
    const/16 v4, 0x1e

    goto/16 :goto_42e

    :sswitch_28b
    const-string/jumbo v4, "getScreenOffOnHomeLongPressState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_295

    goto :goto_226

    :cond_295
    const/16 v4, 0x1d

    goto/16 :goto_42e

    :sswitch_299
    const-string/jumbo v4, "getToastGravityYOffset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a3

    goto :goto_226

    :cond_2a3
    const/16 v4, 0x1c

    goto/16 :goto_42e

    :sswitch_2a7
    const-string/jumbo v4, "getToastShowPackageNameState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b2

    goto/16 :goto_226

    :cond_2b2
    const/16 v4, 0x1b

    goto/16 :goto_42e

    :sswitch_2b6
    const-string/jumbo v4, "getToastGravity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c1

    goto/16 :goto_226

    :cond_2c1
    const/16 v4, 0x1a

    goto/16 :goto_42e

    :sswitch_2c5
    const-string/jumbo v4, "getSealedHardKeyIntentState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d0

    goto/16 :goto_226

    :cond_2d0
    const/16 v4, 0x19

    goto/16 :goto_42e

    :sswitch_2d4
    const-string/jumbo v4, "getSealedNotificationMessagesState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2df

    goto/16 :goto_226

    :cond_2df
    const/16 v4, 0x18

    goto/16 :goto_42e

    :sswitch_2e3
    const-string/jumbo v4, "getUsbConnectionTypeInternal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2ee

    goto/16 :goto_226

    :cond_2ee
    const/16 v4, 0x17

    goto/16 :goto_42e

    :sswitch_2f2
    const-string/jumbo v4, "getUltraPowerSavingPackages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2fd

    goto/16 :goto_226

    :cond_2fd
    const/16 v4, 0x16

    goto/16 :goto_42e

    :sswitch_301
    const-string/jumbo v4, "getToastEnabledState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30c

    goto/16 :goto_226

    :cond_30c
    const/16 v4, 0x15

    goto/16 :goto_42e

    :sswitch_310
    const-string v4, "getAppBlockDownloadState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31a

    goto/16 :goto_226

    :cond_31a
    const/16 v4, 0x14

    goto/16 :goto_42e

    :sswitch_31e
    const-string/jumbo v4, "getToastGravityXOffset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_329

    goto/16 :goto_226

    :cond_329
    const/16 v4, 0x13

    goto/16 :goto_42e

    :sswitch_32d
    const-string v4, "getAutoCallNumberDelay"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_337

    goto/16 :goto_226

    :cond_337
    const/16 v4, 0x12

    goto/16 :goto_42e

    :sswitch_33b
    const-string/jumbo v4, "getUsbConnectionType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_346

    goto/16 :goto_226

    :cond_346
    const/16 v4, 0x11

    goto/16 :goto_42e

    :sswitch_34a
    const-string v4, "getAppBlockDownloadNamespaces"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_354

    goto/16 :goto_226

    :cond_354
    const/16 v4, 0x10

    goto/16 :goto_42e

    :sswitch_358
    const-string/jumbo v4, "isDexAutoOpenLastApp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_363

    goto/16 :goto_226

    :cond_363
    const/16 v4, 0xf

    goto/16 :goto_42e

    :sswitch_367
    const-string/jumbo v4, "getToastGravityEnabledState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_372

    goto/16 :goto_226

    :cond_372
    const/16 v4, 0xe

    goto/16 :goto_42e

    :sswitch_376
    const-string v4, "getAutoCallPickupState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_380

    goto/16 :goto_226

    :cond_380
    const/16 v4, 0xd

    goto/16 :goto_42e

    :sswitch_384
    const-string v4, "getAutoCallNumberAnswerMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38e

    goto/16 :goto_226

    :cond_38e
    const/16 v4, 0xc

    goto/16 :goto_42e

    :sswitch_392
    const-string/jumbo v4, "getSealedPowerDialogItems"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39d

    goto/16 :goto_226

    :cond_39d
    const/16 v4, 0xb

    goto/16 :goto_42e

    :sswitch_3a1
    const-string v4, "getExtendedCallInfoState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3ab

    goto/16 :goto_226

    :cond_3ab
    const/16 v4, 0xa

    goto/16 :goto_42e

    :sswitch_3af
    const-string/jumbo v4, "getSealedVolumeKeyAppsList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3ba

    goto/16 :goto_226

    :cond_3ba
    move v4, v14

    goto/16 :goto_42e

    :sswitch_3bd
    const-string/jumbo v4, "getSealedVolumeKeyAppState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c8

    goto/16 :goto_226

    :cond_3c8
    move v4, v15

    goto/16 :goto_42e

    :sswitch_3cb
    const-string v4, "getLockScreenHiddenItems"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d5

    goto/16 :goto_226

    :cond_3d5
    const/4 v4, 0x7

    goto :goto_42e

    :sswitch_3d7
    const-string v4, "getAirGestureOptionState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e1

    goto/16 :goto_226

    :cond_3e1
    move v4, v6

    goto :goto_42e

    :sswitch_3e3
    const-string/jumbo v4, "getSealedPowerDialogCustomItems"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3ee

    goto/16 :goto_226

    :cond_3ee
    move v4, v8

    goto :goto_42e

    :sswitch_3f0
    const-string/jumbo v4, "getSettingsHiddenState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3fb

    goto/16 :goto_226

    :cond_3fb
    move/from16 v4, v16

    goto :goto_42e

    :sswitch_3fe
    const-string/jumbo v4, "getRecentLongPressActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_409

    goto/16 :goto_226

    :cond_409
    move v4, v9

    goto :goto_42e

    :sswitch_40b
    const-string v4, "getAutoCallNumberList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_415

    goto/16 :goto_226

    :cond_415
    move v4, v10

    goto :goto_42e

    :sswitch_417
    const-string v4, "getDexHDMIAutoEnter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_421

    goto/16 :goto_226

    :cond_421
    move v4, v12

    goto :goto_42e

    :sswitch_423
    const-string v4, "getGearNotificationState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42d

    goto/16 :goto_226

    :cond_42d
    move v4, v13

    :goto_42e
    packed-switch v4, :pswitch_data_1d1e

    return-object v11

    .line 1168
    :pswitch_432
    :try_start_432
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z

    move-result v13
    :try_end_436
    .catch Landroid/os/RemoteException; {:try_start_432 .. :try_end_436} :catch_437

    goto :goto_43c

    :catch_437
    move-exception v0

    move-object v3, v0

    .line 1170
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1175
    :goto_43c
    invoke-virtual {v1, v2, v13}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_867

    .line 1105
    :pswitch_442
    :try_start_442
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeButtonRotationState()Z

    move-result v13
    :try_end_446
    .catch Landroid/os/RemoteException; {:try_start_442 .. :try_end_446} :catch_447

    goto :goto_44c

    :catch_447
    move-exception v0

    move-object v3, v0

    .line 1107
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1112
    :goto_44c
    invoke-virtual {v1, v2, v13}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_867

    .line 1038
    :pswitch_452
    :try_start_452
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHideNotificationMessages()I

    move-result v17
    :try_end_456
    .catch Landroid/os/RemoteException; {:try_start_452 .. :try_end_456} :catch_457

    goto :goto_45c

    :catch_457
    move-exception v0

    move-object v1, v0

    .line 1040
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1045
    :goto_45c
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Integer;

    .line 1047
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    .line 1046
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_867

    .line 943
    :pswitch_472
    :try_start_472
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    move-result v13
    :try_end_476
    .catch Landroid/os/RemoteException; {:try_start_472 .. :try_end_476} :catch_477

    goto :goto_47c

    :catch_477
    move-exception v0

    move-object v3, v0

    .line 945
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    :goto_47c
    invoke-virtual {v1, v2, v13}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_867

    .line 1431
    :pswitch_482
    :try_start_482
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I

    move-result v0
    :try_end_486
    .catch Landroid/os/RemoteException; {:try_start_482 .. :try_end_486} :catch_487

    goto :goto_48d

    :catch_487
    move-exception v0

    move-object v1, v0

    .line 1433
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v13

    .line 1438
    :goto_48d
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 1440
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 1439
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7e9

    .line 1688
    :pswitch_4a3
    :try_start_4a3
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;

    move-result-object v11
    :try_end_4a7
    .catch Landroid/os/RemoteException; {:try_start_4a3 .. :try_end_4a7} :catch_4a8

    goto :goto_4ad

    :catch_4a8
    move-exception v0

    move-object v1, v0

    .line 1690
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1695
    :goto_4ad
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v13

    .line 1696
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_867

    .line 1082
    :pswitch_4bf
    :try_start_4bf
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressMode()I

    move-result v17
    :try_end_4c3
    .catch Landroid/os/RemoteException; {:try_start_4bf .. :try_end_4c3} :catch_4c4

    goto :goto_4c9

    :catch_4c4
    move-exception v0

    move-object v1, v0

    .line 1084
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1089
    :goto_4c9
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Integer;

    .line 1091
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    .line 1090
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_867

    .line 1146
    :pswitch_4df
    :try_start_4df
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z

    move-result v13
    :try_end_4e3
    .catch Landroid/os/RemoteException; {:try_start_4df .. :try_end_4e3} :catch_4e4

    goto :goto_4e9

    :catch_4e4
    move-exception v0

    move-object v3, v0

    .line 1148
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1153
    :goto_4e9
    invoke-virtual {v1, v2, v13}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_867

    .line 1316
    :pswitch_4ef
    :try_start_4ef
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityYOffset()I

    move-result v0
    :try_end_4f3
    .catch Landroid/os/RemoteException; {:try_start_4ef .. :try_end_4f3} :catch_4f4

    goto :goto_4fa

    :catch_4f4
    move-exception v0

    move-object v1, v0

    .line 1318
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v13

    .line 1323
    :goto_4fa
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 1325
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 1324
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7e9

    .line 1231
    :pswitch_510
    :try_start_510
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastShowPackageNameState()Z

    move-result v13
    :try_end_514
    .catch Landroid/os/RemoteException; {:try_start_510 .. :try_end_514} :catch_515

    goto :goto_51a

    :catch_515
    move-exception v0

    move-object v3, v0

    .line 1233
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1238
    :goto_51a
    invoke-virtual {v1, v2, v13}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_867

    .line 1272
    :pswitch_520
    :try_start_520
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravity()I

    move-result v0
    :try_end_524
    .catch Landroid/os/RemoteException; {:try_start_520 .. :try_end_524} :catch_525

    goto :goto_52b

    :catch_525
    move-exception v0

    move-object v1, v0

    .line 1274
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v13

    .line 1279
    :goto_52b
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 1281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 1280
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7e9

    .line 1391
    :pswitch_541
    :try_start_541
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z

    move-result v13
    :try_end_545
    .catch Landroid/os/RemoteException; {:try_start_541 .. :try_end_545} :catch_546

    goto :goto_54b

    :catch_546
    move-exception v0

    move-object v3, v0

    .line 1393
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1398
    :goto_54b
    invoke-virtual {v1, v2, v13}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_867

    .line 900
    :pswitch_551
    :try_start_551
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskNotificationMessagesState()Z

    move-result v12
    :try_end_555
    .catch Landroid/os/RemoteException; {:try_start_551 .. :try_end_555} :catch_556

    goto :goto_55b

    :catch_556
    move-exception v0

    move-object v3, v0

    .line 902
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    :goto_55b
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_867

    .line 1486
    :pswitch_561
    :try_start_561
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    move-result v0
    :try_end_565
    .catch Landroid/os/RemoteException; {:try_start_561 .. :try_end_565} :catch_566

    goto :goto_56c

    :catch_566
    move-exception v0

    move-object v1, v0

    .line 1488
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v13

    .line 1493
    :goto_56c
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 1495
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 1494
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7e9

    .line 1656
    :pswitch_582
    :try_start_582
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v11
    :try_end_586
    .catch Landroid/os/RemoteException; {:try_start_582 .. :try_end_586} :catch_587

    goto :goto_58c

    :catch_587
    move-exception v0

    move-object v1, v0

    .line 1658
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1667
    :goto_58c
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v11, :cond_867

    .line 1669
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_867

    .line 1671
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_867

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    .line 1672
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5a1

    .line 1210
    :pswitch_5b5
    :try_start_5b5
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastEnabledState()Z

    move-result v12
    :try_end_5b9
    .catch Landroid/os/RemoteException; {:try_start_5b5 .. :try_end_5b9} :catch_5ba

    goto :goto_5bf

    :catch_5ba
    move-exception v0

    move-object v3, v0

    .line 1212
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    :goto_5bf
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_867

    .line 1338
    :pswitch_5c5
    :try_start_5c5
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadState()Z

    move-result v13
    :try_end_5c9
    .catch Landroid/os/RemoteException; {:try_start_5c5 .. :try_end_5c9} :catch_5ca

    goto :goto_5cf

    :catch_5ca
    move-exception v0

    move-object v3, v0

    .line 1340
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1345
    :goto_5cf
    invoke-virtual {v1, v2, v13}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_867

    .line 1294
    :pswitch_5d5
    :try_start_5d5
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityXOffset()I

    move-result v0
    :try_end_5d9
    .catch Landroid/os/RemoteException; {:try_start_5d5 .. :try_end_5d9} :catch_5da

    goto :goto_5e0

    :catch_5da
    move-exception v0

    move-object v1, v0

    .line 1296
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v13

    .line 1301
    :goto_5e0
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 1303
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 1302
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7e9

    :pswitch_5f6
    if-eqz v3, :cond_620

    .line 1580
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_5ff

    goto :goto_620

    .line 1596
    :cond_5ff
    :try_start_5ff
    aget-object v1, v3, v13

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberDelay(Ljava/lang/String;)I

    move-result v17
    :try_end_605
    .catch Landroid/os/RemoteException; {:try_start_5ff .. :try_end_605} :catch_606

    goto :goto_60a

    :catch_606
    move-exception v0

    .line 1599
    invoke-static {v7, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1604
    :goto_60a
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Integer;

    .line 1606
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    .line 1605
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_867

    :cond_620
    :goto_620
    return-object v11

    .line 1508
    :pswitch_621
    :try_start_621
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionType()I

    move-result v0
    :try_end_625
    .catch Landroid/os/RemoteException; {:try_start_621 .. :try_end_625} :catch_626

    goto :goto_62c

    :catch_626
    move-exception v0

    move-object v1, v0

    .line 1510
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v13

    .line 1515
    :goto_62c
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 1517
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 1516
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7e9

    .line 1359
    :pswitch_642
    :try_start_642
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;

    move-result-object v11
    :try_end_646
    .catch Landroid/os/RemoteException; {:try_start_642 .. :try_end_646} :catch_647

    goto :goto_64c

    :catch_647
    move-exception v0

    move-object v1, v0

    .line 1361
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1370
    :goto_64c
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v11, :cond_867

    .line 1372
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_867

    .line 1374
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_661
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_867

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    .line 1375
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_661

    .line 1733
    :pswitch_675
    :try_start_675
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    move-result v17
    :try_end_679
    .catch Landroid/os/RemoteException; {:try_start_675 .. :try_end_679} :catch_67a

    goto :goto_67f

    :catch_67a
    move-exception v0

    move-object v1, v0

    .line 1735
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1740
    :goto_67f
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Integer;

    .line 1742
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    .line 1741
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_867

    .line 1252
    :pswitch_695
    :try_start_695
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityEnabledState()Z

    move-result v13
    :try_end_699
    .catch Landroid/os/RemoteException; {:try_start_695 .. :try_end_699} :catch_69a

    goto :goto_69f

    :catch_69a
    move-exception v0

    move-object v3, v0

    .line 1254
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1259
    :goto_69f
    invoke-virtual {v1, v2, v13}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_867

    .line 1530
    :pswitch_6a5
    :try_start_6a5
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallPickupState()I

    move-result v17
    :try_end_6a9
    .catch Landroid/os/RemoteException; {:try_start_6a5 .. :try_end_6a9} :catch_6aa

    goto :goto_6af

    :catch_6aa
    move-exception v0

    move-object v1, v0

    .line 1532
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1537
    :goto_6af
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Integer;

    .line 1539
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    .line 1538
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_867

    :pswitch_6c5
    if-eqz v3, :cond_6ef

    .line 1616
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_6ce

    goto :goto_6ef

    .line 1632
    :cond_6ce
    :try_start_6ce
    aget-object v1, v3, v13

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberAnswerMode(Ljava/lang/String;)I

    move-result v17
    :try_end_6d4
    .catch Landroid/os/RemoteException; {:try_start_6ce .. :try_end_6d4} :catch_6d5

    goto :goto_6d9

    :catch_6d5
    move-exception v0

    .line 1635
    invoke-static {v7, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1640
    :goto_6d9
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Integer;

    .line 1642
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    .line 1641
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_867

    :cond_6ef
    :goto_6ef
    return-object v11

    .line 920
    :pswitch_6f0
    :try_start_6f0
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I

    move-result v17
    :try_end_6f4
    .catch Landroid/os/RemoteException; {:try_start_6f0 .. :try_end_6f4} :catch_6f5

    goto :goto_6fa

    :catch_6f5
    move-exception v0

    move-object v1, v0

    .line 922
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    :goto_6fa
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Integer;

    .line 929
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    .line 928
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_867

    .line 995
    :pswitch_710
    :try_start_710
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExtendedCallInfoState()Z

    move-result v13
    :try_end_714
    .catch Landroid/os/RemoteException; {:try_start_710 .. :try_end_714} :catch_715

    goto :goto_71a

    :catch_715
    move-exception v0

    move-object v3, v0

    .line 997
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1002
    :goto_71a
    invoke-virtual {v1, v2, v13}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_867

    .line 1453
    :pswitch_720
    :try_start_720
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v11
    :try_end_724
    .catch Landroid/os/RemoteException; {:try_start_720 .. :try_end_724} :catch_725

    goto :goto_72a

    :catch_725
    move-exception v0

    move-object v1, v0

    .line 1455
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1464
    :goto_72a
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v11, :cond_867

    .line 1466
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_867

    .line 1468
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_73f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_867

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    .line 1469
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_73f

    .line 1411
    :pswitch_753
    :try_start_753
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z

    move-result v13
    :try_end_757
    .catch Landroid/os/RemoteException; {:try_start_753 .. :try_end_757} :catch_758

    goto :goto_75d

    :catch_758
    move-exception v0

    move-object v3, v0

    .line 1413
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1418
    :goto_75d
    invoke-virtual {v1, v2, v13}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_867

    .line 1188
    :pswitch_763
    :try_start_763
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenHiddenItems()I

    move-result v0
    :try_end_767
    .catch Landroid/os/RemoteException; {:try_start_763 .. :try_end_767} :catch_768

    goto :goto_76e

    :catch_768
    move-exception v0

    move-object v1, v0

    .line 1190
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v13

    .line 1195
    :goto_76e
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 1197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 1196
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_7e9

    .line 1711
    :pswitch_783
    :try_start_783
    invoke-interface {v0, v13}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAirGestureOptionState(I)Z

    move-result v12
    :try_end_787
    .catch Landroid/os/RemoteException; {:try_start_783 .. :try_end_787} :catch_788

    goto :goto_78d

    :catch_788
    move-exception v0

    move-object v3, v0

    .line 1714
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1719
    :goto_78d
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_867

    .line 963
    :pswitch_793
    :try_start_793
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v11
    :try_end_797
    .catch Landroid/os/RemoteException; {:try_start_793 .. :try_end_797} :catch_798

    goto :goto_79d

    :catch_798
    move-exception v0

    move-object v1, v0

    .line 965
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 974
    :goto_79d
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v11, :cond_867

    .line 976
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_867

    .line 978
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7b2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_867

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/custom/PowerItem;

    new-array v3, v12, [Ljava/lang/String;

    .line 980
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/PowerItem;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v13

    .line 979
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_7b2

    .line 1015
    :pswitch_7ca
    :try_start_7ca
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I

    move-result v0
    :try_end_7ce
    .catch Landroid/os/RemoteException; {:try_start_7ca .. :try_end_7ce} :catch_7cf

    goto :goto_7d5

    :catch_7cf
    move-exception v0

    move-object v1, v0

    .line 1017
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v13

    .line 1022
    :goto_7d5
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 1024
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 1023
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_7e9
    move-object v0, v1

    goto/16 :goto_867

    .line 1060
    :pswitch_7ec
    :try_start_7ec
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v11
    :try_end_7f0
    .catch Landroid/os/RemoteException; {:try_start_7ec .. :try_end_7f0} :catch_7f1

    goto :goto_7f6

    :catch_7f1
    move-exception v0

    move-object v1, v0

    .line 1062
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1067
    :goto_7f6
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v13

    .line 1068
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_867

    .line 1552
    :pswitch_807
    :try_start_807
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberList()Ljava/util/List;

    move-result-object v11
    :try_end_80b
    .catch Landroid/os/RemoteException; {:try_start_807 .. :try_end_80b} :catch_80c

    goto :goto_811

    :catch_80c
    move-exception v0

    move-object v1, v0

    .line 1554
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1563
    :goto_811
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v11, :cond_867

    .line 1565
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_867

    .line 1567
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_826
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_867

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    .line 1568
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_826

    .line 1756
    :pswitch_83a
    :try_start_83a
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHDMIAutoEnterState()I

    move-result v17
    :try_end_83e
    .catch Landroid/os/RemoteException; {:try_start_83a .. :try_end_83e} :catch_83f

    goto :goto_844

    :catch_83f
    move-exception v0

    move-object v1, v0

    .line 1758
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1763
    :goto_844
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Integer;

    .line 1765
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    .line 1764
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_867

    .line 1125
    :pswitch_859
    :try_start_859
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    move-result v12
    :try_end_85d
    .catch Landroid/os/RemoteException; {:try_start_859 .. :try_end_85d} :catch_85e

    goto :goto_863

    :catch_85e
    move-exception v0

    move-object v3, v0

    .line 1127
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    :goto_863
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    :cond_867
    :goto_867
    return-object v0

    .line 195
    :pswitch_868
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1c1f

    if-eqz v2, :cond_1c1f

    .line 203
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1d6c

    :goto_877
    move/from16 v4, v17

    goto/16 :goto_9f1

    :sswitch_87b
    const-string/jumbo v4, "getSealedUsbNetAddress"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_885

    goto :goto_877

    :cond_885
    const/16 v4, 0x1a

    goto/16 :goto_9f1

    :sswitch_889
    const-string/jumbo v4, "getSealedStatusBarClockState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_893

    goto :goto_877

    :cond_893
    const/16 v4, 0x19

    goto/16 :goto_9f1

    :sswitch_897
    const-string/jumbo v4, "getPowerMenuLockedState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a1

    goto :goto_877

    :cond_8a1
    const/16 v4, 0x18

    goto/16 :goto_9f1

    :sswitch_8a5
    const-string/jumbo v4, "getVolumePanelEnabledState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8af

    goto :goto_877

    :cond_8af
    const/16 v4, 0x17

    goto/16 :goto_9f1

    :sswitch_8b3
    const-string/jumbo v4, "getStatusBarTextSize"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8bd

    goto :goto_877

    :cond_8bd
    const/16 v4, 0x16

    goto/16 :goto_9f1

    :sswitch_8c1
    const-string/jumbo v4, "getSealedStatusBarMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8cb

    goto :goto_877

    :cond_8cb
    const/16 v4, 0x15

    goto/16 :goto_9f1

    :sswitch_8cf
    const-string v4, "getLTESettingState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d8

    goto :goto_877

    :cond_8d8
    const/16 v4, 0x14

    goto/16 :goto_9f1

    :sswitch_8dc
    const-string/jumbo v4, "getScreenWakeupOnPowerState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8e6

    goto :goto_877

    :cond_8e6
    const/16 v4, 0x13

    goto/16 :goto_9f1

    :sswitch_8ea
    const-string/jumbo v4, "getSealedStatusBarIconsState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f4

    goto :goto_877

    :cond_8f4
    const/16 v4, 0x12

    goto/16 :goto_9f1

    :sswitch_8f8
    const-string/jumbo v4, "setSealedState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_903

    goto/16 :goto_877

    :cond_903
    const/16 v4, 0x11

    goto/16 :goto_9f1

    :sswitch_907
    const-string/jumbo v4, "getVolumeControlStream"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_912

    goto/16 :goto_877

    :cond_912
    const/16 v4, 0x10

    goto/16 :goto_9f1

    :sswitch_916
    const-string/jumbo v4, "getSealedUsbNetState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_921

    goto/16 :goto_877

    :cond_921
    const/16 v4, 0xf

    goto/16 :goto_9f1

    :sswitch_925
    const-string/jumbo v4, "getStatusBarText"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_930

    goto/16 :goto_877

    :cond_930
    const/16 v4, 0xe

    goto/16 :goto_9f1

    :sswitch_934
    const-string/jumbo v4, "getSealedUsbMassStorageState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_93f

    goto/16 :goto_877

    :cond_93f
    const/16 v4, 0xd

    goto/16 :goto_9f1

    :sswitch_943
    const-string/jumbo v4, "getPowerSavingMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94e

    goto/16 :goto_877

    :cond_94e
    const/16 v4, 0xc

    goto/16 :goto_9f1

    :sswitch_952
    const-string/jumbo v4, "getUltraPowerSavingPackages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_95d

    goto/16 :goto_877

    :cond_95d
    const/16 v4, 0xb

    goto/16 :goto_9f1

    :sswitch_961
    const-string/jumbo v4, "getTorchOnVolumeButtonsState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_96c

    goto/16 :goto_877

    :cond_96c
    const/16 v4, 0xa

    goto/16 :goto_9f1

    :sswitch_970
    const-string v4, "getInfraredState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_97a

    goto/16 :goto_877

    :cond_97a
    move v4, v14

    goto/16 :goto_9f1

    :sswitch_97d
    const-string/jumbo v4, "getStatusBarTextStyle"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_988

    goto/16 :goto_877

    :cond_988
    move v4, v15

    goto/16 :goto_9f1

    :sswitch_98b
    const-string/jumbo v4, "getSealedExitUI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_996

    goto/16 :goto_877

    :cond_996
    const/4 v4, 0x7

    goto :goto_9f1

    :sswitch_998
    const-string/jumbo v4, "getSealedHomeActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9a3

    goto/16 :goto_877

    :cond_9a3
    move v4, v6

    goto :goto_9f1

    :sswitch_9a5
    const-string v4, "getCallScreenDisabledItems"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9af

    goto/16 :goto_877

    :cond_9af
    move v4, v8

    goto :goto_9f1

    :sswitch_9b1
    const-string/jumbo v4, "getSensorDisabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9bc

    goto/16 :goto_877

    :cond_9bc
    move/from16 v4, v16

    goto :goto_9f1

    :sswitch_9bf
    const-string/jumbo v4, "getSealedState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9ca

    goto/16 :goto_877

    :cond_9ca
    move v4, v9

    goto :goto_9f1

    :sswitch_9cc
    const-string/jumbo v4, "getSealedPowerDialogOptionMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9d7

    goto/16 :goto_877

    :cond_9d7
    move v4, v10

    goto :goto_9f1

    :sswitch_9d9
    const-string/jumbo v4, "getSealedModeString"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9e4

    goto/16 :goto_877

    :cond_9e4
    move v4, v12

    goto :goto_9f1

    :sswitch_9e6
    const-string v4, "getChargingLEDState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9f0

    goto/16 :goto_877

    :cond_9f0
    move v4, v13

    :goto_9f1
    packed-switch v4, :pswitch_data_1dda

    return-object v11

    :pswitch_9f5
    if-eqz v3, :cond_a20

    .line 495
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_9fe

    goto :goto_a20

    .line 508
    :cond_9fe
    aget-object v1, v3, v13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 514
    :try_start_a04
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v11
    :try_end_a08
    .catch Landroid/os/RemoteException; {:try_start_a04 .. :try_end_a08} :catch_a09

    goto :goto_a0e

    :catch_a09
    move-exception v0

    move-object v1, v0

    .line 516
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    :goto_a0e
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v13

    .line 522
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_cfd

    :cond_a20
    :goto_a20
    return-object v11

    .line 421
    :pswitch_a21
    :try_start_a21
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarClockState()Z

    move-result v12
    :try_end_a25
    .catch Landroid/os/RemoteException; {:try_start_a21 .. :try_end_a25} :catch_a26

    goto :goto_a2b

    :catch_a26
    move-exception v0

    move-object v3, v0

    .line 423
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    :goto_a2b
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_cfd

    .line 814
    :pswitch_a31
    :try_start_a31
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    move-result v12
    :try_end_a35
    .catch Landroid/os/RemoteException; {:try_start_a31 .. :try_end_a35} :catch_a36

    goto :goto_a3b

    :catch_a36
    move-exception v0

    move-object v3, v0

    .line 816
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    :goto_a3b
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_cfd

    .line 690
    :pswitch_a41
    :try_start_a41
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumePanelEnabledState()Z

    move-result v12
    :try_end_a45
    .catch Landroid/os/RemoteException; {:try_start_a41 .. :try_end_a45} :catch_a46

    goto :goto_a4b

    :catch_a46
    move-exception v0

    move-object v3, v0

    .line 692
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 697
    :goto_a4b
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_cfd

    .line 776
    :pswitch_a51
    :try_start_a51
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextSize()I

    move-result v0
    :try_end_a55
    .catch Landroid/os/RemoteException; {:try_start_a51 .. :try_end_a55} :catch_a56

    goto :goto_a5c

    :catch_a56
    move-exception v0

    move-object v1, v0

    .line 778
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v13

    .line 783
    :goto_a5c
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 785
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 784
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_c6a

    .line 399
    :pswitch_a72
    :try_start_a72
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarMode()I

    move-result v10
    :try_end_a76
    .catch Landroid/os/RemoteException; {:try_start_a72 .. :try_end_a76} :catch_a77

    goto :goto_a7c

    :catch_a77
    move-exception v0

    move-object v1, v0

    .line 401
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    :goto_a7c
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Integer;

    .line 408
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    .line 407
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_cfd

    .line 609
    :pswitch_a92
    :try_start_a92
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLTESettingState()Z

    move-result v13
    :try_end_a96
    .catch Landroid/os/RemoteException; {:try_start_a92 .. :try_end_a96} :catch_a97

    goto :goto_a9c

    :catch_a97
    move-exception v0

    move-object v3, v0

    .line 611
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    :goto_a9c
    invoke-virtual {v1, v2, v13}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_cfd

    .line 590
    :pswitch_aa2
    :try_start_aa2
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result v12
    :try_end_aa6
    .catch Landroid/os/RemoteException; {:try_start_aa2 .. :try_end_aa6} :catch_aa7

    goto :goto_aac

    :catch_aa7
    move-exception v0

    move-object v3, v0

    .line 592
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    :goto_aac
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_cfd

    .line 440
    :pswitch_ab2
    :try_start_ab2
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarIconsState()Z

    move-result v12
    :try_end_ab6
    .catch Landroid/os/RemoteException; {:try_start_ab2 .. :try_end_ab6} :catch_ab7

    goto :goto_abc

    :catch_ab7
    move-exception v0

    move-object v3, v0

    .line 442
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    :goto_abc
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_cfd

    :pswitch_ac2
    if-eqz v3, :cond_af3

    .line 210
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gt v1, v12, :cond_acb

    goto :goto_af3

    .line 224
    :cond_acb
    aget-object v1, v3, v13

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 226
    aget-object v3, v3, v12

    .line 237
    :try_start_ad3
    invoke-interface {v0, v1, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I

    move-result v17
    :try_end_ad7
    .catch Landroid/os/RemoteException; {:try_start_ad3 .. :try_end_ad7} :catch_ad8

    goto :goto_add

    :catch_ad8
    move-exception v0

    move-object v1, v0

    .line 240
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    :goto_add
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Integer;

    .line 247
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    .line 246
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_cfd

    :cond_af3
    :goto_af3
    return-object v11

    .line 710
    :pswitch_af4
    :try_start_af4
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeControlStream()I

    move-result v0
    :try_end_af8
    .catch Landroid/os/RemoteException; {:try_start_af4 .. :try_end_af8} :catch_af9

    goto :goto_aff

    :catch_af9
    move-exception v0

    move-object v1, v0

    .line 712
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v13

    .line 717
    :goto_aff
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 719
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 718
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_c6a

    .line 479
    :pswitch_b15
    :try_start_b15
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetStateInternal()Z

    move-result v13
    :try_end_b19
    .catch Landroid/os/RemoteException; {:try_start_b15 .. :try_end_b19} :catch_b1a

    goto :goto_b1f

    :catch_b1a
    move-exception v0

    move-object v3, v0

    .line 481
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    :goto_b1f
    invoke-virtual {v1, v2, v13}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_cfd

    .line 732
    :pswitch_b25
    :try_start_b25
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;

    move-result-object v11
    :try_end_b29
    .catch Landroid/os/RemoteException; {:try_start_b25 .. :try_end_b29} :catch_b2a

    goto :goto_b2f

    :catch_b2a
    move-exception v0

    move-object v1, v0

    .line 734
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 739
    :goto_b2f
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v13

    .line 740
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_cfd

    .line 460
    :pswitch_b41
    :try_start_b41
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbMassStorageState()Z

    move-result v12
    :try_end_b45
    .catch Landroid/os/RemoteException; {:try_start_b41 .. :try_end_b45} :catch_b46

    goto :goto_b4b

    :catch_b46
    move-exception v0

    move-object v3, v0

    .line 462
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    :goto_b4b
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_cfd

    .line 535
    :pswitch_b51
    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v0, v3, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b61

    goto :goto_b73

    .line 542
    :cond_b61
    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 543
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "powersaving_switch"

    .line 542
    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_b72

    move v10, v13

    goto :goto_b73

    :cond_b72
    move v10, v12

    .line 555
    :goto_b73
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Integer;

    .line 557
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    .line 556
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_cfd

    .line 835
    :pswitch_b89
    :try_start_b89
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v11
    :try_end_b8d
    .catch Landroid/os/RemoteException; {:try_start_b89 .. :try_end_b8d} :catch_b8e

    goto :goto_b93

    :catch_b8e
    move-exception v0

    move-object v1, v0

    .line 837
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    :goto_b93
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v11, :cond_cfd

    .line 848
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cfd

    .line 850
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ba8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cfd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    .line 851
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_ba8

    .line 796
    :pswitch_bbc
    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 797
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "torchlight_enable"

    .line 796
    invoke-static {v0, v3, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_bcc

    goto :goto_bcd

    :cond_bcc
    move v12, v13

    .line 802
    :goto_bcd
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_cfd

    .line 650
    :pswitch_bd3
    :try_start_bd3
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInfraredState()Z

    move-result v12
    :try_end_bd7
    .catch Landroid/os/RemoteException; {:try_start_bd3 .. :try_end_bd7} :catch_bd8

    goto :goto_bdd

    :catch_bd8
    move-exception v0

    move-object v3, v0

    .line 652
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    :goto_bdd
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_cfd

    .line 754
    :pswitch_be3
    :try_start_be3
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextStyle()I

    move-result v0
    :try_end_be7
    .catch Landroid/os/RemoteException; {:try_start_be3 .. :try_end_be7} :catch_be8

    goto :goto_bee

    :catch_be8
    move-exception v0

    move-object v1, v0

    .line 756
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v13

    .line 761
    :goto_bee
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 763
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 762
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_c6a

    :pswitch_c03
    if-eqz v3, :cond_c2e

    .line 335
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_c0c

    goto :goto_c2e

    .line 349
    :cond_c0c
    aget-object v1, v3, v13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 355
    :try_start_c12
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;

    move-result-object v11
    :try_end_c16
    .catch Landroid/os/RemoteException; {:try_start_c12 .. :try_end_c16} :catch_c17

    goto :goto_c1c

    :catch_c17
    move-exception v0

    move-object v1, v0

    .line 357
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    :goto_c1c
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v13

    .line 363
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_cfd

    :cond_c2e
    :goto_c2e
    return-object v11

    .line 377
    :pswitch_c2f
    :try_start_c2f
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;

    move-result-object v11
    :try_end_c33
    .catch Landroid/os/RemoteException; {:try_start_c2f .. :try_end_c33} :catch_c34

    goto :goto_c39

    :catch_c34
    move-exception v0

    move-object v1, v0

    .line 379
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    :goto_c39
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v13

    .line 385
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_cfd

    .line 628
    :pswitch_c4b
    :try_start_c4b
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCallScreenDisabledItems()I

    move-result v0
    :try_end_c4f
    .catch Landroid/os/RemoteException; {:try_start_c4b .. :try_end_c4f} :catch_c50

    goto :goto_c56

    :catch_c50
    move-exception v0

    move-object v1, v0

    .line 630
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v13

    .line 635
    :goto_c56
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 637
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 636
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_c6a
    move-object v0, v1

    goto/16 :goto_cfd

    .line 669
    :pswitch_c6d
    :try_start_c6d
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSensorDisabled()I

    move-result v0
    :try_end_c71
    .catch Landroid/os/RemoteException; {:try_start_c6d .. :try_end_c71} :catch_c72

    goto :goto_c78

    :catch_c72
    move-exception v0

    move-object v1, v0

    .line 671
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v13

    .line 676
    :goto_c78
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 678
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 677
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_c6a

    .line 260
    :pswitch_c8d
    :try_start_c8d
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    move-result v13
    :try_end_c91
    .catch Landroid/os/RemoteException; {:try_start_c8d .. :try_end_c91} :catch_c92

    goto :goto_c99

    :catch_c92
    move-exception v0

    move-object v3, v0

    const-string v0, "Failed talking with knoxCustomManager service"

    .line 262
    invoke-static {v7, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    :goto_c99
    invoke-virtual {v1, v2, v13}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_cfd

    .line 281
    :pswitch_c9e
    :try_start_c9e
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I

    move-result v10
    :try_end_ca2
    .catch Landroid/os/RemoteException; {:try_start_c9e .. :try_end_ca2} :catch_ca3

    goto :goto_ca8

    :catch_ca3
    move-exception v0

    move-object v1, v0

    .line 283
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    :goto_ca8
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Integer;

    .line 290
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    .line 289
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_cfd

    :pswitch_cbd
    if-eqz v3, :cond_ce7

    .line 300
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_cc6

    goto :goto_ce7

    .line 313
    :cond_cc6
    aget-object v1, v3, v13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 319
    :try_start_ccc
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_cd0
    .catch Landroid/os/RemoteException; {:try_start_ccc .. :try_end_cd0} :catch_cd1

    goto :goto_cd6

    :catch_cd1
    move-exception v0

    move-object v1, v0

    .line 321
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    :goto_cd6
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v13

    .line 327
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_cfd

    :cond_ce7
    :goto_ce7
    return-object v11

    .line 570
    :pswitch_ce8
    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 571
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "led_indicator_charing"

    .line 570
    invoke-static {v0, v3, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_cf8

    goto :goto_cf9

    :cond_cf8
    move v12, v13

    .line 576
    :goto_cf9
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    :cond_cfd
    :goto_cfd
    return-object v0

    :pswitch_cfe
    const-string/jumbo v0, "kioskmode"

    .line 2562
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    if-eqz v0, :cond_1c1f

    .line 2564
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1e14

    :goto_d13
    move/from16 v9, v17

    goto/16 :goto_dd9

    :sswitch_d17
    const-string/jumbo v5, "isNightClockAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d21

    goto :goto_d13

    :cond_d21
    const/16 v9, 0xe

    goto/16 :goto_dd9

    :sswitch_d25
    const-string/jumbo v5, "isInformationStreamAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d2f

    goto :goto_d13

    :cond_d2f
    const/16 v9, 0xd

    goto/16 :goto_dd9

    :sswitch_d33
    const-string/jumbo v5, "isAirCommandModeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d3d

    goto :goto_d13

    :cond_d3d
    const/16 v9, 0xc

    goto/16 :goto_dd9

    :sswitch_d41
    const-string/jumbo v5, "isAppsEdgeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d4b

    goto :goto_d13

    :cond_d4b
    const/16 v9, 0xb

    goto/16 :goto_dd9

    :sswitch_d4f
    const-string/jumbo v5, "isNavigationBarHidden"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d59

    goto :goto_d13

    :cond_d59
    const/16 v9, 0xa

    goto/16 :goto_dd9

    :sswitch_d5d
    const-string v5, "getKioskHomePackage"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d66

    goto :goto_d13

    :cond_d66
    move v9, v14

    goto/16 :goto_dd9

    :sswitch_d69
    const-string/jumbo v5, "isMultiWindowModeAllowedAsUser"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d73

    goto :goto_d13

    :cond_d73
    move v9, v15

    goto/16 :goto_dd9

    :sswitch_d76
    const-string/jumbo v5, "isAirViewModeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d80

    goto :goto_d13

    :cond_d80
    const/4 v9, 0x7

    goto :goto_dd9

    :sswitch_d82
    const-string v5, "getBlockedHwKeysCache"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d8b

    goto :goto_d13

    :cond_d8b
    move v9, v6

    goto :goto_dd9

    :sswitch_d8d
    const-string/jumbo v5, "isMultiWindowModeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d98

    goto/16 :goto_d13

    :cond_d98
    move v9, v8

    goto :goto_dd9

    :sswitch_d9a
    const-string/jumbo v5, "isKioskModeEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_da5

    goto/16 :goto_d13

    :cond_da5
    move/from16 v9, v16

    goto :goto_dd9

    :sswitch_da8
    const-string/jumbo v5, "isPeopleEdgeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_dd9

    goto/16 :goto_d13

    :sswitch_db3
    const-string/jumbo v5, "isEdgeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_dbe

    goto/16 :goto_d13

    :cond_dbe
    move v9, v10

    goto :goto_dd9

    :sswitch_dc0
    const-string/jumbo v5, "isEdgeLightingAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_dcb

    goto/16 :goto_d13

    :cond_dcb
    move v9, v12

    goto :goto_dd9

    :sswitch_dcd
    const-string/jumbo v5, "isTaskManagerAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_dd8

    goto/16 :goto_d13

    :cond_dd8
    move v9, v13

    :cond_dd9
    :goto_dd9
    packed-switch v9, :pswitch_data_1e52

    goto/16 :goto_fce

    .line 2691
    :pswitch_dde
    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNightClockAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2694
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_fce

    .line 2718
    :pswitch_de8
    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2721
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_fce

    :pswitch_df2
    if-nez v3, :cond_dfe

    .line 2601
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_e28

    .line 2604
    :cond_dfe
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    aget-object v5, v3, v13

    .line 2605
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2604
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAirCommandModeAllowed uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    :goto_e28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAirCommandModeAllowed return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_fce

    .line 2726
    :pswitch_e43
    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAppsEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2729
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_fce

    .line 2566
    :pswitch_e4d
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2570
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_fce

    .line 2680
    :pswitch_e5c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    .line 2684
    new-instance v11, Landroid/database/MatrixCursor;

    const-string v1, "getKioskHomePackage"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/String;

    aput-object v0, v1, v13

    .line 2686
    invoke-virtual {v11, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_fce

    :pswitch_e79
    if-eqz v3, :cond_ea7

    .line 2588
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v4, v12, :cond_e82

    goto :goto_ea7

    .line 2592
    :cond_e82
    aget-object v3, v3, v13

    .line 2593
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2592
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v0

    .line 2594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMultiWindowModeAllowedAsUser return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_fce

    :cond_ea7
    :goto_ea7
    return-object v11

    :pswitch_ea8
    if-nez v3, :cond_eb4

    .line 2617
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_ede

    .line 2620
    :cond_eb4
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    aget-object v5, v3, v13

    .line 2621
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2620
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAirViewModeAllowed uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :goto_ede
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAirViewModeAllowed return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_fce

    .line 2631
    :pswitch_ef9
    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v0

    .line 2634
    new-instance v11, Landroid/database/MatrixCursor;

    const-string v1, "getBlockedHwKeysCache"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v0, v1, v13

    .line 2636
    invoke-virtual {v11, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_fce

    :pswitch_f11
    if-eqz v3, :cond_f2f

    .line 2575
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_f1a

    goto :goto_f2f

    .line 2579
    :cond_f1a
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2580
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2579
    invoke-virtual {v0, v5, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 2583
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_fce

    :cond_f2f
    :goto_f2f
    return-object v11

    :pswitch_f30
    if-nez v3, :cond_f3c

    .line 2654
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_f7d

    .line 2657
    :cond_f3c
    aget-object v5, v3, v13

    .line 2662
    array-length v6, v3

    if-lt v6, v10, :cond_f5b

    aget-object v3, v3, v12

    const-string v6, "emergency"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5b

    .line 2664
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeProcessingOrEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    const-string/jumbo v3, "isKioskModeEnabled param EMERGENCY"

    .line 2666
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7d

    .line 2668
    :cond_f5b
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    .line 2669
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2668
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isKioskModeEnabled param UID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    :goto_f7d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isKioskModeEnabled return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto :goto_fce

    .line 2700
    :pswitch_f97
    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isPeopleEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2703
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto :goto_fce

    .line 2735
    :pswitch_fa0
    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2738
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto :goto_fce

    .line 2709
    :pswitch_fa9
    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeLightingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2712
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto :goto_fce

    :pswitch_fb2
    if-eqz v3, :cond_fce

    .line 2640
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_fbb

    goto :goto_fce

    .line 2644
    :cond_fbb
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2645
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2644
    invoke-virtual {v0, v5, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 2648
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    :cond_fce
    :goto_fce
    return-object v11

    :pswitch_fcf
    const-string v0, "eas_account_policy"

    .line 2261
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    if-eqz v0, :cond_1c1f

    if-eqz v2, :cond_1c1f

    .line 2263
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1e74

    :goto_fe2
    move/from16 v10, v17

    goto/16 :goto_1090

    :sswitch_fe6
    const-string v5, "getMaxEmailHTMLBodyTruncationSize"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fef

    goto :goto_fe2

    :cond_fef
    const/16 v10, 0xd

    goto/16 :goto_1090

    :sswitch_ff3
    const-string v5, "getMaxCalendarAgeFilter"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ffc

    goto :goto_fe2

    :cond_ffc
    const/16 v10, 0xc

    goto/16 :goto_1090

    :sswitch_1000
    const-string v5, "getMaxEmailBodyTruncationSize"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1009

    goto :goto_fe2

    :cond_1009
    const/16 v10, 0xb

    goto/16 :goto_1090

    :sswitch_100d
    const-string v5, "getForceSMIMECertificateForSigning"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1016

    goto :goto_fe2

    :cond_1016
    const/16 v10, 0xa

    goto/16 :goto_1090

    :sswitch_101a
    const-string/jumbo v5, "isIncomingAttachmentsAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1024

    goto :goto_fe2

    :cond_1024
    move v10, v14

    goto/16 :goto_1090

    :sswitch_1027
    const-string v5, "getForceSMIMECertificate"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1030

    goto :goto_fe2

    :cond_1030
    move v10, v15

    goto/16 :goto_1090

    :sswitch_1033
    const-string v5, "getAccountEmailPassword"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_103c

    goto :goto_fe2

    :cond_103c
    const/4 v10, 0x7

    goto :goto_1090

    :sswitch_103e
    const-string/jumbo v5, "getRequiredEncryptedMIMEMessages"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1048

    goto :goto_fe2

    :cond_1048
    move v10, v6

    goto :goto_1090

    :sswitch_104a
    const-string v5, "getForceSMIMECertificateForEncryption"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1053

    goto :goto_fe2

    :cond_1053
    move v10, v8

    goto :goto_1090

    :sswitch_1055
    const-string v5, "getAccountCertificatePassword"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_105e

    goto :goto_fe2

    :cond_105e
    move/from16 v10, v16

    goto :goto_1090

    :sswitch_1061
    const-string/jumbo v5, "getRequiredSignedMIMEMessages"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_106c

    goto/16 :goto_fe2

    :cond_106c
    move v10, v9

    goto :goto_1090

    :sswitch_106e
    const-string v5, "getMaxEmailAgeFilter"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1090

    goto/16 :goto_fe2

    :sswitch_1078
    const-string/jumbo v5, "setAccountEmailPassword"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1083

    goto/16 :goto_fe2

    :cond_1083
    move v10, v12

    goto :goto_1090

    :sswitch_1085
    const-string v5, "getIncomingAttachmentSize"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_108f

    goto/16 :goto_fe2

    :cond_108f
    move v10, v13

    :cond_1090
    :goto_1090
    packed-switch v10, :pswitch_data_1eae

    const-string/jumbo v0, "return null"

    .line 2445
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :pswitch_109a
    if-eqz v3, :cond_10c8

    .line 2352
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_10a3

    goto :goto_10c8

    .line 2355
    :cond_10a3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2357
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2355
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 2360
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 2362
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 2361
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12bc

    :cond_10c8
    :goto_10c8
    return-object v11

    :pswitch_10c9
    if-eqz v3, :cond_10f7

    .line 2324
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_10d2

    goto :goto_10f7

    .line 2327
    :cond_10d2
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2329
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2327
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 2332
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 2334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 2333
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12bc

    :cond_10f7
    :goto_10f7
    return-object v11

    :pswitch_10f8
    if-eqz v3, :cond_1126

    .line 2338
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_1101

    goto :goto_1126

    .line 2341
    :cond_1101
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2343
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2341
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 2346
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 2348
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 2347
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12bc

    :cond_1126
    :goto_1126
    return-object v11

    :pswitch_1127
    if-eqz v3, :cond_1145

    .line 2366
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1130

    goto :goto_1145

    .line 2369
    :cond_1130
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2371
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2369
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2374
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_12bc

    :cond_1145
    :goto_1145
    return-object v11

    :pswitch_1146
    if-eqz v3, :cond_1164

    .line 2298
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_114f

    goto :goto_1164

    .line 2301
    :cond_114f
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2303
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2301
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2306
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_12bc

    :cond_1164
    :goto_1164
    return-object v11

    :pswitch_1165
    if-eqz v3, :cond_1183

    .line 2287
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_116e

    goto :goto_1183

    .line 2290
    :cond_116e
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2292
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2290
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2295
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_12bc

    :cond_1183
    :goto_1183
    return-object v11

    :pswitch_1184
    if-eqz v3, :cond_11ae

    .line 2390
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_118d

    goto :goto_11ae

    .line 2393
    :cond_118d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2395
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2393
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0

    .line 2398
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/String;

    aput-object v0, v2, v13

    .line 2399
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12bc

    :cond_11ae
    :goto_11ae
    return-object v11

    :pswitch_11af
    if-eqz v3, :cond_11cd

    .line 2276
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_11b8

    goto :goto_11cd

    .line 2279
    :cond_11b8
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2281
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2279
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2284
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_12bc

    :cond_11cd
    :goto_11cd
    return-object v11

    :pswitch_11ce
    if-eqz v3, :cond_11ec

    .line 2378
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_11d7

    goto :goto_11ec

    .line 2381
    :cond_11d7
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2383
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2381
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2386
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_12bc

    :cond_11ec
    :goto_11ec
    return-object v11

    :pswitch_11ed
    if-eqz v3, :cond_1217

    .line 2404
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_11f6

    goto :goto_1217

    .line 2407
    :cond_11f6
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2409
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2407
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0

    .line 2412
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/String;

    aput-object v0, v2, v13

    .line 2413
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12bc

    :cond_1217
    :goto_1217
    return-object v11

    :pswitch_1218
    if-eqz v3, :cond_1236

    .line 2265
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1221

    goto :goto_1236

    .line 2268
    :cond_1221
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2270
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2268
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2273
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_12bc

    :cond_1236
    :goto_1236
    return-object v11

    :pswitch_1237
    if-eqz v3, :cond_1264

    .line 2418
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_1240

    goto :goto_1264

    .line 2421
    :cond_1240
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2422
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2421
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 2425
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 2427
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 2426
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_12bc

    :cond_1264
    :goto_1264
    return-object v11

    :pswitch_1265
    if-eqz v3, :cond_128f

    .line 2431
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v12, :cond_126e

    goto :goto_128f

    .line 2434
    :cond_126e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0

    .line 2439
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v12, [Ljava/lang/String;

    aput-object v2, v4, v13

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/String;

    .line 2441
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v13

    .line 2440
    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_12bc

    :cond_128f
    :goto_128f
    return-object v11

    :pswitch_1290
    if-eqz v3, :cond_12bd

    .line 2310
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_1299

    goto :goto_12bd

    .line 2313
    :cond_1299
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2315
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2313
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 2318
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 2320
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 2319
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_12bc
    return-object v1

    :cond_12bd
    :goto_12bd
    return-object v11

    .line 2747
    :pswitch_12be
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    if-eqz v0, :cond_1c1f

    if-eqz v2, :cond_1c1f

    .line 2749
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1ece

    :goto_12cd
    move/from16 v15, v17

    goto/16 :goto_1338

    :sswitch_12d1
    const-string/jumbo v5, "isAdminRemovable"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1338

    goto :goto_12cd

    :sswitch_12db
    const-string/jumbo v5, "getRemoveWarning"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12e5

    goto :goto_12cd

    :cond_12e5
    const/4 v15, 0x7

    goto :goto_1338

    :sswitch_12e7
    const-string/jumbo v5, "removeActiveAdmin"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12f1

    goto :goto_12cd

    :cond_12f1
    move v15, v6

    goto :goto_1338

    :sswitch_12f3
    const-string/jumbo v5, "setActiveAdmin"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12fd

    goto :goto_12cd

    :cond_12fd
    move v15, v8

    goto :goto_1338

    :sswitch_12ff
    const-string/jumbo v5, "isMdmAdminPresent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1309

    goto :goto_12cd

    :cond_1309
    move/from16 v15, v16

    goto :goto_1338

    :sswitch_130c
    const-string v5, "getEnterpriseSdkVer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1315

    goto :goto_12cd

    :cond_1315
    move v15, v9

    goto :goto_1338

    :sswitch_1317
    const-string v5, "getAdminRemovable"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1320

    goto :goto_12cd

    :cond_1320
    move v15, v10

    goto :goto_1338

    :sswitch_1322
    const-string v5, "getActiveAdmins"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_132b

    goto :goto_12cd

    :cond_132b
    move v15, v12

    goto :goto_1338

    :sswitch_132d
    const-string/jumbo v5, "setAdminRemovable"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1337

    goto :goto_12cd

    :cond_1337
    move v15, v13

    :cond_1338
    :goto_1338
    packed-switch v15, :pswitch_data_1ef4

    goto/16 :goto_145d

    :pswitch_133d
    if-eqz v3, :cond_1356

    .line 2794
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v4, v12, :cond_1346

    goto :goto_1356

    .line 2797
    :cond_1346
    aget-object v3, v3, v13

    .line 2798
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 2797
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2800
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto/16 :goto_145d

    :cond_1356
    :goto_1356
    return-object v11

    :pswitch_1357
    if-eqz v3, :cond_1379

    .line 2780
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gt v1, v12, :cond_1360

    goto :goto_1379

    .line 2784
    :cond_1360
    :try_start_1360
    aget-object v1, v3, v13

    .line 2785
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    aget-object v2, v3, v12

    .line 2786
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 2784
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_1371
    .catch Landroid/os/RemoteException; {:try_start_1360 .. :try_end_1371} :catch_1373

    goto/16 :goto_145d

    :catch_1373
    move-exception v0

    .line 2790
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_145d

    :cond_1379
    :goto_1379
    return-object v11

    :pswitch_137a
    if-eqz v3, :cond_1394

    .line 2817
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v12, :cond_1383

    goto :goto_1394

    .line 2821
    :cond_1383
    :try_start_1383
    aget-object v1, v3, v13

    .line 2822
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 2821
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_138c
    .catch Landroid/os/RemoteException; {:try_start_1383 .. :try_end_138c} :catch_138e

    goto/16 :goto_145d

    :catch_138e
    move-exception v0

    .line 2825
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_145d

    :cond_1394
    :goto_1394
    return-object v11

    :pswitch_1395
    if-eqz v3, :cond_13b5

    .line 2804
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v10, :cond_139e

    goto :goto_13b5

    .line 2808
    :cond_139e
    :try_start_139e
    aget-object v1, v3, v13

    .line 2809
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    aget-object v2, v3, v12

    .line 2810
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2808
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_13ad
    .catch Landroid/os/RemoteException; {:try_start_139e .. :try_end_13ad} :catch_13af

    goto/16 :goto_145d

    :catch_13af
    move-exception v0

    .line 2813
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_145d

    :cond_13b5
    :goto_13b5
    return-object v11

    .line 2844
    :pswitch_13b6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2846
    :try_start_13ba
    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresent()Z

    move-result v0

    .line 2847
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11
    :try_end_13c2
    .catchall {:try_start_13ba .. :try_end_13c2} :catchall_13c7

    .line 2849
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_145d

    :catchall_13c7
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2850
    throw v0

    .line 2853
    :pswitch_13cc
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 2854
    new-instance v11, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v11, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v12, [Ljava/lang/Integer;

    .line 2856
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v13

    .line 2855
    invoke-virtual {v11, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_145d

    :pswitch_13e4
    if-eqz v3, :cond_13fd

    .line 2751
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_13ed

    goto :goto_13fd

    .line 2754
    :cond_13ed
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    invoke-virtual {v0, v5, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 2758
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    goto :goto_145d

    :cond_13fd
    :goto_13fd
    return-object v11

    :pswitch_13fe
    if-eqz v3, :cond_143e

    .line 2761
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_1407

    goto :goto_143e

    .line 2764
    :cond_1407
    aget-object v1, v3, v13

    .line 2765
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0

    .line 2768
    new-instance v11, Landroid/database/MatrixCursor;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v2, v1, v13

    invoke-direct {v11, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_145d

    .line 2770
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_145d

    .line 2772
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1426
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_145d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    new-array v2, v12, [Ljava/lang/String;

    .line 2774
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v13

    .line 2773
    invoke-virtual {v11, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1426

    :cond_143e
    :goto_143e
    return-object v11

    :pswitch_143f
    if-eqz v3, :cond_145d

    .line 2829
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gt v5, v12, :cond_1448

    goto :goto_145d

    .line 2832
    :cond_1448
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v4, v3, v13

    .line 2834
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    aget-object v3, v3, v12

    .line 2832
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v0

    .line 2836
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v11

    :cond_145d
    :goto_145d
    return-object v11

    .line 2973
    :cond_145e
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryEmailAccount(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_1463
    const-string v0, "email_policy"

    .line 2865
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/EmailPolicy;

    if-eqz v0, :cond_1c1f

    if-eqz v2, :cond_1c1f

    .line 2867
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1f0a

    :goto_1476
    move/from16 v16, v17

    goto :goto_14cc

    :sswitch_1479
    const-string/jumbo v5, "isAccountAdditionAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1483

    goto :goto_1476

    :cond_1483
    move/from16 v16, v6

    goto :goto_14cc

    :sswitch_1486
    const-string v5, "getAllowEmailForwarding"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_148f

    goto :goto_1476

    :cond_148f
    move/from16 v16, v8

    goto :goto_14cc

    :sswitch_1492
    const-string/jumbo v5, "isEmailNotificationsEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14cc

    goto :goto_1476

    :sswitch_149c
    const-string/jumbo v5, "isEmailSettingsChangesAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14a6

    goto :goto_1476

    :cond_14a6
    move/from16 v16, v9

    goto :goto_14cc

    :sswitch_14a9
    const-string v5, "getEnterpriseEmailAccountObject"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14b2

    goto :goto_1476

    :cond_14b2
    move/from16 v16, v10

    goto :goto_14cc

    :sswitch_14b5
    const-string v5, "getEnterpriseExchangeAccountObject"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14be

    goto :goto_1476

    :cond_14be
    move/from16 v16, v12

    goto :goto_14cc

    :sswitch_14c1
    const-string v5, "getAllowHtmlEmail"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14ca

    goto :goto_1476

    :cond_14ca
    move/from16 v16, v13

    :cond_14cc
    :goto_14cc
    packed-switch v16, :pswitch_data_1f28

    return-object v11

    .line 2869
    :pswitch_14d0
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/email/EmailPolicy;->isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2873
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_15b1

    :pswitch_14df
    if-eqz v3, :cond_14f9

    .line 2876
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_14e8

    goto :goto_14f9

    .line 2879
    :cond_14e8
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    invoke-virtual {v0, v5, v3}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 2884
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_15b1

    :cond_14f9
    :goto_14f9
    return-object v11

    :pswitch_14fa
    if-eqz v3, :cond_1518

    .line 2898
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1503

    goto :goto_1518

    .line 2901
    :cond_1503
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2903
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2901
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2906
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_15b1

    :cond_1518
    :goto_1518
    return-object v11

    :pswitch_1519
    if-eqz v3, :cond_1537

    .line 2887
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1522

    goto :goto_1537

    .line 2890
    :cond_1522
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 2892
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2890
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2895
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_15b1

    :cond_1537
    :goto_1537
    return-object v11

    :pswitch_1538
    if-eqz v3, :cond_1567

    .line 2937
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1541

    goto :goto_1567

    .line 2940
    :cond_1541
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v1, v3, v13

    .line 2943
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2941
    invoke-static {v0, v3, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 2945
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2947
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "email.account"

    .line 2949
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2952
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    goto :goto_1596

    :cond_1567
    :goto_1567
    return-object v11

    :pswitch_1568
    if-eqz v3, :cond_1598

    .line 2920
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1571

    goto :goto_1598

    .line 2923
    :cond_1571
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v1, v3, v13

    .line 2926
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2924
    invoke-static {v0, v3, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 2928
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2930
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "eas.account"

    .line 2932
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2934
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    :goto_1596
    move-object v0, v1

    goto :goto_15b1

    :cond_1598
    :goto_1598
    return-object v11

    :pswitch_1599
    if-eqz v3, :cond_15b2

    .line 2909
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_15a2

    goto :goto_15b2

    .line 2912
    :cond_15a2
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    invoke-virtual {v0, v5, v3}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 2916
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    :goto_15b1
    return-object v0

    :cond_15b2
    :goto_15b2
    return-object v11

    .line 2969
    :cond_15b3
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryDeviceAccount(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_15b8
    const-string v0, "application_policy"

    .line 1793
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v5, :cond_1c1f

    .line 1795
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1f3a

    goto/16 :goto_1750

    :sswitch_15cf
    const-string v0, "getAppInstallToSdCard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15d9

    goto/16 :goto_1750

    :cond_15d9
    const/16 v0, 0x1b

    goto/16 :goto_1658

    :sswitch_15dd
    const-string v0, "getApplicationUninstallationEnabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e7

    goto/16 :goto_1750

    :cond_15e7
    const/16 v0, 0x1a

    goto/16 :goto_1658

    :sswitch_15eb
    const-string v0, "getApplicationStateDisabledList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15f5

    goto/16 :goto_1750

    :cond_15f5
    const/16 v0, 0x19

    goto :goto_1658

    :sswitch_15f8
    const-string/jumbo v0, "isPackageUpdateAllowed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1603

    goto/16 :goto_1750

    :cond_1603
    const/16 v0, 0x18

    goto :goto_1658

    :sswitch_1606
    const-string/jumbo v0, "isIntentDisabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1611

    goto/16 :goto_1750

    :cond_1611
    const/16 v0, 0x17

    goto :goto_1658

    :sswitch_1614
    const-string/jumbo v0, "getPackagesFromDisableClipboardBlackList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161f

    goto/16 :goto_1750

    :cond_161f
    const/16 v0, 0x16

    goto :goto_1658

    :sswitch_1622
    const-string/jumbo v0, "isUsbDevicePermittedForPackage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_162d

    goto/16 :goto_1750

    :cond_162d
    const/16 v0, 0x15

    goto :goto_1658

    :sswitch_1630
    const-string/jumbo v0, "isChangeSmsDefaultAppAllowed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_163b

    goto/16 :goto_1750

    :cond_163b
    const/16 v0, 0x14

    goto :goto_1658

    :sswitch_163e
    const-string v0, "getApplicationIconFromDb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1648

    goto/16 :goto_1750

    :cond_1648
    const/16 v0, 0x13

    goto :goto_1658

    :sswitch_164b
    const-string/jumbo v0, "isApplicationForceStopDisabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1656

    goto/16 :goto_1750

    :cond_1656
    const/16 v0, 0x12

    :goto_1658
    move/from16 v17, v0

    goto/16 :goto_1750

    :sswitch_165c
    const-string/jumbo v0, "isApplicationSetToDefault"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1667

    goto/16 :goto_1750

    :cond_1667
    const/16 v17, 0x11

    goto/16 :goto_1750

    :sswitch_166b
    const-string v0, "getApplicationStateEnabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1675

    goto/16 :goto_1750

    :cond_1675
    const/16 v17, 0x10

    goto/16 :goto_1750

    :sswitch_1679
    const-string/jumbo v0, "isApplicationClearCacheDisabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1684

    goto/16 :goto_1750

    :cond_1684
    const/16 v17, 0xf

    goto/16 :goto_1750

    :sswitch_1688
    const-string v0, "getApplicationNameFromDb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1692

    goto/16 :goto_1750

    :cond_1692
    const/16 v17, 0xe

    goto/16 :goto_1750

    :sswitch_1696
    const-string v0, "getDefaultApplicationInternal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a0

    goto/16 :goto_1750

    :cond_16a0
    const/16 v17, 0xd

    goto/16 :goto_1750

    :sswitch_16a4
    const-string v0, "getAllPackagesFromBatteryOptimizationWhiteList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16ae

    goto/16 :goto_1750

    :cond_16ae
    const/16 v17, 0xc

    goto/16 :goto_1750

    :sswitch_16b2
    const-string/jumbo v0, "isChangeAssistDefaultAppAllowed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16bd

    goto/16 :goto_1750

    :cond_16bd
    const/16 v17, 0xb

    goto/16 :goto_1750

    :sswitch_16c1
    const-string v0, "getApplicationInstallUninstallListAsUser"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16cb

    goto/16 :goto_1750

    :cond_16cb
    const/16 v17, 0xa

    goto/16 :goto_1750

    :sswitch_16cf
    const-string/jumbo v0, "isApplicationClearDataDisabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16da

    goto/16 :goto_1750

    :cond_16da
    move/from16 v17, v14

    goto/16 :goto_1750

    :sswitch_16de
    const-string v0, "getApplicationUninstallationMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16e8

    goto/16 :goto_1750

    :cond_16e8
    move/from16 v17, v15

    goto/16 :goto_1750

    :sswitch_16ec
    const-string v0, "getApplicationInstallUninstallList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16f6

    goto/16 :goto_1750

    :cond_16f6
    const/16 v17, 0x7

    goto :goto_1750

    :sswitch_16f9
    const-string v0, "getApplicationNotificationMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1702

    goto :goto_1750

    :cond_1702
    move/from16 v17, v6

    goto :goto_1750

    :sswitch_1705
    const-string/jumbo v0, "getPackagesFromDisableClipboardBlackListPerUidInternal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_170f

    goto :goto_1750

    :cond_170f
    move/from16 v17, v8

    goto :goto_1750

    :sswitch_1712
    const-string/jumbo v0, "isApplicationInstalled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_171c

    goto :goto_1750

    :cond_171c
    move/from16 v17, v16

    goto :goto_1750

    :sswitch_171f
    const-string v0, "getApplicationComponentState"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1728

    goto :goto_1750

    :cond_1728
    move/from16 v17, v9

    goto :goto_1750

    :sswitch_172b
    const-string/jumbo v0, "getPackagesFromDisableClipboardWhiteListPerUidInternal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1735

    goto :goto_1750

    :cond_1735
    move/from16 v17, v10

    goto :goto_1750

    :sswitch_1738
    const-string/jumbo v0, "getPackagesFromDisableClipboardWhiteList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1742

    goto :goto_1750

    :cond_1742
    move/from16 v17, v12

    goto :goto_1750

    :sswitch_1745
    const-string v0, "getAppInstallationMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_174e

    goto :goto_1750

    :cond_174e
    move/from16 v17, v13

    :goto_1750
    packed-switch v17, :pswitch_data_1fac

    const-string/jumbo v0, "return null"

    .line 2251
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 1855
    :pswitch_175a
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :pswitch_1760
    if-eqz v3, :cond_177a

    .line 1797
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1769

    goto :goto_177a

    .line 1801
    :cond_1769
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1805
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :cond_177a
    :goto_177a
    return-object v11

    .line 2035
    :pswitch_177b
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateDisabledList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17bc

    .line 2037
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17bc

    .line 2039
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2040
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1794
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationStateDisabledList value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    .line 2042
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1794

    :cond_17bc
    const-string v0, "getApplicationStateDisabledList null"

    .line 2047
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :pswitch_17c2
    if-eqz v3, :cond_17dd

    .line 1915
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v12, :cond_17cb

    goto :goto_17dd

    .line 1918
    :cond_17cb
    aget-object v0, v3, v13

    aget-object v3, v3, v12

    .line 1919
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1918
    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v0

    .line 1922
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :cond_17dd
    :goto_17dd
    return-object v11

    :pswitch_17de
    if-eqz v3, :cond_17f9

    .line 1821
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_17e7

    goto :goto_17f9

    .line 1824
    :cond_17e7
    aget-object v0, v3, v13

    .line 1825
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1824
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v0

    .line 1828
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :cond_17f9
    :goto_17f9
    return-object v11

    :pswitch_17fa
    if-eqz v3, :cond_1812

    .line 2150
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1812

    .line 2151
    aget-object v0, v3, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2152
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2153
    invoke-virtual {v5, v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0

    goto :goto_181b

    .line 2156
    :cond_1812
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2157
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 2161
    :goto_181b
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_1844

    .line 2164
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1844

    .line 2165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1830
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    .line 2166
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1830

    :cond_1844
    return-object v11

    :pswitch_1845
    if-eqz v3, :cond_1868

    .line 1953
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v10, :cond_184e

    goto :goto_1868

    .line 1956
    :cond_184e
    aget-object v0, v3, v13

    .line 1957
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v4, v3, v12

    .line 1958
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    aget-object v3, v3, v10

    .line 1956
    invoke-virtual {v5, v0, v4, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v0

    .line 1962
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :cond_1868
    :goto_1868
    return-object v11

    :pswitch_1869
    if-eqz v3, :cond_1884

    .line 1979
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v10, :cond_1872

    goto :goto_1884

    .line 1982
    :cond_1872
    aget-object v0, v3, v13

    aget-object v3, v3, v12

    .line 1984
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1982
    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeSmsDefaultAppAllowed(Ljava/lang/String;I)Z

    move-result v0

    .line 1987
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :cond_1884
    :goto_1884
    return-object v11

    :pswitch_1885
    if-eqz v3, :cond_18ab

    .line 1966
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v12, :cond_188e

    goto :goto_18ab

    .line 1969
    :cond_188e
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v1, v3, v13

    invoke-virtual {v5, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[B

    move-result-object v0

    .line 1973
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [[B

    aput-object v0, v2, v13

    .line 1974
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c1d

    :cond_18ab
    :goto_18ab
    return-object v11

    :pswitch_18ac
    if-eqz v3, :cond_18d5

    .line 1860
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v8, :cond_18b5

    goto :goto_18d5

    .line 1863
    :cond_18b5
    aget-object v19, v3, v13

    aget-object v0, v3, v12

    .line 1864
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    aget-object v21, v3, v10

    aget-object v22, v3, v9

    aget-object v23, v3, v16

    aget-object v0, v3, v8

    .line 1866
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    move-object/from16 v18, v5

    .line 1863
    invoke-virtual/range {v18 .. v24}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1869
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :cond_18d5
    :goto_18d5
    return-object v11

    :pswitch_18d6
    if-eqz v3, :cond_18f1

    .line 2000
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v10, :cond_18df

    goto :goto_18f1

    .line 2003
    :cond_18df
    aget-object v0, v3, v13

    aget-object v3, v3, v12

    .line 2004
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2003
    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v0

    .line 2007
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :cond_18f1
    :goto_18f1
    return-object v11

    :pswitch_18f2
    if-eqz v3, :cond_190c

    .line 1941
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_18fb

    goto :goto_190c

    .line 1944
    :cond_18fb
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1948
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :cond_190c
    :goto_190c
    return-object v11

    :pswitch_190d
    if-eqz v3, :cond_192e

    .line 1887
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v10, :cond_1916

    goto :goto_192e

    .line 1890
    :cond_1916
    aget-object v0, v3, v13

    aget-object v4, v3, v12

    .line 1891
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v10

    .line 1892
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1890
    invoke-virtual {v5, v0, v4, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1895
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :cond_192e
    :goto_192e
    return-object v11

    :pswitch_192f
    if-eqz v3, :cond_1956

    .line 1900
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v12, :cond_1938

    goto :goto_1956

    .line 1903
    :cond_1938
    aget-object v0, v3, v13

    aget-object v1, v3, v12

    .line 1904
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1903
    invoke-virtual {v5, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1907
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/String;

    aput-object v0, v2, v13

    .line 1908
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c1d

    :cond_1956
    :goto_1956
    return-object v11

    :pswitch_1957
    if-eqz v3, :cond_199e

    .line 2010
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v10, :cond_1960

    goto :goto_199e

    .line 2016
    :cond_1960
    :try_start_1960
    aget-object v0, v3, v13

    invoke-static {v0, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11
    :try_end_1966
    .catch Ljava/net/URISyntaxException; {:try_start_1960 .. :try_end_1966} :catch_1967

    goto :goto_197c

    :catch_1967
    move-exception v0

    .line 2018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URISyntaxException "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    :goto_197c
    aget-object v0, v3, v12

    .line 2023
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2022
    invoke-virtual {v5, v11, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2026
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_1c1d

    new-array v2, v12, [Ljava/lang/String;

    .line 2029
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v13

    .line 2028
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c1d

    :cond_199e
    :goto_199e
    return-object v11

    .line 2136
    :pswitch_199f
    invoke-virtual {v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAllPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;

    move-result-object v0

    .line 2138
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_1c1d

    .line 2139
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c1d

    .line 2140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19b8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    .line 2141
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_19b8

    :pswitch_19cc
    if-eqz v3, :cond_19e5

    .line 1990
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v12, :cond_19d5

    goto :goto_19e5

    .line 1993
    :cond_19d5
    aget-object v0, v3, v13

    .line 1994
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1993
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeAssistDefaultAppAllowed(I)Z

    move-result v0

    .line 1997
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :cond_19e5
    :goto_19e5
    return-object v11

    :pswitch_19e6
    if-eqz v3, :cond_1a43

    .line 2082
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v10, :cond_19ef

    goto :goto_1a43

    :cond_19ef
    const-string v0, "getApplicationInstallUninstallListAsUser"

    .line 2089
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    aget-object v0, v3, v13

    .line 2093
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v1, v3, v12

    .line 2092
    invoke-virtual {v5, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallListAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2096
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_1a3d

    .line 2099
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a3d

    .line 2100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationInstallUninstallListAsUser value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    .line 2103
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1a15

    :cond_1a3d
    const-string v0, "getApplicationInstallUninstallList null"

    .line 2108
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_1a43
    :goto_1a43
    const-string v0, "getApplicationInstallUninstallListAsUser selectionArgs is null"

    .line 2083
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :pswitch_1a49
    if-eqz v3, :cond_1a6a

    .line 1874
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v10, :cond_1a52

    goto :goto_1a6a

    .line 1877
    :cond_1a52
    aget-object v0, v3, v13

    aget-object v4, v3, v12

    .line 1878
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v10

    .line 1879
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1877
    invoke-virtual {v5, v0, v4, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1882
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :cond_1a6a
    :goto_1a6a
    return-object v11

    .line 2123
    :pswitch_1a6b
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2124
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2128
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 2130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 2129
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c1d

    :pswitch_1a8a
    if-eqz v3, :cond_1ae1

    .line 2052
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v12, :cond_1a93

    goto :goto_1ae1

    :cond_1a93
    const-string v0, "getApplicationInstallUninstallList"

    .line 2058
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    aget-object v0, v3, v13

    .line 2061
    invoke-virtual {v5, v4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2065
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_1adb

    .line 2068
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1adb

    .line 2069
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1ab3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2070
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationInstallUninstallList value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    .line 2072
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1ab3

    :cond_1adb
    const-string v0, "getApplicationInstallUninstallList null"

    .line 2077
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_1ae1
    :goto_1ae1
    const-string v0, "getApplicationInstallUninstallList selectionArgs is null"

    .line 2053
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :pswitch_1ae7
    if-eqz v3, :cond_1b15

    .line 1833
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1af0

    goto :goto_1b15

    .line 1837
    :cond_1af0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v1, v3, v13

    .line 1839
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1837
    invoke-virtual {v5, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0

    .line 1842
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 1844
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 1843
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c1d

    :cond_1b15
    :goto_1b15
    return-object v11

    :pswitch_1b16
    if-eqz v3, :cond_1b47

    .line 2205
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1b47

    .line 2206
    aget-object v0, v3, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2207
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2208
    invoke-virtual {v5, v1, v0, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2215
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2218
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "clipboard_blacklist_perUid"

    .line 2221
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2224
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    goto/16 :goto_1c1d

    :cond_1b47
    return-object v11

    :pswitch_1b48
    if-eqz v3, :cond_1b62

    .line 1809
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1b51

    goto :goto_1b62

    .line 1813
    :cond_1b51
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1817
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :cond_1b62
    :goto_1b62
    return-object v11

    :pswitch_1b63
    if-eqz v3, :cond_1b83

    .line 1927
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1b6c

    goto :goto_1b83

    .line 1930
    :cond_1b6c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v13

    .line 1932
    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1930
    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v0

    .line 1936
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1c1e

    :cond_1b83
    :goto_1b83
    return-object v11

    :pswitch_1b84
    if-eqz v3, :cond_1bb4

    .line 2229
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1bb4

    .line 2230
    aget-object v0, v3, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2231
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2232
    invoke-virtual {v5, v1, v0, v13}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2239
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2242
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "clipboard_whitelist_perUid"

    .line 2245
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2248
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    goto :goto_1c1d

    :cond_1bb4
    return-object v11

    :pswitch_1bb5
    if-eqz v3, :cond_1bcd

    .line 2177
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1bcd

    .line 2178
    aget-object v0, v3, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2179
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2180
    invoke-virtual {v5, v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1bd6

    .line 2183
    :cond_1bcd
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2184
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 2189
    :goto_1bd6
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_1bff

    .line 2192
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1bff

    .line 2193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1beb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    .line 2194
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1beb

    :cond_1bff
    return-object v11

    .line 2113
    :pswitch_1c00
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2117
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v12, [Ljava/lang/Integer;

    .line 2119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    .line 2118
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1c1d
    :goto_1c1d
    move-object v0, v1

    :goto_1c1e
    return-object v0

    :cond_1c1f
    :goto_1c1f
    return-object v11

    :pswitch_data_1c20
    .packed-switch 0xb
        :pswitch_12be
        :pswitch_fcf
        :pswitch_cfe
        :pswitch_868
        :pswitch_217
        :pswitch_212
        :pswitch_20d
        :pswitch_208
        :pswitch_203
        :pswitch_74
        :pswitch_6f
    .end packed-switch

    :sswitch_data_1c3a
    .sparse-switch
        -0x741f137a -> :sswitch_11e
        -0x6eef77f4 -> :sswitch_111
        -0x5d7bb47d -> :sswitch_104
        -0x44588ee5 -> :sswitch_f7
        -0x420e1f50 -> :sswitch_ea
        -0x17c83041 -> :sswitch_de
        -0x208922d -> :sswitch_d2
        0x1b40829f -> :sswitch_c4
        0x2e222643 -> :sswitch_b6
        0x5a7559bf -> :sswitch_a7
        0x6406da08 -> :sswitch_99
        0x68ddea58 -> :sswitch_8a
    .end sparse-switch

    :pswitch_data_1c6c
    .packed-switch 0x0
        :pswitch_1f5
        :pswitch_1e6
        :pswitch_1d1
        :pswitch_1c3
        :pswitch_1b5
        :pswitch_19d
        :pswitch_18f
        :pswitch_180
        :pswitch_171
        :pswitch_162
        :pswitch_13d
        :pswitch_12e
    .end packed-switch

    :sswitch_data_1c88
    .sparse-switch
        -0x7d00b11f -> :sswitch_423
        -0x7cda2990 -> :sswitch_417
        -0x7bf265f6 -> :sswitch_40b
        -0x757aa1fb -> :sswitch_3fe
        -0x6f61ea52 -> :sswitch_3f0
        -0x6cd5112c -> :sswitch_3e3
        -0x6c8256b9 -> :sswitch_3d7
        -0x68231777 -> :sswitch_3cb
        -0x5f479d3d -> :sswitch_3bd
        -0x5d96bdfd -> :sswitch_3af
        -0x3eeccaaa -> :sswitch_3a1
        -0x3b6d6c7b -> :sswitch_392
        -0x3169f913 -> :sswitch_384
        -0x24629eae -> :sswitch_376
        -0x105b68f3 -> :sswitch_367
        -0xb98097b -> :sswitch_358
        -0x63922de -> :sswitch_34a
        -0x4a6fada -> :sswitch_33b
        -0x2cd0269 -> :sswitch_32d
        -0x2246832 -> :sswitch_31e
        -0x117c459 -> :sswitch_310
        0x4fd98e1 -> :sswitch_301
        0x85fa496 -> :sswitch_2f2
        0x1086aa03 -> :sswitch_2e3
        0x12bb4d48 -> :sswitch_2d4
        0x18e41b33 -> :sswitch_2c5
        0x1d261c9d -> :sswitch_2b6
        0x240ce64e -> :sswitch_2a7
        0x32c1d30f -> :sswitch_299
        0x438d32f5 -> :sswitch_28b
        0x4a948f99 -> :sswitch_27d
        0x4abdeb96 -> :sswitch_270
        0x64defd38 -> :sswitch_262
        0x67050a1d -> :sswitch_254
        0x6c8af02b -> :sswitch_246
        0x6db77171 -> :sswitch_238
        0x6ec40bb4 -> :sswitch_22a
    .end sparse-switch

    :pswitch_data_1d1e
    .packed-switch 0x0
        :pswitch_859
        :pswitch_83a
        :pswitch_807
        :pswitch_7ec
        :pswitch_7ca
        :pswitch_793
        :pswitch_783
        :pswitch_763
        :pswitch_753
        :pswitch_720
        :pswitch_710
        :pswitch_6f0
        :pswitch_6c5
        :pswitch_6a5
        :pswitch_695
        :pswitch_675
        :pswitch_642
        :pswitch_621
        :pswitch_5f6
        :pswitch_5d5
        :pswitch_5c5
        :pswitch_5b5
        :pswitch_582
        :pswitch_561
        :pswitch_551
        :pswitch_541
        :pswitch_520
        :pswitch_510
        :pswitch_4ef
        :pswitch_4df
        :pswitch_4bf
        :pswitch_4a3
        :pswitch_482
        :pswitch_472
        :pswitch_452
        :pswitch_442
        :pswitch_432
    .end packed-switch

    :sswitch_data_1d6c
    .sparse-switch
        -0x75228db3 -> :sswitch_9e6
        -0x5e8b707a -> :sswitch_9d9
        -0x535b24ed -> :sswitch_9cc
        -0x5344faa1 -> :sswitch_9bf
        -0x49b19ab4 -> :sswitch_9b1
        -0x477f69dc -> :sswitch_9a5
        -0x47062780 -> :sswitch_998
        -0x2d0232dc -> :sswitch_98b
        -0x1b1e2f47 -> :sswitch_97d
        -0x6441366 -> :sswitch_970
        -0x2067e91 -> :sswitch_961
        0x85fa496 -> :sswitch_952
        0x10dc886c -> :sswitch_943
        0x27deb5dc -> :sswitch_934
        0x376703d8 -> :sswitch_925
        0x3e24f8e6 -> :sswitch_916
        0x428f670d -> :sswitch_907
        0x432078d3 -> :sswitch_8f8
        0x433f1786 -> :sswitch_8ea
        0x4f9505ac -> :sswitch_8dc
        0x5afa1a68 -> :sswitch_8cf
        0x5b05ced2 -> :sswitch_8c1
        0x6238abf9 -> :sswitch_8b3
        0x694839c4 -> :sswitch_8a5
        0x6ad3e979 -> :sswitch_897
        0x6c630712 -> :sswitch_889
        0x75760f09 -> :sswitch_87b
    .end sparse-switch

    :pswitch_data_1dda
    .packed-switch 0x0
        :pswitch_ce8
        :pswitch_cbd
        :pswitch_c9e
        :pswitch_c8d
        :pswitch_c6d
        :pswitch_c4b
        :pswitch_c2f
        :pswitch_c03
        :pswitch_be3
        :pswitch_bd3
        :pswitch_bbc
        :pswitch_b89
        :pswitch_b51
        :pswitch_b41
        :pswitch_b25
        :pswitch_b15
        :pswitch_af4
        :pswitch_ac2
        :pswitch_ab2
        :pswitch_aa2
        :pswitch_a92
        :pswitch_a72
        :pswitch_a51
        :pswitch_a41
        :pswitch_a31
        :pswitch_a21
        :pswitch_9f5
    .end packed-switch

    :sswitch_data_1e14
    .sparse-switch
        -0x678cfb16 -> :sswitch_dcd
        -0x5d1cb00b -> :sswitch_dc0
        -0x58dab65f -> :sswitch_db3
        -0x55d0d0ee -> :sswitch_da8
        -0x495e7741 -> :sswitch_d9a
        -0x1abb5fa -> :sswitch_d8d
        0xf077a09 -> :sswitch_d82
        0x1fa36ac0 -> :sswitch_d76
        0x2f421cc3 -> :sswitch_d69
        0x32574534 -> :sswitch_d5d
        0x34565e5f -> :sswitch_d4f
        0x38ab60cf -> :sswitch_d41
        0x3ab3e61a -> :sswitch_d33
        0x4ed22f86 -> :sswitch_d25
        0x6c0df1e8 -> :sswitch_d17
    .end sparse-switch

    :pswitch_data_1e52
    .packed-switch 0x0
        :pswitch_fb2
        :pswitch_fa9
        :pswitch_fa0
        :pswitch_f97
        :pswitch_f30
        :pswitch_f11
        :pswitch_ef9
        :pswitch_ea8
        :pswitch_e79
        :pswitch_e5c
        :pswitch_e4d
        :pswitch_e43
        :pswitch_df2
        :pswitch_de8
        :pswitch_dde
    .end packed-switch

    :sswitch_data_1e74
    .sparse-switch
        -0x7f6b9b80 -> :sswitch_1085
        -0x7a29af54 -> :sswitch_1078
        -0x7672ed17 -> :sswitch_106e
        -0x6a25634f -> :sswitch_1061
        -0x437f6e25 -> :sswitch_1055
        -0x1e01c219 -> :sswitch_104a
        -0x14b468b1 -> :sswitch_103e
        0xb8321a0 -> :sswitch_1033
        0x26b3fb45 -> :sswitch_1027
        0x2a7ba768 -> :sswitch_101a
        0x37929121 -> :sswitch_100d
        0x6e37395a -> :sswitch_1000
        0x77ba6b2b -> :sswitch_ff3
        0x7ec2cd45 -> :sswitch_fe6
    .end sparse-switch

    :pswitch_data_1eae
    .packed-switch 0x0
        :pswitch_1290
        :pswitch_1265
        :pswitch_1237
        :pswitch_1218
        :pswitch_11ed
        :pswitch_11ce
        :pswitch_11af
        :pswitch_1184
        :pswitch_1165
        :pswitch_1146
        :pswitch_1127
        :pswitch_10f8
        :pswitch_10c9
        :pswitch_109a
    .end packed-switch

    :sswitch_data_1ece
    .sparse-switch
        -0x755ab0b2 -> :sswitch_132d
        -0x69b477e0 -> :sswitch_1322
        -0x3d5118be -> :sswitch_1317
        -0x4e0d4c0 -> :sswitch_130c
        0x1d6710b8 -> :sswitch_12ff
        0x2fe3c227 -> :sswitch_12f3
        0x3854fcc5 -> :sswitch_12e7
        0x47a72ec2 -> :sswitch_12db
        0x7ac2a216 -> :sswitch_12d1
    .end sparse-switch

    :pswitch_data_1ef4
    .packed-switch 0x0
        :pswitch_143f
        :pswitch_13fe
        :pswitch_13e4
        :pswitch_13cc
        :pswitch_13b6
        :pswitch_1395
        :pswitch_137a
        :pswitch_1357
        :pswitch_133d
    .end packed-switch

    :sswitch_data_1f0a
    .sparse-switch
        -0x793fada2 -> :sswitch_14c1
        -0x5c3258ae -> :sswitch_14b5
        -0x3c3a3ab9 -> :sswitch_14a9
        -0x394ec066 -> :sswitch_149c
        0x1733e8eb -> :sswitch_1492
        0x4e985da6 -> :sswitch_1486
        0x4fb7d6e9 -> :sswitch_1479
    .end sparse-switch

    :pswitch_data_1f28
    .packed-switch 0x0
        :pswitch_1599
        :pswitch_1568
        :pswitch_1538
        :pswitch_1519
        :pswitch_14fa
        :pswitch_14df
        :pswitch_14d0
    .end packed-switch

    :sswitch_data_1f3a
    .sparse-switch
        -0x777467f8 -> :sswitch_1745
        -0x75f653b4 -> :sswitch_1738
        -0x526f4ac4 -> :sswitch_172b
        -0x4de6cfb2 -> :sswitch_171f
        -0x4378abac -> :sswitch_1712
        -0x42f2906e -> :sswitch_1705
        -0x308e1a98 -> :sswitch_16f9
        -0x29404601 -> :sswitch_16ec
        -0x2360eeb0 -> :sswitch_16de
        -0xf8e19f3 -> :sswitch_16cf
        0x130dedfc -> :sswitch_16c1
        0x14014325 -> :sswitch_16b2
        0x16233ecf -> :sswitch_16a4
        0x1a458c22 -> :sswitch_1696
        0x1e373fed -> :sswitch_1688
        0x21074337 -> :sswitch_1679
        0x22e592aa -> :sswitch_166b
        0x2383ddea -> :sswitch_165c
        0x2952fe03 -> :sswitch_164b
        0x2d2b575b -> :sswitch_163e
        0x2dd7b5a9 -> :sswitch_1630
        0x38dd3e65 -> :sswitch_1622
        0x3c119522 -> :sswitch_1614
        0x3c3b0102 -> :sswitch_1606
        0x3d4c4243 -> :sswitch_15f8
        0x3d73f371 -> :sswitch_15eb
        0x49cef874 -> :sswitch_15dd
        0x767a17ac -> :sswitch_15cf
    .end sparse-switch

    :pswitch_data_1fac
    .packed-switch 0x0
        :pswitch_1c00
        :pswitch_1bb5
        :pswitch_1b84
        :pswitch_1b63
        :pswitch_1b48
        :pswitch_1b16
        :pswitch_1ae7
        :pswitch_1a8a
        :pswitch_1a6b
        :pswitch_1a49
        :pswitch_19e6
        :pswitch_19cc
        :pswitch_199f
        :pswitch_1957
        :pswitch_192f
        :pswitch_190d
        :pswitch_18f2
        :pswitch_18d6
        :pswitch_18ac
        :pswitch_1885
        :pswitch_1869
        :pswitch_1845
        :pswitch_17fa
        :pswitch_17de
        :pswitch_17c2
        :pswitch_177b
        :pswitch_1760
        :pswitch_175a
    .end packed-switch
.end method

.method public final queryDeviceAccount(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    const-string v0, "device_account_policy"

    .line 3175
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_9e

    if-eqz p1, :cond_9e

    const/4 v2, -0x1

    .line 3177
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v3, :sswitch_data_a0

    goto :goto_3c

    :sswitch_19
    const-string/jumbo v3, "isAccountAdditionAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_3c

    :cond_23
    move v2, v4

    goto :goto_3c

    :sswitch_25
    const-string/jumbo v3, "isAccountRemovalAllowedAsUser"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_3c

    :cond_2f
    move v2, v5

    goto :goto_3c

    :sswitch_31
    const-string/jumbo v3, "isAccountRemovalAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v6

    :goto_3c
    const/4 v3, 0x3

    packed-switch v2, :pswitch_data_ae

    return-object v1

    :pswitch_41
    if-eqz p2, :cond_5d

    .line 3202
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v3, :cond_4a

    goto :goto_5d

    .line 3206
    :cond_4a
    aget-object v1, p2, v6

    aget-object v2, p2, v5

    aget-object p2, p2, v4

    .line 3207
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 3206
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    .line 3210
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_9d

    :cond_5d
    :goto_5d
    return-object v1

    :pswitch_5e
    if-eqz p2, :cond_81

    .line 3192
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v7, 0x4

    if-ge v2, v7, :cond_68

    goto :goto_81

    .line 3195
    :cond_68
    aget-object v1, p2, v6

    aget-object v2, p2, v5

    aget-object v4, p2, v4

    .line 3196
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    aget-object p2, p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 3195
    invoke-virtual {v0, v1, v2, v4, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p2

    .line 3198
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_9d

    :cond_81
    :goto_81
    return-object v1

    :pswitch_82
    if-eqz p2, :cond_9e

    .line 3179
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v3, :cond_8b

    goto :goto_9e

    .line 3183
    :cond_8b
    aget-object v1, p2, v6

    aget-object v2, p2, v5

    aget-object p2, p2, v4

    .line 3184
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 3183
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    .line 3187
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    :goto_9d
    return-object p0

    :cond_9e
    :goto_9e
    return-object v1

    nop

    :sswitch_data_a0
    .sparse-switch
        -0x7117b61 -> :sswitch_31
        0x1562409c -> :sswitch_25
        0x4fb7d6e9 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_82
        :pswitch_5e
        :pswitch_41
    .end packed-switch
.end method

.method public final queryEmailAccount(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 9

    const-string p0, "email_account_policy"

    .line 3067
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    const/4 v0, 0x0

    if-eqz p0, :cond_f5

    if-eqz p1, :cond_f5

    const/4 v1, -0x1

    .line 3069
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_f6

    goto :goto_47

    :sswitch_18
    const-string/jumbo v2, "getSecurityIncomingServerPassword"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_47

    :cond_22
    const/4 v1, 0x3

    goto :goto_47

    :sswitch_24
    const-string/jumbo v2, "getSecurityOutgoingServerPassword"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_47

    :cond_2e
    const/4 v1, 0x2

    goto :goto_47

    :sswitch_30
    const-string/jumbo v2, "setSecurityInComingServerPassword"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_47

    :cond_3a
    move v1, v3

    goto :goto_47

    :sswitch_3c
    const-string/jumbo v2, "setSecurityOutGoingServerPassword"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    goto :goto_47

    :cond_46
    move v1, v4

    :goto_47
    packed-switch v1, :pswitch_data_108

    return-object v0

    :pswitch_4b
    if-eqz p2, :cond_75

    .line 3071
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_54

    goto :goto_75

    .line 3075
    :cond_54
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object p2, p2, v4

    .line 3078
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 3076
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object p0

    .line 3079
    new-instance p2, Landroid/database/MatrixCursor;

    new-array p3, v3, [Ljava/lang/String;

    aput-object p1, p3, v4

    invoke-direct {p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array p1, v3, [Ljava/lang/String;

    aput-object p0, p1, v4

    .line 3080
    invoke-virtual {p2, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f4

    :cond_75
    :goto_75
    return-object v0

    :pswitch_76
    if-eqz p2, :cond_9f

    .line 3085
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_7f

    goto :goto_9f

    .line 3089
    :cond_7f
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object p2, p2, v4

    .line 3092
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 3090
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object p0

    .line 3095
    new-instance p2, Landroid/database/MatrixCursor;

    new-array p3, v3, [Ljava/lang/String;

    aput-object p1, p3, v4

    invoke-direct {p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array p1, v3, [Ljava/lang/String;

    aput-object p0, p1, v4

    .line 3096
    invoke-virtual {p2, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f4

    :cond_9f
    :goto_9f
    return-object v0

    :pswitch_a0
    if-eqz p2, :cond_ca

    .line 3101
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v3, :cond_a9

    goto :goto_ca

    .line 3104
    :cond_a9
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object p2, p2, v4

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide p2

    .line 3108
    new-instance p0, Landroid/database/MatrixCursor;

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v4

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array p1, v3, [Ljava/lang/String;

    .line 3110
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    .line 3109
    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_c8
    move-object p2, p0

    goto :goto_f4

    :cond_ca
    :goto_ca
    return-object v0

    :pswitch_cb
    if-eqz p2, :cond_f5

    .line 3115
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v3, :cond_d4

    goto :goto_f5

    .line 3118
    :cond_d4
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object p2, p2, v4

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide p2

    .line 3122
    new-instance p0, Landroid/database/MatrixCursor;

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v4

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array p1, v3, [Ljava/lang/String;

    .line 3124
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    .line 3123
    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_c8

    :goto_f4
    return-object p2

    :cond_f5
    :goto_f5
    return-object v0

    :sswitch_data_f6
    .sparse-switch
        -0x5ed62634 -> :sswitch_3c
        0x655a3d46 -> :sswitch_30
        0x705941e0 -> :sswitch_24
        0x7378391a -> :sswitch_18
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_a0
        :pswitch_76
        :pswitch_4b
    .end packed-switch
.end method

.method public final queryEnterpriseLicense(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    const-string v0, "enterprise_license_policy"

    .line 3283
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 3285
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v2, "isServiceAvailable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string p0, "SecContentProvider2"

    const-string p1, "ENTERPRISELICENSEPOLICY : return null"

    .line 3295
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1f
    if-eqz p2, :cond_37

    .line 3287
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_29

    goto :goto_37

    :cond_29
    const/4 v1, 0x0

    .line 3290
    aget-object v1, p2, v1

    aget-object p2, p2, v3

    invoke-virtual {v0, v1, p2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 3292
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_37
    :goto_37
    return-object v1
.end method

.method public final queryMisc(Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 6

    const-string/jumbo v0, "misc_policy"

    .line 3141
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/MiscPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    if-eqz p1, :cond_46

    const-string v2, "getCurrentLockScreenString"

    .line 3143
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string/jumbo p2, "isNFCStateChangeAllowed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_20

    return-object v1

    .line 3155
    :cond_20
    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result p2

    .line 3158
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_45

    .line 3145
    :cond_29
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0

    .line 3149
    new-instance p2, Landroid/database/MatrixCursor;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/String;

    aput-object p0, p1, v2

    .line 3150
    invoke-virtual {p2, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object p0, p2

    :goto_45
    return-object p0

    :cond_46
    return-object v1
.end method

.method public final queryMultiUser(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 10

    const-string/jumbo v0, "multi_user_manager_service"

    .line 2990
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    const/4 v1, 0x0

    if-eqz v0, :cond_c5

    .line 2992
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_c6

    goto :goto_49

    :sswitch_1a
    const-string/jumbo v3, "multipleUsersSupported"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_49

    :cond_24
    const/4 v2, 0x3

    goto :goto_49

    :sswitch_26
    const-string/jumbo v3, "multipleUsersAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_49

    :cond_30
    const/4 v2, 0x2

    goto :goto_49

    :sswitch_32
    const-string/jumbo v3, "isUserRemovalAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_49

    :cond_3c
    move v2, v4

    goto :goto_49

    :sswitch_3e
    const-string/jumbo v3, "isUserCreationAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto :goto_49

    :cond_48
    move v2, v5

    :goto_49
    packed-switch v2, :pswitch_data_d8

    return-object v1

    .line 3045
    :pswitch_4d
    :try_start_4d
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_56} :catch_5b

    .line 3050
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_c4

    :catch_5b
    return-object v1

    :pswitch_5c
    if-eqz p2, :cond_6b

    .line 2995
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_6b

    .line 2996
    aget-object p0, p2, v5

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_6c

    :cond_6b
    move p0, v5

    .line 3000
    :goto_6c
    :try_start_6c
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2, p0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result p0
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_75} :catch_8b

    .line 3006
    new-instance p2, Landroid/database/MatrixCursor;

    new-array p3, v4, [Ljava/lang/String;

    aput-object p1, p3, v5

    invoke-direct {p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array p1, v4, [Ljava/lang/Integer;

    .line 3008
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v5

    .line 3007
    invoke-virtual {p2, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object p0, p2

    goto :goto_c4

    :catch_8b
    return-object v1

    :pswitch_8c
    if-eqz p2, :cond_9a

    .line 3029
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_9a

    .line 3030
    aget-object p2, p2, v5

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 3034
    :cond_9a
    :try_start_9a
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2, v5}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_a3} :catch_a8

    .line 3040
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_c4

    :catch_a8
    return-object v1

    :pswitch_a9
    if-eqz p2, :cond_b7

    .line 3014
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_b7

    .line 3015
    aget-object p2, p2, v5

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 3018
    :cond_b7
    :try_start_b7
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2, v5}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c0} :catch_c5

    .line 3024
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    :goto_c4
    return-object p0

    :catch_c5
    :cond_c5
    return-object v1

    :sswitch_data_c6
    .sparse-switch
        -0xa355b0c -> :sswitch_3e
        -0x7ddb46f -> :sswitch_32
        0x9914b0 -> :sswitch_26
        0x274445b6 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_8c
        :pswitch_5c
        :pswitch_4d
    .end packed-switch
.end method

.method public final queryPhoneRestriction(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 14

    const-string/jumbo v0, "phone_restriction_policy"

    .line 3311
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_337

    .line 3313
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "getDisclaimerText"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v3, :sswitch_data_338

    goto/16 :goto_138

    :sswitch_1f
    const-string v3, "checkEnableUseOfPacketData"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto/16 :goto_138

    :cond_29
    const/16 v2, 0x14

    goto/16 :goto_138

    :sswitch_2d
    const-string/jumbo v3, "isOutgoingSmsAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto/16 :goto_138

    :cond_38
    const/16 v2, 0x13

    goto/16 :goto_138

    :sswitch_3c
    const-string v3, "canIncomingCall"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto/16 :goto_138

    :cond_46
    const/16 v2, 0x12

    goto/16 :goto_138

    :sswitch_4a
    const-string/jumbo v3, "isLimitNumberOfSmsEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    goto/16 :goto_138

    :cond_55
    const/16 v2, 0x11

    goto/16 :goto_138

    :sswitch_59
    const-string/jumbo v3, "isSimLockedByAdmin"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    goto/16 :goto_138

    :cond_64
    const/16 v2, 0x10

    goto/16 :goto_138

    :sswitch_68
    const-string v3, "canOutgoingSms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    goto/16 :goto_138

    :cond_72
    const/16 v2, 0xf

    goto/16 :goto_138

    :sswitch_76
    const-string/jumbo v3, "isDataAllowedFromSimSlot2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    goto/16 :goto_138

    :cond_81
    const/16 v2, 0xe

    goto/16 :goto_138

    :sswitch_85
    const-string/jumbo v3, "isDataAllowedFromSimSlot1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_90

    goto/16 :goto_138

    :cond_90
    const/16 v2, 0xd

    goto/16 :goto_138

    :sswitch_94
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    goto/16 :goto_138

    :cond_9c
    const/16 v2, 0xc

    goto/16 :goto_138

    :sswitch_a0
    const-string v3, "canOutgoingCall"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_aa

    goto/16 :goto_138

    :cond_aa
    const/16 v2, 0xb

    goto/16 :goto_138

    :sswitch_ae
    const-string v3, "canIncomingSms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b8

    goto/16 :goto_138

    :cond_b8
    const/16 v2, 0xa

    goto/16 :goto_138

    :sswitch_bc
    const-string/jumbo v3, "isCopyContactToSimAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c7

    goto/16 :goto_138

    :cond_c7
    const/16 v2, 0x9

    goto/16 :goto_138

    :sswitch_cb
    const-string/jumbo v3, "isIncomingMmsAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d6

    goto/16 :goto_138

    :cond_d6
    const/16 v2, 0x8

    goto/16 :goto_138

    :sswitch_da
    const-string/jumbo v3, "isBlockSmsWithStorageEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e4

    goto :goto_138

    :cond_e4
    const/4 v2, 0x7

    goto :goto_138

    :sswitch_e6
    const-string/jumbo v3, "isRCSEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f0

    goto :goto_138

    :cond_f0
    const/4 v2, 0x6

    goto :goto_138

    :sswitch_f2
    const-string/jumbo v3, "isCallerIDDisplayAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fc

    goto :goto_138

    :cond_fc
    const/4 v2, 0x5

    goto :goto_138

    :sswitch_fe
    const-string v3, "getEmergencyCallOnly"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_107

    goto :goto_138

    :cond_107
    const/4 v2, 0x4

    goto :goto_138

    :sswitch_109
    const-string/jumbo v3, "isOutgoingMmsAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_113

    goto :goto_138

    :cond_113
    move v2, v5

    goto :goto_138

    :sswitch_115
    const-string/jumbo v3, "isIncomingSmsAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11f

    goto :goto_138

    :cond_11f
    move v2, v6

    goto :goto_138

    :sswitch_121
    const-string/jumbo v3, "isWapPushAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12b

    goto :goto_138

    :cond_12b
    move v2, v7

    goto :goto_138

    :sswitch_12d
    const-string/jumbo v3, "isBlockMmsWithStorageEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_137

    goto :goto_138

    :cond_137
    move v2, v8

    :goto_138
    const-string v3, "SecurityException: "

    const-string v9, "SecContentProvider2"

    packed-switch v2, :pswitch_data_38e

    const-string/jumbo p0, "return null"

    .line 3484
    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_146
    if-eqz p2, :cond_154

    .line 3328
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    if-lez p3, :cond_154

    .line 3329
    aget-object p2, p2, v8

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 3332
    :cond_154
    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result p2

    .line 3333
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_336

    .line 3355
    :pswitch_15e
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3357
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_336

    :pswitch_16d
    if-eqz p2, :cond_182

    .line 3400
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    if-gtz p3, :cond_176

    goto :goto_182

    .line 3403
    :cond_176
    aget-object p2, p2, v8

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result p2

    .line 3404
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_336

    :cond_182
    :goto_182
    return-object v1

    .line 3349
    :pswitch_183
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3351
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_336

    :pswitch_192
    if-eqz p2, :cond_1a7

    .line 3414
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    if-gtz p3, :cond_19b

    goto :goto_1a7

    .line 3417
    :cond_19b
    aget-object p2, p2, v8

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result p2

    .line 3418
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_336

    :cond_1a7
    :goto_1a7
    return-object v1

    :pswitch_1a8
    if-eqz p2, :cond_1bd

    .line 3360
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    if-gtz p3, :cond_1b1

    goto :goto_1bd

    .line 3364
    :cond_1b1
    aget-object p2, p2, v8

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result p2

    .line 3365
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_336

    :cond_1bd
    :goto_1bd
    return-object v1

    .line 3474
    :pswitch_1be
    :try_start_1be
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result v7

    .line 3477
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "isDataAllowedFromSimSlot(1) result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d7
    .catch Ljava/lang/SecurityException; {:try_start_1be .. :try_end_1d7} :catch_1d8

    goto :goto_1eb

    :catch_1d8
    move-exception p2

    .line 3479
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    :goto_1eb
    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_336

    .line 3462
    :pswitch_1f1
    :try_start_1f1
    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result v7

    .line 3465
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "isDataAllowedFromSimSlot(0) result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20a
    .catch Ljava/lang/SecurityException; {:try_start_1f1 .. :try_end_20a} :catch_20b

    goto :goto_21e

    :catch_20b
    move-exception p2

    .line 3467
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    :goto_21e
    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_336

    .line 3422
    :pswitch_224
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0

    .line 3427
    new-instance p1, Landroid/database/MatrixCursor;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array p2, v7, [Ljava/lang/String;

    aput-object p0, p2, v8

    .line 3430
    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object p0, p1

    goto/16 :goto_336

    :pswitch_240
    if-eqz p2, :cond_255

    .line 3407
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    if-gtz p3, :cond_249

    goto :goto_255

    .line 3410
    :cond_249
    aget-object p2, p2, v8

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result p2

    .line 3411
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_336

    :cond_255
    :goto_255
    return-object v1

    :pswitch_256
    if-eqz p2, :cond_26b

    .line 3341
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    if-gtz p3, :cond_25f

    goto :goto_26b

    .line 3345
    :cond_25f
    aget-object p2, p2, v8

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result p2

    .line 3346
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_336

    :cond_26b
    :goto_26b
    return-object v1

    .line 3315
    :pswitch_26c
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3317
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isCopyContactToSimAllowed = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v9, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_336

    .line 3368
    :pswitch_290
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3371
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_336

    .line 3322
    :pswitch_29f
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3324
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_336

    .line 3438
    :pswitch_2ae
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-eqz p2, :cond_2e2

    if-ge v2, v5, :cond_2b7

    goto :goto_2e2

    .line 3443
    :cond_2b7
    aget-object v1, p2, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3444
    aget-object v2, p2, v7

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3445
    aget-object p2, p2, v6

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 3448
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v3

    if-eqz v3, :cond_2dd

    .line 3452
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z

    move-result v3

    .line 3456
    :cond_2dd
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_336

    :cond_2e2
    :goto_2e2
    return-object v1

    .line 3390
    :pswitch_2e3
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3392
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_336

    .line 3385
    :pswitch_2f1
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2, v7}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2

    .line 3387
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_336

    .line 3380
    :pswitch_2ff
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3382
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_336

    .line 3374
    :pswitch_30d
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3377
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_336

    .line 3395
    :pswitch_31b
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3397
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_336

    .line 3336
    :pswitch_329
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3338
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    :goto_336
    return-object p0

    :cond_337
    return-object v1

    :sswitch_data_338
    .sparse-switch
        -0x7c20b2e4 -> :sswitch_12d
        -0x75b6adce -> :sswitch_121
        -0x516c3a61 -> :sswitch_115
        -0x4b848555 -> :sswitch_109
        -0x45f6c0db -> :sswitch_fe
        -0x3f23242a -> :sswitch_f2
        -0x36ade6b7 -> :sswitch_e6
        -0x308af1de -> :sswitch_da
        -0xb24e11b -> :sswitch_cb
        0x1134efad -> :sswitch_bc
        0x1410b963 -> :sswitch_ae
        0x14e927da -> :sswitch_a0
        0x174ab65e -> :sswitch_94
        0x30fbd25a -> :sswitch_85
        0x30fbd25b -> :sswitch_76
        0x42bd705d -> :sswitch_68
        0x617af081 -> :sswitch_59
        0x6b27fd59 -> :sswitch_4a
        0x6dfeff94 -> :sswitch_3c
        0x6e342165 -> :sswitch_2d
        0x7be8d885 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_38e
    .packed-switch 0x0
        :pswitch_329
        :pswitch_31b
        :pswitch_30d
        :pswitch_2ff
        :pswitch_2f1
        :pswitch_2e3
        :pswitch_2ae
        :pswitch_29f
        :pswitch_290
        :pswitch_26c
        :pswitch_256
        :pswitch_240
        :pswitch_224
        :pswitch_1f1
        :pswitch_1be
        :pswitch_1a8
        :pswitch_192
        :pswitch_183
        :pswitch_16d
        :pswitch_15e
        :pswitch_146
    .end packed-switch
.end method

.method public final queryVPN(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 9

    const-string/jumbo v0, "vpn_policy"

    .line 3228
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_b6

    .line 3230
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_b8

    goto :goto_47

    :sswitch_19
    const-string/jumbo v3, "isUserChangeProfilesAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_47

    :cond_23
    const/4 v2, 0x3

    goto :goto_47

    :sswitch_25
    const-string/jumbo v3, "isUserSetAlwaysOnAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_47

    :cond_2f
    const/4 v2, 0x2

    goto :goto_47

    :sswitch_31
    const-string/jumbo v3, "isUserAddProfilesAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_47

    :cond_3b
    const/4 v2, 0x1

    goto :goto_47

    :sswitch_3d
    const-string v3, "checkRacoonSecurity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto :goto_47

    :cond_46
    move v2, v4

    :goto_47
    packed-switch v2, :pswitch_data_ca

    return-object v1

    :pswitch_4b
    if-eqz p2, :cond_59

    .line 3252
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_59

    .line 3253
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 3255
    :cond_59
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2

    .line 3257
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_b5

    :pswitch_67
    if-eqz p2, :cond_75

    .line 3261
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_75

    .line 3262
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 3264
    :cond_75
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2

    .line 3266
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_b5

    :pswitch_83
    if-eqz p2, :cond_91

    .line 3242
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_91

    .line 3243
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 3245
    :cond_91
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2

    .line 3247
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_b5

    :pswitch_9f
    if-eqz p2, :cond_b6

    .line 3232
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_a8

    goto :goto_b6

    .line 3235
    :cond_a8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkRacoonSecurity(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;)Z

    move-result p2

    .line 3237
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    :goto_b5
    return-object p0

    :cond_b6
    :goto_b6
    return-object v1

    nop

    :sswitch_data_b8
    .sparse-switch
        0x20839282 -> :sswitch_3d
        0x20e4e472 -> :sswitch_31
        0x528665ad -> :sswitch_25
        0x75693779 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_83
        :pswitch_67
        :pswitch_4b
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

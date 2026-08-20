.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "SecContentProvider.java"


# static fields
.field public static final ADVANCEDRESTRICTION:I = 0x1

.field public static final API_KEY:Ljava/lang/String; = "API"

.field public static final AUDIT:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field public static final BLUETOOTH:I = 0x3

.field public static final BLUETOOTHUTILS:I = 0x4

.field public static final BROWSER:I = 0x5

.field public static final CERTIFICATE:I = 0x6

.field public static final CONTAINERAPPLICATION:I = 0x7

.field public static final DATETIME:I = 0x18

.field public static final DEVICESETTIGNS:I = 0x8

.field public static final DEX:I = 0x1b

.field public static final DLP:I = 0x19

.field public static final DOMAIN_FILTER:I = 0x1a

.field public static final ENTERPRISEKNOXMANAGER:I = 0x9

.field public static final FIREWALL:I = 0xa

.field public static final KNOXCONFIGURATIONTYPE:I = 0xb

.field public static final LOCATION:I = 0xc

.field public static final PASSWORD1:I = 0xd

.field public static final PASSWORD2:I = 0xe

.field public static final PROFILE:I = 0x1f

.field public static final RESTRICTION:I = 0x1e

.field public static final RESTRICTION1:I = 0xf

.field public static final RESTRICTION2:I = 0x10

.field public static final RESTRICTION3:I = 0x11

.field public static final RESTRICTION4:I = 0x12

.field public static final ROAMING:I = 0x13

.field public static final SECURITY:I = 0x14

.field public static final SMARTCARDBROWSER:I = 0x16

.field public static final SMARTCARDEMAIL:I = 0x15

.field public static final TAG:Ljava/lang/String; = "SecContentProvider"

.field public static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 151
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AdvancedRestrictionPolicy"

    const/4 v3, 0x1

    .line 152
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "AuditLog"

    const/4 v3, 0x2

    .line 153
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "BluetoothPolicy"

    const/4 v3, 0x3

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "BluetoothUtils"

    const/4 v3, 0x4

    .line 155
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "BrowserPolicy"

    const/4 v3, 0x5

    .line 156
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "CertificatePolicy"

    const/4 v3, 0x6

    .line 157
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "ContainerApplicationPolicy"

    const/4 v3, 0x7

    .line 158
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "DeviceSettingsPolicy"

    const/16 v3, 0x8

    .line 159
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x9

    .line 160
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "FirewallPolicy"

    const/16 v3, 0xa

    .line 161
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "KnoxConfigurationType"

    const/16 v3, 0xb

    .line 162
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "LocationPolicy"

    const/16 v3, 0xc

    .line 163
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "PasswordPolicy1"

    const/16 v3, 0xd

    .line 164
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "PasswordPolicy2"

    const/16 v3, 0xe

    .line 165
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "RestrictionPolicy1"

    const/16 v3, 0xf

    .line 166
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "RestrictionPolicy2"

    const/16 v3, 0x10

    .line 167
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "RestrictionPolicy3"

    const/16 v3, 0x11

    .line 168
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "RestrictionPolicy4"

    const/16 v3, 0x12

    .line 169
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "RoamingPolicy"

    const/16 v3, 0x13

    .line 170
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "SecurityPolicy"

    const/16 v3, 0x14

    .line 171
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "SmartCardEmailPolicy"

    const/16 v3, 0x15

    .line 172
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "SmartCardBrowserPolicy"

    const/16 v3, 0x16

    .line 173
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "DateTimePolicy"

    const/16 v3, 0x18

    .line 174
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "DlpPolicy"

    const/16 v3, 0x19

    .line 175
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "DomainFilterPolicy"

    const/16 v3, 0x1a

    .line 176
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "DexPolicy"

    const/16 v3, 0x1b

    .line 177
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "RestrictionPolicy"

    const/16 v3, 0x1e

    .line 179
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "ProfilePolicy"

    const/16 v3, 0x1f

    .line 180
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public getArrayLength([Ljava/lang/String;)I
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 3261
    :cond_4
    :try_start_4
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p1

    const-string v0, "SecContentProvider"

    const-string v1, "getArrayLength() return 0 but some exception occurs with invalid request."

    .line 3263
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return p0
.end method

.method public final getCallerName(I)Ljava/lang/String;
    .registers 2

    .line 3271
    iget-object p0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_e

    const-string p0, "fail to get caller name"

    :cond_e
    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14

    .line 3127
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insert(), uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SecContentProvider"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_10e

    const/4 p1, 0x6

    const-string v1, "API"

    if-eq p0, p1, :cond_da

    const/16 p1, 0xa

    if-eq p0, p1, :cond_b0

    const/16 p1, 0xe

    if-eq p0, p1, :cond_82

    const/16 p1, 0x14

    if-eq p0, p1, :cond_53

    goto/16 :goto_23c

    :cond_53
    const-string/jumbo p0, "security_policy"

    .line 3239
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz p0, :cond_23c

    .line 3241
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_23c

    const-string/jumbo v1, "setDodBannerVisibleStatus"

    .line 3242
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23c

    .line 3244
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v0, "isVisible"

    .line 3245
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 3244
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z

    goto/16 :goto_23c

    :cond_82
    const-string/jumbo p0, "password_policy"

    .line 3227
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz p0, :cond_23c

    .line 3230
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_23c

    const-string/jumbo v1, "setPwdChangeRequested"

    .line 3231
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23c

    .line 3232
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v0, "flag"

    .line 3233
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3232
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z

    goto/16 :goto_23c

    :cond_b0
    const-string p0, "browser_policy"

    .line 3142
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz p0, :cond_23c

    .line 3145
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_23c

    const-string/jumbo v1, "saveURLBlockedReport"

    .line 3146
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23c

    .line 3147
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v0, "url"

    .line 3148
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3147
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReportEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_23c

    :cond_da
    const-string p0, "certificate_policy"

    .line 3158
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz p0, :cond_23c

    .line 3161
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "fail"

    .line 3162
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "module"

    .line 3163
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_23c

    const-string/jumbo v1, "notifyCertificateFailure"

    .line 3164
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23c

    if-eqz v0, :cond_23c

    if-eqz p2, :cond_23c

    .line 3167
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 3166
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_23c

    :cond_10e
    const-string p0, "auditlog"

    .line 3179
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v1, :cond_23c

    const-string/jumbo p0, "redactedMessage"

    .line 3182
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    const-string/jumbo v2, "message"

    const-string v3, "component"

    const-string/jumbo v4, "uid"

    const-string/jumbo v5, "outcome"

    const-string/jumbo v6, "group"

    const-string/jumbo v7, "severity"

    const-string/jumbo v8, "userid"

    if-eqz p1, :cond_182

    .line 3183
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_182

    .line 3184
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3185
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3186
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3187
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3188
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3189
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3190
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3191
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3192
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    move-object v2, p1

    move v3, v0

    move v4, v6

    move v6, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, p0

    move v10, p2

    .line 3184
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_23c

    .line 3193
    :cond_182
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c5

    .line 3194
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3195
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3196
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3197
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3198
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3199
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3200
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3201
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v2, p1

    move v3, v0

    move v4, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, p0

    .line 3194
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23c

    .line 3202
    :cond_1c5
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_209

    .line 3203
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3204
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3205
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3206
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3207
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3208
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3209
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3210
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    move-object v2, p0

    move v3, p1

    move v4, v0

    move-object v8, v9

    move v9, p2

    .line 3203
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_23c

    .line 3212
    :cond_209
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3213
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3214
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3215
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3216
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3217
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3218
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move v3, p1

    move v4, v0

    .line 3212
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_23c
    :goto_23c
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .registers 2

    .line 187
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 195
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query(), uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " selection = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "SecContentProvider"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "called from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v7, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string/jumbo v11, "isBluetoothLogEnabled"

    const/16 v12, 0x10

    const-string/jumbo v14, "restriction_policy"

    const/16 v16, 0x9

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v6, 0x8

    const/16 v19, 0x5

    const/4 v7, 0x4

    const/16 v20, -0x1

    const/4 v10, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_2836

    :pswitch_6d
    goto/16 :goto_2835

    :pswitch_6f
    if-eqz v2, :cond_2835

    const-string/jumbo v0, "profilepolicy"

    .line 3072
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/profile/ProfilePolicyService;

    if-nez v0, :cond_7d

    return-object v13

    :cond_7d
    const-string v1, "Restriction"

    .line 3076
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    goto :goto_a0

    .line 3078
    :cond_86
    aget-object v1, v3, v9

    .line 3079
    invoke-virtual {v0, v13, v1}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 3081
    new-instance v13, Landroid/database/MatrixCursor;

    new-array v2, v15, [Ljava/lang/String;

    aput-object v1, v2, v9

    invoke-direct {v13, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 3082
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_a0
    return-object v13

    .line 218
    :pswitch_a1
    invoke-static {v14}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v1, :cond_2835

    if-eqz v2, :cond_2835

    .line 220
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2876

    :goto_b2
    move/from16 v17, v20

    goto/16 :goto_128

    :sswitch_b6
    const-string/jumbo v5, "isUWBAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c0

    goto :goto_b2

    :cond_c0
    move/from16 v17, v6

    goto/16 :goto_128

    :sswitch_c4
    const-string/jumbo v5, "isSettingsChangesAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_128

    goto :goto_b2

    :sswitch_ce
    const-string/jumbo v5, "isHeadPhoneEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d8

    goto :goto_b2

    :cond_d8
    move/from16 v17, v18

    goto :goto_128

    :sswitch_db
    const-string/jumbo v5, "isCameraEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e5

    goto :goto_b2

    :cond_e5
    move/from16 v17, v19

    goto :goto_128

    :sswitch_e8
    const-string/jumbo v5, "isWifiDirectAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f2

    goto :goto_b2

    :cond_f2
    move/from16 v17, v7

    goto :goto_128

    :sswitch_f5
    const-string/jumbo v5, "isLocalContactStorageAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ff

    goto :goto_b2

    :cond_ff
    const/16 v17, 0x3

    goto :goto_128

    :sswitch_102
    const-string/jumbo v5, "isWallpaperChangeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10c

    goto :goto_b2

    :cond_10c
    move/from16 v17, v10

    goto :goto_128

    :sswitch_10f
    const-string/jumbo v5, "isPowerOffAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_119

    goto :goto_b2

    :cond_119
    move/from16 v17, v15

    goto :goto_128

    :sswitch_11c
    const-string/jumbo v5, "isPowerSavingModeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_126

    goto :goto_b2

    :cond_126
    move/from16 v17, v9

    :cond_128
    :goto_128
    packed-switch v17, :pswitch_data_289c

    const-string/jumbo v0, "return null"

    .line 285
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    .line 266
    :pswitch_132
    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisUWBAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    goto/16 :goto_1eb

    :pswitch_138
    if-eqz v3, :cond_16f

    .line 244
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v5

    if-ge v5, v15, :cond_141

    goto :goto_16f

    .line 247
    :cond_141
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_15e

    .line 248
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v4, v3, v15

    .line 249
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v9

    .line 250
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 248
    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_1eb

    .line 252
    :cond_15e
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v9

    .line 254
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 252
    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_1eb

    :cond_16f
    :goto_16f
    return-object v13

    :pswitch_170
    if-eqz v3, :cond_189

    .line 226
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_179

    goto :goto_189

    .line 229
    :cond_179
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v9

    .line 231
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 229
    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_1eb

    :cond_189
    :goto_189
    return-object v13

    :pswitch_18a
    if-eqz v3, :cond_1a3

    .line 269
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_193

    goto :goto_1a3

    .line 272
    :cond_193
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v9

    .line 273
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 272
    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_1eb

    :cond_1a3
    :goto_1a3
    return-object v13

    :pswitch_1a4
    if-eqz v3, :cond_1b3

    .line 276
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1b3

    .line 277
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1b4

    :cond_1b3
    move v0, v9

    .line 281
    :goto_1b4
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_1eb

    .line 222
    :pswitch_1be
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_1eb

    :pswitch_1c8
    if-eqz v3, :cond_1d7

    .line 237
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1d7

    .line 238
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1d8

    :cond_1d7
    move v0, v9

    .line 240
    :goto_1d8
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_1eb

    .line 258
    :pswitch_1e2
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    goto :goto_1eb

    .line 262
    :pswitch_1e7
    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    .line 289
    :goto_1eb
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v15, [Ljava/lang/String;

    aput-object v2, v3, v9

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 293
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 292
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_200
    const-string v0, "dex_policy"

    .line 2975
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/dex/DexPolicy;

    if-eqz v0, :cond_2835

    if-eqz v2, :cond_2835

    .line 2978
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_28b2

    :goto_213
    move/from16 v7, v20

    goto :goto_24f

    :sswitch_216
    const-string/jumbo v1, "isVirtualMacAddressEnforced"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24f

    goto :goto_213

    :sswitch_220
    const-string/jumbo v1, "isEthernetOnlyEnforced"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22a

    goto :goto_213

    :cond_22a
    const/4 v7, 0x3

    goto :goto_24f

    :sswitch_22c
    const-string/jumbo v1, "getVirtualMacAddress"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_236

    goto :goto_213

    :cond_236
    move v7, v10

    goto :goto_24f

    :sswitch_238
    const-string/jumbo v1, "isScreenTimeoutChangeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_242

    goto :goto_213

    :cond_242
    move v7, v15

    goto :goto_24f

    :sswitch_244
    const-string/jumbo v1, "isDexDisabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24e

    goto :goto_213

    :cond_24e
    move v7, v9

    :cond_24f
    :goto_24f
    packed-switch v7, :pswitch_data_28c8

    return-object v13

    .line 3016
    :pswitch_253
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isVirtualMacAddressEnforced()Z

    move-result v0

    .line 3018
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isVirtualMacAddressEnforced"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 3023
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 3022
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2da

    .line 3004
    :pswitch_26f
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyEnforced()Z

    move-result v0

    .line 3007
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isEthernetOnlyEnforced"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 3012
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 3011
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2da

    .line 3027
    :pswitch_28b
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->getVirtualMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 3029
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getVirtualMacAddress"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/String;

    aput-object v0, v2, v9

    .line 3033
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2da

    .line 2980
    :pswitch_2a3
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isScreenTimeoutChangeAllowed()Z

    move-result v0

    .line 2983
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isScreenTimeoutChangeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2988
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2987
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2da

    .line 2992
    :pswitch_2bf
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v0

    .line 2995
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDexDisabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 3000
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2999
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2da
    return-object v1

    :pswitch_2db
    if-eqz v2, :cond_2835

    const-string v0, "getDefaultCaptivePortalUrl"

    .line 3047
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e6

    goto :goto_30c

    :cond_2e6
    const-string v0, "getDefaultCaptivePortalUrl"

    .line 3049
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "firewall"

    .line 3051
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/firewall/Firewall;

    if-eqz v0, :cond_2f9

    .line 3055
    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/Firewall;->getDefaulCaptivePortalURL()Ljava/lang/String;

    move-result-object v13

    .line 3058
    :cond_2f9
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "getDefaultCaptivePortalUrl"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/String;

    aput-object v13, v1, v9

    .line 3062
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v13, v0

    :goto_30c
    return-object v13

    :pswitch_30d
    const-string v0, "date_time_policy"

    .line 2931
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    if-eqz v0, :cond_2835

    if-eqz v2, :cond_2835

    const-string/jumbo v1, "isDateTimeChangeEnalbed"

    .line 2934
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34b

    const-string v1, "getAutomaticTime"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32b

    return-object v13

    .line 2953
    :cond_32b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2957
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getAutomaticTime"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2963
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2962
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_36b

    .line 2937
    :cond_34b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2941
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDateTimeChangeEnalbed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2947
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2946
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_36b
    return-object v1

    :pswitch_36c
    const-string/jumbo v1, "smartcard_browser_policy"

    .line 2720
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    if-eqz v1, :cond_2835

    if-eqz v2, :cond_3a3

    const-string/jumbo v5, "isAuthenticationEnabled"

    .line 2723
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a3

    .line 2726
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2727
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2730
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isAuthenticationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2735
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2734
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_3a3
    if-eqz v2, :cond_2835

    const-string v5, "getClientCertificateAlias"

    .line 2742
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2835

    if-eqz v3, :cond_3da

    .line 2744
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3b6

    goto :goto_3da

    .line 2748
    :cond_3b6
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    aget-object v3, v3, v15

    .line 2750
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2749
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2753
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getClientCertificateAlias"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/String;

    aput-object v0, v2, v9

    .line 2758
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_3da
    :goto_3da
    return-object v13

    :pswitch_3db
    const-string/jumbo v0, "security_policy"

    .line 2769
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v0, :cond_2835

    if-eqz v2, :cond_2835

    const-string/jumbo v1, "isDodBannerVisible"

    .line 2772
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42c

    const-string v1, "getCredentialStorageStatus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3fa

    return-object v13

    .line 2792
    :cond_3fa
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getCredentialStorageStatus(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2797
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v15, [Ljava/lang/String;

    aput-object v2, v3, v9

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Integer;

    .line 2802
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    .line 2801
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCredentialStorageStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44c

    .line 2776
    :cond_42c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2780
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDodBannerVisible"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2785
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2784
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_44c
    return-object v1

    :pswitch_44d
    const-string/jumbo v0, "roaming_policy"

    .line 2553
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    if-eqz v0, :cond_2835

    if-eqz v2, :cond_2835

    .line 2555
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_28d6

    goto :goto_495

    :sswitch_462
    const-string/jumbo v1, "isRoamingPushEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46c

    goto :goto_495

    :cond_46c
    const/16 v20, 0x3

    goto :goto_495

    :sswitch_46f
    const-string/jumbo v1, "isRoamingDataEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_479

    goto :goto_495

    :cond_479
    move/from16 v20, v10

    goto :goto_495

    :sswitch_47c
    const-string/jumbo v1, "isRoamingSyncEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_486

    goto :goto_495

    :cond_486
    move/from16 v20, v15

    goto :goto_495

    :sswitch_489
    const-string/jumbo v1, "isRoamingVoiceCallsEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_493

    goto :goto_495

    :cond_493
    move/from16 v20, v9

    :goto_495
    packed-switch v20, :pswitch_data_28e8

    return-object v13

    .line 2571
    :pswitch_499
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2575
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRoamingPushEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2580
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2579
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_51c

    .line 2585
    :pswitch_4ba
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2589
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRoamingDataEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2594
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2593
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_51c

    .line 2557
    :pswitch_4db
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2561
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRoamingSyncEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2566
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2565
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_51c

    .line 2599
    :pswitch_4fc
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2603
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRoamingVoiceCallsEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2608
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2607
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_51c
    return-object v1

    .line 1236
    :pswitch_51d
    invoke-static {v14}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v1, :cond_2835

    if-eqz v2, :cond_2835

    .line 1238
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_28f4

    :goto_52e
    move/from16 v6, v20

    goto/16 :goto_623

    :sswitch_532
    const-string/jumbo v5, "isScreenCaptureEnabledInternal"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53c

    goto :goto_52e

    :cond_53c
    const/16 v6, 0x11

    goto/16 :goto_623

    :sswitch_540
    const-string/jumbo v5, "isUsbHostStorageAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54a

    goto :goto_52e

    :cond_54a
    move v6, v12

    goto/16 :goto_623

    :sswitch_54d
    const-string/jumbo v5, "isUsbTetheringEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_557

    goto :goto_52e

    :cond_557
    const/16 v6, 0xf

    goto/16 :goto_623

    :sswitch_55b
    const-string/jumbo v5, "isUsbMassStorageEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_565

    goto :goto_52e

    :cond_565
    const/16 v6, 0xe

    goto/16 :goto_623

    :sswitch_569
    const-string/jumbo v5, "isWifiTetheringEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_573

    goto :goto_52e

    :cond_573
    const/16 v6, 0xd

    goto/16 :goto_623

    :sswitch_577
    const-string v5, "getAllowedFOTAInfo"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_580

    goto :goto_52e

    :cond_580
    const/16 v6, 0xc

    goto/16 :goto_623

    :sswitch_584
    const-string/jumbo v5, "isGearPolicyEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58e

    goto :goto_52e

    :cond_58e
    const/16 v6, 0xb

    goto/16 :goto_623

    :sswitch_592
    const-string/jumbo v5, "isUseSecureKeypadEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59c

    goto :goto_52e

    :cond_59c
    const/16 v6, 0xa

    goto/16 :goto_623

    :sswitch_5a0
    const-string/jumbo v5, "isFotaVersionAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5aa

    goto :goto_52e

    :cond_5aa
    move/from16 v6, v16

    goto/16 :goto_623

    :sswitch_5ae
    const-string/jumbo v5, "isSDCardWriteAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_623

    goto/16 :goto_52e

    :sswitch_5b9
    const-string/jumbo v5, "isWifiDirectAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c4

    goto/16 :goto_52e

    :cond_5c4
    move/from16 v6, v17

    goto :goto_623

    :sswitch_5c7
    const-string/jumbo v5, "isUserMobileDataLimitAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d2

    goto/16 :goto_52e

    :cond_5d2
    move/from16 v6, v18

    goto :goto_623

    :sswitch_5d5
    const-string/jumbo v5, "isVpnAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5e0

    goto/16 :goto_52e

    :cond_5e0
    move/from16 v6, v19

    goto :goto_623

    :sswitch_5e3
    const-string/jumbo v5, "isWifiEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5ee

    goto/16 :goto_52e

    :cond_5ee
    move v6, v7

    goto :goto_623

    :sswitch_5f0
    const-string/jumbo v5, "isVideoRecordAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5fb

    goto/16 :goto_52e

    :cond_5fb
    const/4 v6, 0x3

    goto :goto_623

    :sswitch_5fd
    const-string/jumbo v5, "isWallpaperChangeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_608

    goto/16 :goto_52e

    :cond_608
    move v6, v10

    goto :goto_623

    :sswitch_60a
    const-string/jumbo v5, "isUsbMediaPlayerAvailable"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_615

    goto/16 :goto_52e

    :cond_615
    move v6, v15

    goto :goto_623

    :sswitch_617
    const-string/jumbo v5, "isPowerSavingModeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_622

    goto/16 :goto_52e

    :cond_622
    move v6, v9

    :cond_623
    :goto_623
    packed-switch v6, :pswitch_data_293e

    return-object v13

    :pswitch_627
    if-nez v3, :cond_632

    .line 1449
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_630

    goto :goto_632

    :cond_630
    move v0, v9

    goto :goto_638

    .line 1450
    :cond_632
    :goto_632
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1453
    :goto_638
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v0

    .line 1455
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v15, [Ljava/lang/String;

    aput-object v2, v3, v9

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1459
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1458
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    :pswitch_652
    if-eqz v3, :cond_661

    .line 1243
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_661

    .line 1244
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_662

    :cond_661
    move v0, v9

    .line 1246
    :goto_662
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1250
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUsbHostStorageAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1254
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1253
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    .line 1291
    :pswitch_684
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1295
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUsbTetheringEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1299
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1298
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    :pswitch_6a6
    if-eqz v3, :cond_6d7

    .line 1259
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_6af

    goto :goto_6d7

    .line 1262
    :cond_6af
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 1263
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1262
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMassStorageEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1266
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUsbMassStorageEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1270
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1269
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    :cond_6d7
    :goto_6d7
    return-object v13

    .line 1401
    :pswitch_6d8
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1405
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isWifiTetheringEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1409
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1408
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    .line 1489
    :pswitch_6fa
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 1491
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getAllowedFOTAInfo"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_909

    .line 1495
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_909

    .line 1496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_71a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_909

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v15, [Ljava/lang/String;

    aput-object v2, v3, v9

    .line 1497
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_71a

    .line 1478
    :pswitch_72e
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 1481
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v15, [Ljava/lang/String;

    aput-object v2, v3, v9

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1485
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1484
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    .line 1318
    :pswitch_74d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1322
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUseSecureKeypadEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1326
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1325
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    .line 1468
    :pswitch_76f
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "isFotaVersionAllowed"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v0, v15, [Ljava/lang/Boolean;

    .line 1473
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v9

    .line 1472
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    .line 1414
    :pswitch_786
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1418
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSDCardWriteAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1422
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1421
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    :pswitch_7a8
    if-eqz v3, :cond_7b7

    .line 1385
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7b7

    .line 1386
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7b8

    :cond_7b7
    move v0, v9

    .line 1388
    :goto_7b8
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1392
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isWifiDirectAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1396
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1395
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    .line 1304
    :pswitch_7da
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1309
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUserMobileDataLimitAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1313
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1312
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    .line 1350
    :pswitch_7fc
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1354
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isVpnAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1358
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1357
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    :pswitch_81e
    const-string/jumbo v1, "wifi_policy"

    .line 1427
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-nez v3, :cond_832

    .line 1429
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_830

    goto :goto_832

    :cond_830
    move v0, v9

    goto :goto_838

    .line 1430
    :cond_832
    :goto_832
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_838
    if-eqz v1, :cond_85c

    .line 1433
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1436
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isWifiEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1440
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1439
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    :cond_85c
    return-object v13

    :pswitch_85d
    if-eqz v3, :cond_86c

    .line 1334
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_86c

    .line 1335
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_86d

    :cond_86c
    move v0, v9

    .line 1337
    :goto_86d
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1341
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isVideoRecordAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1345
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1344
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_909

    :pswitch_88f
    if-eqz v3, :cond_89e

    .line 1366
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_89e

    .line 1367
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_89f

    :cond_89e
    move v0, v9

    .line 1369
    :goto_89f
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1373
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isWallpaperChangeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1377
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1376
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_909

    :pswitch_8c0
    if-eqz v3, :cond_8f0

    .line 1275
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_8c9

    goto :goto_8f0

    .line 1278
    :cond_8c9
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 1279
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1278
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1282
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUsbMediaPlayerAvailable"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1286
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1285
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_909

    :cond_8f0
    :goto_8f0
    return-object v13

    .line 1504
    :pswitch_8f1
    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    .line 1506
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v15, [Ljava/lang/String;

    aput-object v2, v3, v9

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1510
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1509
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_909
    :goto_909
    return-object v1

    .line 924
    :pswitch_90a
    invoke-static {v14}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v1, :cond_2835

    if-eqz v2, :cond_2835

    .line 926
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2966

    :goto_91b
    move/from16 v6, v20

    goto/16 :goto_a11

    :sswitch_91f
    const-string/jumbo v6, "isSVoiceAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_929

    goto :goto_91b

    :cond_929
    const/16 v6, 0x11

    goto/16 :goto_a11

    :sswitch_92d
    const-string/jumbo v6, "isScreenCaptureEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_937

    goto :goto_91b

    :cond_937
    move v6, v12

    goto/16 :goto_a11

    :sswitch_93a
    const-string/jumbo v6, "isSettingsChangesAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_944

    goto :goto_91b

    :cond_944
    const/16 v6, 0xf

    goto/16 :goto_a11

    :sswitch_948
    const-string/jumbo v6, "isStatusBarExpansionallowedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_952

    goto :goto_91b

    :cond_952
    const/16 v6, 0xe

    goto/16 :goto_a11

    :sswitch_956
    const-string/jumbo v6, "isSDCardMoveAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_960

    goto :goto_91b

    :cond_960
    const/16 v6, 0xd

    goto/16 :goto_a11

    :sswitch_964
    const-string/jumbo v6, "isUsbDebuggingEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96e

    goto :goto_91b

    :cond_96e
    const/16 v6, 0xc

    goto/16 :goto_a11

    :sswitch_972
    const-string/jumbo v6, "isIrisCameraEnabledAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_97c

    goto :goto_91b

    :cond_97c
    const/16 v6, 0xb

    goto/16 :goto_a11

    :sswitch_980
    const-string/jumbo v6, "isSafeModeAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_98a

    goto :goto_91b

    :cond_98a
    const/16 v6, 0xa

    goto/16 :goto_a11

    :sswitch_98e
    const-string/jumbo v6, "isOdeTrustedBootVerificationEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_998

    goto :goto_91b

    :cond_998
    move/from16 v6, v16

    goto/16 :goto_a11

    :sswitch_99c
    const-string/jumbo v7, "isSmartClipModeAllowed"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a11

    goto/16 :goto_91b

    :sswitch_9a7
    const-string/jumbo v6, "isSettingsChangesAllowedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b2

    goto/16 :goto_91b

    :cond_9b2
    move/from16 v6, v17

    goto :goto_a11

    :sswitch_9b5
    const-string/jumbo v6, "isSdCardEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9c0

    goto/16 :goto_91b

    :cond_9c0
    move/from16 v6, v18

    goto :goto_a11

    :sswitch_9c3
    const-string/jumbo v6, "isOTAUpgradeAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9ce

    goto/16 :goto_91b

    :cond_9ce
    move/from16 v6, v19

    goto :goto_a11

    :sswitch_9d1
    const-string/jumbo v6, "isStopSystemAppAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9dc

    goto/16 :goto_91b

    :cond_9dc
    move v6, v7

    goto :goto_a11

    :sswitch_9de
    const-string/jumbo v6, "isPowerOffAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9e9

    goto/16 :goto_91b

    :cond_9e9
    const/4 v6, 0x3

    goto :goto_a11

    :sswitch_9eb
    const-string/jumbo v6, "isScreenPinningAllowedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9f6

    goto/16 :goto_91b

    :cond_9f6
    move v6, v10

    goto :goto_a11

    :sswitch_9f8
    const-string/jumbo v6, "isSBeamAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a03

    goto/16 :goto_91b

    :cond_a03
    move v6, v15

    goto :goto_a11

    :sswitch_a05
    const-string/jumbo v6, "isShareListAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a10

    goto/16 :goto_91b

    :cond_a10
    move v6, v9

    :cond_a11
    :goto_a11
    packed-switch v6, :pswitch_data_29b0

    return-object v13

    :pswitch_a15
    if-eqz v3, :cond_a24

    .line 1196
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-ne v2, v15, :cond_a24

    .line 1197
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a3a

    :cond_a24
    if-eqz v3, :cond_a39

    .line 1198
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_a39

    .line 1200
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1201
    aget-object v2, v3, v15

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_a3a

    :cond_a39
    move v0, v9

    .line 1203
    :goto_a3a
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSVoiceAllowed result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSVoiceAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1210
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1209
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    :pswitch_a79
    if-eqz v3, :cond_aaa

    .line 1059
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_a82

    goto :goto_aaa

    .line 1062
    :cond_a82
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 1064
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1062
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1067
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isScreenCaptureEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1071
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1070
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    :cond_aaa
    :goto_aaa
    return-object v13

    :pswitch_aab
    if-eqz v3, :cond_af8

    .line 928
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-ge v2, v15, :cond_ab4

    goto :goto_af8

    .line 931
    :cond_ab4
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_ad0

    .line 932
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v15

    .line 933
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 934
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 932
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_adf

    .line 936
    :cond_ad0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 938
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 936
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 942
    :goto_adf
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSettingsChangesAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 946
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 945
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    :cond_af8
    :goto_af8
    return-object v13

    :pswitch_af9
    if-eqz v3, :cond_b08

    .line 1163
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b08

    .line 1164
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_b09

    :cond_b08
    move v0, v9

    .line 1166
    :goto_b09
    invoke-virtual {v1, v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v0

    .line 1170
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isStatusBarExpansionallowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1174
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1173
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    :pswitch_b26
    if-eqz v3, :cond_b57

    .line 1089
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_b2f

    goto :goto_b57

    .line 1092
    :cond_b2f
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 1094
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1092
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1097
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSDCardMoveAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1101
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1100
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    :cond_b57
    :goto_b57
    return-object v13

    .line 1215
    :pswitch_b58
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1219
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUsbDebuggingEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1223
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1222
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    :pswitch_b7a
    if-eqz v3, :cond_bab

    .line 1126
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_b83

    goto :goto_bab

    .line 1129
    :cond_b83
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 1131
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1129
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1133
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isIrisCameraEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1137
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1136
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    :cond_bab
    :goto_bab
    return-object v13

    .line 1027
    :pswitch_bac
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1031
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSafeModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1035
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1034
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    .line 988
    :pswitch_bce
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 991
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isOdeTrustedBootVerificationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 995
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 994
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    :pswitch_bf0
    if-eqz v3, :cond_bff

    .line 1145
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_bff

    .line 1146
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_c00

    :cond_bff
    move v0, v9

    .line 1148
    :goto_c00
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v0

    .line 1151
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSmartClipModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1155
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1154
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    :pswitch_c1d
    if-eqz v3, :cond_c63

    .line 951
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ge v0, v10, :cond_c26

    goto :goto_c63

    .line 954
    :cond_c26
    aget-object v0, v3, v9

    .line 955
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    aget-object v2, v3, v15

    .line 956
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 954
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v0

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESTRICTIONPOLICY_SETTINGSCHANGESASUSER_METHOD return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSettingsChangesAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 964
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 963
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    :cond_c63
    :goto_c63
    return-object v13

    .line 1076
    :pswitch_c64
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1080
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSdCardEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1084
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1083
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    .line 1000
    :pswitch_c86
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1004
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isOTAUpgradeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1008
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1007
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    .line 1179
    :pswitch_ca7
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1183
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isStopSystemAppAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1186
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    .line 1014
    :pswitch_cc9
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    .line 1018
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v15, [Ljava/lang/String;

    aput-object v2, v3, v9

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1022
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1021
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d84

    :pswitch_ce3
    if-eqz v3, :cond_cf2

    .line 1108
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_cf2

    .line 1109
    aget-object v2, v3, v9

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_cf3

    :cond_cf2
    move v2, v9

    :goto_cf3
    if-eqz v3, :cond_d01

    .line 1111
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_d01

    .line 1112
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1114
    :cond_d01
    invoke-virtual {v1, v2, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenPinningAllowedAsUser(ZI)Z

    move-result v0

    .line 1117
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isScreenPinningAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1121
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1120
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_d84

    :pswitch_d1d
    if-eqz v3, :cond_d2c

    .line 1043
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_d2c

    .line 1044
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_d2d

    :cond_d2c
    move v0, v9

    .line 1046
    :goto_d2d
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1050
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSBeamAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1054
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1053
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_d84

    .line 968
    :pswitch_d4e
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v15, :cond_d64

    .line 969
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 971
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 969
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_d6d

    .line 973
    :cond_d64
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 978
    :goto_d6d
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isShareListAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 982
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 981
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_d84
    return-object v1

    .line 618
    :pswitch_d85
    invoke-static {v14}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v1, :cond_2835

    if-eqz v2, :cond_2835

    .line 620
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_29d8

    :goto_d96
    move/from16 v6, v20

    goto/16 :goto_e7d

    :sswitch_d9a
    const-string/jumbo v5, "isKillingActivitiesOnLeaveAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_da4

    goto :goto_d96

    :cond_da4
    move v6, v12

    goto/16 :goto_e7d

    :sswitch_da7
    const-string/jumbo v5, "isGoogleAccountsAutoSyncAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_db1

    goto :goto_d96

    :cond_db1
    const/16 v6, 0xf

    goto/16 :goto_e7d

    :sswitch_db5
    const-string/jumbo v5, "isNFCEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dbf

    goto :goto_d96

    :cond_dbf
    const/16 v6, 0xe

    goto/16 :goto_e7d

    :sswitch_dc3
    const-string/jumbo v5, "isMockLocationEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dcd

    goto :goto_d96

    :cond_dcd
    const/16 v6, 0xd

    goto/16 :goto_e7d

    :sswitch_dd1
    const-string/jumbo v5, "isHeadPhoneEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ddb

    goto :goto_d96

    :cond_ddb
    const/16 v6, 0xc

    goto/16 :goto_e7d

    :sswitch_ddf
    const-string/jumbo v5, "isHomeKeyEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_de9

    goto :goto_d96

    :cond_de9
    const/16 v6, 0xb

    goto/16 :goto_e7d

    :sswitch_ded
    const-string/jumbo v5, "isNonMarketAppAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_df7

    goto :goto_d96

    :cond_df7
    const/16 v6, 0xa

    goto/16 :goto_e7d

    :sswitch_dfb
    const-string/jumbo v5, "isFirmwareRecoveryAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e05

    goto :goto_d96

    :cond_e05
    move/from16 v6, v16

    goto/16 :goto_e7d

    :sswitch_e09
    const-string/jumbo v5, "isLockScreenViewAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e7d

    goto :goto_d96

    :sswitch_e13
    const-string/jumbo v5, "isFirmwareAutoUpdateAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1e

    goto/16 :goto_d96

    :cond_e1e
    move/from16 v6, v17

    goto :goto_e7d

    :sswitch_e21
    const-string/jumbo v5, "isNewAdminInstallationEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2c

    goto/16 :goto_d96

    :cond_e2c
    move/from16 v6, v18

    goto :goto_e7d

    :sswitch_e2f
    const-string/jumbo v5, "isLockScreenEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e3a

    goto/16 :goto_d96

    :cond_e3a
    move/from16 v6, v19

    goto :goto_e7d

    :sswitch_e3d
    const-string/jumbo v5, "isMicrophoneEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e48

    goto/16 :goto_d96

    :cond_e48
    move v6, v7

    goto :goto_e7d

    :sswitch_e4a
    const-string/jumbo v5, "isMicrophoneEnabledAsUser"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e55

    goto/16 :goto_d96

    :cond_e55
    const/4 v6, 0x3

    goto :goto_e7d

    :sswitch_e57
    const-string/jumbo v5, "isGoogleCrashReportedAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e62

    goto/16 :goto_d96

    :cond_e62
    move v6, v10

    goto :goto_e7d

    :sswitch_e64
    const-string/jumbo v5, "isNonTrustedAppInstallBlocked"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6f

    goto/16 :goto_d96

    :cond_e6f
    move v6, v15

    goto :goto_e7d

    :sswitch_e71
    const-string/jumbo v5, "isNFCEnabledWithMsg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e7c

    goto/16 :goto_d96

    :cond_e7c
    move v6, v9

    :cond_e7d
    :goto_e7d
    packed-switch v6, :pswitch_data_2a1e

    const-string/jumbo v0, "return null"

    .line 915
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_e87
    if-nez v3, :cond_eb0

    .line 721
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callingUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee2

    .line 726
    :cond_eb0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v9

    .line 727
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 726
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v9

    .line 729
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :goto_ee2
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isKillingActivitiesOnLeaveAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 736
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 735
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    .line 658
    :pswitch_efb
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 662
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGoogleAccountsAutoSyncAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 666
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 665
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    .line 863
    :pswitch_f1d
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "isNFCEnabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v0, v15, [Ljava/lang/Boolean;

    .line 867
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v9

    .line 866
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    :pswitch_f34
    if-nez v3, :cond_f54

    .line 824
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callingUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7d

    .line 828
    :cond_f54
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v9

    .line 829
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 828
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callingUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_f7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMockLocationEnabled return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isMockLocationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 838
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 837
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    :pswitch_fab
    if-eqz v3, :cond_fdc

    .line 684
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_fb4

    goto :goto_fdc

    .line 687
    :cond_fb4
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 689
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 687
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 692
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isHeadPhoneEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 696
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 695
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    :cond_fdc
    :goto_fdc
    return-object v13

    :pswitch_fdd
    if-eqz v3, :cond_fed

    .line 704
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_fed

    .line 705
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_fee

    :cond_fed
    move v0, v9

    .line 707
    :goto_fee
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 711
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isHomeKeyEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 715
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 714
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    :pswitch_1010
    if-eqz v3, :cond_1022

    .line 885
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v9

    .line 886
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 885
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_102b

    .line 888
    :cond_1022
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 893
    :goto_102b
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isNonMarketAppAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 897
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 896
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    :pswitch_1044
    if-eqz v3, :cond_1075

    .line 640
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_104d

    goto :goto_1075

    .line 644
    :cond_104d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 646
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 644
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 649
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isFirmwareRecoveryAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 653
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 652
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    :cond_1075
    :goto_1075
    return-object v13

    :pswitch_1076
    if-eqz v3, :cond_10d8

    .line 758
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-ge v2, v15, :cond_107f

    goto :goto_10d8

    .line 761
    :cond_107f
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_109b

    .line 762
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v9

    .line 763
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 764
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 762
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    goto :goto_10aa

    .line 766
    :cond_109b
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 768
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 766
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 770
    :goto_10aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isLockScreenViewAllowed return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLockScreenViewAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 776
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 775
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    :cond_10d8
    :goto_10d8
    return-object v13

    :pswitch_10d9
    if-eqz v3, :cond_110a

    .line 622
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_10e2

    goto :goto_110a

    .line 626
    :cond_10e2
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 628
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 626
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 631
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isFirmwareAutoUpdateAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 635
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 634
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    :cond_110a
    :goto_110a
    return-object v13

    :pswitch_110b
    if-eqz v3, :cond_113c

    .line 843
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1114

    goto :goto_113c

    .line 846
    :cond_1114
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 848
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 846
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 851
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isNewAdminInstallationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 855
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 854
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    :cond_113c
    :goto_113c
    return-object v13

    :pswitch_113d
    if-eqz v3, :cond_116e

    .line 741
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1146

    goto :goto_116e

    .line 744
    :cond_1146
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 746
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 744
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 749
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLockScreenEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 753
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 752
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    :cond_116e
    :goto_116e
    return-object v13

    :pswitch_116f
    if-eqz v3, :cond_11d2

    .line 781
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-ge v2, v15, :cond_1178

    goto :goto_11d2

    .line 784
    :cond_1178
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_1195

    .line 785
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v9

    .line 786
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 787
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 785
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_11a4

    .line 789
    :cond_1195
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 791
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 789
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 793
    :goto_11a4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMicrophoneEnabled return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isMicrophoneEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 799
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 798
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    :cond_11d2
    :goto_11d2
    return-object v13

    :pswitch_11d3
    if-eqz v3, :cond_1219

    .line 804
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ge v0, v10, :cond_11dc

    goto :goto_1219

    .line 807
    :cond_11dc
    aget-object v0, v3, v9

    .line 808
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    aget-object v2, v3, v15

    .line 809
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 807
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v0

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMicrophoneEnabledAsUser return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isMicrophoneEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 817
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 816
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1272

    :cond_1219
    :goto_1219
    return-object v13

    .line 671
    :pswitch_121a
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 675
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGoogleCrashReportedAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 679
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 678
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1272

    .line 902
    :pswitch_123b
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 906
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isNonTrustedAppInstallBlocked"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 910
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 909
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1272

    .line 875
    :pswitch_125d
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "isNFCEnabledWithMsg"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v0, v15, [Ljava/lang/Boolean;

    .line 879
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v9

    .line 878
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1272
    return-object v1

    .line 300
    :pswitch_1273
    invoke-static {v14}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v1, :cond_2835

    if-eqz v2, :cond_2835

    .line 302
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2a44

    :goto_1284
    move/from16 v6, v20

    goto/16 :goto_138b

    :sswitch_1288
    const-string v6, "checkPackageSource"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1291

    goto :goto_1284

    :cond_1291
    const/16 v6, 0x12

    goto/16 :goto_138b

    :sswitch_1295
    const-string/jumbo v6, "isAirplaneModeAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_129f

    goto :goto_1284

    :cond_129f
    const/16 v6, 0x11

    goto/16 :goto_138b

    :sswitch_12a3
    const-string/jumbo v6, "isClipboardShareAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12ad

    goto :goto_1284

    :cond_12ad
    move v6, v12

    goto/16 :goto_138b

    :sswitch_12b0
    const-string/jumbo v6, "isFastEncryptionAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12ba

    goto :goto_1284

    :cond_12ba
    const/16 v6, 0xf

    goto/16 :goto_138b

    :sswitch_12be
    const-string/jumbo v6, "isFactoryResetAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12c8

    goto :goto_1284

    :cond_12c8
    const/16 v6, 0xe

    goto/16 :goto_138b

    :sswitch_12cc
    const-string/jumbo v6, "isActivationLockAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12d6

    goto :goto_1284

    :cond_12d6
    const/16 v6, 0xd

    goto/16 :goto_138b

    :sswitch_12da
    const-string/jumbo v6, "isAndroidBeamAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12e4

    goto :goto_1284

    :cond_12e4
    const/16 v6, 0xc

    goto/16 :goto_138b

    :sswitch_12e8
    const-string/jumbo v6, "isDeveloperModeAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12f2

    goto :goto_1284

    :cond_12f2
    const/16 v6, 0xb

    goto/16 :goto_138b

    :sswitch_12f6
    const-string/jumbo v6, "isClipboardShareAllowedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1300

    goto :goto_1284

    :cond_1300
    const/16 v6, 0xa

    goto/16 :goto_138b

    :sswitch_1304
    const-string/jumbo v6, "isBackgroundProcessLimitEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_130f

    goto/16 :goto_1284

    :cond_130f
    move/from16 v6, v16

    goto/16 :goto_138b

    :sswitch_1313
    const-string/jumbo v7, "isCameraEnabled"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_138b

    goto/16 :goto_1284

    :sswitch_131e
    const-string/jumbo v6, "isBackgroundDataEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1329

    goto/16 :goto_1284

    :cond_1329
    move/from16 v6, v17

    goto :goto_138b

    :sswitch_132c
    const-string/jumbo v6, "isBackupAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1337

    goto/16 :goto_1284

    :cond_1337
    move/from16 v6, v18

    goto :goto_138b

    :sswitch_133a
    const-string/jumbo v6, "isAudioRecordAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1345

    goto/16 :goto_1284

    :cond_1345
    move/from16 v6, v19

    goto :goto_138b

    :sswitch_1348
    const-string/jumbo v6, "isCellularDataAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1353

    goto/16 :goto_1284

    :cond_1353
    move v6, v7

    goto :goto_138b

    :sswitch_1355
    const-string/jumbo v6, "isClipboardAllowedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1360

    goto/16 :goto_1284

    :cond_1360
    const/4 v6, 0x3

    goto/16 :goto_138b

    :sswitch_1363
    const-string/jumbo v6, "isClipboardAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_136e

    goto/16 :goto_1284

    :cond_136e
    move v6, v10

    goto/16 :goto_138b

    :sswitch_1371
    const-string/jumbo v6, "isBluetoothTetheringEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_137c

    goto/16 :goto_1284

    :cond_137c
    move v6, v15

    goto/16 :goto_138b

    :sswitch_137f
    const-string/jumbo v6, "isDataSavingAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_138a

    goto/16 :goto_1284

    :cond_138a
    move v6, v9

    :cond_138b
    :goto_138b
    packed-switch v6, :pswitch_data_2a92

    return-object v13

    :pswitch_138f
    if-eqz v3, :cond_13b7

    .line 304
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1399

    goto/16 :goto_13b7

    .line 308
    :cond_1399
    aget-object v0, v3, v9

    invoke-virtual {v1, v5, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v0

    .line 312
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "checkPackageSource"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 316
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 315
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    :cond_13b7
    :goto_13b7
    return-object v13

    :pswitch_13b8
    if-eqz v3, :cond_13c8

    .line 341
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_13c8

    .line 342
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_13c9

    :cond_13c8
    move v0, v9

    .line 344
    :goto_13c9
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v0

    .line 347
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isAirplaneModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 351
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 350
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    .line 534
    :pswitch_13e6
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 538
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardShareAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 542
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 541
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    :pswitch_1408
    if-eqz v3, :cond_144e

    .line 580
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ge v0, v15, :cond_1411

    goto :goto_144e

    .line 584
    :cond_1411
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 586
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 584
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFastEncryptionAllowed return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isFastEncryptionAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 593
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 592
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    :cond_144e
    :goto_144e
    return-object v13

    .line 567
    :pswitch_144f
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 571
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isFactoryResetAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 575
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 574
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    :pswitch_1471
    if-eqz v3, :cond_14a3

    .line 320
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_147b

    goto/16 :goto_14a3

    .line 324
    :cond_147b
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 326
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 324
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isActivationLockAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 329
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isActivationLockAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 333
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 332
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    :cond_14a3
    :goto_14a3
    return-object v13

    :pswitch_14a4
    if-eqz v3, :cond_14b4

    .line 359
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_14b4

    .line 360
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_14b5

    :cond_14b4
    move v0, v9

    .line 362
    :goto_14b5
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAndroidBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 366
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isAndroidBeamAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 370
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 369
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    :pswitch_14d7
    if-eqz v3, :cond_14e7

    .line 550
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_14e7

    .line 551
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_14e8

    :cond_14e7
    move v0, v9

    .line 553
    :goto_14e8
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 557
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDeveloperModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 561
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 560
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_1509
    if-eqz v3, :cond_1536

    .line 518
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1513

    goto/16 :goto_1536

    .line 521
    :cond_1513
    aget-object v0, v3, v9

    .line 522
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 521
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v0

    .line 525
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardShareAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 529
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 528
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    :cond_1536
    :goto_1536
    return-object v13

    .line 407
    :pswitch_1537
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 411
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBackgroundProcessLimitEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 415
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 414
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    :pswitch_1559
    if-eqz v3, :cond_158b

    .line 449
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1563

    goto/16 :goto_158b

    .line 452
    :cond_1563
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 453
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 452
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 455
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isCameraEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 459
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 458
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    :cond_158b
    :goto_158b
    return-object v13

    .line 394
    :pswitch_158c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 398
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBackgroundDataEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 402
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 401
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    :pswitch_15ae
    if-eqz v3, :cond_15e0

    .line 420
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_15b8

    goto/16 :goto_15e0

    .line 423
    :cond_15b8
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 424
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 423
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 427
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBackupAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 431
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 430
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    :cond_15e0
    :goto_15e0
    return-object v13

    :pswitch_15e1
    if-eqz v3, :cond_15f1

    .line 378
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15f1

    .line 379
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_15f2

    :cond_15f1
    move v0, v9

    .line 381
    :goto_15f2
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 385
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isAudioRecordAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 389
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 388
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    .line 464
    :pswitch_1614
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 468
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isCellularDataAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 472
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 471
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    :pswitch_1636
    if-eqz v3, :cond_167d

    .line 497
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ge v0, v10, :cond_1640

    goto/16 :goto_167d

    .line 500
    :cond_1640
    aget-object v0, v3, v9

    .line 501
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    aget-object v2, v3, v15

    .line 502
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 500
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v0

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemKnoxPolicyContract.RestrictionPolicy.CLIPBOARD_ALLOWED_AS_USER return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 512
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 511
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    :cond_167d
    :goto_167d
    return-object v13

    :pswitch_167e
    if-eqz v3, :cond_1699

    .line 477
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1688

    goto/16 :goto_1699

    .line 482
    :cond_1688
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 484
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 482
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_16a2

    .line 479
    :cond_1699
    :goto_1699
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 488
    :goto_16a2
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 492
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 491
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    .line 436
    :pswitch_16bb
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 440
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBluetoothTetheringEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 444
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 443
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16f8

    .line 598
    :pswitch_16dd
    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    .line 601
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDataSavingAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 605
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 604
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_16f8
    return-object v1

    :pswitch_16f9
    const-string/jumbo v1, "password_policy"

    .line 1922
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v1, :cond_2835

    if-eqz v2, :cond_2835

    .line 1924
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2abc

    goto/16 :goto_17af

    :sswitch_170f
    const-string/jumbo v5, "isBiometricAuthenticationEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_171a

    goto/16 :goto_17af

    :cond_171a
    const/16 v20, 0xa

    goto/16 :goto_17af

    :sswitch_171e
    const-string/jumbo v5, "isPasswordVisibilityEnabledAsUser"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1729

    goto/16 :goto_17af

    :cond_1729
    move/from16 v20, v16

    goto/16 :goto_17af

    :sswitch_172d
    const-string/jumbo v5, "isPasswordPatternMatched"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1738

    goto/16 :goto_17af

    :cond_1738
    move/from16 v20, v6

    goto/16 :goto_17af

    :sswitch_173c
    const-string/jumbo v5, "isBiometricAuthenticationEnabledAsUser"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1747

    goto/16 :goto_17af

    :cond_1747
    move/from16 v20, v17

    goto/16 :goto_17af

    :sswitch_174b
    const-string/jumbo v5, "isChangeRequested"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1756

    goto/16 :goto_17af

    :cond_1756
    move/from16 v20, v18

    goto/16 :goto_17af

    :sswitch_175a
    const-string v5, "getCurrentFailedPasswordAttempts"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1764

    goto/16 :goto_17af

    :cond_1764
    move/from16 v20, v19

    goto/16 :goto_17af

    :sswitch_1768
    const-string/jumbo v5, "getPasswordLockDelay"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1773

    goto/16 :goto_17af

    :cond_1773
    move/from16 v20, v7

    goto/16 :goto_17af

    :sswitch_1777
    const-string v5, "getMaximumFailedPasswordsForWipe"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1781

    goto/16 :goto_17af

    :cond_1781
    const/16 v20, 0x3

    goto/16 :goto_17af

    :sswitch_1785
    const-string/jumbo v5, "isPasswordVisibilityEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1790

    goto/16 :goto_17af

    :cond_1790
    move/from16 v20, v10

    goto/16 :goto_17af

    :sswitch_1794
    const-string/jumbo v5, "isExternalStorageForFailedPasswordsWipeExcluded"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_179f

    goto/16 :goto_17af

    :cond_179f
    move/from16 v20, v15

    goto/16 :goto_17af

    :sswitch_17a3
    const-string v5, "getMaximumFailedPasswordsForDisable"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17ad

    goto/16 :goto_17af

    :cond_17ad
    move/from16 v20, v9

    :goto_17af
    packed-switch v20, :pswitch_data_2aea

    return-object v13

    :pswitch_17b3
    if-eqz v3, :cond_17e5

    .line 1926
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_17bd

    goto/16 :goto_17e5

    .line 1929
    :cond_17bd
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 1931
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1929
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 1934
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBiometricAuthenticationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1939
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1938
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a9b

    :cond_17e5
    :goto_17e5
    return-object v13

    :pswitch_17e6
    if-eqz v3, :cond_1828

    .line 2044
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ge v0, v15, :cond_17f0

    goto/16 :goto_1828

    .line 2047
    :cond_17f0
    aget-object v0, v3, v9

    .line 2048
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2047
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v0

    .line 2050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPasswordVisibilityEnabledAsUser return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isPasswordVisibilityEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2057
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2056
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a9b

    :cond_1828
    :goto_1828
    return-object v13

    :pswitch_1829
    if-eqz v3, :cond_1857

    .line 2001
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1833

    goto/16 :goto_1857

    .line 2004
    :cond_1833
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordPatternMatched(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 2008
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isPasswordPatternMatched"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2013
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2012
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a9b

    :cond_1857
    :goto_1857
    return-object v13

    :pswitch_1858
    if-eqz v3, :cond_188b

    .line 1944
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gt v0, v15, :cond_1862

    goto/16 :goto_188b

    .line 1947
    :cond_1862
    aget-object v0, v3, v9

    .line 1948
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v2, v3, v15

    .line 1949
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1947
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v0

    .line 1950
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBiometricAuthenticationEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1954
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1953
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a9b

    :cond_188b
    :goto_188b
    return-object v13

    .line 1958
    :pswitch_188c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1962
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isChangeRequested"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Integer;

    .line 1967
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1966
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a9b

    .line 2138
    :pswitch_18ae
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentFailedPasswordAttemptsInternal(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2140
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v15, [Ljava/lang/String;

    aput-object v2, v3, v9

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Integer;

    .line 2144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2143
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a9b

    .line 2062
    :pswitch_18cd
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2066
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getPasswordLockDelay"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Integer;

    .line 2071
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2070
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a9b

    :pswitch_18ef
    if-eqz v3, :cond_1965

    .line 2104
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-ge v2, v15, :cond_18f9

    goto/16 :goto_1965

    .line 2108
    :cond_18f9
    aget-object v2, v3, v9

    if-nez v2, :cond_18ff

    goto/16 :goto_1903

    .line 2111
    :cond_18ff
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .line 2113
    :goto_1903
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_1930

    .line 2114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD user id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v15

    .line 2120
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2118
    invoke-virtual {v1, v0, v13}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0

    goto/16 :goto_1939

    .line 2122
    :cond_1930
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v13}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0

    .line 2126
    :goto_1939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getMaximumFailedPasswordsForWipe"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Integer;

    .line 2134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2133
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a9b

    :cond_1965
    :goto_1965
    return-object v13

    :pswitch_1966
    if-nez v3, :cond_1988

    .line 2019
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19b2

    .line 2025
    :cond_1988
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v9

    .line 2027
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2025
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v9

    .line 2029
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2028
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :goto_19b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPasswordVisibilityEnabled return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isPasswordVisibilityEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2038
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2037
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a9b

    :pswitch_19e0
    if-eqz v3, :cond_1a09

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD user id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v9

    .line 1979
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1977
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto/16 :goto_1a12

    .line 1981
    :cond_1a09
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1982
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1986
    :goto_1a12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isExternalStorageForFailedPasswordsWipeExcluded"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1996
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1995
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a9b

    :pswitch_1a3f
    if-eqz v3, :cond_1a68

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v9

    .line 2083
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2081
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    goto/16 :goto_1a71

    .line 2085
    :cond_1a68
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2089
    :goto_1a71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getMaximumFailedPasswordsForDisable"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Integer;

    .line 2099
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2098
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1a9b
    return-object v1

    :pswitch_1a9c
    const-string/jumbo v1, "password_policy"

    .line 1715
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v1, :cond_2835

    if-eqz v2, :cond_2835

    .line 1717
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2b04

    goto/16 :goto_1b5f

    :sswitch_1ab2
    const-string/jumbo v5, "hasMaxRepeatedCharacters"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1abd

    goto/16 :goto_1b5f

    :cond_1abd
    const/16 v20, 0xb

    goto/16 :goto_1b5f

    :sswitch_1ac1
    const-string/jumbo v5, "hasForbiddenNumericSequence"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1acc

    goto/16 :goto_1b5f

    :cond_1acc
    const/16 v20, 0xa

    goto/16 :goto_1b5f

    :sswitch_1ad0
    const-string/jumbo v5, "hasForbiddenCharacterSequence"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1adb

    goto/16 :goto_1b5f

    :cond_1adb
    move/from16 v20, v16

    goto/16 :goto_1b5f

    :sswitch_1adf
    const-string/jumbo v5, "hasForbiddenData"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1aea

    goto/16 :goto_1b5f

    :cond_1aea
    move/from16 v20, v6

    goto/16 :goto_1b5f

    :sswitch_1aee
    const-string/jumbo v5, "getPasswordChangeTimeout"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1af9

    goto/16 :goto_1b5f

    :cond_1af9
    move/from16 v20, v17

    goto/16 :goto_1b5f

    :sswitch_1afd
    const-string v5, "getForbiddenStrings"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b07

    goto/16 :goto_1b5f

    :cond_1b07
    move/from16 v20, v18

    goto/16 :goto_1b5f

    :sswitch_1b0b
    const-string/jumbo v5, "getRequiredPwdPatternRestrictions"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b16

    goto/16 :goto_1b5f

    :cond_1b16
    move/from16 v20, v19

    goto/16 :goto_1b5f

    :sswitch_1b1a
    const-string v5, "getMaximumCharacterOccurences"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b24

    goto/16 :goto_1b5f

    :cond_1b24
    move/from16 v20, v7

    goto/16 :goto_1b5f

    :sswitch_1b28
    const-string/jumbo v5, "hasForbiddenStringDistance"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b33

    goto/16 :goto_1b5f

    :cond_1b33
    const/16 v20, 0x3

    goto/16 :goto_1b5f

    :sswitch_1b37
    const-string v5, "getMaximumNumericSequenceLength"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b41

    goto/16 :goto_1b5f

    :cond_1b41
    move/from16 v20, v10

    goto/16 :goto_1b5f

    :sswitch_1b45
    const-string v5, "getMaximumCharacterSequenceLength"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b4f

    goto/16 :goto_1b5f

    :cond_1b4f
    move/from16 v20, v15

    goto/16 :goto_1b5f

    :sswitch_1b53
    const-string v5, "getMinimumCharacterChangeLength"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b5d

    goto/16 :goto_1b5f

    :cond_1b5d
    move/from16 v20, v9

    :goto_1b5f
    packed-switch v20, :pswitch_data_2b36

    return-object v13

    :pswitch_1b63
    if-eqz v3, :cond_1b91

    .line 1897
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1b6d

    goto/16 :goto_1b91

    .line 1900
    :cond_1b6d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1904
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "hasMaxRepeatedCharacters"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1909
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1908
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d68

    :cond_1b91
    :goto_1b91
    return-object v13

    :pswitch_1b92
    if-eqz v3, :cond_1bc0

    .line 1863
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1b9c

    goto/16 :goto_1bc0

    .line 1866
    :cond_1b9c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1870
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "hasForbiddenNumericSequence"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1875
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1874
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d68

    :cond_1bc0
    :goto_1bc0
    return-object v13

    :pswitch_1bc1
    if-eqz v3, :cond_1bef

    .line 1829
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1bcb

    goto/16 :goto_1bef

    .line 1832
    :cond_1bcb
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1836
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "hasForbiddenCharacterSequence"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1841
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1840
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d68

    :cond_1bef
    :goto_1bef
    return-object v13

    :pswitch_1bf0
    if-eqz v3, :cond_1c1e

    .line 1846
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1bfa

    goto/16 :goto_1c1e

    .line 1849
    :cond_1bfa
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1853
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "hasForbiddenData"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1858
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1857
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d68

    :cond_1c1e
    :goto_1c1e
    return-object v13

    .line 1798
    :pswitch_1c1f
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1802
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getPasswordChangeTimeout"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Integer;

    .line 1807
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1806
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d68

    :pswitch_1c41
    if-eqz v3, :cond_1c85

    .line 1719
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1c4b

    goto/16 :goto_1c85

    .line 1722
    :cond_1c4b
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 1723
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1722
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 1726
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getForbiddenStrings"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_1d68

    .line 1730
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d68

    .line 1733
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v15, [Ljava/lang/String;

    aput-object v2, v3, v9

    .line 1734
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1c71

    :cond_1c85
    :goto_1c85
    return-object v13

    :pswitch_1c86
    if-eqz v3, :cond_1cb4

    .line 1812
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1c90

    goto/16 :goto_1cb4

    .line 1815
    :cond_1c90
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 1816
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1815
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v0

    .line 1819
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getRequiredPwdPatternRestrictions"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/String;

    aput-object v0, v2, v9

    .line 1823
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d68

    :cond_1cb4
    :goto_1cb4
    return-object v13

    .line 1742
    :pswitch_1cb5
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1746
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getMaximumCharacterOccurences"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Integer;

    .line 1751
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1750
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d68

    :pswitch_1cd6
    if-eqz v3, :cond_1d06

    .line 1880
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gt v0, v15, :cond_1ce0

    goto/16 :goto_1d06

    .line 1883
    :cond_1ce0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    aget-object v3, v3, v15

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1887
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "hasForbiddenStringDistance"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 1892
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1891
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d68

    :cond_1d06
    :goto_1d06
    return-object v13

    .line 1770
    :pswitch_1d07
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1774
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getMaximumNumericSequenceLength"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Integer;

    .line 1779
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1778
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d68

    .line 1756
    :pswitch_1d28
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1760
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getMaximumCharacterSequenceLength"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Integer;

    .line 1765
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1764
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d68

    .line 1784
    :pswitch_1d49
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1788
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getMinimumCharacterChangeLength"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Integer;

    .line 1793
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    .line 1792
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1d68
    :goto_1d68
    return-object v1

    :pswitch_1d69
    const-string/jumbo v1, "location_policy"

    .line 2623
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/location/LocationPolicy;

    if-eqz v1, :cond_2835

    if-eqz v2, :cond_2835

    .line 2625
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2b52

    goto/16 :goto_1daa

    :sswitch_1d7f
    const-string/jumbo v6, "isLocationProviderBlocked"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d8a

    goto/16 :goto_1daa

    :cond_1d8a
    move/from16 v20, v10

    goto/16 :goto_1daa

    :sswitch_1d8e
    const-string/jumbo v6, "isGPSStateChangeAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d99

    goto/16 :goto_1daa

    :cond_1d99
    move/from16 v20, v15

    goto/16 :goto_1daa

    :sswitch_1d9d
    const-string/jumbo v6, "isLocationProviderBlockedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1da8

    goto/16 :goto_1daa

    :cond_1da8
    move/from16 v20, v9

    :goto_1daa
    packed-switch v20, :pswitch_data_2b60

    return-object v13

    :pswitch_1dae
    if-eqz v3, :cond_1dd7

    .line 2627
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1db8

    goto/16 :goto_1dd7

    .line 2630
    :cond_1db8
    aget-object v0, v3, v9

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v0

    .line 2633
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLocationProviderBlocked"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2638
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2637
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1e56

    :cond_1dd7
    :goto_1dd7
    return-object v13

    .line 2672
    :pswitch_1dd8
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2676
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGPSStateChangeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2681
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2680
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1e56

    :pswitch_1dfa
    if-eqz v3, :cond_1e57

    .line 2643
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-ge v2, v15, :cond_1e04

    goto/16 :goto_1e57

    .line 2646
    :cond_1e04
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_1e39

    .line 2647
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1e31

    .line 2649
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 2650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLocationProviderBlockedAsUser using userId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " instead of UserHandle.USER_CURRENT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    :cond_1e31
    aget-object v2, v3, v9

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    goto/16 :goto_1e3f

    .line 2657
    :cond_1e39
    aget-object v0, v3, v9

    invoke-virtual {v1, v0, v5}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 2662
    :goto_1e3f
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLocationProviderBlockedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2667
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2666
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1e56
    return-object v1

    :cond_1e57
    :goto_1e57
    return-object v13

    :pswitch_1e58
    const-string v1, "browser_policy"

    .line 2817
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy;

    const-string/jumbo v5, "misc_policy"

    .line 2819
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v1, :cond_2835

    if-eqz v2, :cond_2835

    if-eqz v5, :cond_2835

    .line 2821
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2b6a

    :goto_1e76
    move/from16 v7, v20

    goto/16 :goto_1eb6

    :sswitch_1e7a
    const-string/jumbo v6, "getURLFilterReportEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1eb6

    goto :goto_1e76

    :sswitch_1e84
    const-string/jumbo v6, "isUrlBlocked"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e8e

    goto :goto_1e76

    :cond_1e8e
    const/4 v7, 0x3

    goto/16 :goto_1eb6

    :sswitch_1e91
    const-string/jumbo v6, "getURLFilterEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e9b

    goto :goto_1e76

    :cond_1e9b
    move v7, v10

    goto/16 :goto_1eb6

    :sswitch_1e9e
    const-string/jumbo v6, "isGlobalProxyAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ea8

    goto :goto_1e76

    :cond_1ea8
    move v7, v15

    goto/16 :goto_1eb6

    :sswitch_1eab
    const-string/jumbo v6, "getURLFilterList"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1eb5

    goto :goto_1e76

    :cond_1eb5
    move v7, v9

    :cond_1eb6
    :goto_1eb6
    packed-switch v7, :pswitch_data_2b80

    return-object v13

    .line 2867
    :pswitch_1eba
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2868
    invoke-virtual {v1, v0, v15, v9}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2872
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getURLFilterReportEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    aput-object v0, v2, v9

    .line 2876
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f7f

    :pswitch_1edc
    if-eqz v3, :cond_1f0a

    .line 2882
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1ee6

    goto/16 :goto_1f0a

    .line 2885
    :cond_1ee6
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2890
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUrlBlocked"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    aput-object v0, v2, v9

    .line 2894
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f7f

    :cond_1f0a
    :goto_1f0a
    return-object v13

    .line 2825
    :pswitch_1f0b
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2826
    invoke-virtual {v1, v0, v15, v9}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    .line 2830
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getURLFilterEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2835
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2834
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f7f

    .line 2900
    :pswitch_1f2d
    invoke-virtual {v5}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2903
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGlobalProxyAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    aput-object v0, v2, v9

    .line 2907
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f7f

    .line 2843
    :pswitch_1f4a
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2844
    invoke-virtual {v1, v0, v15, v9}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v0

    .line 2847
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getURLFilterList"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_1f7f

    .line 2852
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f7f

    .line 2855
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v3, v15, [Ljava/lang/String;

    aput-object v2, v3, v9

    .line 2856
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1f6b

    :cond_1f7f
    :goto_1f7f
    return-object v1

    :pswitch_1f80
    const-string v1, "certificate_policy"

    .line 1522
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v1, :cond_2835

    if-eqz v2, :cond_2835

    .line 1524
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_2b8e

    goto/16 :goto_2037

    :sswitch_1f95
    const-string/jumbo v6, "isRevocationCheckEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1fa0

    goto/16 :goto_2037

    :cond_1fa0
    const/16 v20, 0xa

    goto/16 :goto_2037

    :sswitch_1fa4
    const-string/jumbo v6, "validateChainAtInstall"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1faf

    goto/16 :goto_2037

    :cond_1faf
    move/from16 v20, v16

    goto/16 :goto_2037

    :sswitch_1fb3
    const-string/jumbo v7, "notifyCertificateFailure"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1fbe

    goto/16 :goto_2037

    :cond_1fbe
    move/from16 v20, v6

    goto/16 :goto_2037

    :sswitch_1fc2
    const-string/jumbo v6, "isSignatureIdentityInformationEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1fcd

    goto/16 :goto_2037

    :cond_1fcd
    move/from16 v20, v17

    goto/16 :goto_2037

    :sswitch_1fd1
    const-string/jumbo v6, "isCaCertificateDisabledAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1fdc

    goto/16 :goto_2037

    :cond_1fdc
    move/from16 v20, v18

    goto/16 :goto_2037

    :sswitch_1fe0
    const-string v6, "getIdentitiesFromSignatures"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1fea

    goto/16 :goto_2037

    :cond_1fea
    move/from16 v20, v19

    goto/16 :goto_2037

    :sswitch_1fee
    const-string/jumbo v6, "isCaCertificateTrustedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ff9

    goto/16 :goto_2037

    :cond_1ff9
    move/from16 v20, v7

    goto/16 :goto_2037

    :sswitch_1ffd
    const-string/jumbo v6, "isUserRemoveCertificatesAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2008

    goto/16 :goto_2037

    :cond_2008
    const/16 v20, 0x3

    goto/16 :goto_2037

    :sswitch_200c
    const-string/jumbo v6, "isOcspCheckEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2017

    goto/16 :goto_2037

    :cond_2017
    move/from16 v20, v10

    goto/16 :goto_2037

    :sswitch_201b
    const-string/jumbo v6, "validateCertificateAtInstall"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2026

    goto/16 :goto_2037

    :cond_2026
    move/from16 v20, v15

    goto/16 :goto_2037

    :sswitch_202a
    const-string/jumbo v6, "isCertificateValidationAtInstallEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2035

    goto/16 :goto_2037

    :cond_2035
    move/from16 v20, v9

    :goto_2037
    packed-switch v20, :pswitch_data_2bbc

    goto/16 :goto_224d

    .line 1641
    :pswitch_203c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1644
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isRevocationCheckEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 1649
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 1648
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_224d

    :pswitch_205e
    if-eqz v3, :cond_208d

    .line 1694
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2068

    goto/16 :goto_208d

    .line 1697
    :cond_2068
    aget-object v0, v3, v9

    .line 1698
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1697
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v0

    .line 1701
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "validateChainAtInstall"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Integer;

    .line 1706
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v9

    .line 1705
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_224d

    :cond_208d
    :goto_208d
    return-object v13

    :pswitch_208e
    if-eqz v3, :cond_20a7

    .line 1633
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gt v0, v10, :cond_2098

    goto/16 :goto_20a7

    .line 1636
    :cond_2098
    aget-object v0, v3, v9

    aget-object v2, v3, v15

    aget-object v3, v3, v10

    .line 1637
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1636
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_224d

    :cond_20a7
    :goto_20a7
    return-object v13

    :pswitch_20a8
    if-eqz v3, :cond_20da

    .line 1592
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_20b2

    goto/16 :goto_20da

    .line 1595
    :cond_20b2
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 1597
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1595
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1599
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isSignatureIdentityInformationEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 1604
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 1603
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_224d

    :cond_20da
    :goto_20da
    return-object v13

    :pswitch_20db
    if-eqz v3, :cond_2110

    .line 1548
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_20e5

    goto/16 :goto_2110

    .line 1552
    :cond_20e5
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-le v0, v15, :cond_20f1

    .line 1553
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1555
    :cond_20f1
    aget-object v0, v3, v9

    invoke-virtual {v1, v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 1559
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isCaCertificateDisabledAsUser"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 1564
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 1563
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_224d

    :cond_2110
    :goto_2110
    return-object v13

    :pswitch_2111
    if-eqz v3, :cond_215f

    .line 1608
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_211b

    goto/16 :goto_215f

    .line 1611
    :cond_211b
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v9

    .line 1614
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Signature;

    .line 1611
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v0

    .line 1617
    new-instance v13, Landroid/database/MatrixCursor;

    const-string v1, "getIdentitiesFromSignatures"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_224d

    .line 1621
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_224d

    .line 1623
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2143
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_224d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1624
    array-length v2, v1

    move v3, v9

    :goto_2151
    if-ge v3, v2, :cond_2143

    aget-object v4, v1, v3

    new-array v5, v15, [Ljava/lang/String;

    aput-object v4, v5, v9

    .line 1625
    invoke-virtual {v13, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2151

    :cond_215f
    :goto_215f
    return-object v13

    :pswitch_2160
    if-eqz v3, :cond_21a1

    .line 1526
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-gt v2, v15, :cond_216a

    goto/16 :goto_21a1

    .line 1530
    :cond_216a
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-le v0, v10, :cond_2176

    .line 1531
    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1533
    :cond_2176
    aget-object v0, v3, v9

    .line 1534
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    aget-object v2, v3, v15

    .line 1536
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1533
    invoke-virtual {v1, v0, v2, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZI)Z

    move-result v0

    .line 1539
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isCaCertificateTrustedAsUser"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 1544
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 1543
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_224d

    :cond_21a1
    :goto_21a1
    return-object v13

    :pswitch_21a2
    if-eqz v3, :cond_21aa

    .line 1570
    array-length v0, v3

    if-ne v0, v15, :cond_21aa

    move v0, v15

    goto/16 :goto_21ab

    :cond_21aa
    move v0, v9

    :goto_21ab
    if-eqz v0, :cond_21b9

    .line 1573
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1575
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v0

    goto/16 :goto_21c2

    .line 1577
    :cond_21b9
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1578
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1583
    :goto_21c2
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isUserRemoveCertificatesAllowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 1588
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 1587
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_224d

    .line 1653
    :pswitch_21db
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1656
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isOcspCheckEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 1661
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 1660
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_224d

    :pswitch_21fd
    if-eqz v3, :cond_222c

    .line 1678
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2207

    goto/16 :goto_222c

    .line 1681
    :cond_2207
    aget-object v0, v3, v9

    .line 1682
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 1681
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstall(Lcom/samsung/android/knox/keystore/CertificateInfo;)I

    move-result v0

    .line 1685
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "validateCertificateAtInstall"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Integer;

    .line 1690
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v9

    .line 1689
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_224d

    :cond_222c
    :goto_222c
    return-object v13

    .line 1665
    :pswitch_222d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1669
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isCertificateValidationAtInstallEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 1674
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 1673
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_224d
    :goto_224d
    return-object v13

    :pswitch_224e
    const-string v0, "browser_policy"

    .line 2157
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v0, :cond_2835

    if-eqz v2, :cond_2835

    .line 2160
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2bd6

    :goto_2261
    move/from16 v19, v20

    goto/16 :goto_22ae

    :sswitch_2265
    const-string v1, "getCookiesSetting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22ae

    goto :goto_2261

    :sswitch_226e
    const-string v1, "getHttpProxy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2277

    goto :goto_2261

    :cond_2277
    move/from16 v19, v7

    goto/16 :goto_22ae

    :sswitch_227b
    const-string v1, "getJavaScriptSetting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2284

    goto :goto_2261

    :cond_2284
    const/16 v19, 0x3

    goto/16 :goto_22ae

    :sswitch_2288
    const-string v1, "getAutoFillSetting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2291

    goto :goto_2261

    :cond_2291
    move/from16 v19, v10

    goto/16 :goto_22ae

    :sswitch_2295
    const-string/jumbo v1, "getPopupsSetting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_229f

    goto :goto_2261

    :cond_229f
    move/from16 v19, v15

    goto/16 :goto_22ae

    :sswitch_22a3
    const-string v1, "getForceFraudWarningSetting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22ac

    goto :goto_2261

    :cond_22ac
    move/from16 v19, v9

    :cond_22ae
    :goto_22ae
    packed-switch v19, :pswitch_data_2bf0

    return-object v13

    .line 2192
    :pswitch_22b2
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 2197
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getCookiesSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2201
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2200
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2373

    .line 2162
    :pswitch_22d3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    .line 2165
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getHttpProxy"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/String;

    aput-object v0, v2, v9

    .line 2168
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2373

    .line 2207
    :pswitch_22f0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 2212
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getJavaScriptSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2217
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2216
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2373

    .line 2175
    :pswitch_2311
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 2180
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getAutoFillSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2185
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2184
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2373

    .line 2224
    :pswitch_2332
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 2229
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getPopupsSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2233
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2232
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2373

    .line 2239
    :pswitch_2354
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 2244
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getForceFraudWarningSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2248
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2247
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2373
    return-object v1

    :pswitch_2374
    if-eqz v2, :cond_2835

    .line 2406
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2c00

    :goto_237d
    move/from16 v16, v20

    goto/16 :goto_2400

    :sswitch_2381
    const-string v1, "bluetoothLogForRemote"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2400

    goto :goto_237d

    :sswitch_238a
    const-string v1, "bluetoothLogForDevice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2393

    goto :goto_237d

    :cond_2393
    move/from16 v16, v6

    goto/16 :goto_2400

    :sswitch_2397
    const-string/jumbo v1, "isSocketAllowedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23a1

    goto :goto_237d

    :cond_23a1
    move/from16 v16, v17

    goto/16 :goto_2400

    :sswitch_23a5
    const-string/jumbo v1, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23af

    goto :goto_237d

    :cond_23af
    move/from16 v16, v18

    goto/16 :goto_2400

    :sswitch_23b3
    const-string v1, "bluetoothSocketLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23bc

    goto :goto_237d

    :cond_23bc
    move/from16 v16, v19

    goto/16 :goto_2400

    :sswitch_23c0
    const-string/jumbo v1, "isPairingAllowedbySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23ca

    goto :goto_237d

    :cond_23ca
    move/from16 v16, v7

    goto/16 :goto_2400

    :sswitch_23ce
    const-string/jumbo v1, "isHeadsetAllowedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23d8

    goto :goto_237d

    :cond_23d8
    const/16 v16, 0x3

    goto/16 :goto_2400

    :sswitch_23dc
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23e3

    goto :goto_237d

    :cond_23e3
    move/from16 v16, v10

    goto/16 :goto_2400

    :sswitch_23e7
    const-string v1, "bluetoothLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23f0

    goto :goto_237d

    :cond_23f0
    move/from16 v16, v15

    goto/16 :goto_2400

    :sswitch_23f4
    const-string/jumbo v1, "isProfileAuthorizedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23fe

    goto :goto_237d

    :cond_23fe
    move/from16 v16, v9

    :cond_2400
    :goto_2400
    packed-switch v16, :pswitch_data_2c2a

    goto/16 :goto_25d4

    :pswitch_2405
    if-eqz v3, :cond_2421

    .line 2521
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2421

    .line 2522
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_2416

    goto/16 :goto_2421

    .line 2525
    :cond_2416
    aget-object v0, v3, v9

    aget-object v1, v3, v15

    aget-object v2, v3, v10

    invoke-static {v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25d4

    :cond_2421
    :goto_2421
    return-object v13

    :pswitch_2422
    if-eqz v3, :cond_2468

    .line 2529
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2468

    .line 2530
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_2433

    goto/16 :goto_2468

    .line 2533
    :cond_2433
    aget-object v0, v3, v10

    if-nez v0, :cond_2444

    .line 2534
    aget-object v0, v3, v9

    aget-object v1, v3, v15

    .line 2535
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2534
    invoke-static {v0, v1, v13}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_25d4

    .line 2537
    :cond_2444
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2461

    .line 2538
    aget-object v0, v3, v9

    aget-object v1, v3, v15

    .line 2539
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2540
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 2538
    invoke-static {v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_25d4

    :cond_2461
    const-string v0, "BluetoothAdapter is null"

    .line 2543
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25d4

    :cond_2468
    :goto_2468
    return-object v13

    :pswitch_2469
    if-eqz v3, :cond_24ad

    .line 2469
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2474

    goto/16 :goto_24ad

    .line 2473
    :cond_2474
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    aget-object v2, v3, v9

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    aget-object v2, v3, v15

    .line 2475
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v4, v3, v10

    .line 2476
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v3, v1

    .line 2477
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    .line 2472
    invoke-static {v0, v2, v4, v1}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v0

    .line 2479
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isSocketAllowedBySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 2484
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 2483
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25d4

    :cond_24ad
    :goto_24ad
    return-object v13

    :pswitch_24ae
    if-eqz v3, :cond_24db

    .line 2498
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_24b8

    goto/16 :goto_24db

    .line 2501
    :cond_24b8
    aget-object v0, v3, v9

    .line 2502
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2501
    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z

    move-result v0

    .line 2505
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 2510
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 2509
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25d4

    :cond_24db
    :goto_24db
    return-object v13

    :pswitch_24dc
    if-eqz v3, :cond_2504

    .line 2488
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_24e7

    goto/16 :goto_2504

    .line 2491
    :cond_24e7
    aget-object v0, v3, v9

    .line 2492
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    aget-object v4, v3, v15

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    aget-object v4, v3, v10

    .line 2494
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v3, v1

    .line 2495
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2491
    invoke-static {v0, v2, v4, v1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_25d4

    :cond_2504
    :goto_2504
    return-object v13

    :pswitch_2505
    if-eqz v3, :cond_2542

    .line 2436
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_250f

    goto/16 :goto_2542

    .line 2439
    :cond_250f
    aget-object v0, v3, v9

    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v0

    .line 2441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PAIRINGALLOWEDBYSECURITY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isPairingAllowedbySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 2448
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 2447
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25d4

    :cond_2542
    :goto_2542
    return-object v13

    :pswitch_2543
    if-eqz v3, :cond_2574

    .line 2452
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_254d

    goto/16 :goto_2574

    .line 2456
    :cond_254d
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    aget-object v1, v3, v9

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2455
    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 2460
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isHeadsetAllowedBySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 2465
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 2464
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25d4

    :cond_2574
    :goto_2574
    return-object v13

    .line 2424
    :pswitch_2575
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    .line 2427
    new-instance v13, Landroid/database/MatrixCursor;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 2432
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 2431
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25d4

    :pswitch_258f
    if-eqz v3, :cond_25a8

    .line 2514
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lt v0, v10, :cond_25a8

    .line 2515
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_259f

    goto/16 :goto_25a8

    .line 2518
    :cond_259f
    aget-object v0, v3, v9

    aget-object v1, v3, v15

    invoke-static {v0, v1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25d4

    :cond_25a8
    :goto_25a8
    return-object v13

    :pswitch_25a9
    if-eqz v3, :cond_25d4

    .line 2408
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_25b3

    goto/16 :goto_25d4

    .line 2411
    :cond_25b3
    aget-object v0, v3, v9

    .line 2412
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 2411
    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 2415
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isProfileAuthorizedBySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v15, [Ljava/lang/Boolean;

    .line 2420
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 2419
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_25d4
    :goto_25d4
    return-object v13

    :pswitch_25d5
    const/4 v1, 0x3

    const-string v5, "bluetooth_policy"

    .line 2263
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v5, :cond_2835

    if-eqz v2, :cond_2835

    .line 2265
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_2c42

    :goto_25e9
    move/from16 v17, v20

    goto/16 :goto_2661

    :sswitch_25ed
    const-string/jumbo v1, "isOutgoingCallsAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25f7

    goto :goto_25e9

    :cond_25f7
    move/from16 v17, v6

    goto/16 :goto_2661

    :sswitch_25fb
    const-string/jumbo v1, "isLimitedDiscoverableEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2661

    goto :goto_25e9

    :sswitch_2605
    const-string/jumbo v1, "isBLEAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_260f

    goto :goto_25e9

    :cond_260f
    move/from16 v17, v18

    goto/16 :goto_2661

    :sswitch_2613
    const-string/jumbo v1, "isDiscoverableEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_261d

    goto :goto_25e9

    :cond_261d
    move/from16 v17, v19

    goto/16 :goto_2661

    :sswitch_2621
    const-string/jumbo v1, "isDesktopConnectivityEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_262b

    goto :goto_25e9

    :cond_262b
    move/from16 v17, v7

    goto/16 :goto_2661

    :sswitch_262f
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2636

    goto :goto_25e9

    :cond_2636
    move/from16 v17, v1

    goto/16 :goto_2661

    :sswitch_263a
    const-string v1, "bluetoothLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2643

    goto :goto_25e9

    :cond_2643
    move/from16 v17, v10

    goto/16 :goto_2661

    :sswitch_2647
    const-string/jumbo v1, "isBluetoothEnabledWithMsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2651

    goto :goto_25e9

    :cond_2651
    move/from16 v17, v15

    goto/16 :goto_2661

    :sswitch_2655
    const-string/jumbo v1, "isBluetoothEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_265f

    goto :goto_25e9

    :cond_265f
    move/from16 v17, v9

    :cond_2661
    :goto_2661
    packed-switch v17, :pswitch_data_2c68

    return-object v13

    :pswitch_2665
    if-eqz v3, :cond_26a7

    .line 2298
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_266f

    goto/16 :goto_26a7

    .line 2301
    :cond_266f
    aget-object v0, v3, v9

    .line 2302
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2301
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v0

    .line 2303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOutgoingCallsAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isOutgoingCallsAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2310
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2309
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2803

    :cond_26a7
    :goto_26a7
    return-object v13

    .line 2315
    :pswitch_26a8
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2319
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLimitedDiscoverableEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2324
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2323
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2803

    .line 2386
    :pswitch_26ca
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2389
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBLEAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2394
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2393
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2803

    .line 2328
    :pswitch_26ec
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2332
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDiscoverableEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2337
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2336
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2803

    :pswitch_270e
    if-eqz v3, :cond_273b

    .line 2341
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2718

    goto/16 :goto_273b

    .line 2344
    :cond_2718
    aget-object v0, v3, v9

    .line 2345
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2344
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v0

    .line 2348
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDesktopConnectivityEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2353
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2352
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2803

    :cond_273b
    :goto_273b
    return-object v13

    .line 2373
    :pswitch_273c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2377
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2382
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2381
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2803

    :pswitch_275b
    if-eqz v3, :cond_278a

    .line 2357
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ge v0, v10, :cond_2765

    goto/16 :goto_278a

    .line 2360
    :cond_2765
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v1, v3, v9

    aget-object v2, v3, v15

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2364
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "bluetoothLog"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2369
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2368
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2803

    :cond_278a
    :goto_278a
    return-object v13

    :pswitch_278b
    if-eqz v3, :cond_27cd

    .line 2281
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2795

    goto/16 :goto_27cd

    .line 2284
    :cond_2795
    aget-object v0, v3, v9

    .line 2285
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2284
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result v0

    .line 2286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBluetoothEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBluetoothEnabledWithMsg"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2293
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2292
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2803

    :cond_27cd
    :goto_27cd
    return-object v13

    .line 2267
    :pswitch_27ce
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBluetoothEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBluetoothEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2276
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2275
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2803
    return-object v1

    :pswitch_2804
    const-string v0, "auditlog"

    .line 2694
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v0, :cond_2835

    if-eqz v2, :cond_2835

    const-string/jumbo v1, "isAuditLogEnabled"

    .line 2697
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2835

    .line 2700
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v0

    .line 2704
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isAuditLogEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Boolean;

    .line 2708
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 2707
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_2835
    :goto_2835
    return-object v13

    :pswitch_data_2836
    .packed-switch 0x2
        :pswitch_2804
        :pswitch_25d5
        :pswitch_2374
        :pswitch_224e
        :pswitch_1f80
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_1e58
        :pswitch_6d
        :pswitch_1d69
        :pswitch_1a9c
        :pswitch_16f9
        :pswitch_1273
        :pswitch_d85
        :pswitch_90a
        :pswitch_51d
        :pswitch_44d
        :pswitch_3db
        :pswitch_6d
        :pswitch_36c
        :pswitch_6d
        :pswitch_30d
        :pswitch_6d
        :pswitch_2db
        :pswitch_200
        :pswitch_6d
        :pswitch_6d
        :pswitch_a1
        :pswitch_6f
    .end packed-switch

    :sswitch_data_2876
    .sparse-switch
        -0x6a3a5990 -> :sswitch_11c
        -0x55af2a6c -> :sswitch_10f
        -0x4e3d6d40 -> :sswitch_102
        -0x499d26f4 -> :sswitch_f5
        -0x30c133a0 -> :sswitch_e8
        -0x2b582cae -> :sswitch_db
        0x5be9d3d -> :sswitch_ce
        0x5bb25232 -> :sswitch_c4
        0x7f319452 -> :sswitch_b6
    .end sparse-switch

    :pswitch_data_289c
    .packed-switch 0x0
        :pswitch_1e7
        :pswitch_1e2
        :pswitch_1c8
        :pswitch_1be
        :pswitch_1a4
        :pswitch_18a
        :pswitch_170
        :pswitch_138
        :pswitch_132
    .end packed-switch

    :sswitch_data_28b2
    .sparse-switch
        -0x35a747d7 -> :sswitch_244
        0x1020174d -> :sswitch_238
        0x1220385a -> :sswitch_22c
        0x4f30b64f -> :sswitch_220
        0x78c697e8 -> :sswitch_216
    .end sparse-switch

    :pswitch_data_28c8
    .packed-switch 0x0
        :pswitch_2bf
        :pswitch_2a3
        :pswitch_28b
        :pswitch_26f
        :pswitch_253
    .end packed-switch

    :sswitch_data_28d6
    .sparse-switch
        -0x3edf31d1 -> :sswitch_489
        -0x15a386e9 -> :sswitch_47c
        -0xc145ad8 -> :sswitch_46f
        0x4744a7b8 -> :sswitch_462
    .end sparse-switch

    :pswitch_data_28e8
    .packed-switch 0x0
        :pswitch_4fc
        :pswitch_4db
        :pswitch_4ba
        :pswitch_499
    .end packed-switch

    :sswitch_data_28f4
    .sparse-switch
        -0x6a3a5990 -> :sswitch_617
        -0x562f9482 -> :sswitch_60a
        -0x4e3d6d40 -> :sswitch_5fd
        -0x460411da -> :sswitch_5f0
        -0x39b5211e -> :sswitch_5e3
        -0x37226d22 -> :sswitch_5d5
        -0x3581de92 -> :sswitch_5c7
        -0x30c133a0 -> :sswitch_5b9
        -0x28516cec -> :sswitch_5ae
        -0x9cfa0f0 -> :sswitch_5a0
        -0x4e1daa7 -> :sswitch_592
        -0x4445baa -> :sswitch_584
        -0xebe1ca -> :sswitch_577
        0x12bbc810 -> :sswitch_569
        0x5f1771f4 -> :sswitch_55b
        0x730fdeab -> :sswitch_54d
        0x75020c0f -> :sswitch_540
        0x788dd2ce -> :sswitch_532
    .end sparse-switch

    :pswitch_data_293e
    .packed-switch 0x0
        :pswitch_8f1
        :pswitch_8c0
        :pswitch_88f
        :pswitch_85d
        :pswitch_81e
        :pswitch_7fc
        :pswitch_7da
        :pswitch_7a8
        :pswitch_786
        :pswitch_76f
        :pswitch_74d
        :pswitch_72e
        :pswitch_6fa
        :pswitch_6d8
        :pswitch_6a6
        :pswitch_684
        :pswitch_652
        :pswitch_627
    .end packed-switch

    :sswitch_data_2966
    .sparse-switch
        -0x6c43a0eb -> :sswitch_a05
        -0x5eef4930 -> :sswitch_9f8
        -0x57f5d70e -> :sswitch_9eb
        -0x55af2a6c -> :sswitch_9de
        -0x42b9a7be -> :sswitch_9d1
        -0x3d0295e2 -> :sswitch_9c3
        -0x331a660a -> :sswitch_9b5
        -0x2873ac11 -> :sswitch_9a7
        -0x1ad99baa -> :sswitch_99c
        -0x10b8615d -> :sswitch_98e
        -0x53b1dd2 -> :sswitch_980
        0x21990efc -> :sswitch_972
        0x3e90c48d -> :sswitch_964
        0x405a90ec -> :sswitch_956
        0x53ef861d -> :sswitch_948
        0x5bb25232 -> :sswitch_93a
        0x6bef28f1 -> :sswitch_92d
        0x7c45f31f -> :sswitch_91f
    .end sparse-switch

    :pswitch_data_29b0
    .packed-switch 0x0
        :pswitch_d4e
        :pswitch_d1d
        :pswitch_ce3
        :pswitch_cc9
        :pswitch_ca7
        :pswitch_c86
        :pswitch_c64
        :pswitch_c1d
        :pswitch_bf0
        :pswitch_bce
        :pswitch_bac
        :pswitch_b7a
        :pswitch_b58
        :pswitch_b26
        :pswitch_af9
        :pswitch_aab
        :pswitch_a79
        :pswitch_a15
    .end packed-switch

    :sswitch_data_29d8
    .sparse-switch
        -0x74a4d725 -> :sswitch_e71
        -0x71206782 -> :sswitch_e64
        -0x6c0db8af -> :sswitch_e57
        -0x694bd3d6 -> :sswitch_e4a
        -0x553c4d53 -> :sswitch_e3d
        -0x4d525a40 -> :sswitch_e2f
        -0x4406e5f2 -> :sswitch_e21
        -0x39e13355 -> :sswitch_e13
        -0x2de531be -> :sswitch_e09
        -0x1ab59b72 -> :sswitch_dfb
        -0xa2586fa -> :sswitch_ded
        0x5ad79eb -> :sswitch_ddf
        0x5be9d3d -> :sswitch_dd1
        0x26581d58 -> :sswitch_dc3
        0x36e6d3e0 -> :sswitch_db5
        0x4bd14915 -> :sswitch_da7
        0x6c3b6517 -> :sswitch_d9a
    .end sparse-switch

    :pswitch_data_2a1e
    .packed-switch 0x0
        :pswitch_125d
        :pswitch_123b
        :pswitch_121a
        :pswitch_11d3
        :pswitch_116f
        :pswitch_113d
        :pswitch_110b
        :pswitch_10d9
        :pswitch_1076
        :pswitch_1044
        :pswitch_1010
        :pswitch_fdd
        :pswitch_fab
        :pswitch_f34
        :pswitch_f1d
        :pswitch_efb
        :pswitch_e87
    .end packed-switch

    :sswitch_data_2a44
    .sparse-switch
        -0x657fd646 -> :sswitch_137f
        -0x5d9fe8ab -> :sswitch_1371
        -0x5c7edb84 -> :sswitch_1363
        -0x4bfd3947 -> :sswitch_1355
        -0x38cefab6 -> :sswitch_1348
        -0x36978d55 -> :sswitch_133a
        -0x34742384 -> :sswitch_132c
        -0x2d47f4e1 -> :sswitch_131e
        -0x2b582cae -> :sswitch_1313
        0x3e05fd -> :sswitch_1304
        0x7ed85f2 -> :sswitch_12f6
        0x2ea4b8a5 -> :sswitch_12e8
        0x3593cbd4 -> :sswitch_12da
        0x3d337bfd -> :sswitch_12cc
        0x4ef9c1f9 -> :sswitch_12be
        0x64034c9f -> :sswitch_12b0
        0x71560275 -> :sswitch_12a3
        0x77163a49 -> :sswitch_1295
        0x7e3d73d9 -> :sswitch_1288
    .end sparse-switch

    :pswitch_data_2a92
    .packed-switch 0x0
        :pswitch_16dd
        :pswitch_16bb
        :pswitch_167e
        :pswitch_1636
        :pswitch_1614
        :pswitch_15e1
        :pswitch_15ae
        :pswitch_158c
        :pswitch_1559
        :pswitch_1537
        :pswitch_1509
        :pswitch_14d7
        :pswitch_14a4
        :pswitch_1471
        :pswitch_144f
        :pswitch_1408
        :pswitch_13e6
        :pswitch_13b8
        :pswitch_138f
    .end packed-switch

    :sswitch_data_2abc
    .sparse-switch
        -0x4e857510 -> :sswitch_17a3
        -0x1c894ef7 -> :sswitch_1794
        -0xe2e3396 -> :sswitch_1785
        -0x9b47ac1 -> :sswitch_1777
        0x17f43207 -> :sswitch_1768
        0x234b9a81 -> :sswitch_175a
        0x48803b14 -> :sswitch_174b
        0x4e20b298 -> :sswitch_173c
        0x60a98cb9 -> :sswitch_172d
        0x65054427 -> :sswitch_171e
        0x75f9239b -> :sswitch_170f
    .end sparse-switch

    :pswitch_data_2aea
    .packed-switch 0x0
        :pswitch_1a3f
        :pswitch_19e0
        :pswitch_1966
        :pswitch_18ef
        :pswitch_18cd
        :pswitch_18ae
        :pswitch_188c
        :pswitch_1858
        :pswitch_1829
        :pswitch_17e6
        :pswitch_17b3
    .end packed-switch

    :sswitch_data_2b04
    .sparse-switch
        -0x7f91d479 -> :sswitch_1b53
        -0x7c284bba -> :sswitch_1b45
        -0x6f335556 -> :sswitch_1b37
        -0x4cb7d87b -> :sswitch_1b28
        -0x2d0cb7a5 -> :sswitch_1b1a
        0xdc5fecf -> :sswitch_1b0b
        0x33b94bbf -> :sswitch_1afd
        0x367ce700 -> :sswitch_1aee
        0x465482c9 -> :sswitch_1adf
        0x552e154b -> :sswitch_1ad0
        0x69712d6f -> :sswitch_1ac1
        0x6ab4c78e -> :sswitch_1ab2
    .end sparse-switch

    :pswitch_data_2b36
    .packed-switch 0x0
        :pswitch_1d49
        :pswitch_1d28
        :pswitch_1d07
        :pswitch_1cd6
        :pswitch_1cb5
        :pswitch_1c86
        :pswitch_1c41
        :pswitch_1c1f
        :pswitch_1bf0
        :pswitch_1bc1
        :pswitch_1b92
        :pswitch_1b63
    .end packed-switch

    :sswitch_data_2b52
    .sparse-switch
        -0x66608807 -> :sswitch_1d9d
        -0x40efadf9 -> :sswitch_1d8e
        0x63cbc5bc -> :sswitch_1d7f
    .end sparse-switch

    :pswitch_data_2b60
    .packed-switch 0x0
        :pswitch_1dfa
        :pswitch_1dd8
        :pswitch_1dae
    .end packed-switch

    :sswitch_data_2b6a
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_1eab
        -0x3ecb9a99 -> :sswitch_1e9e
        0x3ba3e2f0 -> :sswitch_1e91
        0x62658647 -> :sswitch_1e84
        0x6f38e3dc -> :sswitch_1e7a
    .end sparse-switch

    :pswitch_data_2b80
    .packed-switch 0x0
        :pswitch_1f4a
        :pswitch_1f2d
        :pswitch_1f0b
        :pswitch_1edc
        :pswitch_1eba
    .end packed-switch

    :sswitch_data_2b8e
    .sparse-switch
        -0x7f682541 -> :sswitch_202a
        -0x6f783fb9 -> :sswitch_201b
        -0x51cc33cc -> :sswitch_200c
        -0x4d8cc16d -> :sswitch_1ffd
        -0x3d0bb61b -> :sswitch_1fee
        -0x3c6ca389 -> :sswitch_1fe0
        -0x3c036018 -> :sswitch_1fd1
        -0x3bc628df -> :sswitch_1fc2
        -0x374aace4 -> :sswitch_1fb3
        0x6305badd -> :sswitch_1fa4
        0x692685a1 -> :sswitch_1f95
    .end sparse-switch

    :pswitch_data_2bbc
    .packed-switch 0x0
        :pswitch_222d
        :pswitch_21fd
        :pswitch_21db
        :pswitch_21a2
        :pswitch_2160
        :pswitch_2111
        :pswitch_20db
        :pswitch_20a8
        :pswitch_208e
        :pswitch_205e
        :pswitch_203c
    .end packed-switch

    :sswitch_data_2bd6
    .sparse-switch
        -0x74ddc0dd -> :sswitch_22a3
        -0x67f870ad -> :sswitch_2295
        -0x499a7018 -> :sswitch_2288
        -0x364e80b3 -> :sswitch_227b
        0x9515810 -> :sswitch_226e
        0x78a801b7 -> :sswitch_2265
    .end sparse-switch

    :pswitch_data_2bf0
    .packed-switch 0x0
        :pswitch_2354
        :pswitch_2332
        :pswitch_2311
        :pswitch_22f0
        :pswitch_22d3
        :pswitch_22b2
    .end packed-switch

    :sswitch_data_2c00
    .sparse-switch
        -0x74fa9afd -> :sswitch_23f4
        -0x5319be4a -> :sswitch_23e7
        -0x4ebf90df -> :sswitch_23dc
        -0x3ce44687 -> :sswitch_23ce
        -0x3a6a65ad -> :sswitch_23c0
        -0x103e8c3d -> :sswitch_23b3
        0x292f3f94 -> :sswitch_23a5
        0x2eef3494 -> :sswitch_2397
        0x65788769 -> :sswitch_238a
        0x7d586159 -> :sswitch_2381
    .end sparse-switch

    :pswitch_data_2c2a
    .packed-switch 0x0
        :pswitch_25a9
        :pswitch_258f
        :pswitch_2575
        :pswitch_2543
        :pswitch_2505
        :pswitch_24dc
        :pswitch_24ae
        :pswitch_2469
        :pswitch_2422
        :pswitch_2405
    .end packed-switch

    :sswitch_data_2c42
    .sparse-switch
        -0x625ba203 -> :sswitch_2655
        -0x534f8be2 -> :sswitch_2647
        -0x5319be4a -> :sswitch_263a
        -0x4ebf90df -> :sswitch_262f
        -0x11927f68 -> :sswitch_2621
        0x52d2774 -> :sswitch_2613
        0x3670f097 -> :sswitch_2605
        0x3962d1ce -> :sswitch_25fb
        0x6422cbe9 -> :sswitch_25ed
    .end sparse-switch

    :pswitch_data_2c68
    .packed-switch 0x0
        :pswitch_27ce
        :pswitch_278b
        :pswitch_275b
        :pswitch_273c
        :pswitch_270e
        :pswitch_26ec
        :pswitch_26ca
        :pswitch_26a8
        :pswitch_2665
    .end packed-switch
.end method

.method public final restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 3107
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_f

    .line 3108
    aget-object p0, p1, v0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3110
    :cond_f
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p3, p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    return p0
.end method

.method public final restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .registers 3

    .line 3094
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p2, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    if-nez p0, :cond_21

    .line 3097
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "POWER_SAVING_MODE_ALLOWED cursor return "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecContentProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return p0
.end method

.method public final restrictionPolicyisUWBAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .registers 3

    .line 3117
    invoke-virtual {p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUWBAllowed()Z

    move-result p0

    if-nez p0, :cond_1c

    .line 3119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UWB_ALLOWED cursor return "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecContentProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

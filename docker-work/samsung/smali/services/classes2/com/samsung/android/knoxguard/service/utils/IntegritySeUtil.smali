.class public Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;
.super Ljava/lang/Object;
.source "IntegritySeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;
    }
.end annotation


# static fields
.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_ADMIN_RECEIVER:I = 0x40

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_ALARM_SERVICE:I = 0x400

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_KG_EVENT_SERVICE:I = 0x200

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_KG_PROVIDER:I = 0x800

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_SELFUPDATE_RECEIVER:I = 0x100

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_SYSTEM_INTENT_RECEIVER:I = 0x80

.field public static final CLIENT_INTEGRITY_BASE2:I = 0x1001

.field public static final CLIENT_INTEGRITY_ERROR_ENABLED:I = 0x4

.field public static final CLIENT_INTEGRITY_ERROR_INVALID_VERSION:I = 0x8

.field public static final CLIENT_INTEGRITY_ERROR_SIGNATURE:I = 0x2

.field public static final KG2_STARTED_VERSION_CODE:J = 0x11e1a300L

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkComponents(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)Z
    .registers 6

    const-string v0, "com.samsung.android.kgclient"

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_11

    .line 236
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string p1, "PackageManager is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    const/16 v2, 0xe

    .line 240
    :try_start_13
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 241
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    const-string v3, "com.samsung.android.kgclient.agent.KGDeviceAdminReceiver"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    .line 242
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    const-string v3, "com.samsung.android.kgclient.receiver.SystemIntentReceiver"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    .line 243
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    const-string v3, "com.samsung.android.kgclient.selfupdate.SelfupdateReceiver"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    .line 244
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-string v3, "com.samsung.android.kgclient.events.KGEventService"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    .line 245
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-string v3, "com.samsung.android.kgclient.alarm.AlarmService"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    .line 246
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    const-string v2, "com.samsung.android.kgclient.provider.KGProvider"

    invoke-static {p0, v0, v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_53} :catch_54

    goto :goto_6f

    :catch_54
    move-exception p0

    .line 249
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkComponents error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_6f
    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    if-eqz p0, :cond_88

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    if-eqz p0, :cond_88

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    if-eqz p0, :cond_88

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    if-eqz p0, :cond_88

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    if-eqz p0, :cond_88

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z

    if-eqz p0, :cond_88

    const/4 v1, 0x1

    :cond_88
    return v1
.end method

.method public static checkKGClientIntegrity(Landroid/content/Context;I)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;
    .registers 9

    .line 51
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkKGClientIntegrity()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kgState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;-><init>()V

    const/4 v2, 0x4

    if-ne v2, p1, :cond_2c

    const-string p0, "checkKGClientIntegrity() KG_STATE_COMPLETED. Do nothing."

    .line 56
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 57
    iput-boolean p0, v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    return-object v1

    .line 61
    :cond_2c
    :try_start_2c
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSignatures(Landroid/content/Context;)Z

    move-result p1

    .line 62
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isSystemApp(Landroid/content/Context;)Z

    move-result v2

    .line 63
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 64
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isValidVersion(Landroid/content/Context;)Z

    move-result v4

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSignatures : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSystemApp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnabled : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidVersion : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-boolean p1, v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validSignature:Z

    .line 72
    iput-boolean v3, v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabled:Z

    .line 73
    iput-boolean v4, v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validVersion:Z

    .line 75
    invoke-static {p0, v1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkComponents(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)Z

    move-result v2

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isComponentEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_b4

    const-string v5, "kgclient is invalid. makes client disable"

    .line 79
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->disableClient(Landroid/content/Context;)V

    :cond_b4
    and-int p0, p1, v3

    and-int/2addr p0, v4

    and-int/2addr p0, v2

    .line 84
    iput-boolean p0, v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_ba} :catch_bb

    return-object v1

    :catch_bb
    move-exception p0

    .line 87
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static checkSignatures(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "com.samsung.android.kgclient"

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    const/16 v2, 0x40

    .line 112
    :try_start_9
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 113
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkgInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android"

    .line 115
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_36

    const-string p0, "KG Client signature doesn\'t match with platform."

    .line 116
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_36
    const-string p0, "KG Client signature match with platform."

    .line 119
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3b} :catch_3d

    const/4 p0, 0x1

    return p0

    :catch_3d
    move-exception p0

    .line 123
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkKGClientIntegrity Exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static checkSystemUiIntegrity(Landroid/content/Context;)V
    .registers 3

    .line 153
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkSystemUiIntegrity()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->testSystemUiCorrupted(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_10

    .line 156
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->powerOff(Landroid/content/Context;I)V

    :cond_10
    return-void
.end method

.method public static checkTaIntegrity(I)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "ro.boot.kg.bit"

    const-string v2, "11"

    .line 95
    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "01"

    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_19

    if-eqz v1, :cond_17

    const/16 v1, -0x3ee

    if-ne v1, p0, :cond_17

    return v0

    :cond_17
    const/4 p0, 0x1

    return p0

    :catch_19
    move-exception p0

    .line 103
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTaIntegrity Exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static disableClient(Landroid/content/Context;)V
    .registers 4

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_e

    .line 220
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string v0, "PackageManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 225
    :cond_e
    :try_start_e
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string v1, "disable kgclient"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.kgclient"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 226
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_1d

    goto :goto_38

    :catch_1d
    move-exception p0

    .line 229
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method public static getClientVersionCode(Landroid/content/Context;J)J
    .registers 6

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_e

    .line 202
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string v0, "PackageManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1

    :cond_e
    :try_start_e
    const-string v0, "com.samsung.android.kgclient"

    const/4 v1, 0x0

    .line 207
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 209
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1b} :catch_1c

    return-wide p0

    :catch_1c
    move-exception p0

    .line 212
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client Notfound : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-wide p1
.end method

.method public static hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/pm/ComponentInfo;",
            ">([TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 265
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_22

    aget-object v3, p0, v2

    .line 266
    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 267
    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result p0

    return p0

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_22
    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 5

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "com.samsung.android.kgclient"

    .line 144
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 145
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_d} :catch_e

    return p0

    :catch_e
    move-exception p0

    .line 147
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnabled NameNotFoundException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSystemApp(Landroid/content/Context;)Z
    .registers 5

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "com.samsung.android.kgclient"

    .line 131
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 132
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_d} :catch_12

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_29

    return v1

    :catch_12
    move-exception p0

    .line 136
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSystemApp NameNotFoundException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return v0
.end method

.method public static isValidVersion(Landroid/content/Context;)Z
    .registers 5

    const-wide/32 v0, 0x11e1a300

    .line 195
    invoke-static {p0, v0, v1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->getClientVersionCode(Landroid/content/Context;J)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static setInitialState(Landroid/content/Context;I)V
    .registers 10

    const-string v0, "com.samsung.android.kgclient"

    .line 294
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInitialState, state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "device_policy"

    .line 297
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-nez v2, :cond_29

    const-string p0, "DPM is not available"

    .line 300
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 304
    :cond_29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 306
    :try_start_2e
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_31} :catch_d7

    .line 313
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSignatures(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3d

    const-string p0, "KGClient is malicious, it will be locked"

    .line 315
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3d
    const/4 v1, 0x4

    if-eq v1, p1, :cond_d6

    .line 320
    :try_start_40
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 321
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 322
    invoke-interface {v5, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 323
    invoke-interface {v5, v0, v4, v1}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_51} :catch_52

    goto :goto_6d

    :catch_52
    move-exception v1

    .line 326
    sget-object v5, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_6d
    :goto_6d
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.kgclient.agent.KGDeviceAdminReceiver"

    invoke-direct {v1, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    if-eq v5, p1, :cond_7f

    const/4 v5, 0x3

    if-ne v5, p1, :cond_7b

    goto :goto_7f

    .line 340
    :cond_7b
    :try_start_7b
    invoke-virtual {v2, v1, v4}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    goto :goto_a8

    .line 334
    :cond_7f
    :goto_7f
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setInitialState call edm admin api for adding edm services!!!"

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    if-eqz p1, :cond_a8

    .line 337
    invoke-virtual {p1, v1, v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_90} :catch_91

    goto :goto_a8

    :catch_91
    move-exception p1

    .line 343
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.samsung.android.kgclientsetActiveAdmin"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    :goto_a8
    :try_start_a8
    const-string p1, "appops"

    .line 352
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 353
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 354
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3f

    invoke-virtual {p0, v2, v1, v0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_d6

    .line 357
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string v3, "com.samsung.android.kgclient does not have OP_RUN_IN_BACKGROUND:  (fixing)"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, p1, v0, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_ce
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a8 .. :try_end_ce} :catch_cf

    goto :goto_d6

    .line 373
    :catch_cf
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string p1, "com.samsung.android.kgclientNot found??"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    :goto_d6
    return-void

    :catch_d7
    move-exception p0

    .line 308
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client Notfound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static testSystemUiCorrupted(Landroid/content/Context;)I
    .registers 10

    const-string p0, "com.android.systemui"

    .line 163
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_11

    .line 165
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string v0, "PackageManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_11
    const/4 v8, 0x1

    const-wide/16 v0, 0x0

    .line 170
    :try_start_14
    invoke-interface {v6, p0, v0, v1, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 171
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_2c

    xor-int/2addr v0, v8

    if-eqz v0, :cond_2a

    :try_start_1d
    const-string v1, "com.android.systemui"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    .line 174
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_28

    goto :goto_49

    :catch_28
    move-exception v0

    goto :goto_2e

    :cond_2a
    move v8, v7

    goto :goto_49

    :catch_2c
    move-exception v0

    move v8, v7

    .line 177
    :goto_2e
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "testSystemUiCorrupted : Exception in checking enabled value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_49
    :try_start_49
    invoke-interface {v6, p0, v7}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_71

    or-int/lit8 v8, v8, 0x2

    .line 184
    invoke-interface {v6, p0, v7, v7}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_54} :catch_55

    goto :goto_71

    :catch_55
    move-exception p0

    .line 187
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "testSystemUiCorrupted : Exception in checking hidden value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_71
    :goto_71
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "testSystemUiCorrupted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public static toErrorCode(Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 279
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validSignature:Z

    if-eqz v1, :cond_a

    move v1, v0

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    or-int/lit16 v1, v1, 0x1001

    .line 280
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabled:Z

    if-eqz v2, :cond_13

    move v2, v0

    goto :goto_14

    :cond_13
    const/4 v2, 0x4

    :goto_14
    or-int/2addr v1, v2

    .line 281
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validVersion:Z

    if-eqz v2, :cond_1b

    move v2, v0

    goto :goto_1d

    :cond_1b
    const/16 v2, 0x8

    :goto_1d
    or-int/2addr v1, v2

    .line 283
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    if-eqz v2, :cond_24

    move v2, v0

    goto :goto_26

    :cond_24
    const/16 v2, 0x40

    :goto_26
    or-int/2addr v1, v2

    .line 284
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    if-eqz v2, :cond_2d

    move v2, v0

    goto :goto_2f

    :cond_2d
    const/16 v2, 0x80

    :goto_2f
    or-int/2addr v1, v2

    .line 285
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    if-eqz v2, :cond_36

    move v2, v0

    goto :goto_38

    :cond_36
    const/16 v2, 0x100

    :goto_38
    or-int/2addr v1, v2

    .line 286
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    if-eqz v2, :cond_3f

    move v2, v0

    goto :goto_41

    :cond_3f
    const/16 v2, 0x200

    :goto_41
    or-int/2addr v1, v2

    .line 287
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    if-eqz v2, :cond_48

    move v2, v0

    goto :goto_4a

    :cond_48
    const/16 v2, 0x400

    :goto_4a
    or-int/2addr v1, v2

    .line 288
    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z

    if-eqz p0, :cond_50

    goto :goto_52

    :cond_50
    const/16 v0, 0x800

    :goto_52
    or-int p0, v1, v0

    return p0
.end method

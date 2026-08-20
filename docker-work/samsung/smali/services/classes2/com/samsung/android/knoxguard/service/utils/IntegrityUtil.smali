.class public Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;
.super Ljava/lang/Object;
.source "IntegrityUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;
    }
.end annotation


# static fields
.field public static final CLIENT_INTEGRITY_BASE:I = 0x1000

.field public static final CLIENT_INTEGRITY_COMPONENT_ERROR_ADMIN_RECEIVER:I = 0x40

.field public static final CLIENT_INTEGRITY_COMPONENT_ERROR_ALARM_SERVICE:I = 0x400

.field public static final CLIENT_INTEGRITY_COMPONENT_ERROR_KG_INTENT_SERVICE:I = 0x200

.field public static final CLIENT_INTEGRITY_COMPONENT_ERROR_KG_PROVIDER:I = 0x800

.field public static final CLIENT_INTEGRITY_COMPONENT_ERROR_SYSTEM_INTENT_RECEIVER:I = 0x80

.field public static final CLIENT_INTEGRITY_COMPONENT_ERROR_SYSTEM_INTENT_RECEIVER_SERVICE:I = 0x100

.field public static final CLIENT_INTEGRITY_ERROR_ENABLED:I = 0x4

.field public static final CLIENT_INTEGRITY_ERROR_INVALID_VERSION:I = 0x8

.field public static final CLIENT_INTEGRITY_ERROR_SIGNATURE:I = 0x2

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkComponents(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;)Z
    .registers 6

    const-string v0, "com.samsung.android.kgclient"

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_11

    .line 176
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string p1, "PackageManager is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    const/16 v2, 0xe

    .line 180
    :try_start_13
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 181
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    const-string v3, "com.samsung.android.kgclient.receiver.KGAdminReceiver"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAdminReceiver:Z

    .line 182
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    const-string v3, "com.samsung.android.kgclient.receiver.systemIntent.SystemIntentReceiver"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiver:Z

    .line 183
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-string v3, "com.samsung.android.kgclient.receiver.systemIntent.SystemIntentReceiverService"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiverService:Z

    .line 184
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-string v3, "com.samsung.android.kgclient.service.KGIntentService"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKgIntentService:Z

    .line 185
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-string v3, "com.samsung.android.kgclient.alarm.AlarmService"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAlarmService:Z

    .line 186
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    const-string v2, "com.samsung.android.kgclient.provider.KGProvider"

    invoke-static {p0, v0, v2}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKGProvider:Z
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_53} :catch_54

    goto :goto_6f

    :catch_54
    move-exception p0

    .line 189
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

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

    .line 192
    :goto_6f
    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAdminReceiver:Z

    if-eqz p0, :cond_88

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiver:Z

    if-eqz p0, :cond_88

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiverService:Z

    if-eqz p0, :cond_88

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKgIntentService:Z

    if-eqz p0, :cond_88

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAlarmService:Z

    if-eqz p0, :cond_88

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKGProvider:Z

    if-eqz p0, :cond_88

    const/4 v1, 0x1

    :cond_88
    return v1
.end method

.method public static checkKGClientIntegrity(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;
    .registers 9

    .line 49
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkKGClientIntegrity()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rlcState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;-><init>()V

    const/4 v2, 0x1

    if-eqz p1, :cond_ab

    const-string v3, "Completed"

    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ab

    const-string v3, ""

    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_ab

    .line 61
    :cond_35
    :try_start_35
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkSignatures(Landroid/content/Context;)Z

    move-result p1

    .line 62
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->isSystemApp(Landroid/content/Context;)Z

    move-result v3

    .line 63
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSignatures : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSystemApp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnabled : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-boolean p1, v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->validSignature:Z

    .line 70
    iput-boolean v4, v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabled:Z

    .line 71
    iput-boolean v2, v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->validVersion:Z

    .line 73
    invoke-static {p0, v1}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkComponents(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;)Z

    move-result p0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isComponentEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/2addr p1, v4

    and-int/2addr p0, p1

    .line 77
    iput-boolean p0, v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->isOk:Z
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_9f} :catch_a0

    return-object v1

    :catch_a0
    move-exception p0

    .line 80
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_ab
    :goto_ab
    const-string p0, "checkKGClientIntegrity() RLC_STATE_COMPLETED || RLC_STATE_NULL. Do nothing."

    .line 56
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-boolean v2, v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->isOk:Z

    return-object v1
.end method

.method public static checkSignatures(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "com.samsung.android.kgclient"

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    const/16 v2, 0x40

    .line 90
    :try_start_9
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 91
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

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

    .line 93
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_36

    const-string p0, "KG Client signature doesn\'t match with platform."

    .line 94
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_36
    const-string p0, "KG Client signature match with platform."

    .line 97
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3b} :catch_3d

    const/4 p0, 0x1

    return p0

    :catch_3d
    move-exception p0

    .line 101
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

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
    .registers 4

    .line 131
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkSystemUiIntegrity()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->testSystemUiCorrupted(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_29

    const-string/jumbo v1, "power"

    .line 134
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "KnoxGuard : system recovery (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v2}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    :cond_29
    return-void
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

    .line 205
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_22

    aget-object v3, p0, v2

    .line 206
    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 207
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

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "com.samsung.android.kgclient"

    .line 122
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 123
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_d} :catch_e

    return p0

    :catch_e
    move-exception p0

    .line 125
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

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

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "com.samsung.android.kgclient"

    .line 109
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 110
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_d} :catch_12

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_29

    return v1

    :catch_12
    move-exception p0

    .line 114
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

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

.method public static setInitialState(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    const-string v0, "com.samsung.android.kgclient"

    .line 234
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setInitialState"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "device_policy"

    .line 237
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-nez v2, :cond_1a

    const-string p0, "DPM is not available"

    .line 240
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 244
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 246
    :try_start_1f
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_22} :catch_c4

    .line 253
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkSignatures(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2e

    const-string p0, "KGClient is malicious, it will be locked"

    .line 255
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    if-eqz p1, :cond_c3

    const-string v1, ""

    .line 258
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c3

    const-string v1, "Completed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c3

    .line 260
    :try_start_40
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 261
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 262
    invoke-interface {v1, v0, p1}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 263
    invoke-interface {v1, v0, v4, p1}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_51} :catch_52

    goto :goto_6d

    :catch_52
    move-exception p1

    .line 266
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_6d
    :goto_6d
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.kgclient.receiver.KGAdminReceiver"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 273
    :try_start_7a
    invoke-virtual {v2, p1, v4}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_95

    :catch_7e
    move-exception p1

    .line 275
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.samsung.android.kgclientsetActiveAdmin"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    :goto_95
    :try_start_95
    const-string p1, "appops"

    .line 284
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 285
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 286
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3f

    invoke-virtual {p0, v2, v1, v0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_c3

    .line 289
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v3, "com.samsung.android.kgclient does not have OP_RUN_IN_BACKGROUND:  (fixing)"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, p1, v0, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_bb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_95 .. :try_end_bb} :catch_bc

    goto :goto_c3

    .line 305
    :catch_bc
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string p1, "com.samsung.android.kgclientNot found??"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c3
    :goto_c3
    return-void

    :catch_c4
    move-exception p0

    .line 248
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

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

    .line 142
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_11

    .line 144
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v0, "PackageManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_11
    const/4 v8, 0x1

    const-wide/16 v0, 0x0

    .line 149
    :try_start_14
    invoke-interface {v6, p0, v0, v1, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 150
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

    .line 153
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

    .line 156
    :goto_2e
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

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

    .line 160
    :goto_49
    :try_start_49
    invoke-interface {v6, p0, v7}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_71

    or-int/lit8 v8, v8, 0x2

    .line 163
    invoke-interface {v6, p0, v7, v7}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_54} :catch_55

    goto :goto_71

    :catch_55
    move-exception p0

    .line 166
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

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

    .line 169
    :cond_71
    :goto_71
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

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

.method public static toErrorCode(Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 219
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->validSignature:Z

    if-eqz v1, :cond_a

    move v1, v0

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    or-int/lit16 v1, v1, 0x1000

    .line 220
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabled:Z

    if-eqz v2, :cond_13

    move v2, v0

    goto :goto_14

    :cond_13
    const/4 v2, 0x4

    :goto_14
    or-int/2addr v1, v2

    .line 221
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->validVersion:Z

    if-eqz v2, :cond_1b

    move v2, v0

    goto :goto_1d

    :cond_1b
    const/16 v2, 0x8

    :goto_1d
    or-int/2addr v1, v2

    .line 223
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAdminReceiver:Z

    if-eqz v2, :cond_24

    move v2, v0

    goto :goto_26

    :cond_24
    const/16 v2, 0x40

    :goto_26
    or-int/2addr v1, v2

    .line 224
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiver:Z

    if-eqz v2, :cond_2d

    move v2, v0

    goto :goto_2f

    :cond_2d
    const/16 v2, 0x80

    :goto_2f
    or-int/2addr v1, v2

    .line 225
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiverService:Z

    if-eqz v2, :cond_36

    move v2, v0

    goto :goto_38

    :cond_36
    const/16 v2, 0x100

    :goto_38
    or-int/2addr v1, v2

    .line 226
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKgIntentService:Z

    if-eqz v2, :cond_3f

    move v2, v0

    goto :goto_41

    :cond_3f
    const/16 v2, 0x200

    :goto_41
    or-int/2addr v1, v2

    .line 227
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAlarmService:Z

    if-eqz v2, :cond_48

    move v2, v0

    goto :goto_4a

    :cond_48
    const/16 v2, 0x400

    :goto_4a
    or-int/2addr v1, v2

    .line 228
    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKGProvider:Z

    if-eqz p0, :cond_50

    goto :goto_52

    :cond_50
    const/16 v0, 0x800

    :goto_52
    or-int p0, v1, v0

    return p0
.end method

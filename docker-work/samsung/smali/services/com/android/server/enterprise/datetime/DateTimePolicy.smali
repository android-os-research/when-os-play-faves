.class public Lcom/android/server/enterprise/datetime/DateTimePolicy;
.super Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;
.source "DateTimePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "DateTimePolicyService"


# instance fields
.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

.field public mNtpInfoLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$4h02L7tDkibRwxoY8uBNoJmrs3Y(Lcom/android/server/enterprise/datetime/DateTimePolicy;Landroid/app/admin/DevicePolicyManager;ZLcom/samsung/android/knox/ContextInfo;)Ljava/lang/Boolean;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->lambda$setAutomaticTime$4(Landroid/app/admin/DevicePolicyManager;ZLcom/samsung/android/knox/ContextInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CCryYmrMGZFB_E0J5Cxggedi4CU(Lcom/samsung/android/knox/ContextInfo;ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->lambda$setDateTimeChangeEnabled$5(Lcom/samsung/android/knox/ContextInfo;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$FVeX6qrKDjsUrUcZtWrNnHf2Y98(Lcom/android/server/enterprise/datetime/DateTimePolicy;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->lambda$getTimeFormat$3(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TXRVXMgGudKX1d_PMlGQrzgvPDM(Lcom/android/server/enterprise/datetime/DateTimePolicy;Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->lambda$setTimeFormat$2(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ya-KbIcBbFKUylr5z8QqlbXTIFk(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->lambda$setDateTime$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$kYIsj3gLzDpaU8B0CFORxQbHDZs(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->lambda$sendBroadcastToNtpServices$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$wMSgfqXE3_nEWMjakSRyR0TcwC0(Lcom/android/server/enterprise/datetime/DateTimePolicy;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->lambda$setTimeZone$1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNtpInfo(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Lcom/samsung/android/knox/datetime/NtpInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNtpInfoLock(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendBroadcastToNtpServices(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->sendBroadcastToNtpServices()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 94
    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    .line 596
    new-instance v0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 106
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    new-instance p1, Lcom/samsung/android/knox/datetime/NtpInfo;

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/datetime/NtpInfo;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 110
    new-instance p1, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    return-void
.end method

.method private synthetic lambda$getTimeFormat$3(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "time_12_24"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$sendBroadcastToNtpServices$6()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 592
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$setAutomaticTime$4(Landroid/app/admin/DevicePolicyManager;ZLcom/samsung/android/knox/ContextInfo;)Ljava/lang/Boolean;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 322
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 323
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result p1

    if-nez p1, :cond_6a

    .line 324
    iget-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "auto_time"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time_zone"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6a

    .line 330
    invoke-static {p3}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 332
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Admin "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_57

    const-string p1, "enabled"

    goto :goto_59

    :cond_57
    const-string p1, "disabled"

    .line 333
    :goto_59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " automatic time."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "DateTimePolicy"

    .line 331
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_6a
    return-object v0
.end method

.method public static synthetic lambda$setDateTime$0(J)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    invoke-static {p0, p1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    return-void
.end method

.method public static synthetic lambda$setDateTimeChangeEnabled$5(Lcom/samsung/android/knox/ContextInfo;ZI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 423
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " has "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1d

    const-string p0, "enabled"

    goto :goto_1f

    :cond_1d
    const-string p0, "disabled"

    .line 424
    :goto_1f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " date time changes."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v4, "DateTimePolicy"

    move v6, p2

    .line 422
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$setTimeFormat$2(Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 258
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.TIME_SET"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-object p1
.end method

.method private synthetic lambda$setTimeZone$1(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 202
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 203
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    const-string p1, "DateTimePolicyService"

    const-string/jumbo v0, "setTimeZone() has failed by unexpected excepion. "

    .line 205
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 635
    iget-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    const-string p0, "Permission Denial: can\'t dump DateTimePolicy"

    .line 637
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 641
    :cond_10
    iget-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string p3, "adminUid"

    const-string v0, "DateTimeEnabled"

    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    const-string v0, "RESTRICTION"

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 646
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string/jumbo v0, "ntpServer"

    const-string/jumbo v1, "ntpTimeout"

    const-string/jumbo v2, "ntpMaxAttempts"

    const-string/jumbo v3, "ntpPollInterval"

    const-string/jumbo v4, "ntpPollInterShorter"

    const-string/jumbo v5, "ntpLastAdminUid"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    const-string p3, "generic"

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final enforceDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 115
    invoke-virtual {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 121
    invoke-virtual {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 348
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "auto_time"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public getDateFormat(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    .line 295
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 296
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\byy\\b"

    const-string/jumbo v0, "y"

    .line 298
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\bMM\\b"

    const-string v0, "M"

    .line 299
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\bdd\\b"

    const-string v0, "d"

    .line 300
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDateTime(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 2

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public getDaylightSavingTime(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 357
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    .line 359
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 127
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 129
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getNtpInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/datetime/NtpInfo;
    .registers 2

    .line 495
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 496
    iget-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    monitor-enter p1

    .line 497
    :try_start_6
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    monitor-exit p1

    return-object p0

    :catchall_a
    move-exception p0

    .line 498
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getNtpServer()Ljava/lang/String;
    .registers 1

    .line 625
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNtpTimeout()J
    .registers 3

    .line 630
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/NtpInfo;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeFormat(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    .line 275
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 276
    new-instance v0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZone(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 2

    .line 219
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    goto :goto_f

    .line 614
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_10

    if-lez v0, :cond_f

    move-object p0, p1

    :cond_f
    :goto_f
    return-object p0

    :catch_10
    move-exception p1

    .line 616
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 439
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "RESTRICTION"

    const-string v0, "DateTimeEnabled"

    .line 441
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 445
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_22

    :cond_21
    const/4 p1, 0x1

    :goto_22
    return p1
.end method

.method public final loadNtpInfo()V
    .registers 8

    .line 502
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "ntpServer"

    .line 504
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->setServer(Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "ntpMaxAttempts"

    .line 507
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_b2

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    .line 510
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->setMaxAttempts(I)V
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_26} :catch_27
    .catchall {:try_start_1d .. :try_end_26} :catchall_b2

    goto :goto_39

    :catch_27
    :try_start_27
    const-string v1, "DateTimePolicyService"

    const-string v3, "failed to convert max attempts"

    .line 512
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/datetime/NtpInfo;->setMaxAttempts(I)V

    goto :goto_39

    .line 516
    :cond_34
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/datetime/NtpInfo;->setMaxAttempts(I)V

    .line 518
    :goto_39
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "ntpPollInterval"

    .line 519
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_b2

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_5d

    .line 522
    :try_start_46
    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingInterval(J)V
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_4f} :catch_50
    .catchall {:try_start_46 .. :try_end_4f} :catchall_b2

    goto :goto_62

    :catch_50
    :try_start_50
    const-string v1, "DateTimePolicyService"

    const-string v4, "failed to convert polling interval"

    .line 524
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingInterval(J)V

    goto :goto_62

    .line 528
    :cond_5d
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingInterval(J)V

    .line 530
    :goto_62
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "ntpPollInterShorter"

    .line 531
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_6b
    .catchall {:try_start_50 .. :try_end_6b} :catchall_b2

    if-eqz v1, :cond_84

    .line 534
    :try_start_6d
    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingIntervalShorter(J)V
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_76} :catch_77
    .catchall {:try_start_6d .. :try_end_76} :catchall_b2

    goto :goto_89

    :catch_77
    :try_start_77
    const-string v1, "DateTimePolicyService"

    const-string v4, "failed to convert polling interval shorter"

    .line 536
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingIntervalShorter(J)V

    goto :goto_89

    .line 540
    :cond_84
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingIntervalShorter(J)V

    .line 542
    :goto_89
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "ntpTimeout"

    .line 543
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_92
    .catchall {:try_start_77 .. :try_end_92} :catchall_b2

    if-eqz v1, :cond_ab

    .line 546
    :try_start_94
    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeout(J)V
    :try_end_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_9d} :catch_9e
    .catchall {:try_start_94 .. :try_end_9d} :catchall_b2

    goto :goto_b0

    :catch_9e
    :try_start_9e
    const-string v1, "DateTimePolicyService"

    const-string v4, "failed to convert timeout"

    .line 548
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeout(J)V

    goto :goto_b0

    .line 552
    :cond_ab
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeout(J)V

    .line 554
    :goto_b0
    monitor-exit v0

    return-void

    :catchall_b2
    move-exception p0

    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_9e .. :try_end_b4} :catchall_b2

    throw p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "ntpLastAdminUid"

    .line 376
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 380
    :try_start_b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    const/4 v0, -0x1

    :goto_11
    if-ne v0, p1, :cond_28

    const-string p1, "DateTimePolicyService"

    const-string v0, "admin removed, reverting ntp info"

    .line 385
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    monitor-enter p1

    .line 388
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->resetNtpInfo()Z

    .line 389
    invoke-virtual {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->sendBroadcastToNtpServices()V

    .line 390
    monitor-exit p1

    goto :goto_28

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_25

    throw p0

    :cond_28
    :goto_28
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public final resetNtpInfo()Z
    .registers 13

    const-string v0, "DateTimePolicyService"

    const-string/jumbo v1, "resetNtpInfo"

    .line 558
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    .line 559
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->saveNtpInfoInDbAndUpdateCache(Ljava/lang/String;JJJII)Z

    move-result p0

    return p0
.end method

.method public final saveNtpInfoInDbAndUpdateCache(Ljava/lang/String;JJJII)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 567
    iget-object v9, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "ntpServer"

    invoke-virtual {v9, v10, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 569
    iget-object v10, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-wide/16 v11, 0x0

    cmp-long v13, v2, v11

    const/4 v14, 0x0

    if-nez v13, :cond_20

    move-object v13, v14

    goto :goto_24

    .line 570
    :cond_20
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    :goto_24
    const-string/jumbo v15, "ntpTimeout"

    .line 569
    invoke-virtual {v10, v15, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    and-int/2addr v9, v10

    .line 571
    iget-object v10, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    cmp-long v13, v4, v11

    if-nez v13, :cond_34

    move-object v13, v14

    goto :goto_38

    .line 573
    :cond_34
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    :goto_38
    const-string/jumbo v15, "ntpPollInterval"

    .line 571
    invoke-virtual {v10, v15, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    and-int/2addr v9, v10

    .line 574
    iget-object v10, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    cmp-long v11, v6, v11

    if-nez v11, :cond_48

    move-object v11, v14

    goto :goto_4c

    .line 576
    :cond_48
    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    :goto_4c
    const-string/jumbo v12, "ntpPollInterShorter"

    .line 574
    invoke-virtual {v10, v12, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    and-int/2addr v9, v10

    .line 577
    iget-object v10, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v8, :cond_5a

    move-object v11, v14

    goto :goto_5e

    .line 578
    :cond_5a
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    :goto_5e
    const-string/jumbo v12, "ntpMaxAttempts"

    .line 577
    invoke-virtual {v10, v12, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    and-int/2addr v9, v10

    .line 579
    iget-object v10, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->setServer(Ljava/lang/String;)V

    .line 580
    iget-object v1, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v1, v8}, Lcom/samsung/android/knox/datetime/NtpInfo;->setMaxAttempts(I)V

    .line 581
    iget-object v1, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->setTimeout(J)V

    .line 582
    iget-object v1, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingInterval(J)V

    .line 583
    iget-object v1, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/knox/datetime/NtpInfo;->setPollingIntervalShorter(J)V

    .line 584
    iget-object v0, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez p9, :cond_84

    goto :goto_88

    .line 586
    :cond_84
    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    :goto_88
    const-string/jumbo v1, "ntpLastAdminUid"

    .line 584
    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr v0, v9

    return v0
.end method

.method public final sendBroadcastToNtpServices()V
    .registers 2

    .line 591
    new-instance v0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public setAutomaticTime(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 309
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 p0, 0x0

    return p0

    .line 321
    :cond_16
    new-instance v1, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;Landroid/app/admin/DevicePolicyManager;ZLcom/samsung/android/knox/ContextInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setDateFormat(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public setDateTime(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 8

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_27

    :cond_12
    const-wide/16 p0, 0x3e8

    .line 150
    div-long p0, p2, p0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, p0, v2

    if-gez p0, :cond_27

    .line 152
    new-instance p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda5;

    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda5;-><init>(J)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    const/4 p0, 0x1

    return p0

    :cond_27
    :goto_27
    return v1
.end method

.method public setDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 414
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "RESTRICTION"

    const-string v2, "DateTimeEnabled"

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 420
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 421
    new-instance v1, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/knox/ContextInfo;ZI)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1e
    return p0
.end method

.method public setNtpInfo(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/datetime/NtpInfo;)Z
    .registers 16

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_f

    const-string p0, "DateTimePolicyService"

    const-string p1, "NtpInfo object should not be null!"

    .line 465
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 470
    :cond_f
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_12
    invoke-virtual {p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4b

    .line 473
    invoke-virtual {p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getTimeout()J

    move-result-wide v4

    .line 474
    invoke-virtual {p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    move-result-wide v6

    .line 475
    invoke-virtual {p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingIntervalShorter()J

    move-result-wide v8

    .line 476
    invoke-virtual {p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getMaxAttempts()I

    move-result v10

    const-wide/16 v11, 0x0

    cmp-long p2, v4, v11

    if-ltz p2, :cond_41

    cmp-long p2, v6, v11

    if-ltz p2, :cond_41

    cmp-long p2, v8, v11

    if-ltz p2, :cond_41

    if-gez v10, :cond_39

    goto :goto_41

    .line 481
    :cond_39
    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->saveNtpInfoInDbAndUpdateCache(Ljava/lang/String;JJJII)Z

    move-result p1

    goto :goto_4f

    :cond_41
    :goto_41
    const-string p0, "DateTimePolicyService"

    const-string/jumbo p1, "invalid parameters provided, all values should be 0 or higher"

    .line 478
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    monitor-exit v1

    return v0

    .line 484
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->resetNtpInfo()Z

    move-result p1

    .line 486
    :goto_4f
    invoke-virtual {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->sendBroadcastToNtpServices()V

    .line 487
    monitor-exit v1

    return p1

    :catchall_54
    move-exception p0

    .line 488
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_12 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public setTimeFormat(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 6

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 229
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 232
    const-class v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-interface {v0, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    return v1

    .line 237
    :cond_18
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string v2, "android"

    invoke-static {v0, v2, v1, p1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_45

    if-nez p2, :cond_25

    goto :goto_45

    :cond_25
    const-string v0, "12"

    .line 243
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "24"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_45

    .line 250
    :cond_36
    new-instance v0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_45
    :goto_45
    return v1
.end method

.method public setTimeZone(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 6

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 183
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "DateTimePolicyService"

    const/4 v1, 0x0

    if-nez p2, :cond_13

    const-string/jumbo p0, "setTimeZone() has failed : Invalid input."

    .line 186
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 191
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_30

    .line 198
    :cond_20
    new-instance p1, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_30
    :goto_30
    const-string/jumbo p0, "setTimeZone() has failed : Not allowed by admin."

    .line 192
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public systemReady()V
    .registers 1

    .line 398
    invoke-virtual {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->loadNtpInfo()V

    return-void
.end method

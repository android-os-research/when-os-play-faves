.class public Lcom/android/server/enterprise/auditlog/Admin;
.super Ljava/lang/Object;
.source "Admin.java"

# interfaces
.implements Lcom/android/server/enterprise/auditlog/IObserver;


# static fields
.field public static final TAG:Ljava/lang/String; = "Admin"


# instance fields
.field public mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

.field public mAuditLogRulesInfo:Lcom/samsung/android/knox/log/AuditLogRulesInfo;

.field public mBegin:J

.field public mContext:Landroid/content/Context;

.field public mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEnd:J

.field public volatile mIsDumping:Z

.field public mIsProfileOwnerOfOrganizationOwnedDevice:Z

.field public mIsPseudoAdminOfOrganizationOwnedDevice:Z

.field public mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

.field public mMdmLogging:Z

.field public mPackageName:Ljava/lang/String;

.field public mUid:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 69
    new-instance v1, Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAuditLogRulesInfo:Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 74
    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 75
    new-instance v1, Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/enterprise/auditlog/LogWritter;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 76
    new-instance p3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 77
    iget-object p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p3, p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V

    const/4 p3, 0x0

    .line 79
    iput-boolean p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 80
    iput-boolean p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    .line 81
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 82
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    const-wide/16 p2, 0x0

    .line 83
    iput-wide p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    .line 84
    iput-wide p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    .line 85
    iput p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Admin uid = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Admin"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_49
    iget-object p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->checkPseudoAdminForUid(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsPseudoAdminOfOrganizationOwnedDevice:Z

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mIsPseudoAdminOfOrganizationOwnedDevice = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsPseudoAdminOfOrganizationOwnedDevice:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_49 .. :try_end_68} :catch_69

    goto :goto_83

    :catch_69
    move-exception p2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEdmStorageProvider.checkPseudoAdminForUid: error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_83
    const-string p2, "device_policy"

    .line 95
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 94
    invoke-static {p2}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object p2

    if-eqz p2, :cond_ca

    .line 99
    :try_start_8f
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 98
    invoke-interface {p2, p1}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsProfileOwnerOfOrganizationOwnedDevice:Z

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "mIsProfileOwnerOfOrganizationOwnedDevice = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsProfileOwnerOfOrganizationOwnedDevice:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_b0} :catch_b1

    goto :goto_ca

    :catch_b1
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error on calling isProfileOwnerOfOrganizationOwnedDeviceMDM : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ca
    :goto_ca
    return-void
.end method


# virtual methods
.method public createBubbleDirectory()V
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->createBubbleDirectory()V

    return-void
.end method

.method public createBubbleFile()V
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->createBubbleFile()V

    return-void
.end method

.method public deleteAllFiles()V
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->deleteAllFiles()V

    return-void
.end method

.method public dump(JJLandroid/os/ParcelFileDescriptor;)Z
    .registers 8

    .line 122
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    const/4 v1, 0x0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 124
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    .line 125
    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    .line 126
    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 127
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V

    .line 128
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    .line 129
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    const-string/jumbo p2, "swap"

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/auditlog/LogWritter;->swapFiles(Ljava/lang/String;)V

    .line 130
    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    return p0

    :cond_23
    return v1
.end method

.method public getAuditLogRulesInfo()Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .registers 1

    .line 291
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAuditLogRulesInfo:Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    return-object p0
.end method

.method public getBufferSize()J
    .registers 3

    .line 185
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getBufferLogSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCriticalLogSize()I
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getCriticalLogSize()I

    move-result p0

    return p0
.end method

.method public getCurrentLogFileSize()I
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getCurrentLogFileSize()I

    move-result p0

    return p0
.end method

.method public getDumpState()Z
    .registers 1

    .line 283
    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    return p0
.end method

.method public getMDMLogging()Z
    .registers 1

    .line 169
    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    return p0
.end method

.method public getMaximumLogSize()I
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getMaximumLogSize()I

    move-result p0

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 177
    iget p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    return p0
.end method

.method public isProfileOwnerOfOrganizationOwnedDevice()Z
    .registers 1

    .line 201
    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsProfileOwnerOfOrganizationOwnedDevice:Z

    return p0
.end method

.method public isPseudoAdminOfOrganizationOwnedDevice()Z
    .registers 1

    .line 197
    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsPseudoAdminOfOrganizationOwnedDevice:Z

    return p0
.end method

.method public notifyDumpFinished(ZZ)V
    .registers 8

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 228
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/auditlog/LogWritter;->setTypeOfDump(Z)V

    .line 229
    iget-object p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p2, v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    .line 230
    iget p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    .line 232
    const-class v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    iget v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    .line 233
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 232
    invoke-interface {v1, v2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isLegacyContainer(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 234
    iget-object p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    invoke-static {p2, v1}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result p2

    .line 237
    :cond_2b
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 238
    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsPseudoAdminOfOrganizationOwnedDevice:Z

    if-eqz v1, :cond_3d

    .line 239
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 241
    invoke-virtual {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getOrganizationOwnedProfileUserId()I

    move-result p2

    .line 245
    :cond_3d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.DUMP_LOG_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_4b

    .line 248
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4b
    const-string v2, "com.samsung.android.knox.intent.extra.AUDIT_RESULT"

    if-eqz p1, :cond_53

    .line 252
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_63

    .line 254
    :cond_53
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    const-string v3, "Dump failed! Sending Intent!"

    invoke-virtual {p1, v3, v0}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x7d0

    .line 256
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    :goto_63
    iget p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    const-string v0, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 264
    :try_start_76
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object p1

    .line 265
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 266
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 267
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 266
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_9d

    .line 269
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    :cond_9d
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_a7} :catch_a8

    goto :goto_ac

    :catch_a8
    move-exception p0

    .line 274
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ac
    return-void
.end method

.method public notifyReadyToDump(Z)V
    .registers 10

    if-eqz p1, :cond_40

    .line 209
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->getDumpFilesList()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_40

    const/4 p1, 0x0

    .line 211
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 212
    new-instance p1, Lcom/android/server/enterprise/auditlog/Dumper;

    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object v0, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/Dumper;-><init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v0, :cond_2e

    .line 214
    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V

    .line 215
    :cond_2e
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDeviceInfo:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->setDeviceInfo(Ljava/util/List;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->setPackageName(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 218
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setLastTimestamp()V

    :cond_40
    return-void
.end method

.method public setAuditLogRulesInfo(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)V
    .registers 2

    .line 287
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAuditLogRulesInfo:Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    return-void
.end method

.method public setBootCompleted(Z)V
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setBootCompleted(Z)V

    return-void
.end method

.method public setBufferSize(J)V
    .registers 3

    .line 181
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/auditlog/LogWritter;->setBufferLogSize(J)V

    return-void
.end method

.method public setCriticalLogSize(I)V
    .registers 2

    .line 137
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setCriticalLogSize(I)V

    return-void
.end method

.method public setDeviceInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDeviceInfo:Ljava/util/List;

    return-void
.end method

.method public setFilter(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_e

    .line 298
    new-instance v0, Lcom/android/server/enterprise/auditlog/Filter;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/Filter;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 299
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/Filter;->setFilter(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_e
    const/4 p1, 0x0

    .line 302
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    const/4 p0, 0x1

    return p0
.end method

.method public setMDMLogging(Z)V
    .registers 2

    .line 165
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    return-void
.end method

.method public setMaximumLogSize(I)V
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setMaximumLogSize(I)V

    return-void
.end method

.method public shutdown()V
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->shutdown()V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->write(Ljava/lang/String;)V

    return-void
.end method

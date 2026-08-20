.class public Lcom/android/server/enterprise/EDMProxyService;
.super Landroid/sec/enterprise/IEDMProxy$Stub;
.source "EDMProxyService.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 134
    invoke-direct {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/android/server/enterprise/EDMProxyService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    const-string p0, "auditlog"

    .line 539
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 543
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public AuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 18

    const-string v0, "auditlog"

    .line 560
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 564
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public AuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    const-string p0, "auditlog"

    .line 581
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 585
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerPrivileged(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public AuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 18

    const-string v0, "auditlog"

    .line 602
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 606
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerPrivilegedAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public RedactedAuditLogger(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    const-string v0, "auditlog"

    .line 549
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 553
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public RedactedAuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 20

    const-string v0, "auditlog"

    .line 570
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    .line 574
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public RedactedAuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    const-string v0, "auditlog"

    .line 591
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 595
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLoggerPrivileged(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public RedactedAuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 20

    const-string v0, "auditlog"

    .line 612
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    .line 616
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLoggerPrivilegedAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public addCallsCount(Ljava/lang/String;)V
    .registers 2

    const-string p0, "device_info"

    .line 140
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/device/DeviceInfo;

    if-nez p0, :cond_b

    return-void

    .line 144
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->addCallsCount(Ljava/lang/String;)V

    return-void
.end method

.method public addNumberOfIncomingCalls()Z
    .registers 1

    const-string/jumbo p0, "phone_restriction_policy"

    .line 334
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 338
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z

    move-result p0

    return p0
.end method

.method public addNumberOfIncomingSms()Z
    .registers 1

    const-string/jumbo p0, "phone_restriction_policy"

    .line 362
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 366
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    move-result p0

    return p0
.end method

.method public addNumberOfOutgoingCalls()Z
    .registers 1

    const-string/jumbo p0, "phone_restriction_policy"

    .line 343
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 347
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z

    move-result p0

    return p0
.end method

.method public addNumberOfOutgoingSms()Z
    .registers 1

    const-string/jumbo p0, "phone_restriction_policy"

    .line 371
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 375
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z

    move-result p0

    return p0
.end method

.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string p0, "bluetooth_policy"

    .line 488
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-nez p0, :cond_b

    return-void

    .line 492
    :cond_b
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 492
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo p0, "phone_restriction_policy"

    .line 1287
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 1291
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo p0, "phone_restriction_policy"

    .line 398
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 402
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo p0, "phone_restriction_policy"

    .line 1296
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 1300
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo p0, "phone_restriction_policy"

    .line 389
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 393
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .registers 1

    const-string/jumbo p0, "phone_restriction_policy"

    .line 380
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 384
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z

    move-result p0

    return p0
.end method

.method public final fixContextInfoForMP(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 3

    if-eqz p1, :cond_1d

    .line 1208
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EDMProxyService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1209
    invoke-virtual {p0}, Lcom/android/server/enterprise/EDMProxyService;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->getMinPersonaId()I

    move-result p0

    if-ge v0, p0, :cond_1d

    .line 1210
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    :cond_1d
    return-object p1
.end method

.method public getAddHomeShorcutRequested()Z
    .registers 1

    const-string p0, "application_policy"

    .line 195
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 199
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAddHomeShorcutRequested()Z

    move-result p0

    return p0
.end method

.method public getAllowBluetoothDataTransfer(Z)Z
    .registers 3

    const-string p0, "bluetooth_policy"

    .line 204
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getAllowBluetoothDataTransfer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    return p0
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;I)[B
    .registers 3

    const-string p0, "application_policy"

    .line 185
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 189
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDbAsUser(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const-string p0, "application_policy"

    .line 887
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 891
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 3

    const-string/jumbo p0, "knoxcustom"

    .line 1105
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 1110
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getBrowserSettingStatus(I)Z
    .registers 4

    const-string p0, "browser_policy"

    .line 276
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 280
    :cond_c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 281
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 280
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0

    return p0
.end method

.method public final getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3

    .line 1196
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0}, Lcom/android/server/enterprise/EDMProxyService;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->getMinPersonaId()I

    move-result p0

    if-ge v0, p0, :cond_f

    .line 1197
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    return p0

    .line 1199
    :cond_f
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    return p0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "enterprise_license_policy"

    .line 1187
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 1191
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEmergencyCallOnly(Z)Z
    .registers 4

    const-string/jumbo p0, "phone_restriction_policy"

    .line 324
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 328
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 328
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    return p0
.end method

.method public getExtendedCallInfoState()Z
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 1115
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1119
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getExtendedCallInfoState()Z

    move-result p0

    return p0
.end method

.method public getKeyboardMode()I
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 1063
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1067
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getKeyboardMode()I

    move-result p0

    return p0
.end method

.method public getNtpServer()Ljava/lang/String;
    .registers 1

    const-string p0, "date_time_policy"

    .line 416
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 420
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getNtpServer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNtpTimeout()J
    .registers 3

    const-string p0, "date_time_policy"

    .line 425
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    if-nez p0, :cond_d

    const-wide/16 v0, 0x0

    return-wide v0

    .line 429
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getNtpTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 1203
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public getProKioskHideNotificationMessages()I
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 942
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 946
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getHideNotificationMessages()I

    move-result p0

    return p0
.end method

.method public getProKioskNotificationMessagesState()Z
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 931
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 935
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getProKioskNotificationMessagesState()Z

    move-result p0

    return p0
.end method

.method public getProKioskState()Z
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 920
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 924
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getProKioskState()Z

    move-result p0

    return p0
.end method

.method public getSensorDisabled()I
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 986
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 990
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getSensorDisabled()I

    move-result p0

    return p0
.end method

.method public getToastEnabledState()Z
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 964
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 968
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getToastEnabledState()Z

    move-result p0

    return p0
.end method

.method public getToastGravity()I
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 1030
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1034
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getToastGravity()I

    move-result p0

    return p0
.end method

.method public getToastGravityEnabledState()Z
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 1019
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1023
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getToastGravityEnabledState()Z

    move-result p0

    return p0
.end method

.method public getToastGravityXOffset()I
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 1041
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1045
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getToastGravityXOffset()I

    move-result p0

    return p0
.end method

.method public getToastGravityYOffset()I
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 1052
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1056
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getToastGravityYOffset()I

    move-result p0

    return p0
.end method

.method public getToastShowPackageNameState()Z
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 975
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 979
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getToastShowPackageNameState()Z

    move-result p0

    return p0
.end method

.method public getUsbNetAddress(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo p0, "knoxcustom"

    .line 1096
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 1100
    :cond_d
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUsbNetStateInternal()Z
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 1085
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1089
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbNetStateInternal()Z

    move-result p0

    return p0
.end method

.method public getVolumeButtonRotationState()Z
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 1008
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1012
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getVolumeButtonRotationState()Z

    move-result p0

    return p0
.end method

.method public getVolumeControlStream()I
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 953
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 957
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getVolumeControlStream()I

    move-result p0

    return p0
.end method

.method public getVolumePanelEnabledState()Z
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 997
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 1001
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getVolumePanelEnabledState()Z

    move-result p0

    return p0
.end method

.method public getWifiState()Z
    .registers 1

    const-string/jumbo p0, "knoxcustom"

    .line 1074
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1078
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getWifiState()Z

    move-result p0

    return p0
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    const-string p0, "device_account_policy"

    .line 874
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 878
    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAnyApplicationNameChangedAsUser(I)Z
    .registers 2

    const-string p0, "application_policy"

    .line 896
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 900
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isAnyApplicationNameChangedAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isAudioRecordAllowed(Z)Z
    .registers 4

    const-string/jumbo p0, "restriction_policy"

    .line 758
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 762
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 763
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 762
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    return p0
.end method

.method public isAuditLogEnabledAsUser(I)Z
    .registers 2

    const-string p0, "auditlog"

    .line 622
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 626
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isBackupAllowed(Z)Z
    .registers 3

    const-string/jumbo p0, "restriction_policy"

    .line 460
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 v0, 0x0

    .line 464
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    return p0
.end method

.method public isBlockMmsWithStorageEnabled()Z
    .registers 3

    const-string/jumbo p0, "phone_restriction_policy"

    .line 828
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 832
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 833
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isBlockSmsWithStorageEnabled()Z
    .registers 3

    const-string/jumbo p0, "phone_restriction_policy"

    .line 818
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 822
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 823
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .registers 3

    const-string p0, "bluetooth_policy"

    .line 240
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    const/4 v0, 0x1

    if-nez p0, :cond_c

    return v0

    .line 244
    :cond_c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBluetoothEnabled()Z
    .registers 2

    const-string p0, "bluetooth_policy"

    .line 267
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    const/4 v0, 0x1

    if-nez p0, :cond_c

    return v0

    .line 271
    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public isBluetoothLogEnabled()Z
    .registers 2

    const-string p0, "bluetooth_policy"

    .line 479
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 v0, 0x0

    .line 483
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "bluetooth_policy"

    .line 223
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 227
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothUUIDAllowedInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCaCertificateTrustedAsUser([BZZI)Z
    .registers 11

    const-string p0, "Could not convert certificate."

    const-string v0, "EDMProxyService"

    const-string v1, "certificate_policy"

    .line 641
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v2, 0x1

    if-nez v1, :cond_10

    return v2

    .line 646
    :cond_10
    invoke-virtual {v1, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result v3

    if-nez v3, :cond_17

    return v2

    :cond_17
    const/4 v3, 0x0

    if-nez p1, :cond_1b

    return v3

    .line 657
    :cond_1b
    :try_start_1b
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 658
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 660
    :cond_27
    invoke-static {p1}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertDerToPem([B)[B

    move-result-object p1

    if-eqz p1, :cond_31

    .line 662
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v4

    :cond_31
    if-eqz v4, :cond_58

    .line 663
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_37} :catch_7c
    .catch Ljava/security/cert/CertificateException; {:try_start_1b .. :try_end_37} :catch_78
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_37} :catch_5e

    if-eqz p1, :cond_3a

    goto :goto_58

    .line 680
    :cond_3a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 681
    new-instance v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 682
    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZZI)Z

    move-result p1

    and-int/2addr v2, p1

    if-nez v2, :cond_3e

    return v3

    :cond_57
    return v2

    :cond_58
    :goto_58
    :try_start_58
    const-string p1, "Could not convert one certificate."

    .line 664
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5d} :catch_7c
    .catch Ljava/security/cert/CertificateException; {:try_start_58 .. :try_end_5d} :catch_78
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_5d} :catch_5e

    return v3

    :catch_5e
    move-exception p0

    .line 675
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not a certificate "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 672
    :catch_78
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 669
    :catch_7c
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isCallingCaptureEnabled()Z
    .registers 3

    const-string p0, "device_info"

    .line 149
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/device/DeviceInfo;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 153
    :cond_c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->isCallingCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isCertificateTrustedUntrustedEnabledAsUser(I)Z
    .registers 2

    const-string p0, "certificate_policy"

    .line 690
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 695
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isCertificateValidationAtInstallEnabledAsUser(I)Z
    .registers 2

    const-string p0, "certificate_policy"

    .line 700
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 705
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isClipboardAllowed(Z)Z
    .registers 4

    const-string/jumbo p0, "restriction_policy"

    .line 304
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 308
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 309
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 308
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    return p0
.end method

.method public isClipboardShareAllowed()Z
    .registers 3

    const-string/jumbo p0, "restriction_policy"

    .line 809
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 813
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isCopyContactToSimAllowed(I)Z
    .registers 2

    const-string/jumbo p0, "phone_restriction_policy"

    .line 905
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 909
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(I)Z

    move-result p0

    return p0
.end method

.method public isDataAllowedFromSimSlot(I)Z
    .registers 2

    const-string/jumbo p0, "phone_restriction_policy"

    .line 1305
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 1309
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result p0

    return p0
.end method

.method public isDiscoverableEnabled()Z
    .registers 2

    const-string p0, "bluetooth_policy"

    .line 258
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isFactoryResetAllowed()Z
    .registers 2

    const-string/jumbo p0, "restriction_policy"

    .line 469
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isGoogleAccountsAutoSyncAllowedAsUser(I)Z
    .registers 2

    const-string/jumbo p0, "restriction_policy"

    .line 866
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 870
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isIncomingCallAllowedFromSimSlot(I)Z
    .registers 2

    const-string/jumbo p0, "phone_restriction_policy"

    .line 1278
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 1282
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingCallAllowedFromSimSlot(I)Z

    move-result p0

    return p0
.end method

.method public isIncomingMmsAllowed()Z
    .registers 2

    const-string/jumbo p0, "phone_restriction_policy"

    .line 527
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 v0, 0x0

    .line 531
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isIncomingSmsAllowed()Z
    .registers 3

    const-string/jumbo p0, "phone_restriction_policy"

    .line 507
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 511
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 512
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isIncomingSmsAllowedFromSimSlot(I)Z
    .registers 2

    const-string/jumbo p0, "phone_restriction_policy"

    .line 1242
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 1246
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowedFromSimSlot(I)Z

    move-result p0

    return p0
.end method

.method public isKnoxBluetoothEnabled(I)Z
    .registers 4

    const-string/jumbo p0, "mum_container_policy"

    .line 1125
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    return v0

    .line 1129
    :cond_d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .registers 3

    const-string/jumbo p0, "phone_restriction_policy"

    .line 352
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 356
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isMicrophoneEnabled(Z)Z
    .registers 4

    const-string/jumbo p0, "restriction_policy"

    .line 314
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 318
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 318
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    return p0
.end method

.method public isMmsAllowedFromSimSlot(I)Z
    .registers 2

    const-string/jumbo p0, "phone_restriction_policy"

    .line 1260
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 1264
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isMmsAllowedFromSimSlot(I)Z

    move-result p0

    return p0
.end method

.method public isMockLocationEnabled()Z
    .registers 3

    const-string/jumbo p0, "restriction_policy"

    .line 858
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 862
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isNtpSetByMDM()Z
    .registers 1

    .line 437
    invoke-static {}, Lcom/android/server/NetworkTimeUpdateService;->isNtpSetByMDM()Z

    move-result p0

    return p0
.end method

.method public isOcspCheckEnabled()Z
    .registers 3

    const-string p0, "certificate_policy"

    .line 788
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 792
    :cond_c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 793
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 792
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isOutgoingCallAllowedFromSimSlot(I)Z
    .registers 2

    const-string/jumbo p0, "phone_restriction_policy"

    .line 1269
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 1273
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingCallAllowedFromSimSlot(I)Z

    move-result p0

    return p0
.end method

.method public isOutgoingCallsAllowed()Z
    .registers 2

    const-string p0, "bluetooth_policy"

    .line 214
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    const/4 v0, 0x1

    if-nez p0, :cond_c

    return v0

    .line 218
    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isOutgoingSmsAllowed()Z
    .registers 3

    const-string/jumbo p0, "phone_restriction_policy"

    .line 517
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 521
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 522
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isOutgoingSmsAllowedFromSimSlot(I)Z
    .registers 2

    const-string/jumbo p0, "phone_restriction_policy"

    .line 1251
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 1255
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowedFromSimSlot(I)Z

    move-result p0

    return p0
.end method

.method public isPackageAllowedToAccessExternalSdcard(II)Z
    .registers 5

    const-string/jumbo p0, "mum_container_policy"

    .line 1134
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    return v0

    .line 1138
    :cond_d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isPackageAllowedToAccessExternalSdcard(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0

    return p0
.end method

.method public isPackageInAvrWhitelist(I)Z
    .registers 4

    const-string p0, "application_policy"

    .line 1222
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez p0, :cond_13

    const-string p0, "EDMProxyService"

    const-string p1, "AVR Policy returning false due null applicationPolicy"

    .line 1224
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 v0, 0x3

    .line 1227
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageInWhitelistInternal(III)Z

    move-result p0

    return p0
.end method

.method public isPairingEnabled()Z
    .registers 2

    const-string p0, "bluetooth_policy"

    .line 249
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    const/4 v0, 0x1

    if-nez p0, :cond_c

    return v0

    .line 253
    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isPairingEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public isProfileEnabled(I)Z
    .registers 3

    const-string p0, "bluetooth_policy"

    .line 232
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    const/4 v0, 0x1

    if-nez p0, :cond_c

    return v0

    .line 235
    :cond_c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabledInternal(IZ)Z

    move-result p0

    return p0
.end method

.method public isRevocationCheckEnabled()Z
    .registers 3

    const-string p0, "certificate_policy"

    .line 778
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 782
    :cond_c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 783
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isRoamingDataEnabled()Z
    .registers 2

    const-string/jumbo p0, "roaming_policy"

    .line 295
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isRoamingPushEnabled()Z
    .registers 2

    const-string/jumbo p0, "roaming_policy"

    .line 286
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isSMSCaptureEnabled()Z
    .registers 3

    const-string p0, "device_info"

    .line 167
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/device/DeviceInfo;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 172
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->isSMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isScreenLockPatternVisibilityEnabled()Z
    .registers 3

    const-string/jumbo p0, "password_policy"

    .line 442
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 446
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isScreenLockPatternVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isScreenLockPatternVisibilityEnabledAsUser(I)Z
    .registers 2

    const-string/jumbo p0, "password_policy"

    .line 451
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 455
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isScreenLockPatternVisibilityEnabledAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isSmsPatternCheckRequired()Z
    .registers 1

    const-string/jumbo p0, "phone_restriction_policy"

    .line 407
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 411
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSmsPatternCheckRequired()Z

    move-result p0

    return p0
.end method

.method public isTaskManagerAllowed(Z)Z
    .registers 4

    const-string/jumbo p0, "kioskmode"

    .line 497
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 501
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    return p0
.end method

.method public isVideoRecordAllowed(Z)Z
    .registers 4

    const-string/jumbo p0, "restriction_policy"

    .line 768
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 772
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 773
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 772
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    return p0
.end method

.method public isWapPushAllowed()Z
    .registers 2

    const-string/jumbo p0, "phone_restriction_policy"

    .line 849
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 v0, 0x0

    .line 853
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 5

    const-string p0, "certificate_policy"

    .line 631
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-nez p0, :cond_b

    return-void

    .line 635
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    .registers 3

    const-string p0, "certificate_policy"

    .line 798
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-nez p0, :cond_b

    return-void

    .line 802
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyPasswordPolicyOneLockChanged(ZI)V
    .registers 3

    const-string/jumbo p0, "password_policy"

    .line 1232
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-nez p0, :cond_c

    return-void

    .line 1236
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->notifyPasswordPolicyOneLockChanged(ZI)V

    return-void
.end method

.method public registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z
    .registers 2

    .line 1217
    iget-object p0, p0, Lcom/android/server/enterprise/EDMProxyService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    move-result p0

    return p0
.end method

.method public shallForceNtpMdmValues()Z
    .registers 1

    .line 433
    invoke-static {}, Lcom/android/server/NetworkTimeUpdateService;->shallForceNtpMdmValues()Z

    move-result p0

    return p0
.end method

.method public storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const-string/jumbo p0, "phone_restriction_policy"

    .line 839
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-nez v0, :cond_d

    return-void

    :cond_d
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 843
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    const-string p0, "device_info"

    .line 158
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    if-nez v0, :cond_c

    return-void

    :cond_c
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 162
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/device/DeviceInfo;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const-string p0, "device_info"

    .line 176
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/device/DeviceInfo;

    if-nez p0, :cond_b

    return-void

    .line 180
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/device/DeviceInfo;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public ucmDecrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "com.samsung.ucs.ucsservice"

    .line 1155
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    .line 1160
    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1161
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    :cond_14
    return-object v0
.end method

.method public ucmEncrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "com.samsung.ucs.ucsservice"

    .line 1165
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    .line 1170
    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1171
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    :cond_14
    return-object v0
.end method

.method public ucmGetCertificateChain(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "com.samsung.ucs.ucsservice"

    .line 1145
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    .line 1150
    :cond_c
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1151
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    :cond_14
    return-object v0
.end method

.method public ucmSign(Ljava/lang/String;[BLjava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "com.samsung.ucs.ucsservice"

    .line 1175
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    .line 1180
    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sign(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1181
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    :cond_14
    return-object v0
.end method

.method public validateCertificateAtInstallAsUser([BI)I
    .registers 8

    const-string p0, "Could not convert certificate."

    const-string v0, "EDMProxyService"

    const-string v1, "certificate_policy"

    .line 710
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v1, :cond_97

    .line 712
    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_97

    :cond_16
    const/4 v2, 0x7

    if-nez p1, :cond_1a

    return v2

    .line 721
    :cond_1a
    :try_start_1a
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 722
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 724
    :cond_26
    invoke-static {p1}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertDerToPem([B)[B

    move-result-object p1

    if-eqz p1, :cond_30

    .line 726
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v3

    :cond_30
    if-eqz v3, :cond_6f

    .line 727
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_36} :catch_93
    .catch Ljava/security/cert/CertificateException; {:try_start_1a .. :try_end_36} :catch_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_36} :catch_75

    if-eqz p1, :cond_39

    goto :goto_6f

    .line 743
    :cond_39
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 745
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 746
    new-instance v2, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 747
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 749
    :cond_57
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6a

    const/4 p1, 0x0

    .line 750
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-virtual {v1, p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I

    move-result p0

    return p0

    .line 752
    :cond_6a
    invoke-virtual {v1, p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstallAsUser(Ljava/util/List;I)I

    move-result p0

    return p0

    :cond_6f
    :goto_6f
    :try_start_6f
    const-string p1, "Could not convert one certificate."

    .line 728
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_74} :catch_93
    .catch Ljava/security/cert/CertificateException; {:try_start_6f .. :try_end_74} :catch_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6f .. :try_end_74} :catch_75

    return v2

    :catch_75
    move-exception p0

    .line 739
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not a certificate "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 736
    :catch_8f
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 733
    :catch_93
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_97
    :goto_97
    const/4 p0, -0x1

    return p0
.end method

.class final enum Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;
.super Ljava/lang/Enum;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppControlStateEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PERMISSION_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_AVR_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CAMERA_ALLOWLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CLEARCACHE_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CLEARCACHE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CLEARDATA_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CLEARDATA_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CLIPBOARD_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CLIPBOARD_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_DISABLED_LIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_DOZEMODE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_FOCUSMONITORING_LIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_FOCUSMONITORING_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_INSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_INSTALLER_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_INSTALLER_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_NOTIFICATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_NOTIFICATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_OCSP_CHECK:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_REVOCATION_CHECK:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_START_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_START_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_STOP_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_STOP_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_UPDATE_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_UPDATE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_WIDGET_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_WIDGET_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum SIGNATURE_CAMERA_ALLOWLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum SIGNATURE_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum SIGNATURE_INSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum UNINSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum UNINSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final sAppApiMaskToKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adminMapKey:Ljava/lang/String;

.field private mask:I

.field private table:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 47

    .line 378
    new-instance v6, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v1, "PKGNAME_DISABLED_LIST"

    const/4 v2, 0x0

    const-string v3, "PackageNameDisabledList"

    const/4 v4, 0x2

    const-string v5, "APPLICATION"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_DISABLED_LIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 380
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_INSTALLATION_BLACKLIST"

    const/4 v9, 0x1

    const-string v10, "PackageNameInstallationBlacklist"

    const/4 v11, 0x4

    const-string v12, "APPLICATION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 382
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v14, "PKGNAME_INSTALLATION_WHITELIST"

    const/4 v15, 0x2

    const-string v16, "PackageNameInstallationWhitelist"

    const/16 v17, 0x8

    const-string v18, "APPLICATION"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_INSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 384
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PERMISSION_INSTALLATION_BLACKLIST"

    const/4 v9, 0x3

    const-string v10, "PermissionInstallationBlacklist"

    const/4 v11, 0x0

    const-string v12, "APPLICATION_PERMISSION"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PERMISSION_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 386
    new-instance v3, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v14, "SIGNATURE_INSTALLATION_BLACKLIST"

    const/4 v15, 0x4

    const-string v16, "SignatureInstallationBlacklist"

    const/16 v17, 0x1

    const-string/jumbo v18, "signature"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->SIGNATURE_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 389
    new-instance v4, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "SIGNATURE_INSTALLATION_WHITELIST"

    const/4 v9, 0x5

    const-string v10, "SignatureInstallationWhitelist"

    const/4 v11, 0x2

    const-string/jumbo v12, "signature"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->SIGNATURE_INSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 392
    new-instance v5, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v14, "PKGNAME_STOP_BLACKLIST"

    const/4 v15, 0x6

    const-string v16, "PackageNameStopBlacklist"

    const/16 v17, 0x10

    const-string v18, "APPLICATION"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_STOP_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 394
    new-instance v13, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_STOP_WHITELIST"

    const/4 v9, 0x7

    const-string v10, "PackageNameStopWhitelist"

    const/16 v11, 0x20

    const-string v12, "APPLICATION"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_STOP_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 396
    new-instance v7, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v15, "PKGNAME_WIDGET_WHITELIST"

    const/16 v16, 0x8

    const-string v17, "PackageNameWidgetWhitelist"

    const/16 v18, 0x80

    const-string v19, "APPLICATION"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_WIDGET_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 398
    new-instance v8, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v21, "PKGNAME_WIDGET_BLACKLIST"

    const/16 v22, 0x9

    const-string v23, "PackageNameWidgetBlacklist"

    const/16 v24, 0x40

    const-string v25, "APPLICATION"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_WIDGET_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 400
    new-instance v9, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v15, "PKGNAME_NOTIFICATION_BLACKLIST"

    const/16 v16, 0xa

    const-string v17, "PackageNameNotificationBlacklist"

    const/16 v18, 0x100

    const-string v19, "APPLICATION"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_NOTIFICATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 402
    new-instance v10, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v21, "PKGNAME_NOTIFICATION_WHITELIST"

    const/16 v22, 0xb

    const-string v23, "PackageNameNotificationWhitelist"

    const/16 v24, 0x200

    const-string v25, "APPLICATION"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_NOTIFICATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 404
    new-instance v11, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v15, "PKGNAME_CLEARDATA_BLACKLIST"

    const/16 v16, 0xc

    const-string v17, "PackageNameClearDataBlacklist"

    const/16 v18, 0x2000

    const-string v19, "APPLICATION"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLEARDATA_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 406
    new-instance v12, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v21, "PKGNAME_CLEARDATA_WHITELIST"

    const/16 v22, 0xd

    const-string v23, "PackageNameClearDataWhitelist"

    const/16 v24, 0x4000

    const-string v25, "APPLICATION"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLEARDATA_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 408
    new-instance v20, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v15, "PKGNAME_CLEARCACHE_BLACKLIST"

    const/16 v16, 0xe

    const-string v17, "PackageNameClearCacheBlacklist"

    const v18, 0x8000

    const-string v19, "APPLICATION"

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLEARCACHE_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 410
    new-instance v14, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v22, "PKGNAME_CLEARCACHE_WHITELIST"

    const/16 v23, 0xf

    const-string v24, "PackageNameClearCacheWhitelist"

    const/high16 v25, 0x10000

    const-string v26, "APPLICATION"

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLEARCACHE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 412
    new-instance v15, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v28, "PKGNAME_START_BLACKLIST"

    const/16 v29, 0x10

    const-string v30, "PackageNameStartBlacklist"

    const/high16 v31, 0x80000

    const-string v32, "APPLICATION"

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_START_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 414
    new-instance v16, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v22, "PKGNAME_START_WHITELIST"

    const/16 v23, 0x11

    const-string v24, "PackageNameStartWhitelist"

    const/16 v25, 0x0

    const-string v26, "INVALID_TABLE"

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v16, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_START_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 416
    new-instance v17, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v28, "PKGNAME_CLIPBOARD_BLACKLIST"

    const/16 v29, 0x12

    const-string v30, "PackageNameDisableClipboardBlackList"

    const/high16 v31, 0x200000

    const-string v32, "APPLICATION"

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v17, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLIPBOARD_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 418
    new-instance v18, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v22, "PKGNAME_CLIPBOARD_WHITELIST"

    const/16 v23, 0x13

    const-string v24, "PackageNameDisableClipboardWhitelist"

    const/high16 v25, 0x400000

    const-string v26, "APPLICATION"

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v18, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLIPBOARD_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 420
    new-instance v19, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v28, "PKGNAME_FOCUSMONITORING_LIST"

    const/16 v29, 0x14

    const-string v30, "PackageNameFocusMonitoringList"

    const/high16 v31, 0x800000

    const-string v32, "APPLICATION"

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v19, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_FOCUSMONITORING_LIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 422
    new-instance v27, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v22, "PKGNAME_FOCUSMONITORING_WHITELIST"

    const/16 v23, 0x15

    const-string v24, "PackageNameFocusMonitoringWhiteList"

    const/16 v25, 0x0

    const-string v26, "INVALID_TABLE"

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v27, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_FOCUSMONITORING_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 424
    new-instance v21, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v29, "PKGNAME_DOZEMODE_WHITELIST"

    const/16 v30, 0x16

    const-string v31, "PackageNameDozeModeWhiteList"

    const/high16 v32, 0x1000000

    const-string v33, "APPLICATION"

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v21, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_DOZEMODE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 426
    new-instance v22, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v35, "PKGNAME_AVR_WHITELIST"

    const/16 v36, 0x17

    const-string v37, "PackageNameAvrWhitelist"

    const/high16 v38, 0x20000000

    const-string v39, "APPLICATION"

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v22, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_AVR_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 428
    new-instance v23, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v29, "PKGNAME_REVOCATION_CHECK"

    const/16 v30, 0x18

    const-string v31, "RevocationCheck"

    const/16 v32, 0x800

    const-string v33, "APPLICATION"

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v23, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_REVOCATION_CHECK:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 430
    new-instance v24, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v35, "PKGNAME_OCSP_CHECK"

    const/16 v36, 0x19

    const-string v37, "OcspCheck"

    const/16 v38, 0x1000

    const-string v39, "APPLICATION"

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v24, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_OCSP_CHECK:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 432
    new-instance v25, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v29, "PKGNAME_UPDATE_WHITELIST"

    const/16 v30, 0x1a

    const-string v31, "PackageNameUpdateWhitelist"

    const/high16 v32, 0x40000

    const-string v33, "APPLICATION"

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v25, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_UPDATE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 434
    new-instance v26, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v35, "PKGNAME_UPDATE_BLACKLIST"

    const/16 v36, 0x1b

    const-string v37, "PackageNameUpdateBlacklist"

    const/high16 v38, 0x20000

    const-string v39, "APPLICATION"

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v26, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_UPDATE_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 436
    new-instance v34, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v29, "UNINSTALLATION_BLACKLIST"

    const/16 v30, 0x1c

    const-string v31, "UninstallationBlacklist"

    const/16 v32, 0x1

    const-string v33, "APPLICATION"

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v34, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->UNINSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 438
    new-instance v28, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v36, "UNINSTALLATION_WHITELIST"

    const/16 v37, 0x1d

    const-string v38, "UninstallationWhitelist"

    const/16 v39, 0x400

    const-string v40, "APPLICATION"

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v40}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v28, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->UNINSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 440
    new-instance v29, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v42, "PKGNAME_INSTALLER_WHITELIST"

    const/16 v43, 0x1e

    const-string v44, "PackageNameInstallerWhiteList"

    const/high16 v45, 0x2000000

    const-string v46, "APPLICATION"

    move-object/from16 v41, v29

    invoke-direct/range {v41 .. v46}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v29, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_INSTALLER_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 442
    new-instance v30, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v36, "PKGNAME_INSTALLER_BLACKLIST"

    const/16 v37, 0x1f

    const-string v38, "PackageNameInstallerBlackList"

    const/high16 v39, 0x4000000

    const-string v40, "APPLICATION"

    move-object/from16 v35, v30

    invoke-direct/range {v35 .. v40}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v30, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_INSTALLER_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 444
    new-instance v31, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v42, "PKGNAME_CAMERA_ALLOWLIST"

    const/16 v43, 0x20

    const-string v44, "PackageNameCameraAllowlist"

    const/high16 v45, 0x40000000    # 2.0f

    const-string v46, "APPLICATION"

    move-object/from16 v41, v31

    invoke-direct/range {v41 .. v46}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v31, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CAMERA_ALLOWLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 446
    new-instance v32, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v36, "SIGNATURE_CAMERA_ALLOWLIST"

    const/16 v37, 0x21

    const-string v38, "SignatureCameraAllowlist"

    const/16 v39, 0x4

    const-string/jumbo v40, "signature"

    move-object/from16 v35, v32

    invoke-direct/range {v35 .. v40}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v32, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->SIGNATURE_CAMERA_ALLOWLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    move-object/from16 v33, v15

    const/16 v15, 0x22

    new-array v15, v15, [Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v35, 0x0

    aput-object v6, v15, v35

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v33, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v27, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    const/16 v0, 0x1b

    aput-object v26, v15, v0

    const/16 v0, 0x1c

    aput-object v34, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    const/16 v0, 0x20

    aput-object v31, v15, v0

    const/16 v0, 0x21

    aput-object v32, v15, v0

    .line 377
    sput-object v15, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->$VALUES:[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->sAppApiMaskToKey:Ljava/util/Map;

    .line 479
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->values()[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    move-result-object v0

    array-length v1, v0

    move/from16 v2, v35

    :goto_30a
    if-ge v2, v1, :cond_32a

    aget-object v3, v0, v2

    .line 480
    invoke-virtual {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->getTable()Ljava/lang/String;

    move-result-object v4

    const-string v5, "APPLICATION"

    if-ne v4, v5, :cond_327

    .line 481
    sget-object v4, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->sAppApiMaskToKey:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->getMask()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->getAdminMapKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_327
    add-int/lit8 v2, v2, 0x1

    goto :goto_30a

    :cond_32a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 453
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 454
    iput-object p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    .line 455
    iput p4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->mask:I

    .line 456
    iput-object p5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->table:Ljava/lang/String;

    return-void
.end method

.method public static getAppApiMaskKeyMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->sAppApiMaskToKey:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;
    .registers 2

    .line 377
    const-class v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;
    .registers 1

    .line 377
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->$VALUES:[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    return-object v0
.end method


# virtual methods
.method public getAdminMapKey()Ljava/lang/String;
    .registers 1

    .line 465
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    return-object p0
.end method

.method public getMask()I
    .registers 1

    .line 469
    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->mask:I

    return p0
.end method

.method public getTable()Ljava/lang/String;
    .registers 1

    .line 473
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->table:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 461
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    return-object p0
.end method

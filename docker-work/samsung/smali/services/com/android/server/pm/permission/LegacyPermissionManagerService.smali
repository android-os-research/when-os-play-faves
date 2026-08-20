.class public Lcom/android/server/pm/permission/LegacyPermissionManagerService;
.super Landroid/permission/ILegacyPermissionManager$Stub;
.source "LegacyPermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;,
        Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field public final mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;


# direct methods
.method public static synthetic $r8$lambda$4ho3FnztDWmTvVJqwlJzbdcnRtw(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$4([Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$K55aU-roY4lv_Wob0IAz8DdAyOc(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$grantDefaultPermissionsToEnabledCarrierApps$6([Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PbUQb6XgWD82KYv2JvUW9FxTFN0(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$grantDefaultPermissionsToActiveLuiApp$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UZIHoUTv2o6sEy4iu84zF2lPrXY(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$grantDefaultPermissionsToCarrierServiceApp$0(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ezdPR4j-X_BE3HK_clEkRp-Yp-8(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$revokeDefaultPermissionsFromLuiApps$2([Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kI8DHUIHl0KCzTrDG5x_o0X79rs(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$5([Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zcGdKsM2aK1YS4jdsYcxzTsWD9s(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$grantDefaultPermissionsToEnabledImsServices$3([Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 81
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;)V

    .line 83
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal-IA;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo p1, "legacy_permission"

    .line 84
    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 88
    invoke-direct {p0}, Landroid/permission/ILegacyPermissionManager$Stub;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 91
    new-instance p2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-direct {p2, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .registers 3

    .line 70
    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    if-nez v1, :cond_16

    .line 73
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    :cond_16
    return-object v1
.end method

.method private synthetic lambda$grantDefaultPermissionsToActiveLuiApp$1(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 268
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$grantDefaultPermissionsToCarrierServiceApp$0(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 260
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$grantDefaultPermissionsToEnabledCarrierApps$6([Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$grantDefaultPermissionsToEnabledImsServices$3([Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$4([Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 296
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$5([Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 306
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$revokeDefaultPermissionsFromLuiApps$2([Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 16

    .line 97
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->verifyCallerCanCheckAccess(Ljava/lang/String;Ljava/lang/String;II)V

    .line 99
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_60

    if-nez v0, :cond_f

    goto :goto_60

    .line 104
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v2, p4, p5}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    if-eqz p1, :cond_5e

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v2

    .line 113
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v4, "appops"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AppOpsManager;

    :try_start_2d
    const-string v5, "android:read_device_identifiers"

    move v6, p5

    move-object v7, p1

    move-object v8, p3

    move-object v9, p2

    .line 116
    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_57

    if-nez p2, :cond_3f

    .line 121
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->restoreCallingIdentity(J)V

    return v1

    :cond_3f
    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {p2, v2, v3}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 125
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string p2, "device_policy"

    .line 126
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_5e

    .line 127
    invoke-virtual {p0, p1, p4, p5}, Landroid/app/admin/DevicePolicyManager;->hasDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_5e

    return v1

    :catchall_57
    move-exception p1

    .line 121
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 122
    throw p1

    :cond_5e
    const/4 p0, -0x1

    return p0

    :cond_60
    :goto_60
    return v1
.end method

.method public final checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 14

    if-eqz p2, :cond_c

    .line 240
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v0, p2, p6, p7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_c

    const/4 p0, -0x1

    return p0

    .line 245
    :cond_c
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string p2, "appops"

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/AppOpsManager;

    move-object v1, p3

    move v2, p7

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    .line 247
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 21

    move-object v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    move-object/from16 v11, p2

    move/from16 v12, p5

    .line 138
    invoke-virtual {p0, v9, v11, v10, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->verifyCallerCanCheckAccess(Ljava/lang/String;Ljava/lang/String;II)V

    .line 139
    iget-object v0, v8, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, v10, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_18

    return v13

    :cond_18
    const/4 v0, -0x1

    if-nez v9, :cond_1c

    return v0

    .line 154
    :cond_1c
    :try_start_1c
    iget-object v1, v8, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v1, v9, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 155
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_24} :catch_2a

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :catch_2a
    :cond_2a
    move v1, v13

    :goto_2b
    if-eqz v1, :cond_43

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android:read_phone_state"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 165
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_43

    return v0

    :cond_43
    move v14, v0

    const/4 v2, 0x0

    const-string v3, "android:write_sms"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 173
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_59

    return v13

    :cond_59
    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    const-string v3, "android:read_phone_numbers"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 178
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_6f

    return v13

    :cond_6f
    const-string v2, "android.permission.READ_SMS"

    const-string v3, "android:read_sms"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 184
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_85

    return v13

    :cond_85
    return v14
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .registers 5

    .line 265
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "grantDefaultPermissionsToActiveLuiApp"

    .line 266
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 268
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    .registers 4

    const-string/jumbo v0, "grantDefaultPermissionsForCarrierServiceApp"

    .line 257
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .registers 5

    .line 313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "grantPermissionsToEnabledCarrierApps"

    .line 314
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 316
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .registers 5

    .line 283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "grantDefaultPermissionsToEnabledImsServices"

    .line 284
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 286
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 5

    .line 293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    .line 294
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 296
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 5

    .line 303
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    .line 304
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 306
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .registers 5

    .line 274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "revokeDefaultPermissionsFromLuiApps"

    .line 275
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 277
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final verifyCallerCanCheckAccess(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getCallingUid()I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getCallingPid()I

    move-result v1

    .line 198
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v2, v3, :cond_1c

    if-ne v0, p4, :cond_1a

    if-eq v1, p3, :cond_1c

    :cond_1a
    move v2, v5

    goto :goto_1d

    :cond_1c
    move v2, v4

    :goto_1d
    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz p1, :cond_53

    .line 204
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-lt v8, v3, :cond_53

    .line 205
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {p0, p1, v8}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getPackageUidForUser(Ljava/lang/String;I)I

    move-result p0

    if-eq p4, p0, :cond_53

    const p0, 0x534e4554

    new-array v2, v6, [Ljava/lang/Object;

    const-string v8, "193441322"

    aput-object v8, v2, v4

    .line 208
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-lt v8, v3, :cond_44

    move v3, v0

    goto :goto_45

    :cond_44
    move v3, p4

    :goto_45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Package uid mismatch"

    aput-object v3, v2, v7

    .line 207
    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move v2, v5

    :cond_53
    if-nez v2, :cond_56

    return-void

    :cond_56
    const/4 p0, 0x6

    new-array p0, p0, [Ljava/lang/Object;

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v5

    aput-object p1, p0, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v6

    const/4 p1, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p0, p1

    const/4 p1, 0x5

    aput-object p2, p0, p1

    const-string p1, "Calling uid %d, pid %d cannot access for package %s (uid=%d, pid=%d): %s"

    .line 214
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 217
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

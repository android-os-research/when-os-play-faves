.class public Lcom/android/server/DualAppManagerService;
.super Lcom/samsung/android/app/ISemDualAppManager$Stub;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DualAppManagerService$OpChangeListener;,
        Lcom/android/server/DualAppManagerService$InternalHandler;
    }
.end annotation


# static fields
.field public static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final BADGE_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.provider.badge"

.field public static final BST_AIRMESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.bst.airmessage"

.field public static final BST_FLOATINGPROXY_PACKAGE_NAME:Ljava/lang/String; = "com.bst.floatingmsgproxy"

.field public static final CHROME_PACKAGE_NAME:Ljava/lang/String; = "com.android.chrome"

.field public static final COMMAND_ADD_WHITELISTE_PKG:Ljava/lang/String; = "addInstalledWhitelistedPkg"

.field public static final COMMAND_PRINT_WHITELISTE_PKG:Ljava/lang/String; = "printInstalledWhitelistedPkg"

.field public static final COMMAND_REMOVE_ALL_WHITELISTE_PKGS:Ljava/lang/String; = "removeAllInstalledWhitelistedPkgs"

.field public static final COMMAND_REMOVE_WHITELISTE_PKG:Ljava/lang/String; = "removeInstalledWhitelistedPkg"

.field public static final COMMAND_RENEW_WHITELISTE_PKG:Ljava/lang/String; = "renewInstalledWhitelistedPkgs"

.field public static final COMMAND_SET_NOTIFICATION_SOUND:Ljava/lang/String; = "setDualAppNotificationSound"

.field public static final COMMAND_STRING:Ljava/lang/String; = "command"

.field public static final COMMAND_UPDATE_WHITELIST_PKG:Ljava/lang/String; = "updateWhitelistPkgs"

.field public static final DAAGENT_EMPTY_CLASS:Ljava/lang/String; = "com.samsung.android.da.daagent.activity.EmptyActivity"

.field public static final DAAGENT_FORWARD_SHARE_CLASS:Ljava/lang/String; = "com.samsung.android.da.daagent.activity.ForwardShareActivity"

.field public static final DAAGENT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.da.daagent"

.field public static final DAAGENT_REMOVE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.da.daagent.RemoveDualIM"

.field public static final DAAGENT_SWITCH_LAUNCHER_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.da.daagent.service.SwitchLauncherService"

.field public static final DA_INTENT_ACTION_ADD:Ljava/lang/String; = "com.samsung.android.da.daagent.PACKAGE_ADDED"

.field public static final DA_INTENT_ACTION_REMOVE:Ljava/lang/String; = "com.samsung.android.da.daagent.PACKAGE_REMOVED"

.field public static final DDC_PERMISSION_TAG:Ljava/lang/String; = "com.samsung.android.teelicense"

.field public static final DEFAULT_PACKAGES_NOT_FORWARDING:[Ljava/lang/String;

.field public static final DUALAPP_DEFAULT_PACKAGES:[Ljava/lang/String;

.field public static final DUAL_APP_DIRECTORY_REVISION:Ljava/lang/String; = "persist.sys.dualapp.directory.revision"

.field public static DUAL_APP_NOTIFICATION_URI:Ljava/lang/String; = null

.field public static final DUAL_APP_PROP:Ljava/lang/String; = "persist.sys.dualapp.prop"

.field public static final EXTRA_DEFAULT_LAUNCHER:Ljava/lang/String; = "defaultLauncher"

.field public static final GMS_OVERLAY_MODULEMETADATA_FORFRAMEWORK:Ljava/lang/String; = "com.google.android.overlay.modules.modulemetadata.forframework"

.field public static final GMS_OVERLAY_PERMISSION_CONTROLLER:Ljava/lang/String; = "com.google.android.overlay.modules.permissioncontroller"

.field public static final GMS_OVERLAY_PERMISSION_CONTROLLER_FORFRAMEWORK:Ljava/lang/String; = "com.google.android.overlay.modules.permissioncontroller.forframework"

.field public static final GMS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gms"

.field public static final GMS_PERMISSION_CONTROLLER:Ljava/lang/String; = "com.google.android.permissioncontroller"

.field public static final GMS_PERMISSION_CONTROLLER_CHN:Ljava/lang/String; = "com.samsung.android.permissioncontroller"

.field public static final GMS_PERMISSION_CONTROLLER_SOS:Ljava/lang/String; = "com.android.permissioncontroller"

.field public static final GSF_LOGIN_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gsf.login"

.field public static final GSF_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gsf"

.field public static final KAKAOTALK_SETTINGS_THEME_URI:Ljava/lang/String; = "kakaotalk://settings/theme/"

.field public static final KEY_ALL_INSTALLED_WHITELISTED_PKGS:Ljava/lang/String; = "allInstalledWhitelistedPkgs"

.field public static final KEY_PKG_LIST:Ljava/lang/String; = "packageList"

.field public static final KEY_PKG_NAME:Ljava/lang/String; = "pkgName"

.field public static final KEY_PKG_UID:Ljava/lang/String; = "pkgUid"

.field public static final KEY_SOUND_URI:Ljava/lang/String; = "sound_uri"

.field public static final METADATA_SMART_SCAN:Ljava/lang/String; = "com.samsung.android.bbcagent.notify_install"

.field public static final NFC_PACKAGE_NAME:Ljava/lang/String; = "com.android.nfc"

.field public static final PACKAGE_NAME_SBROWSER:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field public static final REGISTER_DATA_WEDGE:Ljava/lang/String; = "sys.datawedge.prop"

.field public static final RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final RESULT_CODE_FAIL:I = 0x0

.field public static final RESULT_CODE_SUCCESS:I = 0x1

.field public static final RESULT_DESC:Ljava/lang/String; = "result_desc"

.field public static final RESULT_DESC_FAIL:Ljava/lang/String; = "fail"

.field public static final RESULT_DESC_SUCCESS:Ljava/lang/String; = "success"

.field public static final SAMSUNG_PAY_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.spay"

.field public static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final SETTINGS_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.settings"

.field public static final TAG:Ljava/lang/String; = "DualAppManagerService"

.field public static final TELECOM_PACKAGE_NAME:Ljava/lang/String; = "com.android.server.telecom"

.field public static final WEBVIEW_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.webview"

.field public static final WEIBO_PACKAGE_NAME:Ljava/lang/String; = "com.sina.weibo"

.field public static inOpsCallback:I = 0x0

.field public static isNotNullInputContextNotified:Z = false

.field public static isNullInputContextNotified:Z = false

.field public static final kEYCHAIN_PACKAGE_NAME:Ljava/lang/String; = "com.android.keychain"

.field public static lastResumedActivity:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static mDaMonthlyUsageCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mDaWeeklyUsageCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mHandler:Lcom/android/server/DualAppManagerService$InternalHandler;

.field public static mInstalledWhitelistedPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mWhitelistedPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sDAMSInstance:Lcom/android/server/DualAppManagerService;

.field public static thisWeek:I


# instance fields
.field public mOpChangeListener:Lcom/android/server/DualAppManagerService$OpChangeListener;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmInstalledWhitelistedPkgMap()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smupdateWedgeAboutActivity(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/DualAppManagerService;->updateWedgeAboutActivity(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smupdateWedgeAboutInputContext(Ljava/lang/String;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/DualAppManagerService;->updateWedgeAboutInputContext(Ljava/lang/String;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 12

    const-string v0, "com.google.android.gms"

    const-string v1, "com.google.android.gsf"

    const-string v2, "com.google.android.gsf.login"

    const-string v3, "com.android.chrome"

    const-string v4, "com.google.android.webview"

    const-string v5, "com.android.nfc"

    const-string v6, "com.google.android.permissioncontroller"

    const-string v7, "com.android.permissioncontroller"

    const-string v8, "com.samsung.android.permissioncontroller"

    const-string v9, "com.google.android.overlay.modules.permissioncontroller"

    const-string v10, "com.google.android.overlay.modules.permissioncontroller.forframework"

    const-string v11, "com.google.android.overlay.modules.modulemetadata.forframework"

    .line 122
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DualAppManagerService;->DEFAULT_PACKAGES_NOT_FORWARDING:[Ljava/lang/String;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.providers.settings"

    const-string v3, "android"

    const-string v4, "com.android.keychain"

    const-string v5, "com.google.android.webview"

    const-string v6, "com.sec.android.provider.badge"

    const-string v7, "com.bst.floatingmsgproxy"

    const-string v8, "com.bst.airmessage"

    const-string v9, "com.android.server.telecom"

    .line 130
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DualAppManagerService;->DUALAPP_DEFAULT_PACKAGES:[Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/DualAppManagerService;->mDaWeeklyUsageCount:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/DualAppManagerService;->mDaMonthlyUsageCount:Ljava/util/List;

    const/4 v0, -0x1

    .line 141
    sput v0, Lcom/android/server/DualAppManagerService;->thisWeek:I

    const/4 v0, 0x0

    .line 143
    sput-object v0, Lcom/android/server/DualAppManagerService;->DUAL_APP_NOTIFICATION_URI:Ljava/lang/String;

    .line 145
    sput-object v0, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    .line 147
    sput-object v0, Lcom/android/server/DualAppManagerService;->mHandler:Lcom/android/server/DualAppManagerService$InternalHandler;

    .line 152
    sput-object v0, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    const/4 v0, 0x0

    .line 153
    sput-boolean v0, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    .line 154
    sput-boolean v0, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 284
    invoke-direct {p0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;-><init>()V

    .line 229
    new-instance v0, Lcom/android/server/DualAppManagerService$OpChangeListener;

    invoke-direct {v0, p0}, Lcom/android/server/DualAppManagerService$OpChangeListener;-><init>(Lcom/android/server/DualAppManagerService;)V

    iput-object v0, p0, Lcom/android/server/DualAppManagerService;->mOpChangeListener:Lcom/android/server/DualAppManagerService$OpChangeListener;

    .line 285
    new-instance v0, Lcom/android/server/DualAppManagerService$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DualAppManagerService$InternalHandler;-><init>(Lcom/android/server/DualAppManagerService;Lcom/android/server/DualAppManagerService$InternalHandler-IA;)V

    sput-object v0, Lcom/android/server/DualAppManagerService;->mHandler:Lcom/android/server/DualAppManagerService$InternalHandler;

    return-void
.end method

.method public static addDualAppResolveInfo(Landroid/content/Intent;II)Z
    .registers 5

    .line 902
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    if-nez p2, :cond_2d

    .line 906
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_2d

    .line 907
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SEND"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 908
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    :cond_2c
    const/4 v1, 0x1

    :cond_2d
    return v1
.end method

.method public static changeInfoIfDeletingDualApp(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ILjava/lang/String;)Landroid/content/pm/ActivityInfo;
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const-string v1, "com.samsung.android.da.daagent"

    .line 661
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-object p1

    :cond_d
    const-string v2, "com.android.settings"

    .line 666
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-object p1

    .line 671
    :cond_16
    invoke-static {p4}, Lcom/samsung/android/app/SemDualAppManager;->isSamsungLauncher(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1d

    return-object p1

    .line 677
    :cond_1d
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p4

    if-eqz p4, :cond_2c

    .line 678
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p4

    goto :goto_2d

    :cond_2c
    move-object p4, v0

    .line 681
    :goto_2d
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/samsung/android/app/SemDualAppManager;->isWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    return-object p1

    :cond_38
    const-string v2, "android.intent.extra.USER"

    .line 686
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    if-eqz v2, :cond_46

    .line 689
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 694
    :cond_46
    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-nez v2, :cond_4f

    if-eqz p3, :cond_4f

    return-object p1

    .line 699
    :cond_4f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 700
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.da.daagent.RemoveDualIM"

    .line 701
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x10480

    const/4 v5, 0x0

    .line 702
    invoke-virtual {p0, v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_69

    .line 704
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_69
    if-eqz v0, :cond_85

    .line 706
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p1, "com.samsung.android.da.original_intent"

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo p0, "packageName"

    .line 708
    invoke-virtual {p2, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "userId"

    .line 709
    invoke-virtual {p2, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    :cond_85
    return-object p1
.end method

.method public static changeUriForDualApp(Landroid/content/Intent;I)V
    .registers 7

    const-string/jumbo v0, "output"

    .line 861
    :try_start_3
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_18

    .line 862
    invoke-static {v1, p1}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 863
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 864
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 866
    :cond_18
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 867
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ClipData;->fixUris(I)V

    .line 869
    :cond_25
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 870
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    .line 871
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_44
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 873
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4e} :catch_b5

    const-string v1, "android.intent.extra.STREAM"

    if-eqz v0, :cond_89

    .line 874
    :try_start_52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 875
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_b9

    .line 876
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b9

    .line 877
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 878
    invoke-static {v3, p1}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 879
    invoke-static {v3, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 881
    :cond_81
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 884
    :cond_85
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_b9

    :cond_89
    const-string v0, "android.intent.action.SEND"

    .line 886
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 887
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b9

    .line 888
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_b9

    .line 889
    invoke-static {v0, p1}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 890
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    .line 891
    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_b4} :catch_b5

    goto :goto_b9

    :catch_b5
    move-exception p0

    .line 896
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b9
    :goto_b9
    return-void
.end method

.method public static checkLauncherSwitch(Lcom/android/server/pm/WatchedIntentFilter;ILandroid/content/ComponentName;I)V
    .registers 5

    .line 848
    :try_start_0
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3f

    if-nez p3, :cond_3f

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result p3

    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p3

    if-eqz p3, :cond_3f

    const-string p3, "android.intent.category.HOME"

    invoke-virtual {p0, p3}, Lcom/android/server/pm/WatchedIntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3f

    const-string p3, "android.intent.action.MAIN"

    invoke-virtual {p0, p3}, Lcom/android/server/pm/WatchedIntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3f

    const-string p3, "android.intent.category.DEFAULT"

    .line 849
    invoke-virtual {p0, p3}, Lcom/android/server/pm/WatchedIntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3f

    const/high16 p0, 0x100000

    if-eq p1, p0, :cond_31

    const p0, 0x108000

    if-ne p1, p0, :cond_3f

    :cond_31
    const/4 p0, 0x1

    .line 852
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p2, p1}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception p0

    .line 855
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public static final getAllInstalledWhitelistedPkgMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 546
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final getAllInstalledWhitelistedUids()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 512
    :try_start_1
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 514
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-object v0, v2

    goto :goto_1b

    :catch_10
    move-exception v1

    const-string v2, "DualAppManagerService"

    const-string v3, "Exception occured in getAllInstalledWhitelistedUids. retrun null"

    .line 517
    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public static final getAllPkgNameByUid(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 554
    :try_start_9
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 555
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 556
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_33

    goto :goto_13

    :catch_33
    move-exception p0

    const-string v1, "DualAppManagerService"

    const-string v2, "Exception occured in getAllPkgNameByUid. retrun null"

    .line 560
    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    return-object v0
.end method

.method public static getDualAppNotificationSound()Ljava/lang/String;
    .registers 2

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDualAppNotificationSound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/DualAppManagerService;->DUAL_APP_NOTIFICATION_URI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualAppManagerService"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    sget-object v0, Lcom/android/server/DualAppManagerService;->DUAL_APP_NOTIFICATION_URI:Ljava/lang/String;

    return-object v0
.end method

.method public static final getFirstPkgNameByUid(I)Ljava/lang/String;
    .registers 5

    .line 569
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    .line 572
    :try_start_5
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 573
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 574
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2d

    move-object v0, p0

    goto :goto_38

    :catch_2d
    move-exception p0

    const-string v1, "DualAppManagerService"

    const-string v2, "Exception occured in getFirstPkgNameByUid. retrun null"

    .line 579
    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    :goto_38
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/DualAppManagerService;
    .registers 3

    .line 289
    sget-object v0, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    if-nez v0, :cond_19

    .line 290
    const-class v0, Lcom/android/server/DualAppManagerService;

    monitor-enter v0

    .line 291
    :try_start_7
    sget-object v1, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    if-nez v1, :cond_14

    .line 292
    new-instance v1, Lcom/android/server/DualAppManagerService;

    invoke-direct {v1}, Lcom/android/server/DualAppManagerService;-><init>()V

    sput-object v1, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    .line 293
    sput-object p0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 295
    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0

    .line 297
    :cond_19
    :goto_19
    sget-object p0, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    return-object p0
.end method

.method public static getUidByPkgName(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    .line 590
    :try_start_1
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1c

    .line 592
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move v0, p0

    goto :goto_1c

    :catch_11
    move-exception p0

    const-string v1, "DualAppManagerService"

    const-string v2, "Exception occured in getUidByPkgName. retrun -1"

    .line 595
    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static getUserIdForQuery(Ljava/util/List;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)I"
        }
    .end annotation

    .line 647
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 648
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 649
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 648
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return p1

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public static hasExternalAppDirPath(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 8

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/emulated/0/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1045
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.extra.STREAM"

    const/4 v2, 0x1

    const-string v3, "file"

    if-eqz v0, :cond_a5

    .line 1047
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1050
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    invoke-virtual {v0, v4}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 1054
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    if-eqz v4, :cond_34

    .line 1055
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1056
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 1057
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    return v2

    .line 1066
    :cond_59
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 1067
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 1068
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 1069
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    return v2

    .line 1076
    :cond_76
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_128

    .line 1079
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_80
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_80

    .line 1080
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1081
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 1082
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    return v2

    .line 1090
    :cond_a5
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 1092
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_e8

    .line 1095
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    invoke-virtual {v0, v4}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 1099
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    if-eqz v4, :cond_c3

    .line 1100
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 1101
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c3

    .line 1102
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c3

    return v2

    .line 1111
    :cond_e8
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_105

    .line 1112
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_105

    .line 1113
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_105

    .line 1114
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    return v2

    .line 1121
    :cond_105
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    if-eqz p0, :cond_128

    .line 1123
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 1124
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_128

    .line 1125
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_128

    return v2

    :cond_128
    const/4 p0, 0x0

    return p0
.end method

.method public static isCrossAccessAllowed(II)Z
    .registers 4

    .line 1492
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    if-nez p0, :cond_a

    return v1

    .line 1496
    :cond_a
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-eqz p0, :cond_13

    if-nez p1, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isDefalutAppPackage(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    const-string v1, ""

    .line 961
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_1f

    .line 965
    :cond_c
    sget-object v1, Lcom/android/server/DualAppManagerService;->DUALAPP_DEFAULT_PACKAGES:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_10
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    .line 966
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1f
    :goto_1f
    return v0
.end method

.method public static isFilteredPackage(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 10

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x1000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    :try_start_8
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 392
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 393
    array-length v3, v0

    move v4, v2

    :goto_14
    if-ge v4, v3, :cond_3f

    aget-object v5, v0, v4

    const-string v6, "com.samsung.android.teelicense"

    .line 394
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    const-string v0, "DualAppManagerService"

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "this is DDC app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_37} :catch_3b

    return v1

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :catch_3b
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    const-string v0, "com.samsung.android.app.smartscan"

    .line 405
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    return v2

    :cond_48
    const/16 v0, 0x80

    .line 410
    :try_start_4a
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_63

    .line 411
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_63

    const-string p1, "com.samsung.android.bbcagent.notify_install"

    .line 412
    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5c} :catch_5f

    if-eqz p0, :cond_63

    return v1

    :catch_5f
    move-exception p0

    .line 416
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_63
    return v2
.end method

.method public static isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z
    .registers 3

    .line 619
    :try_start_0
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_a

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :catch_a
    move-exception p0

    const-string v0, "DualAppManagerService"

    const-string v1, "Exception occured in isInstalledWhitelistedPackageInternal. retrun false"

    .line 623
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static isInstalledWhitelistedUid(I)Z
    .registers 3

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isInstalledWhitelistedUid. uid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualAppManagerService"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :try_start_1c
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    const-string p0, "Found!"

    .line 635
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2d} :catch_2f

    const/4 p0, 0x1

    return p0

    :catch_2f
    move-exception p0

    const-string v0, "Exception occured in isInstalledWhitelistedUid. retrun false"

    .line 639
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public static isLauncherAppTarget(Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_87

    .line 922
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 923
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_87

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 924
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_87

    const-string v1, "android.intent.category.LAUNCHER"

    .line 925
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "android.intent.category.INFO"

    .line 926
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 927
    :cond_36
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 929
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_48

    :goto_46
    move v0, v3

    goto :goto_60

    .line 933
    :cond_48
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 935
    :try_start_4c
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v3, :cond_60

    const-string/jumbo v1, "profile"

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_59} :catch_5c

    if-eqz p0, :cond_60

    goto :goto_46

    :catch_5c
    move-exception p0

    .line 937
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_60
    :goto_60
    if-eqz v0, :cond_87

    .line 941
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 942
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 945
    :try_start_6d
    sget-object v1, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7d} :catch_7e

    goto :goto_82

    :catch_7e
    move-exception p0

    .line 948
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 950
    :goto_82
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isSamsungLauncher(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_87
    return v0
.end method

.method public static isSelfContainedAction(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 532
    :cond_4
    invoke-static {p0}, Lcom/android/server/DualAppManagerService;->getAllPkgNameByUid(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 535
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 536
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_22
    return v0
.end method

.method public static mayForwardInstalledPackagesToOwner(JI)Z
    .registers 3

    .line 1009
    sget-object p0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_a

    return p1

    .line 1012
    :cond_a
    invoke-static {p2}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedUid(I)Z

    move-result p0

    if-nez p0, :cond_11

    return p1

    .line 1015
    :cond_11
    invoke-static {p2}, Lcom/android/server/DualAppManagerService;->getFirstPkgNameByUid(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.kakao.talk"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return p1
.end method

.method public static mayForwardIntent(Landroid/content/Intent;)Z
    .registers 4

    if-eqz p0, :cond_4d

    .line 1022
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 1024
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    return v2

    :cond_10
    const-string v1, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    .line 1026
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    return v2

    :cond_19
    const-string v1, "android.intent.action.MAIN"

    .line 1028
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    return v2

    :cond_2a
    const-string p0, "android.intent.action.MANAGE_APP_PERMISSIONS"

    .line 1030
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    const-string p0, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_4c

    :cond_3b
    const-string p0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 1032
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    return v2

    :cond_44
    const-string p0, "android.settings.APP_NOTIFICATION_SETTINGS"

    .line 1034
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    :cond_4c
    :goto_4c
    return v2

    :cond_4d
    const/4 p0, 0x1

    return p0
.end method

.method public static mayForwardShare(Landroid/content/Intent;Ljava/lang/String;II)Z
    .registers 11

    .line 1137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "com.samsung.android.da.daagent.FORWARD_SHARE_FROM_OWNER"

    if-eqz p0, :cond_28

    .line 1142
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_28

    :cond_17
    const-string p0, "DualAppManagerService"

    const-string/jumbo p1, "illegal action. this action doens\'t use other app."

    .line 1143
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "not allow this action"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1148
    :cond_28
    :goto_28
    :try_start_28
    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_ac

    const/4 v3, 0x1

    const-string v4, "com.samsung.android.da.daagent.activity.ForwardShareActivity"

    const-string v5, "android.intent.extra.INTENT"

    const-string v6, "com.samsung.android.da.daagent"

    if-eqz v2, :cond_71

    if-eqz p0, :cond_4e

    :try_start_37
    const-string p2, "android.intent.action.CHOOSER"

    .line 1151
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 1152
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    goto :goto_4f

    :cond_4e
    move-object p2, p0

    :goto_4f
    if-nez p2, :cond_52

    return v1

    .line 1158
    :cond_52
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_59

    return v1

    .line 1161
    :cond_59
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_60

    return v1

    .line 1165
    :cond_60
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_67

    return v1

    .line 1169
    :cond_67
    invoke-static {p2, p1}, Lcom/android/server/DualAppManagerService;->hasExternalAppDirPath(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 1170
    invoke-virtual {p0, v6, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return v3

    :cond_71
    if-nez p3, :cond_ac

    .line 1176
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_83

    .line 1179
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_83

    .line 1182
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 1186
    :cond_83
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    return v1

    .line 1190
    :cond_8a
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p2

    if-eqz p2, :cond_ac

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ac

    .line 1191
    invoke-static {p0, p1}, Lcom/android/server/DualAppManagerService;->hasExternalAppDirPath(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 1192
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1193
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1194
    invoke-virtual {p0, v6, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_ab} :catch_ac

    return v3

    :catch_ac
    :cond_ac
    return v1
.end method

.method public static notifyActivityResumedLocked(ILjava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "sys.datawedge.prop"

    const/4 v1, 0x0

    .line 301
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_33

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DW::notifyActivityResumedLocked "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DualAppManagerService"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sput-object p1, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    .line 305
    sput-boolean v1, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    .line 306
    sput-boolean v1, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    const/4 p0, 0x4

    .line 307
    invoke-static {p0, v1, v1, p1}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;)V

    :cond_33
    return-void
.end method

.method public static notifyInputContextChanged(ILjava/lang/String;Z)V
    .registers 7

    const-string/jumbo p1, "sys.datawedge.prop"

    const/4 v0, 0x0

    .line 312
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4e

    const-string/jumbo p1, "|"

    const/4 v2, 0x5

    if-nez p2, :cond_2f

    .line 316
    sget-boolean p2, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    if-nez p2, :cond_4e

    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, v0, p0}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;)V

    .line 319
    sput-boolean v1, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    goto :goto_4e

    .line 323
    :cond_2f
    sget-boolean p2, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    if-nez p2, :cond_4e

    .line 325
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, v0, p0}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;)V

    .line 326
    sput-boolean v1, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    .line 328
    sput-boolean v1, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    :cond_4e
    :goto_4e
    return-void
.end method

.method public static recordDaUsageCount(Landroid/content/Context;Landroid/content/Intent;IILjava/lang/String;)V
    .registers 5

    .line 1434
    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-eqz p0, :cond_29

    if-nez p1, :cond_9

    goto :goto_29

    .line 1438
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1439
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    .line 1441
    :cond_18
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    .line 1444
    :goto_1c
    invoke-static {p0}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_23

    return-void

    :cond_23
    const/4 p0, 0x3

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1448
    invoke-static {p0, p2, p2, p1}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public static sendBroadcastCustomIntent(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 5

    .line 353
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "com.samsung.android.da.daagent.PACKAGE_REMOVED"

    goto :goto_11

    :cond_f
    const-string v0, "com.samsung.android.da.daagent.PACKAGE_ADDED"

    .line 357
    :goto_11
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    const-string p0, "DualAppManagerService"

    const-string p1, " can not sendBroadcast intent, becuase pkgName is null"

    .line 360
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    if-nez p1, :cond_42

    .line 366
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/SemDualAppManager;->isWhitelistedPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 368
    invoke-virtual {p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 369
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.da.daagent"

    .line 370
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    sget-object p2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_42
    return-void
.end method

.method public static sendInternalMsg(IIILjava/lang/Object;)V
    .registers 10

    const-wide/16 v4, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 210
    invoke-static/range {v0 .. v5}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;J)V

    return-void
.end method

.method public static sendInternalMsg(IIILjava/lang/Object;J)V
    .registers 9

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendInternalMsg() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualAppManagerService"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v0, Lcom/android/server/DualAppManagerService;->mHandler:Lcom/android/server/DualAppManagerService$InternalHandler;

    if-eqz v0, :cond_3f

    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_37

    .line 220
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_45

    .line 222
    :cond_37
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_45

    :cond_3f
    const-string/jumbo p0, "sendInternalMsg() failed, handler is null"

    .line 225
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    return-void
.end method

.method public static shouldForwardToOwner(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_5c

    const-string v1, ""

    .line 980
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5c

    .line 984
    :cond_c
    sget-object v1, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/SemDualAppManager;->isWhitelistedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 985
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    return v2

    .line 988
    :cond_22
    sget-object v1, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 989
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    return v2

    .line 994
    :cond_37
    sget-object v1, Lcom/android/server/DualAppManagerService;->DEFAULT_PACKAGES_NOT_FORWARDING:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_3b
    if-ge v4, v3, :cond_49

    aget-object v5, v1, v4

    .line 995
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    return v2

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_49
    const-string v1, "com.bst.floatingmsgproxy"

    .line 1000
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "com.bst.airmessage"

    .line 1001
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    goto :goto_5b

    :cond_5a
    return v0

    :cond_5b
    :goto_5b
    return v2

    :cond_5c
    :goto_5c
    return v0
.end method

.method public static startDAChooserActivity(Landroid/content/Intent;IILjava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 1209
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/DualAppManagerService;->startDAChooserActivity(Landroid/content/Intent;IILjava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static startDAChooserActivity(Landroid/content/Intent;IILjava/lang/String;I)Landroid/content/Intent;
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "DualAppManagerService"

    const-string v5, "com.bst.floatingmsgproxy"

    .line 1215
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_33f

    const-string v5, "com.bst.airmessage"

    .line 1216
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33f

    const-string v5, "com.samsung.android.da.daagent"

    .line 1217
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33f

    const-string v7, "com.samsung.android.spay"

    .line 1218
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    goto/16 :goto_33f

    .line 1223
    :cond_2d
    :try_start_2d
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v7

    .line 1228
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.samsung.android.da.daagent.activity.ForwardShareActivity"

    invoke-direct {v9, v5, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    const-string v1, "com.samsung.android.da.daagent.activity.EmptyActivity"

    .line 1230
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Invalid call to share"

    .line 1231
    invoke-static {v4, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_4d
    if-eqz v7, :cond_56

    .line 1236
    invoke-static {v0, v3, v2, v1}, Lcom/android/server/DualAppManagerService;->mayForwardShare(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_56

    return-object v6

    :cond_56
    const-string v5, "android.intent.action.SEND"

    .line 1240
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const v9, 0x1040f2a

    const/4 v10, 0x1

    if-nez v5, :cond_72

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    .line 1241
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    :cond_72
    if-nez v7, :cond_2a3

    if-nez v1, :cond_78

    goto/16 :goto_2a3

    :cond_78
    const/16 v5, 0x3e8

    const v11, 0x1040f19

    if-eqz v2, :cond_85

    .line 1256
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v12

    if-eqz v12, :cond_d2

    .line 1257
    :cond_85
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_d2

    move/from16 v12, p4

    if-eq v12, v5, :cond_d2

    .line 1258
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d2

    .line 1259
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d2

    const-string v12, "com.sina.weibo"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d2

    .line 1260
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/app/SemDualAppManager;->isChooserRequired(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d2

    .line 1261
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1262
    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1261
    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_1aa

    .line 1264
    :cond_d2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_d6} :catch_336

    const-string v13, "com.tencent.mobileqqi"

    const-string v14, "com.tencent.mobileqq"

    if-eqz v12, :cond_126

    :try_start_dc
    const-string/jumbo v12, "mqqapi"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_126

    .line 1265
    invoke-static {v14}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f9

    .line 1266
    invoke-static {v13}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_126

    .line 1268
    :cond_f9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_108

    .line 1269
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_10c

    .line 1271
    :cond_108
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :goto_10c
    if-eqz v3, :cond_115

    .line 1273
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    return-object v6

    .line 1277
    :cond_115
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1278
    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1277
    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_1aa

    .line 1280
    :cond_126
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_12a} :catch_336

    const-string v15, "com.tencent.mm"

    if-eqz v12, :cond_178

    :try_start_12e
    const-string/jumbo v12, "weixin"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_178

    .line 1281
    invoke-static {v15}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_178

    .line 1283
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1284
    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1283
    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const-string v5, "com.sec.android.app.sbrowser"

    .line 1286
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_164

    const-string v5, "com.android.chrome"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    :cond_164
    const-string v3, "android.intent.category.BROWSABLE"

    .line 1287
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    const/high16 v3, 0x14000000

    .line 1288
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "startDAChooserActivity addFlags for chooserIntent"

    .line 1289
    invoke-static {v4, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1aa

    .line 1292
    :cond_178
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_1ad

    const-string/jumbo v8, "mqqwallet"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ad

    .line 1293
    invoke-static {v14}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_19b

    .line 1294
    invoke-static {v13}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1ad

    .line 1296
    :cond_19b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1297
    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1296
    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    :cond_1aa
    :goto_1aa
    move v8, v10

    goto/16 :goto_2d7

    :cond_1ad
    if-nez v2, :cond_206

    .line 1300
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-eq v2, v5, :cond_206

    const-string v2, "com.taobao.taobao"

    .line 1301
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cd

    const-string v2, "com.eg.android.AlipayGphone"

    .line 1302
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cd

    const-string v2, "com.tmall.wireless"

    .line 1303
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_206

    .line 1307
    :cond_1cd
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1dc

    .line 1308
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1e0

    .line 1310
    :cond_1dc
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :goto_1e0
    if-eqz v3, :cond_2a0

    if-eqz v2, :cond_2a0

    .line 1312
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a0

    .line 1313
    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a0

    .line 1314
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChinaDualApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a0

    .line 1315
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1316
    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1315
    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_1aa

    :cond_206
    const-string/jumbo v2, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile"

    .line 1320
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_280

    const-string/jumbo v2, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.voip"

    .line 1322
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_280

    const-string/jumbo v2, "vnd.android.cursor.item/vnd.com.tencent.mm.plugin.sns.timeline"

    .line 1324
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_280

    const-string/jumbo v2, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.voiceaction"

    .line 1326
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23b

    goto :goto_280

    .line 1333
    :cond_23b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "kakaotalk://settings/theme/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a0

    const-string v2, "com.kakao.talk"

    .line 1334
    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a0

    .line 1336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1338
    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1337
    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_1aa

    .line 1327
    :cond_280
    :goto_280
    invoke-static {v15}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a0

    .line 1328
    invoke-static/range {p3 .. p3}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a0

    .line 1329
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040f30

    .line 1330
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1329
    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_1aa

    :cond_2a0
    move-object v2, v6

    const/4 v8, 0x0

    goto :goto_2d7

    .line 1244
    :cond_2a3
    :goto_2a3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2b2

    .line 1245
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2b6

    .line 1247
    :cond_2b2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :goto_2b6
    if-eqz v3, :cond_2a0

    if-eqz v2, :cond_2a0

    .line 1250
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a0

    .line 1251
    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a0

    .line 1252
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1253
    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1252
    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_1aa

    :goto_2d7
    if-eqz v8, :cond_33f

    .line 1343
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_2e3

    .line 1345
    invoke-static/range {p0 .. p1}, Lcom/android/server/DualAppManagerService;->changeUriForDualApp(Landroid/content/Intent;I)V

    .line 1347
    :cond_2e3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_302

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ret1 : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_302
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_321

    .line 1351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ret2 : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_321
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    .line 1355
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_335
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_335} :catch_336

    return-object v2

    :catch_336
    move-exception v0

    const-string v1, "fail startDAChooserActivity"

    .line 1359
    invoke-static {v4, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33f
    :goto_33f
    return-object v6
.end method

.method public static updateWedgeAboutActivity(Ljava/lang/String;)V
    .registers 4

    const-string v0, "content://com.samsung.android.bbc.bbcagent/updateForegroundActivity"

    .line 335
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 336
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "component"

    .line 337
    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object p0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static updateWedgeAboutInputContext(Ljava/lang/String;I)V
    .registers 5

    const-string v0, "content://com.samsung.android.bbc.bbcagent/updateInputContext"

    .line 342
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 343
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 344
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v2, "newInputContextNotNull"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "component"

    .line 345
    invoke-virtual {v1, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object p0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final addOpChangeListener(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final addWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    .line 749
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pkgName"

    .line 751
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pkgUid"

    .line 752
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    const-string/jumbo v3, "result_desc"

    const-string/jumbo v4, "result_code"

    if-nez v1, :cond_26

    .line 755
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "package name is null"

    .line 756
    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 757
    :cond_26
    sget-object v5, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_39

    .line 758
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "package is already added"

    .line 759
    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 762
    :cond_39
    :try_start_39
    sget-object v5, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "success"

    .line 764
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4b} :catch_4c

    goto :goto_57

    :catch_4c
    move-exception p1

    .line 766
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 767
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :goto_57
    invoke-virtual {p0, v1}, Lcom/android/server/DualAppManagerService;->addOpChangeListener(Ljava/lang/String;)V

    :goto_5a
    return-object v0
.end method

.method public getAllInstalledWhitelistedPackages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 497
    :try_start_1
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 499
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-object p0, v1

    goto :goto_17

    :catch_10
    const-string v0, "DualAppManagerService"

    const-string v1, "Exception occured in getAllInstalledWhitelistedPackages. retrun null"

    .line 502
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_17
    return-object p0
.end method

.method public getAllWhitelistedPackages()[Ljava/lang/String;
    .registers 3

    .line 1479
    sget-object p0, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    .line 1480
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "DualAppManagerService"

    const-string v1, "getAllWhitelistedPackages : empty"

    .line 1481
    invoke-static {p0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1484
    :cond_13
    sget-object p0, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_28
    return-object v0
.end method

.method public isInstalledWhitelistedPackage(Ljava/lang/String;)Z
    .registers 3

    const-string p0, "DualAppManagerService"

    .line 605
    :try_start_2
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "Found!"

    .line 606
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    const/4 p0, 0x1

    return p0

    :catch_11
    move-exception p1

    const-string v0, "Exception occured in isInstalledWhitelistedPackage. retrun false"

    .line 610
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final printInstalledWhitelistedPkg()V
    .registers 5

    const-string p0, "DualAppManagerService"

    const-string/jumbo v0, "printInstalledWhitelistedPkg called!"

    .line 812
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installed whitelisted dual app ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_4b
    return-void
.end method

.method public final removeAllWhitelistedPkgs(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 801
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 803
    sget-object p1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const-string/jumbo p1, "result_code"

    const/4 v0, 0x1

    .line 805
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result_desc"

    const-string/jumbo v0, "success"

    .line 806
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final removeWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    .line 777
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "pkgName"

    .line 779
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "result_desc"

    const-string/jumbo v2, "result_code"

    if-nez p1, :cond_1f

    .line 781
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "package name is null"

    .line 782
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 783
    :cond_1f
    sget-object v3, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_32

    .line 784
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "package doesn\'t exist"

    .line 785
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 788
    :cond_32
    :try_start_32
    sget-object v3, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "success"

    .line 790
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_41

    goto :goto_4c

    :catch_41
    move-exception p1

    .line 792
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 793
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c
    return-object p0
.end method

.method public final renewWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 716
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 718
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-string v1, "allInstalledWhitelistedPkgs"

    .line 720
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 721
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 723
    sget-object p1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 724
    invoke-virtual {p0, v1}, Lcom/android/server/DualAppManagerService;->addOpChangeListener(Ljava/lang/String;)V

    goto :goto_21

    :cond_31
    const/4 p0, 0x1

    const-string/jumbo p1, "result_code"

    .line 727
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "result_desc"

    const-string/jumbo p1, "success"

    .line 728
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setDualAppNotificationSound(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 824
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "sound_uri"

    .line 826
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDualAppNotificationSound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualAppManagerService"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string/jumbo v1, "result_desc"

    const-string/jumbo v2, "result_code"

    if-nez p1, :cond_36

    .line 830
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "uri is null"

    .line 831
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 834
    :cond_36
    :try_start_36
    sput-object p1, Lcom/android/server/DualAppManagerService;->DUAL_APP_NOTIFICATION_URI:Ljava/lang/String;

    const/4 p1, 0x1

    .line 835
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "success"

    .line 836
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_42} :catch_43

    goto :goto_4e

    :catch_43
    move-exception p1

    .line 838
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 839
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4e
    return-object p0
.end method

.method public systemReady()V
    .registers 4

    const-string/jumbo v0, "persist.sys.dualapp.directory.revision"

    const-string v1, "DualAppManagerService"

    const-string v2, "DualAppManagerService ready"

    .line 423
    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :try_start_a
    sget-object v2, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/server/DualAppManagerService;->writeDualAppProfileId(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_28

    const/4 p0, 0x0

    .line 433
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_28

    const-string p0, "1"

    .line 435
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_1f

    goto :goto_28

    :catch_1f
    move-exception p0

    const-string v0, "Failed to write dual app profile id"

    .line 439
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_28
    :goto_28
    const-string/jumbo p0, "systemReady done."

    .line 443
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateDAUsage()V
    .registers 5

    .line 1452
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x7

    .line 1453
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x3

    .line 1454
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    .line 1455
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 1456
    sget v2, Lcom/android/server/DualAppManagerService;->thisWeek:I

    if-eq v2, v1, :cond_1e

    .line 1457
    sget-object v2, Lcom/android/server/DualAppManagerService;->mDaWeeklyUsageCount:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1458
    sput v1, Lcom/android/server/DualAppManagerService;->thisWeek:I

    .line 1460
    :cond_1e
    sget-object v1, Lcom/android/server/DualAppManagerService;->mDaWeeklyUsageCount:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 1461
    sget-object v1, Lcom/android/server/DualAppManagerService;->mDaWeeklyUsageCount:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    :try_start_33
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.da.daagent.provider/recordUsage"

    .line 1464
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    .line 1463
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception v0

    .line 1467
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1471
    :cond_4d
    :goto_4d
    sget-object v0, Lcom/android/server/DualAppManagerService;->mDaMonthlyUsageCount:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 1472
    sget-object v0, Lcom/android/server/DualAppManagerService;->mDaMonthlyUsageCount:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    return-void
.end method

.method public declared-synchronized updateDualAppData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "com.samsung.android.da.daagent"

    .line 448
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_cf

    .line 449
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_14

    goto/16 :goto_cf

    :cond_14
    const-string v0, "DualAppManagerService"

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDualAppData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_47

    const-string p1, "DualAppManagerService"

    const-string/jumbo p2, "updateDualAppData. Bundle is null"

    .line 459
    invoke-static {p1, p2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_d9

    .line 460
    monitor-exit p0

    return-object v1

    :cond_47
    :try_start_47
    const-string p1, "command"

    .line 463
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_d9

    :try_start_4d
    const-string/jumbo p2, "renewInstalledWhitelistedPkgs"

    .line 466
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 467
    invoke-virtual {p0, p3}, Lcom/android/server/DualAppManagerService;->renewWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto/16 :goto_cd

    :cond_5c
    const-string p2, "addInstalledWhitelistedPkg"

    .line 468
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_69

    .line 469
    invoke-virtual {p0, p3}, Lcom/android/server/DualAppManagerService;->addWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_cd

    :cond_69
    const-string/jumbo p2, "removeInstalledWhitelistedPkg"

    .line 470
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_77

    .line 471
    invoke-virtual {p0, p3}, Lcom/android/server/DualAppManagerService;->removeWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_cd

    :cond_77
    const-string/jumbo p2, "removeAllInstalledWhitelistedPkgs"

    .line 472
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_85

    .line 473
    invoke-virtual {p0, p3}, Lcom/android/server/DualAppManagerService;->removeAllWhitelistedPkgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_cd

    :cond_85
    const-string/jumbo p2, "printInstalledWhitelistedPkg"

    .line 474
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_92

    .line 475
    invoke-virtual {p0}, Lcom/android/server/DualAppManagerService;->printInstalledWhitelistedPkg()V

    goto :goto_cd

    :cond_92
    const-string/jumbo p2, "setDualAppNotificationSound"

    .line 476
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a0

    .line 477
    invoke-virtual {p0, p3}, Lcom/android/server/DualAppManagerService;->setDualAppNotificationSound(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_cd

    :cond_a0
    const-string/jumbo p2, "updateWhitelistPkgs"

    .line 478
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 479
    invoke-virtual {p0, p3}, Lcom/android/server/DualAppManagerService;->updateWhitelistPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_cd

    .line 481
    :cond_ae
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_b3} :catch_c9
    .catchall {:try_start_4d .. :try_end_b3} :catchall_d9

    :try_start_b3
    const-string/jumbo p2, "result_code"

    const/4 p3, 0x0

    .line 482
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "result_desc"

    const-string/jumbo p3, "not defined command"

    .line 483
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_c3} :catch_c5
    .catchall {:try_start_b3 .. :try_end_c3} :catchall_d9

    move-object v1, p1

    goto :goto_cd

    :catch_c5
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_ca

    :catch_c9
    move-exception p1

    .line 486
    :goto_ca
    :try_start_ca
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_d9

    .line 489
    :goto_cd
    monitor-exit p0

    return-object v1

    :cond_cf
    :goto_cf
    :try_start_cf
    const-string p1, "DualAppManagerService"

    const-string/jumbo p2, "updateDualAppData is called from unauthorized app"

    .line 450
    invoke-static {p1, p2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_cf .. :try_end_d7} :catchall_d9

    .line 451
    monitor-exit p0

    return-object v1

    :catchall_d9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateInstalledWhitelistPackages()V
    .registers 7

    .line 1417
    sget-object p0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://com.samsung.android.da.daagent.provider/getInstalledApps"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1419
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p0, :cond_65

    .line 1422
    :goto_1b
    :try_start_1b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "DualAppManagerService"

    .line 1423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInstalledWhitelistPackages : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_1b .. :try_end_5b} :catchall_60

    goto :goto_1b

    .line 1427
    :cond_5c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_65

    :catchall_60
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1429
    throw v0

    :cond_65
    :goto_65
    return-void
.end method

.method public updateWhitelistPackages()V
    .registers 7

    .line 1403
    sget-object p0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://com.samsung.android.da.daagent.provider/getWhitelistApps"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1405
    sget-object v0, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p0, :cond_4e

    .line 1407
    :goto_1b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWhitelistPackages : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DualAppManagerService"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    sget-object v0, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 1412
    :cond_4b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4e
    return-void
.end method

.method public final updateWhitelistPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 734
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "packageList"

    .line 736
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_12

    .line 739
    sput-object p1, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    :cond_12
    const/4 p1, 0x1

    const-string/jumbo v0, "result_code"

    .line 742
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result_desc"

    const-string/jumbo v0, "success"

    .line 743
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final writeDualAppProfileId(Landroid/content/Context;)Z
    .registers 8

    .line 1368
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 1369
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 1370
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    .line 1371
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1372
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    move p1, v0

    goto :goto_29

    :cond_26
    const/16 p0, -0x2710

    move p1, v1

    :goto_29
    const-string/jumbo v2, "persist.sys.dualapp.prop"

    .line 1378
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DualAppManagerService"

    if-eqz v3, :cond_4f

    .line 1379
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4f

    .line 1380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dualapp_prop "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    :cond_4f
    if-eqz p1, :cond_57

    const-string v3, "0"

    .line 1383
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :cond_57
    const-string v3, "1"

    .line 1385
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5c
    const-string/jumbo v2, "sys.dualapp.profile_id"

    if-eqz p1, :cond_7d

    .line 1390
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found DA Profile. Id = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 1391
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_7d
    const-string p0, "Can not found DA Profile. Id"

    .line 1395
    invoke-static {v4, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    .line 1396
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

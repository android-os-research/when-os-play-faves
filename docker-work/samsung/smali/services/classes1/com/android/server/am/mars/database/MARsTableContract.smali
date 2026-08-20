.class public Lcom/android/server/am/mars/database/MARsTableContract;
.super Ljava/lang/Object;
.source "MARsTableContract.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ACTION_MATCH_TYPE:Ljava/lang/String; = "matchType"

.field public static final ADJUST_TARGET_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field public static final APP_SIZE_INCREASED:Ljava/lang/String; = "appSizeIncreased"

.field public static final BIGDATA_RESTRICTION:Ljava/lang/String; = "bigdataRestriction"

.field public static final BUNDLE_KEY_API_RESULT:Ljava/lang/String; = "result"

.field public static final BUNDLE_KEY_ERR_ID:Ljava/lang/String; = "error_id"

.field public static final BUNDLE_KEY_PACKAGE_LIST:Ljava/lang/String; = "package_list"

.field public static final CALLEE:Ljava/lang/String; = "callee"

.field public static final CALLER:Ljava/lang/String; = "caller"

.field public static final CURRENT_IMPORTANT_VALUE:Ljava/lang/String; = "currentImportantValue"

.field public static final DATA_TRAFFIC_AMOUNT:Ljava/lang/String; = "dataTrafficAmount"

.field public static final FIRST_TRIGGER_TIME:Ljava/lang/String; = "firstTriggerTime"

.field public static final IS_ALLOWED:Ljava/lang/String; = "isAllowed"

.field public static final IS_POLICY_ENABLED:Ljava/lang/String; = "isPolicyEnabled"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final KILL_TYPE:Ljava/lang/String; = "killType"

.field public static final MAIN_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field public static final MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

.field public static final MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

.field public static final MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

.field public static final MARS_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.mars"

.field public static final MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

.field public static final MARS_POLICY_DEFINITION:Landroid/net/Uri;

.field public static final MARS_SETTINGS_URI:Landroid/net/Uri;

.field public static final METHOD_GET_DEEP_SLEEP_SPECIFIC_LIST:Ljava/lang/String; = "dc_scpm_get_deep_sleep_specific_list"

.field public static final METHOD_GET_SUSPICIOUS_APP_LIST:Ljava/lang/String; = "dc_scpm_get_suspicious_app_list"

.field public static final NOTIFICATION_UPDATED_COUNT:Ljava/lang/String; = "notificationUpdatedCount"

.field public static final PACKAGE_NAME_MATCH_TYPE:Ljava/lang/String; = "matchType"

.field public static final PREFIX:Ljava/lang/String; = "dc_scpm_"

.field public static final REPEAT_TRIGGER_TIME:Ljava/lang/String; = "repeatTriggerTime"

.field public static final RESTRICTION:Ljava/lang/String; = "restriction"

.field public static final RESTRICTION_TYPE:Ljava/lang/String; = "restrictionType"

.field public static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.dcapi"

.field public static final SCPM_AUTHORITY_URI:Landroid/net/Uri;

.field public static final TARGET_CATEGORY:Ljava/lang/String; = "targetCategory"

.field public static final TARGET_PACKAGE_CONDITION:Ljava/lang/String; = "condition"

.field public static final TARGET_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final TARGET_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field public static final TRAFFIC_INTERVAL:Ljava/lang/String; = "trafficInterval"

.field public static final UNUSED_AUTO_FREEZE_TIME:Ljava/lang/String; = "unusedAutoFreezeTime"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.samsung.android.sm.mars/MARs_Policy"

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.mars/MARs_AutoRunParameter"

    .line 9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.mars/MARs_ExcludeTarget"

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.mars/MARs_IsCurrentImportant"

    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.mars/MARs_AdjustRestriction"

    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.mars/MARs_Settings"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.dcapi"

    .line 59
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->SCPM_AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

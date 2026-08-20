.class public Lcom/android/server/am/mars/database/FASTableContract;
.super Ljava/lang/Object;
.source "FASTableContract.java"


# static fields
.field public static final CALLEEPKG:Ljava/lang/String; = "calleepackage"

.field public static final CALLERPKG:Ljava/lang/String; = "callerpackage"

.field public static final CURRCURRENT_COLNO:I = 0xe

.field public static final CURRENT_COLNO:I = 0xc

.field public static final DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

.field public static final DISABLEREASON:Ljava/lang/String; = "disableReason"

.field public static final DISABLEREASON_COLNO:I = 0xf

.field public static final DISABLERESETTIME:Ljava/lang/String; = "disableResetTime"

.field public static final DISABLERESETTIME_COLNO:I = 0xb

.field public static final DISABLETIME:Ljava/lang/String; = "disableTime"

.field public static final DISABLETIME_COLNO:I = 0x9

.field public static final DISABLETYPE:Ljava/lang/String; = "disableType"

.field public static final DISABLETYPE_COLNO:I = 0xa

.field public static final DISABLE_REASON_ADD_MARS_AUTO:I = 0x1

.field public static final DISABLE_REASON_ADD_MARS_AUTO_SPECIFIC:I = 0x10

.field public static final DISABLE_REASON_ADD_USER_MANUAL:I = 0x2

.field public static final DISABLE_REASON_DEFAULT:I = 0x0

.field public static final DISABLE_REASON_DELETE_MARS_AUTO:I = 0x4

.field public static final DISABLE_REASON_DELETE_USER_MANUAL:I = 0x8

.field public static final EXTRAS:Ljava/lang/String; = "extras"

.field public static final EXTRAS_COLNO:I = 0x5

.field public static final FASQueryProjectionV1:[Ljava/lang/String;

.field public static final FASQueryProjectionV2:[Ljava/lang/String;

.field public static final FASQueryProjectionV3:[Ljava/lang/String;

.field public static final FAS_TYPE_ADD_ANOMAL_AUTO:I = 0x4

.field public static final FAS_TYPE_ADD_ANOMAL_MANUAL:I = 0x8

.field public static final FAS_TYPE_ADD_MARS_AUTO:I = 0x1

.field public static final FAS_TYPE_ADD_POLICY_IN_CHINA:I = 0x20

.field public static final FAS_TYPE_ADD_PRE_O:I = 0x10

.field public static final FAS_TYPE_ADD_UNKNOWN:I = 0x40

.field public static final FAS_TYPE_ADD_USER_MANUAL:I = 0x2

.field public static final FAS_TYPE_DEFAULT:I = 0x0

.field public static final FAS_TYPE_DELETE_ALLOWLIST:I = 0x400

.field public static final FAS_TYPE_DELETE_MARS_AUTO:I = 0x80

.field public static final FAS_TYPE_DELETE_POLICY_IN_CHINA:I = 0x800

.field public static final FAS_TYPE_DELETE_POST_O:I = 0x200

.field public static final FAS_TYPE_DELETE_UNKNOWN:I = 0x1000

.field public static final FAS_TYPE_DELETE_USER_MANUAL:I = 0x100

.field public static final IS_BLOCKED:Ljava/lang/String; = "isblocked"

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final LEVEL_COLNO:I = 0x8

.field public static final METHOD_FAS_DATA_MIGRATION:Ljava/lang/String; = "FasDataMigration"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final MODE_COLNO:I = 0x2

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NEW_COLNO:I = 0x3

.field public static final PACKAGENAME:Ljava/lang/String; = "package_name"

.field public static final PACKAGENAME_COLNO:I = 0x0

.field public static final PACKAGETYPE:Ljava/lang/String; = "packageType"

.field public static final PACKAGETYPE_COLNO:I = 0x7

.field public static final PACKAGE_STATE_RESTRICT_AUTO:I = 0x1

.field public static final PACKAGE_STATE_RESTRICT_AUTO_DISABLED:I = 0x10

.field public static final PACKAGE_STATE_RESTRICT_AUTO_DISABLED_CANDIDATE:I = 0x8

.field public static final PACKAGE_STATE_RESTRICT_AUTO_EXPIRED:I = 0x4

.field public static final PACKAGE_STATE_RESTRICT_AUTO_EXPIRED_CANDIDATE:I = 0x2

.field public static final PACKAGE_TYPE_3RD_PARTY:I = 0x2

.field public static final PACKAGE_TYPE_DEVICE_ADMIN:I = 0x8

.field public static final PACKAGE_TYPE_DISABLEABLE:I = 0x20

.field public static final PACKAGE_TYPE_HAS_ICON:I = 0x1

.field public static final PACKAGE_TYPE_INTENT_RECEIVING:I = 0x10

.field public static final PACKAGE_TYPE_REMOVEABLE:I = 0x4

.field public static final PACKAGE_TYPE_SYSTEM:I = 0x40

.field public static final PACKAGE_TYPE_UPDATED_SYSTEM:I = 0x80

.field public static final PREBATTERYUSAGE:Ljava/lang/String; = "prevCurrent"

.field public static final PREVCURRENT_COLNO:I = 0xd

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final REASON_COLNO:I = 0x4

.field public static final REQUEST_TIME:Ljava/lang/String; = "requestTime"

.field public static final RESETTIME:Ljava/lang/String; = "resetTime"

.field public static final RESETTIME_COLNO:I = 0x6

.field public static final SETTING_KEY:Ljava/lang/String; = "key"

.field public static final SETTING_VALUE:Ljava/lang/String; = "value"

.field public static final SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

.field public static final SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

.field public static final SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

.field public static final SMART_MGR_FREEZE_EXCLUDE_LIST_URI:Landroid/net/Uri;

.field public static final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final UID_COLNO:I = 0x1

.field public static final disableReasonProjection:[Ljava/lang/String;

.field public static final preBattetyUsageProjection:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    const-string v0, "content://com.sec.android.sdhms.fasprovider/ForcedAppStandby"

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.battery.bridge"

    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

    const-string/jumbo v0, "prevCurrent"

    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->preBattetyUsageProjection:[Ljava/lang/String;

    const-string v0, "disableReason"

    .line 29
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->disableReasonProjection:[Ljava/lang/String;

    const-string/jumbo v1, "package_name"

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, "mode"

    const-string/jumbo v4, "new"

    const-string/jumbo v5, "reason"

    const-string v6, "extras"

    const-string/jumbo v7, "resetTime"

    const-string/jumbo v8, "packageType"

    const-string/jumbo v9, "level"

    const-string v10, "disableType"

    const-string v11, "disableResetTime"

    .line 31
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV1:[Ljava/lang/String;

    const-string/jumbo v1, "package_name"

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, "mode"

    const-string/jumbo v4, "new"

    const-string/jumbo v5, "reason"

    const-string v6, "extras"

    const-string/jumbo v7, "resetTime"

    const-string/jumbo v8, "packageType"

    const-string/jumbo v9, "level"

    const-string v10, "disableType"

    const-string v11, "disableResetTime"

    const-string/jumbo v12, "prevCurrent"

    .line 33
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV2:[Ljava/lang/String;

    const-string/jumbo v1, "package_name"

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, "mode"

    const-string/jumbo v4, "new"

    const-string/jumbo v5, "reason"

    const-string v6, "extras"

    const-string/jumbo v7, "resetTime"

    const-string/jumbo v8, "packageType"

    const-string/jumbo v9, "level"

    const-string v10, "disableType"

    const-string v11, "disableResetTime"

    const-string/jumbo v12, "prevCurrent"

    const-string v13, "disableReason"

    .line 35
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV3:[Ljava/lang/String;

    const-string v0, "content://com.samsung.android.sm/settings"

    .line 99
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm/DefaultAllowedList"

    .line 104
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.appstart/appstart_record"

    .line 106
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm/FreezeExcludeList"

    .line 108
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FREEZE_EXCLUDE_LIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDBValueToDisableReason(Ljava/lang/String;)I
    .registers 2

    const-string v0, "default"

    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const-string v0, "added_from_mars_auto"

    .line 213
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const-string v0, "added_from_user_manual"

    .line 215
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p0, 0x2

    return p0

    :cond_1e
    const-string v0, "deleted_from_mars_auto"

    .line 217
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 p0, 0x4

    return p0

    :cond_28
    const-string v0, "deleted_from_user_manual"

    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 p0, 0x8

    return p0

    :cond_33
    const-string v0, "added_from_mars_auto_specific"

    .line 221
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const/16 p0, 0x10

    return p0

    :cond_3e
    const/4 p0, -0x1

    return p0
.end method

.method public static convertDBValueToState(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "0"

    .line 161
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_36

    :cond_d
    const-string v1, "1"

    .line 163
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x2

    goto :goto_36

    :cond_17
    const-string v1, "2"

    .line 165
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x4

    goto :goto_36

    :cond_21
    const-string v1, "3"

    .line 167
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v0, 0x8

    goto :goto_36

    :cond_2c
    const-string v1, "4"

    .line 169
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    const/16 v0, 0x10

    :cond_36
    :goto_36
    return v0
.end method

.method public static convertDisableReasonToDBValue(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1d

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x10

    if-eq p0, v0, :cond_17

    const-string/jumbo p0, "null"

    return-object p0

    :cond_17
    const-string p0, "added_from_mars_auto_specific"

    return-object p0

    :cond_1a
    const-string p0, "deleted_from_user_manual"

    return-object p0

    :cond_1d
    const-string p0, "deleted_from_mars_auto"

    return-object p0

    :cond_20
    const-string p0, "added_from_user_manual"

    return-object p0

    :cond_23
    const-string p0, "added_from_mars_auto"

    return-object p0

    :cond_26
    const-string p0, "default"

    return-object p0
.end method

.method public static convertFASReasonToValue(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "default"

    .line 120
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const-string v1, "added_from_mars_auto"

    .line 122
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const-string v1, "added_from_user_manual"

    .line 124
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 p0, 0x2

    return p0

    :cond_22
    const-string v1, "added_from_anomaly_auto"

    .line 126
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 p0, 0x4

    return p0

    :cond_2c
    const-string v1, "added_from_anomaly_manual"

    .line 128
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/16 p0, 0x8

    return p0

    :cond_37
    const-string v1, "added_from_pre_o"

    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/16 p0, 0x10

    return p0

    :cond_42
    const-string v1, "added_from_policy_in_china"

    .line 132
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/16 p0, 0x20

    return p0

    :cond_4d
    const-string v1, "added_from_unknown"

    .line 134
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    const/16 p0, 0x40

    return p0

    :cond_58
    const-string v1, "deleted_from_mars_auto"

    .line 136
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    const/16 p0, 0x80

    return p0

    :cond_63
    const-string v1, "deleted_from_user_manual"

    .line 138
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    const/16 p0, 0x100

    return p0

    :cond_6e
    const-string v1, "deleted_from_post_o"

    .line 140
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    const/16 p0, 0x200

    return p0

    :cond_79
    const-string v1, "deleted_from_policy_in_china"

    .line 142
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    const/16 p0, 0x800

    return p0

    :cond_84
    const-string v1, "deleted_from_unknown"

    .line 144
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    const/16 p0, 0x1000

    return p0

    :cond_8f
    return v0
.end method

.method public static convertFASTypeToReason(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_57

    const/4 v0, 0x1

    if-eq p0, v0, :cond_54

    const/4 v0, 0x2

    if-eq p0, v0, :cond_51

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4e

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4b

    const/16 v0, 0x10

    if-eq p0, v0, :cond_48

    const/16 v0, 0x20

    if-eq p0, v0, :cond_45

    const/16 v0, 0x40

    if-eq p0, v0, :cond_42

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3f

    const/16 v0, 0x100

    if-eq p0, v0, :cond_3c

    const/16 v0, 0x200

    if-eq p0, v0, :cond_39

    const/16 v0, 0x800

    if-eq p0, v0, :cond_36

    const/16 v0, 0x1000

    if-eq p0, v0, :cond_33

    const-string/jumbo p0, "null"

    return-object p0

    :cond_33
    const-string p0, "deleted_from_unknown"

    return-object p0

    :cond_36
    const-string p0, "deleted_from_policy_in_china"

    return-object p0

    :cond_39
    const-string p0, "deleted_from_post_o"

    return-object p0

    :cond_3c
    const-string p0, "deleted_from_user_manual"

    return-object p0

    :cond_3f
    const-string p0, "deleted_from_mars_auto"

    return-object p0

    :cond_42
    const-string p0, "added_from_unknown"

    return-object p0

    :cond_45
    const-string p0, "added_from_policy_in_china"

    return-object p0

    :cond_48
    const-string p0, "added_from_pre_o"

    return-object p0

    :cond_4b
    const-string p0, "added_from_anomaly_manual"

    return-object p0

    :cond_4e
    const-string p0, "added_from_anomaly_auto"

    return-object p0

    :cond_51
    const-string p0, "added_from_user_manual"

    return-object p0

    :cond_54
    const-string p0, "added_from_mars_auto"

    return-object p0

    :cond_57
    const-string p0, "default"

    return-object p0
.end method

.method public static convertStateToDBExtrasValue(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_17

    const/16 v0, 0x8

    if-eq p0, v0, :cond_14

    const/16 v0, 0x10

    if-eq p0, v0, :cond_11

    const-string p0, "0"

    return-object p0

    :cond_11
    const-string p0, "4"

    return-object p0

    :cond_14
    const-string p0, "3"

    return-object p0

    :cond_17
    const-string p0, "2"

    return-object p0

    :cond_1a
    const-string p0, "1"

    return-object p0
.end method

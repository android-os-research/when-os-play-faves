.class public Lcom/android/server/am/mars/database/MARsVersionManager;
.super Ljava/lang/Object;
.source "MARsVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;,
        Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;,
        Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;,
        Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;,
        Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;,
        Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;
    }
.end annotation


# static fields
.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_ALARM:I = 0x13

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_ALARM_WAKEUP:I = 0x18

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_ASYNC_BINDER:I = 0x9

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_ASYNC_BINDER_FGS:I = 0x11

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_BG_AUDIO_MODE_VIDEO_APP:I = 0x1a

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_CHINESE_APP:I = 0x1

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_ESSENTIAL_INTENT:I = 0x3

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_FOREGROUND_APP:I = 0x7

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_PROCESS_FREEZE:I = 0x12

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_RAGEBIRD:I = 0x14

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_SETWINDOW_ALARM:I = 0x19

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_VIDEO_CACHING_APP:I = 0x6

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_ALARM:I = 0xb

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_ALARM_WAKEUP:I = 0x17

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_ASSOCIATED_ACTIVITY:I = 0x1b

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_BLOCKLIST:I = 0xa

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_CHINESE_APP:I = 0x2

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_DEEPSLEEP:I = 0x15

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_ESSENTIAL_INTENT:I = 0x4

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_FAKETOP_ACTIVITY:I = 0x8

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_FOREGROUND_SERVICE:I = 0xf

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_HIBERNATION:I = 0x16

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_OLAF_BLOCKLIST:I = 0x10

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_ROGUE_INSTRUMENT_APP:I = 0xe

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_TOP_ACTIVITY:I = 0x5

.field public static final ADJUST_RESTRICTION_TYPE_BROADCAST_PENDING_BLOCKLIST:I = 0xc

.field public static final ADJUST_RESTRICTION_TYPE_GPS_PENDING_BLOCKLIST:I = 0xd

.field public static final TAG:Ljava/lang/String; = "MARsVersionManager"

.field public static final mAdjustRestrictionDefault:[[Ljava/lang/String;

.field public static final mAutoRunParameterDefault:[Ljava/lang/String;

.field public static final mCurrentImportantDefault:[[Ljava/lang/String;

.field public static final mExcludePackageDefault:[[Ljava/lang/String;

.field public static final mMARsSettingsInfoDefault:[[Ljava/lang/String;

.field public static final mPolicyInfoDefault:[[Ljava/lang/String;

.field public static mPolicyInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mApplicationSizeIncreased:J

.field public mContext:Landroid/content/Context;

.field public mExcludeTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;",
            ">;"
        }
    .end annotation
.end field

.field public mFgsExemptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCurrentImportantList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCurrentImportantMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMARsSettingsInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mNotifiUpdatedCount:J

.field public mRestrictionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;",
            ">;"
        }
    .end annotation
.end field

.field public mTrafficAmount:J

.field public mTrafficInterval:J

.field public mUnusedTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 21

    const/4 v0, 0x6

    new-array v1, v0, [[Ljava/lang/String;

    const-string/jumbo v2, "marsversion"

    const-string v3, "1020230704"

    .line 219
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "skipratio"

    const-string v4, "90"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "killthreshold"

    const-string v5, "100"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v1, v6

    const-string/jumbo v2, "restrictionthreshold"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string/jumbo v2, "unused_app_period_days"

    const-string v7, "32"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string/jumbo v2, "restriction_flag"

    const-string v8, "255"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    new-array v1, v7, [[Ljava/lang/String;

    const-string v9, "1"

    const-string v10, "1"

    const-string v11, "13"

    const-string v12, "354255120"

    const-string v13, "12"

    const-string v14, "10"

    const-string v15, "10"

    const-string v16, "337379600"

    .line 229
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v9, "2"

    const-string v10, "0"

    const-string v11, "21"

    const-string v12, "270272648"

    const-string v13, "10"

    const-string v14, "10"

    const-string v15, "5"

    const-string v16, "270272640"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v9, "4"

    const-string v10, "0"

    const-string v11, "25"

    const-string v12, "270272648"

    const-string v13, "26"

    const-string v14, "5"

    const-string v15, "1"

    const-string v16, "270272640"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v9, "8"

    const-string v10, "1"

    const-string v11, "26"

    const-string v12, "0"

    const-string v13, "2"

    const-string v14, "5"

    const-string v15, "0"

    const-string v16, "0"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    const-string v1, "2"

    const-string v2, "15"

    const-string v9, "300"

    const-string v10, "1"

    .line 236
    filled-new-array {v1, v2, v9, v10, v10}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const/16 v2, 0x8

    new-array v9, v2, [[Ljava/lang/String;

    const-string v11, "0"

    const-string v12, "24"

    const-string v13, "contains"

    const-string v14, ".cts."

    .line 239
    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v3

    const-string v13, "endsWith"

    const-string v14, ".cts"

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v4

    const-string v13, "equals"

    const-string v14, "android.app.stubs"

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v6

    const-string v14, "com.samsung.accessory"

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v5

    const-string v12, "com.sec.android.app.shealth"

    filled-new-array {v1, v10, v13, v12}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v7

    const-string v12, "10"

    const-string v14, "com.sec.aecmonitor"

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v8

    const-string v14, "com.salab.act"

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v0

    const-string v12, "4"

    const-string v14, "com.samsung.android.app.cocktailbarservice"

    filled-new-array {v12, v11, v13, v14}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v9, v14

    sput-object v9, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludePackageDefault:[[Ljava/lang/String;

    const/16 v9, 0x9

    new-array v13, v9, [[Ljava/lang/String;

    const-string v15, "8000"

    .line 246
    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v3

    const-string v11, "18284"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v4

    const-string v10, "65529"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v6

    const-string v1, "24032"

    filled-new-array {v12, v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v5

    const-string v1, "5"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v7

    const-string v1, "6"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v8

    const-string v1, "7"

    const-string v10, "20251"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    const-string v1, "8"

    const-string v10, "20264"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v14

    const-string v1, "9"

    const-string v10, "24446"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v2

    sput-object v13, Lcom/android/server/am/mars/database/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    const/16 v1, 0xb2

    new-array v1, v1, [[Ljava/lang/String;

    const-string v15, "1"

    const-string v16, "allow"

    const-string v17, "##Y29tLmVnLmFuZHJvaWQuQWxpcGF5R3Bob25l"

    const/16 v18, 0x0

    const-string v19, "equals"

    const-string v20, "##Y29tLmVnLmFuZHJvaWQuQWxpcGF5R3Bob25lLklBbGl4UGF5"

    .line 254
    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    const-string v15, "1"

    const-string v16, "allow"

    const-string v17, "##Y29tLmFsaXBheS5hbmRyb2lkLmFwcA=="

    const-string v19, "equals"

    const-string v20, "##Y29tLmVnLmFuZHJvaWQuQWxpcGF5R3Bob25lLklBbGl4UGF5"

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v15, "1"

    const-string v16, "allow"

    const-string v17, "##Y29tLnRlbmNlbnQubW9iaWxlcXE="

    const/16 v19, 0x0

    const/16 v20, 0x0

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    const-string v15, "1"

    const-string v16, "allow"

    const-string v17, "##Y29tLnRlbmNlbnQubW0="

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v15, "1"

    const-string v16, "allow"

    const-string v17, "##Y29tLmNtY2Muc3Nv"

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    const-string v15, "1"

    const-string v16, "allow"

    const-string v17, "##Y29tLmNtZG0ucmNz"

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    const-string v15, "2"

    const-string v16, "block"

    const-string v17, "##Y29tLmJhaWR1Lm5ldGRpc2tfc3M="

    const-string v18, "##Y29tLnNlYy5hbmRyb2lkLmNsb3VkYWdlbnQ="

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v15, "2"

    const-string v16, "block"

    const/16 v17, 0x0

    const-string v18, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5vcGVuY2FsZW5kYXI="

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v14

    const-string v3, "3"

    const-string v4, "allow"

    const/4 v5, 0x0

    const-string v6, "##Y29tLnNhbXN1bmcuYWNjZXNzb3J5"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5hY2Nlc3Nvcnkuc2VydmljZS5hY3Rpb24uQUNDRVNTT1JZX1NFUlZJQ0VfQ09OTkVDVElPTl9JTkQ="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "##Y29tLnNhbXN1bmcuYWNjZXNzb3J5"

    const-string v7, "equals"

    const-string v8, "##Y29tLnNhbXN1bmcuYWNjZXNzb3J5LmFjdGlvbi5TRVJWSUNFX0NPTk5FQ1RJT05fUkVRVUVTVEVE"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    const-string v2, "3"

    const-string v3, "allow"

    const/4 v4, 0x0

    const-string v5, "##Y29tLnNhbXN1bmcuYWNjZXNzb3J5"

    const-string v6, "equals"

    const-string v7, "##YW5kcm9pZC5hY2Nlc3NvcnkuZGV2aWNlLmFjdGlvbi5SRUdJU1RFUl9BRlRFUl9JTlNUQUxM"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const/4 v5, 0x0

    const-string v6, "##Y29tLnNhbXN1bmcuYWNjZXNzb3J5"

    const-string v7, "equals"

    const-string v8, "##Y29tLnNhbXN1bmcuYWNjZXNzb3J5LmFjdGlvbi5SRUdJU1RFUl9BR0VOVA=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const/4 v6, 0x0

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5jb2NrdGFpbC5hY3Rpb24uQ09DS1RBSUw="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5jb2NrdGFpbC52Mi5hY3Rpb24uQ09DS1RBSUw="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAubWVtby5FREdFXw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "##Y29tLndzc25wcw=="

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNlYy5hbmRyb2lkLmludGVudC5hY3Rpb24uUkVRVUVTVF9CQUNLVVBf"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "##Y29tLndzc25wcw=="

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNlYy5hbmRyb2lkLmludGVudC5hY3Rpb24uUkVRVUVTVF9SRVNUT1JFXw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "##Y29tLndzc25wcw=="

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5pbnRlbnQuYWN0aW9uLlJFUVVFU1RfQkFDS1VQXw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "##Y29tLndzc25wcw=="

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5pbnRlbnQuYWN0aW9uLlJFUVVFU1RfUkVTVE9SRV8="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "##Y29tLndzc25wcw=="

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5pbnRlbnQuYWN0aW9uLlJFUVVFU1RfVkVSSUZZ"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "##Y29tLndzc25wcw=="

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5pbnRlbnQuYWN0aW9uLlJFU1BPTlNFX1ZFUklGWQ=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "##Y29tLnNlYy5hbmRyb2lkLmVhc3lNb3Zlcg=="

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNlYy5hbmRyb2lkLmludGVudC5hY3Rpb24uUkVRVUVTVF9CQUNLVVBf"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "##Y29tLnNlYy5hbmRyb2lkLmVhc3lNb3Zlcg=="

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNlYy5hbmRyb2lkLmludGVudC5hY3Rpb24uUkVRVUVTVF9SRVNUT1JFXw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "##Y29tLnNlYy5hbmRyb2lkLmVhc3lNb3Zlcg=="

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5pbnRlbnQuYWN0aW9uLlJFUVVFU1RfQkFDS1VQXw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "##Y29tLnNlYy5hbmRyb2lkLmVhc3lNb3Zlcg=="

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5pbnRlbnQuYWN0aW9uLlJFUVVFU1RfUkVTVE9SRV8="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "##Y29tLnNlYy5hbmRyb2lkLmVhc3lNb3Zlcg=="

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5pbnRlbnQuYWN0aW9uLlJFUVVFU1RfVkVSSUZZ"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "##Y29tLnNlYy5hbmRyb2lkLmVhc3lNb3Zlcg=="

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5pbnRlbnQuYWN0aW9uLlJFU1BPTlNFX1ZFUklGWQ=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const/4 v6, 0x0

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5pbnRlbnQuYWN0aW9uLk1FRElBX0JVVFRPTg=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5pbnRlbnQuYWN0aW9uLk1FRElBX0JVVFRPTg=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5kaWN0aW9uYXJ5LlNFQVJDSA=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5kaWN0aW9uYXJ5LlNFQVJDSF9XT1JE"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5kaWN0aW9uYXJ5LkNMT1NF"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "##Y29tLnNlYy5hbmRyb2lkLmNvbnRleHRhd2FyZS5IRUFEU0VUX1BMVUc="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlBBQ0tBR0VfTkVFRFNfVkVSSUZJQ0FUSU9O"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5pbnRlbnQuYWN0aW9uLlBBQ0tBR0VfTkVFRFNfVkVSSUZJQ0FUSU9OMg=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAubXVzaWMuY2hu"

    const-string v6, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAuc3JlbWluZGVy"

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5tdXNpYw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5zY2xvdWQ="

    const-string v6, "##Y29tLnNlYy5zcHAucHVzaA=="

    const-string v7, "equals"

    const-string v8, "##Y29tLnNlYy5zcHAuUmVnaXN0cmF0aW9uQ2hhbmdlZEFjdGlvbg=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5zY2xvdWQ="

    const-string v6, "##Y29tLnNlYy5zcHAucHVzaA=="

    const-string v7, "equals"

    const-string v8, "##dGo5dTk3Mm80Ng=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "equals"

    const-string v8, "##Y29tLnNhbXN1bmcuYXBwLmhpZ2hsaWdodHZpZGVvLkFuYWx5c2U="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5nYWxheHljb250aW51aXR5"

    const-string v6, "##Y29tLnNlYy5zcHAucHVzaA=="

    const-string v7, "equals"

    const-string v8, "##OGJmMWY1OWRjMWQ2MjE3Yw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5nYWxheHljb250aW51aXR5"

    const-string v6, "##Y29tLnNlYy5zcHAucHVzaA=="

    const-string v7, "equals"

    const-string v8, "##Y29tLnNlYy5zcHAuUmVnaXN0cmF0aW9uQ2hhbmdlZEFjdGlvbg=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "equals"

    const-string v8, "##Y29tLnRlbmNlbnQucXFtdXNpYy5BQ1RJT05fU0VSVklDRV9QUkVWSU9VU19UQVNLQkFSLlFRTXVzaWNQaG9uZQ=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "##Y29tLnRlbmNlbnQucXFtdXNpYy5BQ1RJT05fU0VSVklDRV9ORVhUX1RBU0tCQVIuUVFNdXNpY1Bob25l"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "##Y29tLnRlbmNlbnQucXFtdXNpYy5BQ1RJT05fU0VSVklDRV9UT0dHTEVQQVVTRV9UQVNLQkFSLlFRTXVzaWNQaG9uZQ=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v5, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5raWRzaG9tZQ=="

    const-string v6, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5TZWNTZXR1cFdpemFyZA=="

    const-string v7, "equals"

    const-string v8, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5zZWNzZXR1cHdpemFyZC5TRVRVUFdJWkFSRF9DT01QTEVURQ=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const-string v3, "5"

    const-string v4, "block"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "startsWith"

    const-string v8, "##Y29tLmFuZC5nYW1lczUwNS5UZXJyYXJpYQ=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const-string v3, "5"

    const-string v4, "block"

    const-string v5, "##Y29tLnRlbmNlbnQubXR0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const-string v3, "5"

    const-string v4, "block"

    const-string v5, "##Y29tLm1haXlhLndlYXRoZXI="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const-string v3, "6"

    const-string v4, "allow"

    const-string v5, "##Y29tLnlvdWt1LnBob25l"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const-string v3, "6"

    const-string v4, "allow"

    const-string v5, "##Y29tLnNvaHUuc29odXZpZGVv"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const-string v3, "6"

    const-string v4, "allow"

    const-string v5, "##Y29tLmxldHYuYW5kcm9pZC5jbGllbnQ="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const-string v3, "6"

    const-string v4, "allow"

    const-string v5, "##Y29tLnFpeWkudmlkZW8="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const-string v3, "6"

    const-string v4, "allow"

    const-string v5, "##Y29tLnRlbmNlbnQucXFsaXZl"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x34

    aput-object v0, v1, v2

    const-string v3, "7"

    const-string v4, "allow"

    const-string v5, "##Y29tLnNpbmEud2VpYm8="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x35

    aput-object v0, v1, v2

    const-string v3, "7"

    const-string v4, "allow"

    const-string v5, "##Y29tLnRlbmNlbnQubW0="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x36

    aput-object v0, v1, v2

    const-string v3, "7"

    const-string v4, "allow"

    const-string v5, "##Y29tLnRlbmNlbnQubW9iaWxlcXE="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    aput-object v0, v1, v2

    const-string v3, "8"

    const-string v4, "block"

    const-string v5, "##Y29tLmlnZXhpbi5zZGsuR0FjdGl2aXR5"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x38

    aput-object v0, v1, v2

    const-string v3, "8"

    const-string v4, "block"

    const-string v5, "##Y29tLnNpbmEubmV3cy5tb2R1bGUucHVzaC5ndWFyZC5hY3Rpdml0eS5TaW5hR1REeW5DQWN0aXZpdHk="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x39

    aput-object v0, v1, v2

    const-string v3, "8"

    const-string v4, "block"

    const-string v5, "##Y29tLnNpbmEubmV3cy5tb2R1bGUucHVzaC5ndWFyZC5hY3Rpdml0eS5TaW5hR1REeW5EQWN0aXZpdHk="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3a

    aput-object v0, v1, v2

    const-string v3, "9"

    const-string v4, "allow"

    const/4 v5, 0x0

    const-string v7, "contains"

    const-string v8, "##QWNjZXNzaWJpbGl0eQ=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3b

    aput-object v0, v1, v2

    const-string v3, "9"

    const-string v4, "allow"

    const-string v7, "contains"

    const-string v8, "##SVNlc3Npb25DYWxsYmFjaw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c

    aput-object v0, v1, v2

    const-string v3, "9"

    const-string v4, "allow"

    const-string v7, "contains"

    const-string v8, "##YW5kcm9pZC5tZWRpYS5JQXVkaW9Qb2xpY3lTZXJ2aWNlQ2xpZW50"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3d

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "##Y29tLmNvZG9vbi5ncHM="

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "##Y29tLnRyYWZmaWMucGFuZGE="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "##bWUuZWxlLmNyb3dkc291cmNl"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x40

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "##Y29tLmx1ZGFzaGkuYmVuY2htYXJr"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x41

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "##Y29tLmRhZGEubW9iaWxlLmFuZHJvaWQ="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x42

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "##Y29tLmZpbGVtYWdpYw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x43

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "##Y29tLnRlbmNlbnQudG1ncC55eXMuenFi"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x44

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "##Y29tLmJhaWR1LmNhcmxpZmU="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x45

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "##Y29tLnN1cGVyY2xlYW5lci5saXRl"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x46

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "##Y29tLmlqaW5zaGFuLmJyb3dzZXJfZmFzdA=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x47

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "##Y29tLm1haXlhLndlYXRoZXI="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x48

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "##Y29tLmthaWRpc2hpLmxvY2s="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x49

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "##Y29tLm9yYXkuc3VubG9naW4uc2VydmljZQ=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4a

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLnNzLmFuZHJvaWQudWdjLnRyaWxs"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4b

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y2hlZWhvb24uaGEucGFydGljdWxhdGVmb3JlY2FzdGVy"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4c

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLnNtZy5zcGJz"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4d

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLmxvdHRlbWVtYmVycy5hbmRyb2lk"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4e

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLmNsZWFubWFzdGVyLm1ndWFyZA=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4f

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLmZpdG5lc3NrZWVwZXIucnVua2VlcGVyLnBybw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x50

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLndlbHN0b3J5LndlbGhj"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x51

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##bmV0LnJncnVldC5hbmRyb2lkLmczd2F0Y2hkb2c="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x52

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##a3IuY28uZDIuZG9taW5vcw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x53

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLmt0LmdpZ2FnZW5pZS5tb2JpbGU="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x54

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLm5vcnRoZ2hvc3QudG91Y2h2cG4="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x55

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLmdpb24uYW5kcm9pZC5Hbk1lbW9H"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x56

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLm5obi5hbmRyb2lkLmJhbmQ="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x57

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLmt0Y3Mud2hvd2hv"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x58

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLnNrdC50bWFwLmt1"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x59

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLmxpbmtlZGluLmFuZHJvaWQ="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5a

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##bmV0LmRhdW0uYW5kcm9pZC5kYXVt"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5b

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLmNhbXBtb2JpbGUuc25vdw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5c

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLmVzdHNvZnQuYWx5YWM="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5d

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLm5obi5hbmRyb2lkLm5tYXA="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5e

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##ZGUuYXhlbHNwcmluZ2VyLnlhbmEuemVyb3BhZ2U="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5f

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLmltby5hbmRyb2lkLmltb2lt"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x60

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLmxpZmUzNjAuYW5kcm9pZC5zYWZldHltYXBk"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x61

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLmJtd2dyb3VwLmNvbm5lY3RlZC5ibXc="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x62

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##ZmFzdC5waG9uZS5jbGVhbg=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x63

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "##Y29tLm5obi5hbmRyb2lkLm5hdmVyY2FmZQ=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x64

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const/4 v5, 0x0

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5pbnRlbnQuYWN0aW9uLkFOWV9EQVRBX1NUQVRF"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x65

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlRJTUVfVElDSw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x66

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5uZXQud2lmaS5TQ0FOX1JFU1VMVFM="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x67

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5pbnRlbnQuYWN0aW9uLkJBVFRFUllfQ0hBTkdFRA=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x68

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "##bmV0LnJncnVldC5hbmRyb2lkLmczd2F0Y2hkb2cuQUNUSU9OX0NIRUNLX1NFUlZJQ0VfQUxJVkU="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x69

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string/jumbo v4, "idle"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlNDUkVFTl9PRkY="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6a

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "##Y29tLmFuZHJvaWQuc2VydmVyLmFjdGlvbi5ORVRXT1JLX1NUQVRTX1VQREFURUQ="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6b

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string/jumbo v4, "idle"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlNDUkVFTl9PTg=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6c

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5tZWRpYS5WT0xVTUVfQ0hBTkdFRF9BQ1RJT04="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6d

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5pbnRlbnQuYWN0aW9uLkFDVElPTl9VTlNPTF9SRVNQT05TRV9PRU1fSE9PS19SQVc="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6e

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5uZXQuY29ubi5DT05ORUNUSVZJVFlfQ0hBTkdF"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6f

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlVTRVJfUFJFU0VOVA=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x70

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5pbnRlbnQuYWN0aW9uLkNMT1NFX1NZU1RFTV9ESUFMT0dT"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x71

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlNFUlZJQ0VfU1RBVEU="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x72

    aput-object v0, v1, v2

    const-string v3, "13"

    const-string v4, "block"

    const-string v5, "##Y29tLmNvZG9vbi5ncHM="

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x73

    aput-object v0, v1, v2

    const-string v3, "13"

    const-string v4, "block"

    const-string v5, "##Y29tLnRyYWZmaWMucGFuZGE="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x74

    aput-object v0, v1, v2

    const-string v3, "13"

    const-string v4, "block"

    const-string v5, "##bWUuZWxlLmNyb3dkc291cmNl"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x75

    aput-object v0, v1, v2

    const-string v3, "13"

    const-string v4, "block"

    const-string v5, "##Y29tLmFjY3VyYXRlLmxpdmUud2VhdGhlci5mb3JlY2FzdA=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x76

    aput-object v0, v1, v2

    const-string v3, "13"

    const-string v4, "block"

    const-string v5, "##Y29tLmFjY3VyYXRlLmxpdmUud2VhdGhlci5mb3JlY2FzdC5wcm8="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x77

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "##Y29tLnRlbmNlbnQuYW5kcm9pZC5xcWRvd25sb2FkZXI="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x78

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "##Y29tLnFpaG9vLmNsZWFuZHJvaWRfY24="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x79

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "##Y29tLnFpaG9vLmFwcHN0b3Jl"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7a

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "##Y29tLnh1bm1lbmcucGluZHVvZHVv"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7b

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "##Y29tLmx1ZGFzaGkuYmVuY2htYXJr"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7c

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "##Y29tLmZpbGVtYWdpYw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7d

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "##Y29tLmljb29sbWUuYW5kcm9pZC53ZWF0aGVy"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7e

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "##Y29tLm1haXlhLndlYXRoZXI="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7f

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "##Y29tLmNhbGVuZGFyMjM0NQ=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    aput-object v0, v1, v2

    const-string v3, "15"

    const-string v4, "block"

    const/4 v5, 0x0

    const-string v6, "##Y29tLnRlbmNlbnQucXFsaXZl"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81

    aput-object v0, v1, v2

    const-string v3, "16"

    const-string v4, "block"

    const-string v5, "##Y29tLkR1YmFpTGl2ZVdhbGxwYXBlckhR"

    const/4 v6, 0x0

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82

    aput-object v0, v1, v2

    const-string v3, "17"

    const-string v4, "allow"

    const/4 v5, 0x0

    const-string v7, "contains"

    const-string v8, "##Y29tLmFuZHJvaWQuaW50ZXJuYWwudGVsZXBob255LklQaG9uZVN0YXRl"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83

    aput-object v0, v1, v2

    const-string v3, "17"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "##YW5kcm9pZC5tZWRpYS5JQXVkaW9Gb2N1c0Rpc3BhdGNoZXI="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84

    aput-object v0, v1, v2

    const-string v3, "19"

    const-string v4, "allow"

    const-string v5, "##Y29tLmt0Lmt0YXV0aA=="

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85

    aput-object v0, v1, v2

    const-string v3, "19"

    const-string v4, "allow"

    const-string v5, "##Y29tLnNrdGVsZWNvbS50YXV0aA=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x86

    aput-object v0, v1, v2

    const-string v3, "19"

    const-string v4, "allow"

    const-string v5, "##Y29tLmxndXBsdXMuc21hcnRvdHA="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x87

    aput-object v0, v1, v2

    const-string v3, "19"

    const-string v4, "allow"

    const-string v5, "##Y29tLmdvb2dsZS5hbmRyb2lkLmRlc2tjbG9jaw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x88

    aput-object v0, v1, v2

    const-string v3, "19"

    const-string v4, "allow"

    const-string v5, "##Y29tLm50dGRvY29tby5hbmRyb2lkLm1lc3NhZ2VkbA=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x89

    aput-object v0, v1, v2

    const-string v3, "19"

    const-string v4, "allow"

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAucmVtaW5kZXI="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8a

    aput-object v0, v1, v2

    const-string v3, "20"

    const-string v4, "allow"

    const-string v5, "##Y29tLndoYXRzYXBw"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8b

    aput-object v0, v1, v2

    const-string v3, "20"

    const-string v4, "allow"

    const-string v5, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5zaGVhbHRo"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8c

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLmdvb2dsZS5hbmRyb2lkLnBsYXkuZ2FtZXM="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8d

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMuY2hyb21lY2FzdC5hcHA="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8e

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAud2F0Y2htYW5hZ2Vy"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8f

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLnJvY2tldHNoaXBhcHBzLmFkYmxvY2tmYXN0"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x90

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLmJldGFmaXNoLmFkYmxvY2tzYnJvd3Nlcg=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x91

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##b3JnLmFkYmxvY2twbHVzLmFkYmxvY2twbHVzc2Jyb3dzZXI="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x92

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLnNldmVuLmFkY2xlYXIuZnNi"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x93

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLmFkZ3VhcmQuYW5kcm9pZC5jb250ZW50YmxvY2tlcg=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x94

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y28uY3J5c3RhbGFwcC5jcnlzdGFs"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x95

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLmRpc2Nvbm5lY3Quc2Ftc3VuZ2NvbnRlbnRibG9ja2Vy"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x96

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##a3IuY28ubHlsc3R1ZGlvLnVuaWNvcm4="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x97

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLnNwZWFyX2FkYmxvY2tlcg=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x98

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##b3JnLmFkYmxvY2twbHVzLmFkYmxvY2twbHVzc2Jyb3dzZXIuY24="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x99

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAucm91dGluZXM="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9a

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5jbG9ja3BhY2thZ2U="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9b

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5teWZpbGVz"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9c

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAudGlwcw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9d

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLmdvb2dsZS5hbmRyb2lkLndlYnZpZXc="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9e

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAubm90ZXM="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9f

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##anAubmVvc2NvcnAuYW5kcm9pZC5zbWFydHBob25lYm9vaw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa0

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLm1pY3Jvc29mdC5pbnR1bmU="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa1

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "##Y29tLmFuZHJvaWQudmVuZGluZw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa2

    aput-object v0, v1, v2

    const-string v3, "23"

    const-string v4, "block"

    const-string v5, "##Y29tLmZhY2Vib29rLm9yY2E="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa3

    aput-object v0, v1, v2

    const-string v3, "23"

    const-string v4, "block"

    const-string v5, "##Y29tLmZhY2Vib29rLmthdGFuYQ=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa4

    aput-object v0, v1, v2

    const-string v3, "23"

    const-string v4, "block"

    const-string v5, "##Y29tLmZhY2Vib29rLnNlcnZpY2Vz"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa5

    aput-object v0, v1, v2

    const-string v3, "24"

    const-string v4, "allow"

    const/4 v5, 0x0

    const-string/jumbo v7, "startsWith"

    const-string v8, "##S2VlcGFsaXZlTWFuYWdlcg=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa6

    aput-object v0, v1, v2

    const-string v3, "26"

    const-string v4, "allow"

    const-string v5, "##Y29tLnlvdWt1LnBob25l"

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa7

    aput-object v0, v1, v2

    const-string v3, "26"

    const-string v4, "allow"

    const-string v5, "##Y29tLnRlbmNlbnQucXFsaXZl"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa8

    aput-object v0, v1, v2

    const-string v3, "26"

    const-string v4, "allow"

    const-string v5, "##Y29tLnFpeWkudmlkZW8="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa9

    aput-object v0, v1, v2

    const-string v3, "26"

    const-string v4, "allow"

    const-string v5, "##Y29tLnNzLmFuZHJvaWQudWdjLmF3ZW1l"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xaa

    aput-object v0, v1, v2

    const-string v3, "26"

    const-string v4, "allow"

    const-string v5, "##Y29tLnpodW5laS5lZDM2NQ=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xab

    aput-object v0, v1, v2

    const-string v3, "26"

    const-string v4, "allow"

    const-string v5, "##Y29tLnRlbmNlbnQubW0="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xac

    aput-object v0, v1, v2

    const-string v3, "26"

    const-string v4, "allow"

    const-string v5, "##Y29tLnRlbmNlbnQubW9iaWxlcXE="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xad

    aput-object v0, v1, v2

    const-string v3, "26"

    const-string v4, "allow"

    const-string v5, "##Y29tLnpodW1hb25saW5lLmV4ZXJjaXNl"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xae

    aput-object v0, v1, v2

    const-string v3, "27"

    const-string v4, "block"

    const-string v5, "##Y29tLmlnZXhpbi5zZGsuUHVzaEFjdGl2aXR5VGFzaw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xaf

    aput-object v0, v1, v2

    const-string v3, "27"

    const-string v4, "block"

    const-string v5, "##Y29tLnNkay5wbHVzLkVuaEFjdGl2aXR5VGFzaw=="

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb0

    aput-object v0, v1, v2

    const-string v3, "27"

    const-string v4, "block"

    const-string v5, "##Y29tLmFkcGx1cy5zZGsuUXRzQWN0aXZpdHlUYXNr"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb1

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mAdjustRestrictionDefault:[[Ljava/lang/String;

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    .line 458
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x7d0

    .line 463
    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mTrafficInterval:J

    const-wide/32 v0, 0xdbba0

    .line 464
    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mUnusedTime:J

    const-wide/16 v0, 0x12c

    .line 465
    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mTrafficAmount:J

    const-wide/16 v0, 0x0

    .line 466
    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mNotifiUpdatedCount:J

    .line 467
    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mApplicationSizeIncreased:J

    .line 820
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5zaGVhbHRo"

    const-string v2, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5zbWFydG1pcnJvcmluZw=="

    const-string v3, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5yZXRhaWwuc2NyZWVuc2F2ZXI="

    const-string v4, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAucGFyZW50YWxjYXJl"

    const-string v5, "##Y29tLnNlYy5hbmRyb2lkLmVhc3lNb3Zlcg"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mFgsExemptionList:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/database/MARsVersionManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsVersionManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;
    .registers 1

    .line 33
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    return-object v0
.end method

.method public static toNormalText(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_1d

    const-string v0, "##"

    .line 808
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 809
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1d
    return-object p0
.end method


# virtual methods
.method public final convertListToMap(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;)V"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2e

    .line 587
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    .line 588
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 589
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    iget v2, v2, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->policyNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    iget v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->importantValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2e
    const-string p0, "MARsVersionManager"

    const-string/jumbo p1, "mIsCurrentImportantMap is null! "

    .line 592
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void
.end method

.method public convertPolicyNameToNum(Ljava/lang/String;)I
    .registers 3

    const-string p0, "force"

    .line 498
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    const-string p0, "applocker"

    .line 500
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const-string p0, "autorun"

    .line 502
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x2

    return p0

    :cond_1e
    const-string p0, "freecess"

    .line 504
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x4

    return p0

    :cond_28
    const-string/jumbo p0, "udspolicy"

    .line 506
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x5

    return p0

    :cond_33
    const-string/jumbo p0, "sbikepolicy"

    .line 508
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const/4 p0, 0x6

    return p0

    :cond_3e
    const-string p0, "disablepolicy"

    .line 510
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_49

    const/16 p0, 0x8

    return p0

    :cond_49
    return v0
.end method

.method public convertPolicyNumToName(I)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_5

    const-string p0, "force"

    return-object p0

    :cond_5
    const/4 p0, 0x1

    if-ne p0, p1, :cond_b

    const-string p0, "applocker"

    return-object p0

    :cond_b
    const/4 p0, 0x2

    if-ne p0, p1, :cond_11

    const-string p0, "autorun"

    return-object p0

    :cond_11
    const/4 p0, 0x4

    if-ne p0, p1, :cond_17

    const-string p0, "freecesspolicy"

    return-object p0

    :cond_17
    const/4 p0, 0x5

    if-ne p0, p1, :cond_1e

    const-string/jumbo p0, "udspolicy"

    return-object p0

    :cond_1e
    const/4 p0, 0x6

    if-ne p0, p1, :cond_25

    const-string/jumbo p0, "sbikepolicy"

    return-object p0

    :cond_25
    const/16 p0, 0x8

    if-ne p0, p1, :cond_2c

    const-string p0, "disablepolicy"

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final convertRestrictionTypeToName(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_24

    const/4 p0, 0x2

    if-eq p1, p0, :cond_24

    const/4 p0, 0x7

    if-ne p1, p0, :cond_a

    goto :goto_24

    :cond_a
    const/4 p0, 0x3

    if-eq p1, p0, :cond_21

    const/4 p0, 0x4

    if-ne p1, p0, :cond_11

    goto :goto_21

    :cond_11
    const/16 p0, 0xe

    if-ne p1, p0, :cond_18

    const-string p0, "Rogue app"

    return-object p0

    :cond_18
    const/16 p0, 0xf

    if-ne p1, p0, :cond_1f

    const-string p0, "Foreground Service"

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0

    :cond_21
    :goto_21
    const-string p0, "Essential intent"

    return-object p0

    :cond_24
    :goto_24
    const-string p0, "CHN app"

    return-object p0
.end method

.method public deInit()V
    .registers 1

    return-void
.end method

.method public dumpMARsDefaultValue()V
    .registers 6

    .line 733
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "dumpMARsDefaultValue----> "

    const-string v3, "MARsVersionManager"

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 734
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v4, :cond_6

    .line 735
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 738
    :cond_2d
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    .line 739
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v4, :cond_33

    .line 740
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 743
    :cond_56
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5c
    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    .line 744
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v4, :cond_5c

    .line 745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 748
    :cond_7f
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_85
    :goto_85
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    .line 749
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v1, :cond_85

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    :cond_a8
    return-void
.end method

.method public getAdjustRestrictionFromDefaultValue()V
    .registers 16

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 701
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mAdjustRestrictionDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_6c

    aget-object v5, v1, v4

    .line 702
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v6, 0x1

    .line 703
    aget-object v10, v5, v6

    const/4 v6, 0x2

    .line 704
    aget-object v6, v5, v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x3

    .line 705
    aget-object v6, v5, v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x4

    .line 706
    aget-object v13, v5, v6

    const/4 v6, 0x5

    .line 707
    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v5, 0xc

    if-eq v9, v5, :cond_62

    const/16 v5, 0xd

    if-eq v9, v5, :cond_5a

    const/16 v5, 0x10

    if-eq v9, v5, :cond_52

    const/16 v5, 0x12

    if-eq v9, v5, :cond_4a

    .line 723
    new-instance v5, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    move-object v7, v5

    move-object v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 720
    :cond_4a
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5, v11, v13}, Lcom/android/server/am/FreecessController;->setProcessAllowList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 717
    :cond_52
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/android/server/am/FreecessController;->setOLAFBlockList(Ljava/lang/String;)V

    goto :goto_69

    .line 714
    :cond_5a
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/android/server/am/FreecessController;->setPendingBlocklistForGPS(Ljava/lang/String;)V

    goto :goto_69

    .line 711
    :cond_62
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5, v10, v14}, Lcom/android/server/am/FreecessController;->setPendingIntentList(Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 729
    :cond_6c
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustRestriction(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getExcludeTargetFromDefaultValue()V
    .registers 14

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 675
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludePackageDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_2e

    aget-object v5, v1, v4

    .line 676
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v6, 0x1

    .line 677
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v6, 0x2

    .line 678
    aget-object v11, v5, v6

    const/4 v6, 0x3

    .line 679
    aget-object v12, v5, v6

    .line 681
    new-instance v5, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    move-object v7, v5

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 684
    :cond_2e
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getFgsExemptionList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 832
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mFgsExemptionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 833
    invoke-static {v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    return-object v0
.end method

.method public getIsCurrentImportantFromDefaultValue()V
    .registers 9

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 689
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_26

    aget-object v5, v1, v4

    .line 690
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    .line 691
    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 693
    new-instance v7, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    invoke-direct {v7, p0, v6, v5}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;II)V

    .line 694
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 696
    :cond_26
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getMARsLocalVersionFromDefaultValue()Ljava/lang/String;
    .registers 8

    .line 615
    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_6
    if-ge v3, v0, :cond_1b

    aget-object v4, p0, v3

    .line 616
    aget-object v5, v4, v1

    const-string/jumbo v6, "marsversion"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v2, 0x1

    .line 617
    aget-object v2, v4, v2

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1b
    return-object v2
.end method

.method public getMARsSettingsInfoFromDefaultValue()V
    .registers 9

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 602
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_1e

    aget-object v5, v1, v4

    .line 603
    aget-object v6, v5, v3

    const/4 v7, 0x1

    .line 604
    aget-object v5, v5, v7

    .line 606
    new-instance v7, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;

    invoke-direct {v7, p0, v6, v5}, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 610
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setMARsSettingsInfoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getPolicyFromDefaultValue()V
    .registers 23

    move-object/from16 v13, p0

    .line 654
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 655
    sget-object v15, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    array-length v12, v15

    const/16 v16, 0x0

    move/from16 v10, v16

    :goto_e
    if-ge v10, v12, :cond_6a

    aget-object v0, v15, v10

    .line 656
    aget-object v1, v0, v16

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x1

    .line 657
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x2

    .line 658
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x3

    .line 659
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v1, 0x4

    .line 660
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v1, 0x5

    .line 661
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v1, 0x6

    .line 662
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/4 v1, 0x7

    .line 663
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 664
    invoke-virtual {v13, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v2

    .line 666
    new-instance v11, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v20, v10

    move-object/from16 v21, v15

    move-object v15, v11

    move-wide/from16 v10, v17

    move/from16 v17, v12

    move/from16 v12, v19

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;Ljava/lang/String;IIIIIJJI)V

    .line 668
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v20, 0x1

    move/from16 v12, v17

    move-object/from16 v15, v21

    goto :goto_e

    .line 670
    :cond_6a
    invoke-virtual {v13, v14}, Lcom/android/server/am/mars/database/MARsVersionManager;->setPolicy(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getRestrictionFlag()I
    .registers 8

    .line 639
    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_6
    if-ge v2, v0, :cond_37

    aget-object v4, p0, v2

    .line 640
    aget-object v5, v4, v1

    const/4 v6, 0x1

    .line 641
    aget-object v4, v4, v6

    :try_start_f
    const-string/jumbo v6, "restriction_flag"

    .line 643
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 644
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_1d

    goto :goto_34

    :catch_1d
    move-exception v4

    .line 647
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception getRestrictionFlag!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MARsVersionManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_37
    return v3
.end method

.method public getUnusedAppPeriodDaysValue()I
    .registers 5

    .line 625
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;

    .line 626
    iget-object v2, v1, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;->key:Ljava/lang/String;

    const-string/jumbo v3, "unused_app_period_days"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 628
    :try_start_1e
    iget-object v1, v1, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_24} :catch_25

    goto :goto_7

    :catch_25
    move-exception v1

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MARsVersionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_3d
    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsVersionManager;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public final isActionMatch(Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;Ljava/lang/String;)Z
    .registers 4

    .line 757
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string v0, "equals"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 758
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_57

    .line 759
    :cond_11
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string v0, "equalsIgnoreCase"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 760
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    goto :goto_57

    .line 761
    :cond_22
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string v0, "contains"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 762
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_57

    .line 763
    :cond_33
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v0, "startsWith"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 764
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_57

    .line 765
    :cond_45
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string v0, "endsWith"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_56

    .line 766
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_57

    :cond_56
    const/4 p0, 0x0

    :goto_57
    return p0
.end method

.method public isAdjustHibernationMatch(Ljava/lang/String;)Z
    .registers 6

    .line 795
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    .line 796
    iget v2, v1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->restrictionType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    .line 797
    invoke-virtual {p0, v1, p1, v2, v2}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatchInternal(Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 798
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz p0, :cond_3a

    .line 799
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isAdjustHibernationMatch  callee = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsVersionManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const/4 p0, 0x1

    return p0

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method public isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 781
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    .line 782
    iget v2, v1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->restrictionType:I

    if-ne p1, v2, :cond_6

    .line 783
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatchInternal(Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 784
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v0, :cond_5e

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " restrictionType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertRestrictionTypeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsVersionManager;->isRestrictionTypeAllowed(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " callee = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " caller = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " action = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsVersionManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    const/4 p0, 0x1

    return p0

    :cond_60
    const/4 p0, 0x0

    return p0
.end method

.method public final isAdjustRestrictionMatchInternal(Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 772
    iget-object v0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    :cond_c
    iget-object p2, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    if-nez p2, :cond_32

    :cond_10
    iget-object p2, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    if-eqz p2, :cond_1c

    if-eqz p3, :cond_1c

    .line 773
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_20

    :cond_1c
    iget-object p2, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    if-nez p2, :cond_32

    :cond_20
    iget-object p2, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    if-eqz p2, :cond_2c

    if-eqz p4, :cond_2c

    .line 774
    invoke-virtual {p0, p1, p4}, Lcom/android/server/am/mars/database/MARsVersionManager;->isActionMatch(Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_30

    :cond_2c
    iget-object p0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    if-nez p0, :cond_32

    :cond_30
    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public final isRestrictionTypeAllowed(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    const/4 v0, 0x7

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    :cond_a
    return p0
.end method

.method public setAdjustRestriction(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;",
            ">;)V"
        }
    .end annotation

    .line 597
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    return-void
.end method

.method public setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;)V"
        }
    .end annotation

    .line 581
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertListToMap(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;",
            ">;)V"
        }
    .end annotation

    .line 577
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setMARsSettingsInfoList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;",
            ">;)V"
        }
    .end annotation

    .line 569
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPolicy(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;",
            ">;)V"
        }
    .end annotation

    .line 573
    sput-object p1, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    return-void
.end method

.class public Lcom/android/server/am/BGProtectManager;
.super Ljava/lang/Object;
.source "BGProtectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BGProtectManager$exceptFlag;
    }
.end annotation


# static fields
.field public static final BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

.field public static final CAMERA_GUARD_ARRAY:[Ljava/lang/String;

.field public static final DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

.field public static final DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

.field public static final DHA_NEVERKILLEXCEPT_ARRAY_BY_KEY:[[Ljava/lang/String;

.field public static final DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

.field public static final LMKD_CAM_CLIENT_EXCEPT_ARRAY:[Ljava/lang/String;

.field public static final ML_SLOT_FOR_MEM_DEFAULT:I = 0x1

.field public static final PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

.field public static final TAG_BGPROTECTMANAGER:Ljava/lang/String; = "DynamicHiddenApp_BGProtectManager"

.field public static WEBVIEW_ADJ_THRESHOLD:I

.field public static addProtect:Z

.field public static allowListCleared:Z

.field public static beks_package_key_bit:I

.field public static dha_MLexcept_map:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static dha_amsexcept_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static dha_cameraguard_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static dha_keep_onlyact_key:I

.field public static dha_keepchimera_key:I

.field public static dha_keepempty_chn_key:I

.field public static dha_keepempty_key:I

.field public static dha_keepempty_key_knox:I

.field public static dha_keepempty_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static dha_neverkillexcept_key:I

.field public static dha_neverkillexcept_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static forceKillHeavyProcess1:Ljava/lang/String;

.field public static forceKillHeavyProcess2:Ljava/lang/String;

.field public static forceKillHeavyProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mAMSExceptionEnable:Z

.field public static mCameraGuardEnable:Z

.field public static final mTotalMemMb:J

.field public static sBEKS_processList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sProvider_lifeguard_key:I

.field public static sProvider_lifeguard_memory_TH:I


# instance fields
.field public AMSExceptionProviderUpgradeAdjEnable:Z

.field public BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

.field public CLEANUP_WEBVIEW_ENABLE:Z

.field public DIALER_EXCEPTION_TH:I

.field public NEVERKILL_SQETOOL_ENABLE:Z

.field public NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

.field public NapProcessSlotLimit:I

.field public PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public PICKED_ADJ_TIME_LIMIT:I

.field public doKillRestrict:Z

.field public forceKillHeavyProcessLimit:I

.field public mContext:Landroid/content/Context;

.field public mDhaKeepEmptyEnable:I

.field public mDhaKeepEmptyEnableKnox:I

.field public mKnoxAMSExceptionEnable:Z

.field public mPlatform:Ljava/lang/String;

.field public recentActivityProcessLimit:I

.field public recentActivityProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public removeContactExceptList:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 22

    .line 30
    invoke-static {}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getTotalMemoryMB()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    const-string v0, "ams_exception_enable"

    const-string/jumbo v1, "true"

    .line 44
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->mAMSExceptionEnable:Z

    const/16 v0, 0x398

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "webview_adj_th"

    invoke-static {v2, v0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->WEBVIEW_ADJ_THRESHOLD:I

    const-string v0, "camera_guard_enable"

    .line 68
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    const-string v0, "beks_key"

    const-string v1, "31"

    .line 70
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->beks_package_key_bit:I

    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Y29tLmdvb2dsZS5wcm9jZXNzLmdhcHBz"

    .line 79
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v3, "Y29tLnNlYy5hbmRyb2lkLmdhbGxlcnkzZA=="

    .line 80
    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    .line 81
    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const-string v6, "Y29tLmdvb2dsZS5hbmRyb2lkLmdt"

    .line 82
    invoke-static {v6}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v1, v8

    const-string v6, "Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWFwcw=="

    .line 83
    invoke-static {v6}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x4

    aput-object v6, v1, v9

    const-string v6, "Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAubm90ZXM="

    .line 84
    invoke-static {v6}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v1, v11

    const-string v10, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    .line 85
    invoke-static {v10}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x6

    aput-object v10, v1, v12

    const-string v10, "UmVzZXJ2ZWQ="

    .line 86
    invoke-static {v10}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v1, v14

    const-string v13, "SU5DQUxMVUk="

    .line 87
    invoke-static {v13}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x8

    aput-object v13, v1, v15

    const-string v13, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE="

    .line 88
    invoke-static {v13}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x9

    aput-object v16, v1, v17

    const-string v16, "TU1T"

    .line 89
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v15, 0xa

    aput-object v16, v1, v15

    const-string v16, "Y29tLmJhaWR1LkJhaWR1TWFw"

    .line 90
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0xb

    aput-object v16, v1, v18

    .line 91
    invoke-static {v10}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v15, 0xc

    aput-object v10, v1, v15

    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    new-array v1, v14, [[Ljava/lang/String;

    new-array v10, v7, [Ljava/lang/String;

    const-string v19, "YW5kcm9pZC5wcm9jZXNzLmFjb3Jl"

    .line 95
    invoke-static/range {v19 .. v19}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v0

    sget-object v19, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v10, v5

    aput-object v10, v1, v0

    new-array v10, v7, [Ljava/lang/String;

    const-string v20, "Q09OVEFDVFM="

    .line 96
    invoke-static/range {v20 .. v20}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v10, v0

    sget-object v20, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v10, v5

    aput-object v10, v1, v5

    new-array v10, v7, [Ljava/lang/String;

    const-string v21, "RElBTEVS"

    .line 97
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v10, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v10, v5

    aput-object v10, v1, v7

    new-array v10, v7, [Ljava/lang/String;

    const-string v21, "SE9NRUhVQg=="

    .line 98
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v10, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v10, v5

    aput-object v10, v1, v8

    new-array v10, v7, [Ljava/lang/String;

    const-string v20, "YW5kcm9pZC5wcm9jZXNzLm1lZGlh"

    .line 99
    invoke-static/range {v20 .. v20}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v10, v0

    sget-object v20, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v10, v5

    aput-object v10, v1, v9

    new-array v10, v7, [Ljava/lang/String;

    const-string v20, "Q01I"

    .line 100
    invoke-static/range {v20 .. v20}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v10, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v5

    aput-object v10, v1, v11

    new-array v10, v7, [Ljava/lang/String;

    const-string v19, "QklYQlk="

    .line 101
    invoke-static/range {v19 .. v19}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v0

    sget-object v19, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v5

    aput-object v10, v1, v12

    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    new-array v1, v15, [Ljava/lang/String;

    .line 105
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5tb2JpbGVzZXJ2aWNl"

    .line 106
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Y29tLm9zcC5hcHAuc2lnbmlu"

    .line 107
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "Y29tLmdvb2dsZS5wcm9jZXNzLmdzZXJ2aWNlcw=="

    .line 108
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "Y29tLnNlYy5hbmRyb2lkLnByb3ZpZGVyLmJhZGdl"

    .line 109
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "Y29tLnNhbXN1bmcuaXBzZXJ2aWNl"

    .line 110
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zb3VuZGFsaXZl"

    .line 111
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const-string v2, "Y29tLmdvb2dsZS5hbmRyb2lkLmdvb2dsZXF1aWNrc2VhcmNoYm94OnNlYXJjaA=="

    .line 112
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcjpwcml2aWxlZ2VkX3Byb2Nlc3Mw"

    .line 113
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x8

    aput-object v2, v1, v10

    const-string v2, "Y29tLnZlcml6b24ubWVzc2FnaW5nLnZ6bXNncw=="

    .line 114
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    const-string v2, "Y29tLmFuZHJvaWQucHJvdmlkZXJzLmNhbGVuZGFy"

    .line 115
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0xa

    aput-object v2, v1, v10

    const-string v2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5zdGlja2VyY2VudGVy"

    .line 116
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v18

    sput-object v1, Lcom/android/server/am/BGProtectManager;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    new-array v1, v9, [[Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string v10, "Y29tLnNhbGFiLmFjdA=="

    .line 120
    invoke-static {v10}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v0

    const-string v10, "2"

    aput-object v10, v2, v5

    aput-object v2, v1, v0

    new-array v2, v7, [Ljava/lang/String;

    const-string v15, "Y29tLnNlYy5hbmRyb2lkLmFwcC50aW55bQ=="

    .line 121
    invoke-static {v15}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v0

    aput-object v10, v2, v5

    aput-object v2, v1, v5

    new-array v2, v7, [Ljava/lang/String;

    const-string v15, "Y29tLnNlYy5hZWNtb25pdG9y"

    .line 122
    invoke-static {v15}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v0

    aput-object v10, v2, v5

    aput-object v2, v1, v7

    new-array v2, v7, [Ljava/lang/String;

    const-string v15, "RkFDVE9SWQ=="

    .line 123
    invoke-static {v15}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v0

    aput-object v10, v2, v5

    aput-object v2, v1, v8

    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

    new-array v1, v7, [[Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string v10, "Y29tLmdvb2dsZS5hbmRyb2lkLmdtcw=="

    .line 127
    invoke-static {v10}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v0

    const-string v10, "1"

    aput-object v10, v2, v5

    aput-object v2, v1, v0

    new-array v2, v7, [Ljava/lang/String;

    const-string v10, "Y29tLmdvb2dsZS5hbmRyb2lkLmdtcy5wZXJzaXN0ZW50"

    .line 128
    invoke-static {v10}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v0

    const-string v10, "1"

    aput-object v10, v2, v5

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY_BY_KEY:[[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Y29tLnNlYy5hbmRyb2lkLmFwcC5teWZpbGVz"

    .line 132
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 133
    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Y29tLmFuZHJvaWQuc2V0dGluZ3M="

    .line 134
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 135
    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5kaWFsZXI="

    .line 136
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5tZXNzYWdpbmc="

    .line 137
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    .line 138
    invoke-static {v13}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    .line 139
    invoke-static {v6}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jbG9ja3BhY2thZ2U="

    .line 140
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v1, v4

    const-string v2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5jYWxlbmRhcg=="

    .line 141
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    sput-object v1, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    .line 145
    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    sput-object v1, Lcom/android/server/am/BGProtectManager;->CAMERA_GUARD_ARRAY:[Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "Y29tLnNhbXN1bmcuYWRhcHRpdmVicmlnaHRuZXNzZ28="

    .line 149
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "YW5kcm9pZC5zeXN0ZW0="

    .line 150
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5zbWFydGZhY2U="

    .line 151
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5iaW8uZmFjZS5zZXJ2aWNl"

    .line 152
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    sput-object v1, Lcom/android/server/am/BGProtectManager;->LMKD_CAM_CLIENT_EXCEPT_ARRAY:[Ljava/lang/String;

    const-string v1, "Y29tLmtpbG9vLnN1YndheXN1cmY="

    .line 155
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcess1:Ljava/lang/String;

    const-string v1, "Y29tLmF2YXN0LmFuZHJvaWQubW9iaWxlc2VjdXJpdHk="

    .line 156
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcess2:Ljava/lang/String;

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    new-array v2, v7, [Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcess1:Ljava/lang/String;

    aput-object v3, v2, v0

    sget-object v0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcess2:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcessList:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    const-string v0, "dha_pwhl_key"

    const-string v1, "512"

    .line 173
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    const-string v0, "dha_pwhl_key_knox"

    const-string v1, "1539"

    .line 174
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key_knox:I

    .line 175
    sget v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dha_pwhl_chn_key"

    invoke-static {v1, v0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_chn_key:I

    const-string v0, "dha_chimerawhl_key"

    const-string v1, "0"

    .line 176
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepchimera_key:I

    const-string v0, "dha_onlyact_key"

    .line 177
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keep_onlyact_key:I

    const-string v0, "dha_neverkill_key"

    .line 178
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_key:I

    const-string v0, "add_protect"

    const-string v1, "false"

    .line 179
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->addProtect:Z

    const-string/jumbo v0, "plg_memory_th"

    const-string v1, "4096"

    .line 181
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_memory_TH:I

    const-string/jumbo v0, "plg_key"

    const-string v1, "3"

    .line 182
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_key:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.board.platform"

    const-string v1, ""

    .line 35
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BGProtectManager;->mPlatform:Ljava/lang/String;

    const-string/jumbo v0, "remove_contact_except_list"

    const-string v1, "false"

    .line 37
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->removeContactExceptList:Z

    const-string v0, "dha_pallowlist_enable"

    const-string v2, "1"

    .line 40
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    const-string v0, "dha_knox_plist_enable"

    const-string v2, "0"

    .line 42
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    const-string/jumbo v0, "provider_upgrade_adj"

    .line 46
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->AMSExceptionProviderUpgradeAdjEnable:Z

    const-string v0, "dha_cached_min"

    const-string v2, "4"

    .line 48
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcessLimit:I

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->doKillRestrict:Z

    const-string v0, "ams_knoxexpt_enable"

    const-string/jumbo v2, "true"

    .line 52
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->mKnoxAMSExceptionEnable:Z

    const-string v0, "dha_dialer_except_th"

    const-string v3, "3072"

    .line 54
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BGProtectManager;->DIALER_EXCEPTION_TH:I

    const-string v0, "cleanup_webview_enable"

    .line 56
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->CLEANUP_WEBVIEW_ENABLE:Z

    const-string/jumbo v0, "picked_adj_tm"

    const-string v3, "1800000"

    .line 60
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_TIME_LIMIT:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    const-string/jumbo v0, "neverkill_sqetool_enable"

    .line 64
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->NEVERKILL_SQETOOL_ENABLE:Z

    const-string v0, "beks_enable"

    .line 66
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    const-string v0, "bora_cached_num"

    const-string v1, "3"

    .line 72
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessLimit:I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    const/4 v0, 0x1

    .line 170
    iput v0, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    return-void
.end method

.method public static isAMSExceptionProcess(Ljava/lang/String;)I
    .registers 2

    .line 694
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method public static isCameraGuardProcess(Ljava/lang/String;)Z
    .registers 2

    .line 699
    sget-boolean v0, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isDhaKeepEmptyProcess(Ljava/lang/String;)I
    .registers 2

    .line 689
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method public static isNeverKillExceptionProcess(Ljava/lang/String;)I
    .registers 2

    .line 704
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method public static isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3

    .line 725
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I
    .registers 4

    .line 708
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 709
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check webview name : "

    const-string v2, "DynamicHiddenApp_BGProtectManager"

    if-eqz v0, :cond_43

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "check hostingname webview : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 712
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "check hostingname webview : null "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    const/4 p0, 0x2

    return p0

    .line 715
    :cond_5e
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, ":sandboxed_process"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/4 p0, 0x4

    return p0

    .line 717
    :cond_6a
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_76

    const/4 p0, 0x6

    return p0

    :cond_76
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public IsAllowListCleared()Z
    .registers 1

    .line 779
    sget-boolean p0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    return p0
.end method

.method public IsForceKillHeavyProcess(Ljava/lang/String;)Z
    .registers 2

    .line 646
    sget-boolean p0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    if-nez p0, :cond_b

    .line 647
    sget-object p0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public IsProtected(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6

    .line 653
    sget-boolean p0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p0, :cond_24

    .line 654
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz p0, :cond_15

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_1b

    :cond_15
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez p0, :cond_1c

    if-ge p0, v1, :cond_1c

    :cond_1b
    return v2

    .line 657
    :cond_1c
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_23

    return v2

    :cond_23
    return v0

    .line 663
    :cond_24
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz p0, :cond_3c

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v3

    if-eq p0, v3, :cond_3c

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 664
    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_42

    :cond_3c
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez p0, :cond_43

    if-ge p0, v1, :cond_43

    :cond_42
    return v2

    .line 667
    :cond_43
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_4a

    return v2

    :cond_4a
    return v0
.end method

.method public addAllowlistList(Z)V
    .registers 10

    if-nez p1, :cond_16

    .line 212
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 213
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 214
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 215
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_16
    const/4 v0, 0x0

    move v1, v0

    .line 217
    :goto_18
    sget-object v2, Lcom/android/server/am/BGProtectManager;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_30

    .line 218
    sget-object v3, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    aget-object v2, v2, v1

    aget-object v5, v2, v0

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v3, v5, v2, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 221
    :cond_30
    sget-wide v1, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    sget v3, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_memory_TH:I

    int-to-long v5, v3

    cmp-long v1, v1, v5

    if-lez v1, :cond_51

    move v1, v0

    move v2, v4

    .line 222
    :goto_3b
    sget-object v3, Lcom/android/server/am/BGProtectManager;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    array-length v5, v3

    if-ge v1, v5, :cond_51

    .line 223
    sget v5, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_key:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_4c

    .line 224
    sget-object v5, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-virtual {p0, v5, v3, v4, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_4c
    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 230
    :cond_51
    iget-boolean v1, p0, Lcom/android/server/am/BGProtectManager;->NEVERKILL_SQETOOL_ENABLE:Z

    if-eqz v1, :cond_6d

    move v1, v0

    .line 231
    :goto_56
    sget-object v2, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_6d

    .line 232
    sget-object v3, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    aget-object v2, v2, v1

    aget-object v5, v2, v0

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v3, v5, v2, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_6d
    move v1, v0

    move v2, v4

    .line 236
    :goto_6f
    sget-object v3, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY_BY_KEY:[[Ljava/lang/String;

    array-length v5, v3

    if-ge v1, v5, :cond_8d

    .line 237
    sget v5, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_key:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_88

    .line 238
    sget-object v5, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    aget-object v3, v3, v1

    aget-object v6, v3, v0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v5, v6, v3, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_88
    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    :cond_8d
    move v1, v0

    move v2, v4

    .line 243
    :goto_8f
    sget-object v3, Lcom/android/server/am/BGProtectManager;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    array-length v5, v3

    if-ge v1, v5, :cond_dc

    .line 244
    iget v5, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v5, v4, :cond_a5

    sget v5, Lcom/android/server/am/BGProtectManager;->dha_keepchimera_key:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_a5

    .line 245
    sget-object v5, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    aget-object v6, v3, v1

    const/4 v7, 0x3

    invoke-virtual {p0, v5, v6, v7, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 247
    :cond_a5
    iget v5, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    if-ne v5, v4, :cond_b6

    sget v5, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key_knox:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_b6

    .line 248
    sget-object v5, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    aget-object v6, v3, v1

    const/4 v7, 0x2

    invoke-virtual {p0, v5, v6, v7, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 250
    :cond_b6
    iget v5, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v5, v4, :cond_c6

    sget v5, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_c6

    .line 251
    sget-object v5, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    aget-object v6, v3, v1

    invoke-virtual {p0, v5, v6, v4, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 253
    :cond_c6
    iget v5, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v5, v4, :cond_d7

    sget v5, Lcom/android/server/am/BGProtectManager;->dha_keep_onlyact_key:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_d7

    .line 254
    sget-object v5, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    aget-object v3, v3, v1

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v3, v6, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_d7
    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 259
    :cond_dc
    :goto_dc
    sget-boolean v1, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    if-eqz v1, :cond_ef

    sget-object v1, Lcom/android/server/am/BGProtectManager;->CAMERA_GUARD_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_ef

    .line 260
    sget-object v2, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {p0, v2, v1, v4, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_dc

    :cond_ef
    return-void
.end method

.method public addBEKSList(Z)V
    .registers 4

    if-nez p1, :cond_7

    .line 266
    sget-object p0, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_7
    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 268
    :goto_9
    sget-object v0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1f

    .line 269
    sget v1, Lcom/android/server/am/BGProtectManager;->beks_package_key_bit:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1a

    .line 270
    sget-object v1, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public addPickedExceptList(Ljava/lang/String;)V
    .registers 2

    .line 636
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 770
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessLimit:I

    if-ge v0, v1, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 771
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method public appIsPickedProcess(Ljava/lang/String;I)I
    .registers 3

    .line 746
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_&_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 747
    sget-object p1, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    if-eqz p1, :cond_29

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 748
    sget-object p1, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_29
    const/4 p0, -0x1

    return p0
.end method

.method public checkKeptProcess(Lcom/android/server/am/ProcessRecord;)I
    .registers 9

    .line 362
    sget-boolean v0, Lcom/android/server/am/BGProtectManager;->mAMSExceptionEnable:Z

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_85

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v0, :cond_85

    .line 363
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ge v0, v1, :cond_3b

    .line 364
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-gt v0, v4, :cond_21

    :goto_1e
    move v4, v2

    move v0, v3

    goto :goto_6e

    .line 366
    :cond_21
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_30

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    if-eqz v0, :cond_30

    goto :goto_1e

    .line 368
    :cond_30
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_6c

    goto :goto_1e

    .line 371
    :cond_3b
    iget-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->mKnoxAMSExceptionEnable:Z

    if-eqz v0, :cond_6c

    .line 372
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-lt v0, v4, :cond_54

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 373
    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-gt v0, v4, :cond_54

    goto :goto_1e

    .line 375
    :cond_54
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_61

    move v0, v2

    move v4, v3

    goto :goto_6e

    .line 377
    :cond_61
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_6c

    goto :goto_1e

    :cond_6c
    move v0, v2

    move v4, v0

    .line 382
    :goto_6e
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_79

    goto :goto_87

    .line 384
    :cond_79
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v6, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v6}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_87

    move v0, v3

    goto :goto_87

    :cond_85
    move v0, v2

    move v4, v0

    .line 392
    :cond_87
    :goto_87
    iget v5, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    const/4 v6, 0x3

    if-eq v5, v3, :cond_90

    iget v5, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    if-ne v5, v3, :cond_97

    :cond_90
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez v5, :cond_97

    if-ge v5, v6, :cond_97

    move v4, v3

    :cond_97
    const/4 v5, 0x2

    if-eq v0, v3, :cond_9d

    if-eqz v4, :cond_9d

    move v0, v5

    .line 399
    :cond_9d
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_a4

    move v0, v5

    .line 402
    :cond_a4
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v4

    if-ne v4, v3, :cond_ab

    goto :goto_ac

    :cond_ab
    move v6, v0

    .line 403
    :goto_ac
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v0

    if-nez v0, :cond_b3

    const/4 v6, 0x4

    .line 404
    :cond_b3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v0

    if-ne v0, v3, :cond_ba

    const/4 v6, 0x5

    .line 407
    :cond_ba
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isForKeepingCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_c1

    const/4 v6, 0x6

    .line 408
    :cond_c1
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    if-ne v0, v3, :cond_c7

    const/16 v6, 0x8

    .line 410
    :cond_c7
    iget-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->doKillRestrict:Z

    if-eqz v0, :cond_ee

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BGProtectManager;->IsForceKillHeavyProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 411
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-lt v0, v1, :cond_ee

    sget-object v0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcess2:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    const/16 v0, 0xd

    const-string v1, "bg_restriction"

    .line 412
    invoke-virtual {p1, v1, v0, v5, v3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 416
    iput-boolean v2, p0, Lcom/android/server/am/BGProtectManager;->doKillRestrict:Z

    :cond_ee
    return v6
.end method

.method public clearRecentActivityProcess()V
    .registers 1

    .line 766
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "TU1T"

    .line 809
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q09OVEFDVFM="

    .line 810
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SU5DQUxMVUk="

    .line 811
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RElBTEVS"

    .line 812
    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SE9NRUhVQg=="

    .line 813
    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "QklYQlk="

    .line 814
    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "RkFDVE9SWQ=="

    .line 815
    invoke-static {v6}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Q01I"

    .line 816
    invoke-static {v7}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p4, :cond_51

    .line 818
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_152

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_152

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_152

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_51

    goto/16 :goto_152

    .line 820
    :cond_51
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_66

    .line 821
    iget-object p2, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BGProtectManager;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_152

    .line 822
    :cond_66
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7f

    iget-boolean p4, p0, Lcom/android/server/am/BGProtectManager;->removeContactExceptList:Z

    if-nez p4, :cond_7f

    .line 823
    iget-object p2, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BGProtectManager;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_152

    .line 824
    :cond_7f
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9d

    .line 825
    sget-wide v0, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    iget p0, p0, Lcom/android/server/am/BGProtectManager;->DIALER_EXCEPTION_TH:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_152

    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5kaWFsZXI="

    .line 826
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_152

    .line 831
    :cond_9d
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b2

    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5ob21laHVi"

    .line 832
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_152

    .line 833
    :cond_b2
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c7

    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5iaXhieS5hZ2VudA=="

    .line 834
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_152

    .line 835
    :cond_c7
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_db

    .line 836
    iget-object p2, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BGProtectManager;->getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_152

    .line 837
    :cond_db
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12a

    const-string/jumbo p0, "ro.debuggable"

    const-string p4, "0"

    invoke-static {p0, p4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSemSystemPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p4, 0x1

    if-ne p0, p4, :cond_12a

    const-string p0, "DynamicHiddenApp_BGProtectManager"

    const-string/jumbo p2, "it\'s debuggable binary!! add FACTORY in allowlist"

    .line 839
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Y29tLnNlYy5mYWNhdGZ1bmN0aW9u"

    .line 840
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Y29tLnNlYy5mYWN1aWZ1bmN0aW9u"

    .line 841
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5haXJjb21tYW5kbWFuYWdlcg=="

    .line 842
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5wcm92aWRlcnMuZmFjdG9yeQ=="

    .line 843
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_152

    .line 844
    :cond_12a
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14b

    const-string p0, "Y29tLnNhbXN1bmcuY21oOkNNSA=="

    .line 845
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Y29tLnNhbXN1bmcuY21o"

    .line 846
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_152

    .line 848
    :cond_14b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_152
    :goto_152
    return-void
.end method

.method public final dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "TU1T"

    .line 854
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q09OVEFDVFM="

    .line 855
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SU5DQUxMVUk="

    .line 856
    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RElBTEVS"

    .line 857
    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Q01I"

    .line 858
    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_3e

    .line 860
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9a

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9a

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9a

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3e

    goto :goto_9a

    .line 862
    :cond_3e
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4e

    .line 863
    iget-object p2, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BGProtectManager;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    .line 864
    :cond_4e
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5e

    .line 865
    iget-object p2, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BGProtectManager;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    .line 866
    :cond_5e
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6e

    const-string p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5kaWFsZXI="

    .line 867
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    .line 868
    :cond_6e
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7e

    .line 869
    iget-object p2, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BGProtectManager;->getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    .line 870
    :cond_7e
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_97

    const-string p0, "Y29tLnNhbXN1bmcuY21oOkNNSA=="

    .line 871
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Y29tLnNhbXN1bmcuY21o"

    .line 872
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    .line 874
    :cond_97
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9a
    :goto_9a
    return-void
.end method

.method public dumpMLList(Ljava/io/PrintWriter;)V
    .registers 4

    .line 972
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1d

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  MLList NAP Process name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22

    :cond_1d
    const-string p0, "  MLList NAP Process name : []"

    .line 975
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 977
    :goto_22
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    if-eqz p0, :cond_40

    .line 978
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  MLList AUF Process name : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    :cond_40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string p0, "Y29tLmFuZHJvaWQuY29udGFjdHM="

    .line 900
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 901
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 905
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 906
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    return-object p1

    :cond_27
    return-object p0

    .line 915
    :cond_28
    :try_start_28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 916
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_34} :catch_35

    move-object p0, v0

    :catch_35
    return-object p0
.end method

.method public final getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string p0, "Y29tLmFuZHJvaWQuaW5jYWxsdWk="

    .line 928
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 929
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 931
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    return-object p0

    .line 937
    :cond_17
    :try_start_17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 938
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_23} :catch_24

    move-object p0, v0

    :catch_24
    return-object p0
.end method

.method public final getIndexOfRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)I
    .registers 2

    .line 790
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string p0, "Y29tLmFuZHJvaWQubW1z"

    .line 880
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 881
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    return-object p0

    .line 889
    :cond_17
    :try_start_17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 890
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_23} :catch_24

    move-object p0, v0

    :catch_24
    return-object p0
.end method

.method public initBGProtectManager(Landroid/content/Context;)V
    .registers 3

    .line 190
    iput-object p1, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->addAllowlistList(Z)V

    .line 192
    iget-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->addBEKSList(Z)V

    .line 194
    :cond_d
    iput p1, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    return-void
.end method

.method public initBGProtectManagerPostBoot()V
    .registers 3

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/server/am/BGProtectManager;->addAllowlistList(Z)V

    .line 199
    iget-boolean v1, p0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0, v0}, Lcom/android/server/am/BGProtectManager;->addBEKSList(Z)V

    :cond_b
    const-string/jumbo v0, "persist.sys.bub_onoff"

    const-string/jumbo v1, "on"

    .line 205
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 206
    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager;->removeAllowlistByBUB()V

    :cond_1e
    return-void
.end method

.method public isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    .line 754
    iget-boolean p0, p0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 755
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 756
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    const-wide/32 v0, 0x927c0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public final isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    .line 794
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p0

    const/16 v0, 0x352

    if-lt p0, v0, :cond_3b

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p0

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_3b

    .line 795
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_30

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 796
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_2f

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 797
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    const/16 v1, 0xf

    if-ne p0, v1, :cond_30

    :cond_2f
    return v0

    .line 800
    :cond_30
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    const/16 p1, 0x10

    if-ne p0, p1, :cond_3b

    return v0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method public isContainPickedExceptList(Ljava/lang/String;)Z
    .registers 2

    .line 632
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isForKeepingCheck(Lcom/android/server/am/ProcessRecord;)Z
    .registers 7

    .line 733
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isForKeeping()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    .line 734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->appKeepingTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long p0, v1, v3

    if-lez p0, :cond_18

    .line 735
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setIsforKeeping(Z)V

    return v0

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    return v0
.end method

.method public isForceKillHeavyCondition(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 4

    .line 760
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BGProtectManager;->IsForceKillHeavyProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget p0, p0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcessLimit:I

    if-gt p2, p0, :cond_16

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 762
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p0

    const/16 p1, 0x398

    if-lt p0, p1, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public isProtectedInChimera(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5

    .line 676
    sget-boolean p0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz p0, :cond_13

    .line 677
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez p0, :cond_d

    if-lt p0, v1, :cond_11

    :cond_d
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz p0, :cond_28

    :cond_11
    :goto_11
    move v0, v2

    goto :goto_28

    .line 679
    :cond_13
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez p0, :cond_19

    if-lt p0, v1, :cond_11

    :cond_19
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz p0, :cond_28

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v1, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 680
    invoke-virtual {v1}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v1

    if-eq p0, v1, :cond_28

    goto :goto_11

    .line 682
    :cond_28
    :goto_28
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    move v2, v0

    :goto_30
    return v2
.end method

.method public final isRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3

    .line 783
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public removeAllowlistByBUB()V
    .registers 4

    .line 288
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    const-string v1, "Q09OVEFDVFM="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 289
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    const-string v1, "RElBTEVS"

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 290
    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager;->removeProviderLifeguardProcs()V

    .line 291
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 292
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public removeAllowlistByBUBMT()V
    .registers 4

    .line 296
    sget-boolean v0, Lcom/android/server/am/BGProtectManager;->addProtect:Z

    if-nez v0, :cond_47

    .line 298
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    const-string v1, "Y29tLmdvb2dsZS5wcm9jZXNzLmdhcHBz"

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 299
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    const-string v1, "Y29tLmdvb2dsZS5hbmRyb2lkLmdt"

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 300
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    const-string v1, "Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWFwcw=="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 301
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    const-string v1, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 302
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    const-string v1, "Y29tLmJhaWR1LkJhaWR1TWFw"

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 303
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 304
    sget-object p0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_4e

    .line 306
    :cond_47
    sget-object p0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcessList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/BGProtectManager;->forceKillHeavyProcess2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_4e
    return-void
.end method

.method public removePickedExceptList(Ljava/lang/String;)V
    .registers 3

    .line 640
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isContainPickedExceptList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 641
    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public final removeProviderLifeguardProcs()V
    .registers 6

    .line 277
    sget-wide v0, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    sget v2, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_memory_TH:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    .line 278
    :goto_c
    sget-object v3, Lcom/android/server/am/BGProtectManager;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_22

    .line 279
    sget v4, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_key:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_1d

    .line 280
    sget-object v4, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    aget-object v3, v3, v2

    invoke-virtual {p0, v4, v3, v0}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    :cond_1d
    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_22
    return-void
.end method

.method public resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V
    .registers 7

    .line 425
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/BGProtectManager;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_38

    .line 426
    iget v3, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v3, v4, :cond_16

    if-ne v0, v4, :cond_16

    .line 427
    iput v4, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_87

    .line 428
    :cond_16
    iget v3, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    if-ne v3, v4, :cond_27

    if-ne v0, v2, :cond_27

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 429
    iput v2, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto :goto_87

    .line 430
    :cond_27
    iget p0, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne p0, v4, :cond_31

    const/4 v2, 0x3

    if-ne v0, v2, :cond_31

    .line 431
    iput v2, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto :goto_87

    :cond_31
    if-ne p0, v4, :cond_87

    if-ne v0, v1, :cond_87

    .line 433
    iput v1, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto :goto_87

    .line 435
    :cond_38
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->isAMSExceptionProcess(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v3, :cond_45

    .line 436
    iput-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 437
    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_87

    .line 438
    :cond_45
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    if-eq p0, v3, :cond_6f

    if-ne p0, v2, :cond_58

    .line 440
    iput-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 441
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_87

    :cond_58
    if-ne p0, v1, :cond_63

    .line 443
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_87

    :cond_63
    const/4 v0, 0x6

    if-ne p0, v0, :cond_87

    .line 445
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_87

    .line 447
    :cond_6f
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->isCameraGuardProcess(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_80

    .line 448
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_87

    :cond_80
    const/4 p0, 0x0

    .line 450
    iput p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 451
    iput-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 452
    iput v3, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    :cond_87
    :goto_87
    return-void
.end method

.method public setAllowListCleared(Z)V
    .registers 2

    .line 776
    sput-boolean p1, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    return-void
.end method

.method public setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I
    .registers 12

    .line 496
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 497
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    .line 499
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    if-eq v2, v3, :cond_220

    .line 500
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    const/16 v3, 0x3e7

    const/16 v4, 0x352

    if-lt v2, v4, :cond_ec

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    if-gt v2, v3, :cond_ec

    .line 501
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    const/16 v5, 0x384

    if-eqz v2, :cond_43

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    if-eqz v2, :cond_43

    .line 502
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 503
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/16 v6, 0xa

    if-eq v2, v6, :cond_40

    .line 504
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/16 v6, 0xf

    if-ne v2, v6, :cond_53

    :cond_40
    const/16 v1, 0x10

    goto :goto_53

    .line 508
    :cond_43
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->IsProtected(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 509
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 510
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 513
    :cond_53
    :goto_53
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    if-eqz v2, :cond_ec

    .line 514
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v2, :cond_db

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->IsProtected(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 515
    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager;->IsAllowListCleared()Z

    move-result v2

    if-nez v2, :cond_d1

    .line 516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget v2, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_TIME_LIMIT:I

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-ltz v2, :cond_c1

    .line 517
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/am/BGProtectManager;->isContainPickedExceptList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_db

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 518
    invoke-static {v2}, Lcom/android/server/am/BGProtectManager;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_db

    .line 519
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 520
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 521
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/am/BGProtectManager;->addPickedExceptList(Ljava/lang/String;)V

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Picked process timeout "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (pid: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "DynamicHiddenApp_BGProtectManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    .line 527
    :cond_c1
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 528
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 529
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/am/BGProtectManager;->removePickedExceptList(Ljava/lang/String;)V

    goto :goto_db

    .line 532
    :cond_d1
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 533
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 538
    :cond_db
    :goto_db
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_ec

    .line 539
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 540
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 546
    :cond_ec
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    const/16 v4, 0x5c

    const/16 v5, 0xc8

    const/16 v6, 0xfa

    const/16 v7, 0x63

    if-lt v2, v6, :cond_145

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    if-gt v2, v3, :cond_145

    .line 547
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v2, :cond_110

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v8, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v8

    if-ne v2, v8, :cond_110

    const/16 v1, 0x5e

    .line 549
    :cond_110
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->IsProtected(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 550
    iget-boolean v1, p0, Lcom/android/server/am/BGProtectManager;->AMSExceptionProviderUpgradeAdjEnable:Z

    if-eqz v1, :cond_138

    .line 551
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v2, "android.process.acore"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12e

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v2, "android.process.media"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 552
    :cond_12e
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 553
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 556
    :cond_138
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_144

    move v1, v4

    goto :goto_145

    :cond_144
    move v1, v7

    .line 563
    :cond_145
    :goto_145
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    const/16 v8, 0x320

    const/16 v9, 0x13

    if-lt v2, v8, :cond_19f

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    if-gt v2, v3, :cond_19f

    .line 564
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_173

    .line 565
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v2, :cond_171

    .line 566
    iget-boolean v2, p0, Lcom/android/server/am/BGProtectManager;->CLEANUP_WEBVIEW_ENABLE:Z

    if-eqz v2, :cond_16f

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    sget v3, Lcom/android/server/am/BGProtectManager;->WEBVIEW_ADJ_THRESHOLD:I

    if-gt v2, v3, :cond_173

    :cond_16f
    move v1, v7

    goto :goto_173

    :cond_171
    const/16 v1, 0x62

    .line 574
    :cond_173
    :goto_173
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v2

    if-eqz v2, :cond_182

    .line 575
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-ne v2, v9, :cond_182

    const/16 v1, 0x61

    goto :goto_190

    .line 579
    :cond_182
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v2

    if-nez v2, :cond_190

    .line 580
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-ne v2, v9, :cond_190

    const/16 v1, 0x60

    .line 586
    :cond_190
    :goto_190
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_19f

    .line 587
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    if-eqz v2, :cond_19f

    move v1, v7

    .line 593
    :cond_19f
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    const/16 v3, 0xc7

    if-eqz v2, :cond_1d7

    .line 594
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v8, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v8

    if-ne v2, v8, :cond_1b6

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    if-lt v2, v6, :cond_1b6

    goto :goto_1d8

    .line 596
    :cond_1b6
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    const/16 v4, 0x2bc

    if-ne v2, v4, :cond_1c7

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_1c7

    const/16 v4, 0x96

    goto :goto_1d8

    .line 598
    :cond_1c7
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_1d7

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->getIndexOfRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    add-int/lit16 v4, v1, 0xb4

    if-le v4, v3, :cond_1d8

    move v4, v3

    goto :goto_1d8

    :cond_1d7
    move v4, v1

    .line 604
    :cond_1d8
    :goto_1d8
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    if-ge v1, v5, :cond_1f0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    if-ltz v1, :cond_1f0

    .line 605
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1f0

    const/16 v4, 0x5f

    .line 610
    :cond_1f0
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    if-nez v1, :cond_211

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    if-eqz v1, :cond_211

    .line 611
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    const/16 v2, -0x2bc

    if-nez v1, :cond_203

    .line 612
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    :goto_201
    move v1, v7

    goto :goto_212

    .line 615
    :cond_203
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v3

    if-lt v1, v3, :cond_211

    .line 616
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    goto :goto_201

    :cond_211
    move v1, v4

    .line 622
    :goto_212
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-ne v0, v9, :cond_220

    .line 623
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_220

    const/16 v1, 0x5d

    :cond_220
    return v1
.end method

.method public setLmkdProtectFlag(Lcom/android/server/am/ProcessRecord;)V
    .registers 8

    .line 458
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/BGProtectManager;->isNeverKillExceptionProcess(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_10

    .line 460
    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    .line 461
    iput v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto/16 :goto_b6

    .line 462
    :cond_10
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/BGProtectManager;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eq v0, v1, :cond_49

    .line 464
    iget v1, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v1, v2, :cond_24

    if-ne v0, v2, :cond_24

    .line 465
    iput v2, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_b6

    .line 466
    :cond_24
    iget v1, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    if-ne v1, v2, :cond_36

    if-ne v0, v4, :cond_36

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 467
    iput v4, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_b6

    .line 468
    :cond_36
    iget p0, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne p0, v2, :cond_41

    const/4 v1, 0x3

    if-ne v0, v1, :cond_41

    .line 469
    iput v1, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_b6

    :cond_41
    if-ne p0, v2, :cond_b6

    if-ne v0, v3, :cond_b6

    .line 471
    iput v3, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_b6

    .line 473
    :cond_49
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/BGProtectManager;->appIsPickedProcess(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_6f

    .line 474
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[SecIpm] it\'s a ML_TYPE_EMPTYPROCESS protected process "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DynamicHiddenApp_BGProtectManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    goto :goto_b6

    .line 476
    :cond_6f
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->isAMSExceptionProcess(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_7c

    .line 478
    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 479
    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_b6

    .line 480
    :cond_7c
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    if-eq p0, v1, :cond_a6

    if-ne p0, v4, :cond_8f

    .line 483
    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 484
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_b6

    :cond_8f
    if-ne p0, v3, :cond_9a

    .line 486
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_b6

    :cond_9a
    const/4 v0, 0x6

    if-ne p0, v0, :cond_b6

    .line 488
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_b6

    .line 490
    :cond_a6
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->isCameraGuardProcess(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b6

    .line 491
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    :cond_b6
    :goto_b6
    return-void
.end method

.method public updateNapProcessProtection(Lcom/android/server/am/ProcessRecord;)V
    .registers 16

    .line 321
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    packed-switch v0, :pswitch_data_d4

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getMlLaunchTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 331
    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    const/16 v4, 0xd

    const-string v5, " slots kill a"

    const/16 v6, 0x35c

    const/16 v7, 0x13

    const-wide/16 v8, -0x1

    if-eqz v2, :cond_72

    .line 332
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v2

    if-nez v2, :cond_6f

    .line 333
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getMlLaunchTime()J

    move-result-wide v10

    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getMlLaunchTime()J

    move-result-wide v12

    cmp-long v2, v10, v12

    if-lez v2, :cond_6f

    .line 334
    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v8, v9}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    .line 335
    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    .line 336
    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-lt v2, v7, :cond_6f

    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 337
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v2

    if-le v2, v6, :cond_6f

    .line 338
    iget-object v2, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ML_Kill: over "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v4, v3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 341
    :cond_6f
    iput-object p1, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    goto :goto_93

    .line 343
    :cond_72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "app launch time is "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getMlLaunchTime()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " tmp time is "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "DynamicHiddenApp_BGProtectManager"

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iput-object p1, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 346
    :goto_93
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v2

    if-nez v2, :cond_d2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getMlLaunchTime()J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-eqz v2, :cond_d2

    const-wide/32 v8, 0x1b7740

    cmp-long v2, v0, v8

    if-lez v2, :cond_d2

    .line 347
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-lt v2, v7, :cond_d2

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 348
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v2

    if-le v2, v6, :cond_d2

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ML_Kill: timeout "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    const/4 p1, 0x0

    .line 351
    iput-object p1, p0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    :cond_d2
    :pswitch_d2
    return-void

    nop

    :pswitch_data_d4
    .packed-switch 0x10
        :pswitch_d2
        :pswitch_d2
        :pswitch_d2
    .end packed-switch
.end method

.method public updatePickedProcessLists(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 311
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1d

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 314
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    return-void
.end method

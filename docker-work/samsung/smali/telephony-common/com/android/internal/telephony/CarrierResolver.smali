.class public Lcom/android/internal/telephony/CarrierResolver;
.super Landroid/os/Handler;
.source "CarrierResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_URL_PREFER_APN:Landroid/net/Uri;

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z


# instance fields
.field private blacklist mCarrierId:I

.field private final blacklist mCarrierIdLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mCarrierIdTestReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCarrierListVersion:Ljava/lang/Integer;

.field private blacklist mCarrierMatchingRulesOnMccMnc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCarrierName:Ljava/lang/String;

.field private final blacklist mContentObserver:Landroid/database/ContentObserver;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private blacklist mMnoCarrierId:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private blacklist mPreferApn:Ljava/lang/String;

.field private blacklist mSpecificCarrierId:I

.field private blacklist mSpecificCarrierName:Ljava/lang/String;

.field private blacklist mSpn:Ljava/lang/String;

.field private final blacklist mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private blacklist mTestOverrideApn:Ljava/lang/String;

.field private blacklist mTestOverrideCarrierPriviledgeRule:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierResolver;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCarrierIdAndName(Lcom/android/internal/telephony/CarrierResolver;ILjava/lang/String;ILjava/lang/String;IZ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/CarrierResolver;->updateCarrierIdAndName(ILjava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smequals(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CarrierResolver;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 65
    const-class v0, Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    .line 67
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    .line 75
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "preferapn"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierResolver;->CONTENT_URL_PREFER_APN:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 6

    .line 173
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    .line 89
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    .line 93
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    const-string v0, ""

    .line 105
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/CarrierResolver$1;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/telephony/CarrierResolver$1;-><init>(Lcom/android/internal/telephony/CarrierResolver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContentObserver:Landroid/database/ContentObserver;

    .line 139
    new-instance v1, Lcom/android/internal/telephony/CarrierResolver$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CarrierResolver$2;-><init>(Lcom/android/internal/telephony/CarrierResolver;)V

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdTestReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    new-instance v2, Lcom/android/internal/telephony/CarrierResolver$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CarrierResolver$3;-><init>(Lcom/android/internal/telephony/CarrierResolver;)V

    iput-object v2, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating CarrierResolver["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    .line 176
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 177
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 180
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v2, Lcom/android/internal/telephony/CarrierResolver;->CONTENT_URL_PREFER_APN:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 182
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v2, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 186
    sget-boolean p1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_91

    .line 187
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.internal.telephony.ACTION_TEST_OVERRIDE_CARRIER_ID"

    .line 188
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_91
    return-void
.end method

.method private static blacklist equals(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    if-eqz p0, :cond_16

    if-eqz p1, :cond_16

    if-eqz p2, :cond_11

    .line 1170
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    goto :goto_15

    :cond_11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_15
    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist getCarrierIdFromIdentifier(Landroid/content/Context;Landroid/service/carrier/CarrierIdentifier;)I
    .registers 18

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1018
    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v6

    .line 1019
    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v7

    .line 1020
    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v4

    .line 1021
    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v9

    .line 1022
    sget-boolean v0, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v0, :cond_65

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getCarrierIdFromIdentifier] mnnmnc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " imsi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    .line 1027
    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " spn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 1031
    :cond_65
    new-instance v0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;I)V

    .line 1039
    iget-object v1, v0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierMatchingRulesFromMccMnc(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1041
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    move v3, v2

    :cond_80
    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    .line 1042
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->match(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V

    .line 1043
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmScore(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    if-le v5, v3, :cond_80

    .line 1044
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmScore(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v2

    .line 1045
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v3

    move v15, v3

    move v3, v2

    move v2, v15

    goto :goto_80

    :cond_a1
    return v2
.end method

.method public static blacklist getCarrierIdFromMccMnc(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    .line 1107
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CarrierResolver;->getCursorForMccMnc(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_50

    if-eqz p0, :cond_4a

    .line 1108
    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4a

    .line 1109
    :cond_e
    sget-boolean v1, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v1, :cond_32

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCarrierIdFromMccMnc]- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Records(s) in DB mccmnc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    :cond_32
    const-string p1, "carrier_id"

    .line 1113
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_40

    .line 1114
    :try_start_3c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_50

    return p1

    :catchall_40
    move-exception p1

    .line 1107
    :try_start_41
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception p0

    :try_start_46
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_49
    throw p1

    :cond_4a
    :goto_4a
    if-eqz p0, :cond_4f

    .line 1114
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_50

    :cond_4f
    return v0

    :catch_50
    move-exception p0

    .line 1115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getCarrierIdFromMccMnc]- ex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    return v0
.end method

.method public static blacklist getCarrierIdsFromApnQuery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mccmnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "spn"

    .line 1061
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\'"

    if-eqz v0, :cond_35

    if-eqz p3, :cond_35

    .line 1062
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND spn=\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a0

    :cond_35
    const-string v0, "imsi"

    .line 1063
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    if-eqz p3, :cond_57

    .line 1064
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND imsi_prefix_xpattern=\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a0

    :cond_57
    const-string v0, "gid1"

    .line 1065
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    if-eqz p3, :cond_79

    .line 1066
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND gid1=\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a0

    :cond_79
    const-string v0, "gid2"

    .line 1067
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9b

    if-eqz p3, :cond_9b

    .line 1068
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND gid2=\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a0

    :cond_9b
    const-string p2, "mvno case empty or other invalid values"

    .line 1070
    invoke-static {p2}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 1073
    :goto_a0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    :try_start_a5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b3} :catch_103

    if-eqz p0, :cond_fd

    .line 1082
    :try_start_b5
    sget-boolean p3, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz p3, :cond_d6

    .line 1083
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getCarrierIdsFromApnQuery]- "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Records(s) in DB"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 1086
    :cond_d6
    :goto_d6
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_fd

    const-string p3, "carrier_id"

    .line 1087
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    .line 1088
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    .line 1089
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f7
    .catchall {:try_start_b5 .. :try_end_f7} :catchall_f8

    goto :goto_d6

    :catchall_f8
    move-exception p3

    .line 1095
    :try_start_f9
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1097
    throw p3

    :cond_fd
    if-eqz p0, :cond_118

    .line 1095
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_102} :catch_103

    goto :goto_118

    :catch_103
    move-exception p0

    .line 1099
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getCarrierIdsFromApnQuery]- ex: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    .line 1101
    :cond_118
    :goto_118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    return-object p2
.end method

.method private static blacklist getCarrierMatchingRulesFromMccMnc(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "mccmnc=?"

    const/4 p0, 0x1

    new-array v5, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v5, p0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_5b

    if-eqz p0, :cond_55

    .line 398
    :try_start_1b
    sget-boolean v1, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v1, :cond_3f

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadCarrierMatchingRules]- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Records(s) in DB mccmnc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 402
    :cond_3f
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 403
    :goto_42
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 404
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->makeCarrierMatchingRule(Landroid/database/Cursor;)Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_1b .. :try_end_4f} :catchall_50

    goto :goto_42

    :catchall_50
    move-exception p1

    .line 409
    :try_start_51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 411
    throw p1

    :cond_55
    if-eqz p0, :cond_70

    .line 409
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5a} :catch_5b

    goto :goto_70

    :catch_5b
    move-exception p0

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[loadCarrierMatchingRules]- ex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    :cond_70
    :goto_70
    return-object v0
.end method

.method private blacklist getCarrierNameFromId(I)Ljava/lang/String;
    .registers 9

    .line 361
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "carrier_id=?"

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_6c

    if-eqz p0, :cond_66

    .line 368
    :try_start_29
    sget-boolean v0, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v0, :cond_4d

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getCarrierNameFromId]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Records(s) in DB cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 372
    :cond_4d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_66

    const-string p1, "carrier_name"

    .line 373
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_5d
    .catchall {:try_start_29 .. :try_end_5d} :catchall_61

    .line 378
    :try_start_5d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_61
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 380
    throw p1

    :cond_66
    if-eqz p0, :cond_81

    .line 378
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6b} :catch_6c

    goto :goto_81

    :catch_6c
    move-exception p0

    .line 382
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getCarrierNameFromId]- ex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    :cond_81
    :goto_81
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getCarrierNameFromMccMnc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1130
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CarrierResolver;->getCursorForMccMnc(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_50

    if-eqz p0, :cond_4a

    .line 1131
    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4a

    .line 1132
    :cond_e
    sget-boolean v1, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v1, :cond_32

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCarrierNameFromMccMnc]- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Records(s) in DB mccmnc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    :cond_32
    const-string p1, "carrier_name"

    .line 1136
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_40

    .line 1137
    :try_start_3c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_50

    return-object p1

    :catchall_40
    move-exception p1

    .line 1130
    :try_start_41
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception p0

    :try_start_46
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_49
    throw p1

    :cond_4a
    :goto_4a
    if-eqz p0, :cond_4f

    .line 1137
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_50

    :cond_4f
    return-object v0

    :catch_50
    move-exception p0

    .line 1138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getCarrierNameFromMccMnc]- ex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getCursorForMccMnc(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    .line 1146
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "mccmnc=? AND gid1 is NULL AND gid2 is NULL AND imsi_prefix_xpattern is NULL AND spn is NULL AND iccid_prefix is NULL AND plmn is NULL AND privilege_access_rule is NULL AND apn is NULL"

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v4, p0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 1162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getCursorForMccMnc]- ex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getPreferApn()Ljava/lang/String;
    .registers 9

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideApn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "[getPreferApn]- "

    if-nez v0, :cond_26

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " test override"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 422
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideApn:Ljava/lang/String;

    return-object p0

    .line 424
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferapn/subId/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 425
    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string p0, "apn"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 424
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_b7

    .line 430
    :try_start_58
    sget-boolean v2, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v2, :cond_77

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Records(s) in DB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 433
    :cond_77
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 434
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_97} :catch_9d
    .catchall {:try_start_58 .. :try_end_97} :catchall_9b

    .line 444
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_9b
    move-exception p0

    goto :goto_b3

    :catch_9d
    move-exception p0

    .line 441
    :try_start_9e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getPreferApn]- exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_9e .. :try_end_b2} :catchall_9b

    goto :goto_b9

    .line 444
    :goto_b3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 446
    throw p0

    :cond_b7
    if-eqz v0, :cond_bc

    .line 444
    :goto_b9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_bc
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getSubscriptionMatchingRule()Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;
    .registers 16

    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v5

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v6

    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v7

    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v8

    .line 797
    iget-object v9, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    .line 798
    iget-object v10, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    .line 801
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideCarrierPriviledgeRule:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 802
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideCarrierPriviledgeRule:Ljava/lang/String;

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v0

    goto :goto_5a

    .line 804
    :cond_49
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 805
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCertsFromCarrierPrivilegeAccessRules()Ljava/util/List;

    move-result-object p0

    move-object v11, p0

    .line 808
    :goto_5a
    sget-boolean p0, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz p0, :cond_c1

    .line 809
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[matchSubscriptionCarrier] mnnmnc:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " gid1: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " gid2: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " imsi: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    .line 813
    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " iccid: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-static {v0, v5}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " plmn: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " spn: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " apn: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " accessRules: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_b6

    move-object v0, v11

    goto :goto_b7

    :cond_b6
    const/4 v0, 0x0

    .line 818
    :goto_b7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 809
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 820
    :cond_c1
    new-instance p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;I)V

    return-object p0
.end method

.method private blacklist handleSimAbsent()V
    .registers 9

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    .line 244
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    .line 245
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/CarrierResolver;->updateCarrierIdAndName(ILjava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method private blacklist handleSimLoaded(Z)V
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_16

    .line 230
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    goto :goto_13

    .line 231
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    :goto_13
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    goto :goto_1b

    :cond_16
    const-string v0, "mIccRecords is null on SIM_LOAD_EVENT, could not get SPN"

    .line 233
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    .line 235
    :goto_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->getPreferApn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/CarrierResolver;->loadCarrierMatchingRulesOnMccMnc(ZZ)V

    return-void
.end method

.method private blacklist isPreferApnUserEdited(Ljava/lang/String;)Z
    .registers 11

    const-string v0, "edited"

    const/4 v1, 0x0

    .line 451
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preferapn/subId/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-static {v2, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn=?"

    const/4 p0, 0x1

    new-array v7, p0, [Ljava/lang/String;

    aput-object p1, v7, v1

    const/4 v8, 0x0

    .line 451
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_36} :catch_5e

    if-eqz p1, :cond_58

    .line 457
    :try_start_38
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 458
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_46
    .catchall {:try_start_38 .. :try_end_46} :catchall_4e

    if-ne v0, p0, :cond_49

    goto :goto_4a

    :cond_49
    move p0, v1

    .line 461
    :goto_4a
    :try_start_4a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_5e

    return p0

    :catchall_4e
    move-exception p0

    .line 451
    :try_start_4f
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception p1

    :try_start_54
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_57
    throw p0

    :cond_58
    if-eqz p1, :cond_73

    .line 461
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_5e

    goto :goto_73

    :catch_5e
    move-exception p0

    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[isPreferApnUserEdited]- exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    :cond_73
    :goto_73
    return v1
.end method

.method private blacklist loadCarrierMatchingRulesOnMccMnc(ZZ)V
    .registers 11

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "mccmnc=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_73

    if-eqz v1, :cond_6d

    .line 336
    :try_start_24
    sget-boolean v2, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v2, :cond_48

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCarrierMatchingRules]- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Records(s) in DB mccmnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 340
    :cond_48
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    :goto_4d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver;->makeCarrierMatchingRule(Landroid/database/Cursor;)Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 344
    :cond_5d
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CarrierResolver;->matchSubscriptionCarrier(ZZ)V

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierListVersion()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/CarrierIdMatchStats;->sendCarrierIdTableVersion(I)V
    :try_end_67
    .catchall {:try_start_24 .. :try_end_67} :catchall_68

    goto :goto_6d

    :catchall_68
    move-exception p0

    .line 351
    :try_start_69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 353
    throw p0

    :cond_6d
    :goto_6d
    if-eqz v1, :cond_88

    .line 351
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_73

    goto :goto_88

    :catch_73
    move-exception p0

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[loadCarrierMatchingRules]- ex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    :cond_88
    :goto_88
    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 1176
    sget-object v0, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;I)V
    .registers 4

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1179
    sget-object v0, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist makeCarrierMatchingRule(Landroid/database/Cursor;)Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;
    .registers 16

    const-string v0, "privilege_access_rule"

    .line 556
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 555
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    new-instance v14, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    const-string v1, "mccmnc"

    .line 558
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "imsi_prefix_xpattern"

    .line 559
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "iccid_prefix"

    .line 561
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "gid1"

    .line 563
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "gid2"

    .line 564
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "plmn"

    .line 565
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "spn"

    .line 566
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "apn"

    .line 567
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 568
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_75

    :cond_65
    new-instance v1, Ljava/util/ArrayList;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v1

    :goto_75
    const-string v0, "carrier_id"

    .line 569
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v0, "carrier_name"

    .line 570
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v0, "parent_carrier_id"

    .line 571
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;I)V

    return-object v14
.end method

.method private blacklist matchSubscriptionCarrier(ZZ)V
    .registers 27

    move-object/from16 v7, p0

    .line 842
    iget-object v0, v7, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "[matchSubscriptionCarrier]skip before sim records loaded"

    .line 843
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    return-void

    .line 858
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CarrierResolver;->getSubscriptionMatchingRule()Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    move-result-object v8

    .line 860
    iget-object v0, v7, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move v11, v9

    move-object v1, v10

    move-object v2, v1

    move-object v3, v2

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    .line 861
    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->match(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V

    .line 862
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmScore(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    if-le v5, v11, :cond_40

    .line 863
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmScore(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v11

    move-object v1, v4

    move-object v2, v1

    goto :goto_5f

    :cond_40
    if-le v11, v9, :cond_5f

    .line 866
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmScore(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    if-ne v5, v11, :cond_5f

    .line 869
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmParentCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v6

    if-ne v5, v6, :cond_54

    move-object v1, v4

    goto :goto_5f

    .line 871
    :cond_54
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmParentCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v6

    if-ne v5, v6, :cond_5f

    move-object v2, v4

    .line 875
    :cond_5f
    :goto_5f
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmScore(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    const/16 v6, 0x100

    if-ne v5, v6, :cond_24

    move-object v3, v4

    goto :goto_24

    :cond_69
    if-ne v11, v9, :cond_8d

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[matchSubscriptionCarrier - no match] cid: -1 name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move/from16 v6, p2

    .line 882
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/CarrierResolver;->updateCarrierIdAndName(ILjava/lang/String;ILjava/lang/String;IZ)V

    goto/16 :goto_119

    :cond_8d
    if-ne v1, v2, :cond_ac

    .line 887
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmParentCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v0

    if-eq v0, v9, :cond_ac

    .line 889
    new-instance v2, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    invoke-direct {v2, v1, v10}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule-IA;)V

    .line 890
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmParentCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fputmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;I)V

    .line 891
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierNameFromId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fputmName(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;Ljava/lang/String;)V

    .line 893
    :cond_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[matchSubscriptionCarrier] specific cid: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " specific name: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmName(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cid: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " name: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmName(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 896
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v4

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmName(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmName(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_ff

    .line 898
    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v0

    goto :goto_103

    :cond_ff
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v0

    :goto_103
    move v12, v0

    move-object/from16 v0, p0

    move v1, v4

    move v3, v5

    move-object v4, v6

    move v5, v12

    move/from16 v6, p2

    .line 896
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/CarrierResolver;->updateCarrierIdAndName(ILjava/lang/String;ILjava/lang/String;IZ)V

    if-eqz p1, :cond_119

    const-string v0, "[matchSubscriptionCarrier] - Calling updateCarrierConfig()"

    .line 901
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 902
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CarrierResolver;->updateCarrierConfig()V

    :cond_119
    :goto_119
    and-int/lit8 v0, v11, 0x20

    if-nez v0, :cond_128

    .line 916
    iget-object v1, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid1:Ljava/lang/String;

    .line 917
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_128

    iget-object v1, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid1:Ljava/lang/String;

    goto :goto_129

    :cond_128
    move-object v1, v10

    :goto_129
    if-eq v11, v9, :cond_12d

    if-nez v0, :cond_138

    .line 918
    :cond_12d
    iget-object v0, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    .line 920
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_138

    iget-object v0, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    goto :goto_139

    :cond_138
    move-object v0, v10

    .line 924
    :goto_139
    iget-object v2, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->apn:Ljava/lang/String;

    if-eqz v2, :cond_145

    .line 925
    invoke-direct {v7, v2}, Lcom/android/internal/telephony/CarrierResolver;->isPreferApnUserEdited(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_145

    .line 926
    iget-object v10, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->apn:Ljava/lang/String;

    :cond_145
    move-object/from16 v19, v10

    .line 929
    iget-object v2, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefix:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_15a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x7

    if-lt v2, v4, :cond_15a

    .line 930
    iget-object v2, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_15c

    :cond_15a
    iget-object v2, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefix:Ljava/lang/String;

    :goto_15c
    move-object v14, v2

    .line 933
    iget-object v2, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixPattern:Ljava/lang/String;

    if-eqz v2, :cond_170

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x8

    if-lt v2, v4, :cond_170

    .line 934
    iget-object v2, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixPattern:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_172

    .line 935
    :cond_170
    iget-object v2, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixPattern:Ljava/lang/String;

    :goto_172
    move-object v13, v2

    .line 937
    new-instance v2, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    iget-object v12, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    iget-object v15, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid1:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid2:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->plmn:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->spn:Ljava/lang/String;

    iget-object v6, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->privilegeAccessRule:Ljava/util/List;

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    move-object v11, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    invoke-direct/range {v11 .. v23}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;I)V

    .line 949
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v12

    iget-object v3, v7, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 950
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierListVersion()I

    move-result v14

    iget v15, v7, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 949
    invoke-virtual/range {v12 .. v18}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeCarrierIdMatchingEvent(IIILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V

    if-nez v0, :cond_1b0

    if-eqz v1, :cond_1c4

    .line 956
    :cond_1b0
    iget-object v2, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->spn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    iget-object v2, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->plmn:Ljava/lang/String;

    goto :goto_1bd

    :cond_1bb
    const-string v2, ""

    .line 957
    :goto_1bd
    iget v3, v7, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    iget-object v4, v8, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->spn:Ljava/lang/String;

    invoke-static {v3, v0, v1, v4, v2}, Lcom/android/internal/telephony/metrics/CarrierIdMatchStats;->onCarrierIdMismatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c4
    return-void
.end method

.method private blacklist updateCarrierConfig()V
    .registers 4

    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 828
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eqz v0, :cond_e

    .line 830
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 832
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 833
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 834
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    .line 835
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v1

    .line 834
    invoke-virtual {v0, p0, v1}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    return-void
.end method

.method private blacklist updateCarrierIdAndName(ILjava/lang/String;ILjava/lang/String;IZ)V
    .registers 14

    .line 481
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    const/4 v1, 0x0

    const-string v2, " to:"

    const/4 v3, 0x1

    if-eq p3, v0, :cond_28

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateSpecificCarrierId] from:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 484
    iput p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    move p3, v3

    goto :goto_29

    :cond_28
    move p3, v1

    .line 487
    :goto_29
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    if-eq p4, v0, :cond_4c

    .line 488
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[updateSpecificCarrierName] from:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 490
    iput-object p4, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    move p3, v3

    :cond_4c
    const-string p4, "android.telephony.extra.SUBSCRIPTION_ID"

    const-string v0, " name:"

    const/4 v4, 0x0

    if-eqz p3, :cond_c0

    .line 494
    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateSpecificCarrierIdAndName] cid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 496
    new-instance p3, Landroid/content/Intent;

    const-string v5, "android.telephony.action.SUBSCRIPTION_SPECIFIC_CARRIER_IDENTITY_CHANGED"

    invoke-direct {p3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    iget v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    const-string v6, "android.telephony.extra.SPECIFIC_CARRIER_ID"

    invoke-virtual {p3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    const-string v6, "android.telephony.extra.SPECIFIC_CARRIER_NAME"

    invoke-virtual {p3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {p3, p4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 505
    iget v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "specific_carrier_id"

    invoke-virtual {p3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    const-string v6, "specific_carrier_id_name"

    invoke-virtual {p3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 508
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-static {v6}, Landroid/provider/Telephony$CarrierId;->getSpecificCarrierIdUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v6

    .line 507
    invoke-virtual {v5, v6, p3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 513
    :cond_c0
    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-static {p2, p3, v3}, Lcom/android/internal/telephony/CarrierResolver;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_e7

    .line 514
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateCarrierName] from:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 515
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    move v1, v3

    .line 518
    :cond_e7
    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    if-eq p1, p2, :cond_10a

    .line 519
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[updateCarrierId] from:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 520
    iput p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    move v1, v3

    .line 523
    :cond_10a
    iget p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    if-eq p5, p1, :cond_12d

    .line 524
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[updateMnoCarrierId] from:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 525
    iput p5, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    goto :goto_12e

    :cond_12d
    move v3, v1

    :goto_12e
    if-eqz v3, :cond_1a7

    .line 529
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[updateCarrierIdAndName] cid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " mnoCid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 531
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    const-string p3, "android.telephony.extra.CARRIER_ID"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 534
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    const-string p3, "android.telephony.extra.CARRIER_NAME"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 539
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 540
    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "carrier_id"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 541
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    const-string p3, "carrier_name"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 543
    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    invoke-static {p3}, Landroid/provider/Telephony$CarrierId;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object p3

    .line 542
    invoke-virtual {p2, p3, p1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 548
    :cond_1a7
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_1c4

    if-nez p6, :cond_1c4

    .line 550
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/SubscriptionController;->setCarrierId(II)I

    :cond_1c4
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1187
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, "mCarrierResolverLocalLogs:"

    .line 1188
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1190
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCarrierId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSpecificCarrierId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mMnoCarrierId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCarrierName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSpecificCarrierName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "carrier_list_version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierListVersion()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCarrierMatchingRules on mccmnc: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1201
    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1200
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1203
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_da

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    .line 1204
    invoke-virtual {p2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c6

    .line 1206
    :cond_da
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSpn: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPreferApn: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getCarrierId()I
    .registers 1

    .line 977
    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    return p0
.end method

.method public blacklist getCarrierListVersion()I
    .registers 4

    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierListVersion:Ljava/lang/Integer;

    if-nez v0, :cond_35

    .line 966
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "get_version"

    .line 967
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 966
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 969
    :try_start_17
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    .line 970
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierListVersion:Ljava/lang/Integer;
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_29

    .line 971
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_35

    :catchall_29
    move-exception p0

    if-eqz v0, :cond_34

    .line 966
    :try_start_2c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_34
    :goto_34
    throw p0

    .line 973
    :cond_35
    :goto_35
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierListVersion:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getCarrierName()Ljava/lang/String;
    .registers 1

    .line 999
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMnoCarrierId()I
    .registers 1

    .line 1007
    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    return p0
.end method

.method public blacklist getSpecificCarrierId()I
    .registers 1

    .line 995
    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    return p0
.end method

.method public blacklist getSpecificCarrierName()Ljava/lang/String;
    .registers 1

    .line 1003
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_75

    const/4 v3, 0x3

    if-eq v0, v3, :cond_45

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3e

    .line 319
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid msg: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    goto/16 :goto_bc

    .line 289
    :cond_3e
    iput-object v4, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierListVersion:Ljava/lang/Integer;

    .line 290
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/CarrierResolver;->loadCarrierMatchingRulesOnMccMnc(ZZ)V

    goto/16 :goto_bc

    .line 293
    :cond_45
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->getPreferApn()Ljava/lang/String;

    move-result-object p1

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/android/internal/telephony/CarrierResolver;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePreferApn] from:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 296
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    .line 297
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/CarrierResolver;->matchSubscriptionCarrier(ZZ)V

    goto :goto_bc

    .line 302
    :cond_75
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 303
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 302
    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v0, p1, :cond_bc

    if-eqz v0, :cond_95

    const-string v0, "Removing stale icc objects."

    .line 306
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsOverride(Landroid/os/Handler;)V

    .line 308
    iput-object v4, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    :cond_95
    if-eqz p1, :cond_bc

    const-string v0, "new Icc object"

    .line 311
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 313
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 312
    invoke-virtual {p1, p0, v2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsOverride(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 314
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    goto :goto_bc

    .line 280
    :cond_a4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_b9

    .line 283
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_b9

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b9

    move v1, v2

    .line 285
    :cond_b9
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierResolver;->handleSimLoaded(Z)V

    :cond_bc
    :goto_bc
    return-void
.end method

.method public blacklist resolveSubscriptionCarrierId(Ljava/lang/String;)V
    .registers 5

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[resolveSubscriptionCarrierId] simState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_4e

    goto :goto_41

    :sswitch_21
    const-string v0, "ABSENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_41

    :cond_2a
    const/4 v2, 0x2

    goto :goto_41

    :sswitch_2c
    const-string v0, "CARD_IO_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_41

    :cond_35
    const/4 v2, 0x1

    goto :goto_41

    :sswitch_37
    const-string v0, "LOADED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_41

    :cond_40
    move v2, v1

    :goto_41
    packed-switch v2, :pswitch_data_5c

    goto :goto_4c

    .line 216
    :pswitch_45
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->handleSimAbsent()V

    goto :goto_4c

    .line 219
    :pswitch_49
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierResolver;->handleSimLoaded(Z)V

    :goto_4c
    return-void

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x79d7dbfb -> :sswitch_37
        -0x6d207e22 -> :sswitch_2c
        0x72b3d739 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_49
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method public blacklist setTestOverrideApn(Ljava/lang/String;)V
    .registers 4

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setTestOverrideApn]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 469
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideApn:Ljava/lang/String;

    return-void
.end method

.method public blacklist setTestOverrideCarrierPriviledgeRule(Ljava/lang/String;)V
    .registers 4

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setTestOverrideCarrierPriviledgeRule]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 474
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideCarrierPriviledgeRule:Ljava/lang/String;

    return-void
.end method

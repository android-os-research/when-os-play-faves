.class public Lcom/android/internal/telephony/SemCarrierIdentifier;
.super Lcom/android/internal/telephony/CarrierResolver;
.source "SemCarrierIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemCarrierIdentifier$SecCarrier;,
        Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;,
        Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;,
        Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_URL_PREFER_APN:Landroid/net/Uri;

.field private static final blacklist DEBUG:Z

.field public static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mApn:Ljava/lang/String;

.field private blacklist mCarrierIdentifierHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private final blacklist mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSpn:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/SemCarrierIdentifier;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemCarrierIdentifier;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 29
    const-class v0, Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier;->LOG_TAG:Ljava/lang/String;

    .line 30
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SemCarrierIdentifier;->DEBUG:Z

    .line 32
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "preferapn"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier;->CONTENT_URL_PREFER_APN:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierResolver;-><init>(Lcom/android/internal/telephony/Phone;)V

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/SemCarrierIdentifier;Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating SemCarrierIdentifier["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SemCarrierIdentifier"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v2, Lcom/android/internal/telephony/SemCarrierIdentifier$1;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$1;-><init>(Lcom/android/internal/telephony/SemCarrierIdentifier;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mCarrierIdentifierHandler:Landroid/os/Handler;

    .line 117
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 118
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-nez p1, :cond_65

    .line 119
    sget-object p1, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_INIT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->getValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 121
    :cond_65
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->ICC_CHANGED_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->getValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

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

    .line 307
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

.method private static blacklist getPreferApn(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10

    const-string v0, "apn"

    const/4 v1, 0x0

    .line 236
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object p0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferapn/subId/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 236
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_31

    if-eqz p0, :cond_30

    .line 249
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_51

    :cond_30
    return-object v1

    .line 246
    :cond_31
    :try_start_31
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 247
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_47

    .line 249
    :try_start_3f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_43
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_46} :catch_51

    goto :goto_55

    :catchall_47
    move-exception p1

    .line 236
    :try_start_48
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception p0

    :try_start_4d
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_50
    throw p1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_51

    :catch_51
    move-exception p0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_55
    return-object v1
.end method

.method private blacklist initSimIdentityInfo()V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mCarrierIdentifierHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 257
    iput v1, v0, Landroid/os/Message;->what:I

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initSimIdentityInfo] msg.what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->i(Ljava/lang/String;)V

    .line 261
    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mCarrierIdentifierHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static blacklist isEmpty(Ljava/lang/String;)Z
    .registers 1

    .line 294
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static blacklist notEquals(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    .line 298
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SemCarrierIdentifier;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private blacklist updateSimIdentityInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 267
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 268
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "phone_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "sub_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "mccmnc"

    .line 270
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "imsi"

    .line 271
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "iccid"

    .line 272
    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gid1"

    .line 273
    invoke-virtual {v0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gid2"

    .line 274
    invoke-virtual {v0, p1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "plmn"

    .line 275
    invoke-virtual {v0, p1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "spn"

    .line 276
    invoke-virtual {v0, p1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "apn"

    .line 277
    invoke-virtual {v0, p1, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event"

    .line 278
    invoke-virtual {v0, p1, p11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mCarrierIdentifierHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x2

    .line 281
    iput p2, p1, Landroid/os/Message;->what:I

    .line 282
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    sget-boolean p2, Lcom/android/internal/telephony/SemCarrierIdentifier;->DEBUG:Z

    const-string p3, "[updateSimIdentityInfo] msg.what : "

    if-eqz p2, :cond_72

    .line 285
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  msg.obj : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->i(Ljava/lang/String;)V

    goto :goto_86

    .line 287
    :cond_72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->i(Ljava/lang/String;)V

    .line 290
    :goto_86
    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mCarrierIdentifierHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->from(I)Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim info phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    .line 144
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 145
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 146
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 147
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 148
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 149
    invoke-static {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 150
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SemCarrierIdentifier;->getPreferApn(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value7: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 151
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 155
    :cond_e4
    sget-object v1, Lcom/android/internal/telephony/SemCarrierIdentifier$2;->$SwitchMap$com$android$internal$telephony$SemCarrierIdentifier$CarrierEvent:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f8

    const/4 v3, 0x2

    const-string v4, "Skip before mccmnc loaded:"

    const-string v5, ""

    const-string v6, " by "

    const-string v7, ", subId:"

    const/4 v8, 0x0

    const/4 v9, 0x5

    if-eq v1, v3, :cond_22c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1ef

    const/4 v3, 0x4

    if-eq v1, v3, :cond_13f

    if-eq v1, v9, :cond_106

    goto/16 :goto_2fb

    .line 214
    :cond_106
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 215
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v1, v0, :cond_2fb

    const/4 v2, 0x0

    if-eqz v1, :cond_127

    const-string v1, "Remove old icc object"

    .line 218
    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 221
    iput-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    :cond_127
    if-eqz v0, :cond_2fb

    const-string v1, "Add new icc object"

    .line 224
    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 225
    sget-object v1, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_LOAD_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->getValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    iput-object v0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    goto/16 :goto_2fb

    .line 192
    :cond_13f
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SemCarrierIdentifier;->getPreferApn(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 195
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_168

    move v2, v8

    .line 199
    :cond_168
    invoke-static {v3}, Lcom/android/internal/telephony/SemCarrierIdentifier;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1cf

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v9, :cond_175

    goto :goto_1cf

    .line 201
    :cond_175
    iget-object v4, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    invoke-static {v4, v1, v8}, Lcom/android/internal/telephony/SemCarrierIdentifier;->notEquals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2fb

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updatePreferApn] from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 203
    iput-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 205
    invoke-interface {v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 206
    invoke-interface {v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 207
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mSpn:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    .line 209
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    .line 204
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/SemCarrierIdentifier;->updateSimIdentityInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2fb

    .line 200
    :cond_1cf
    :goto_1cf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    goto/16 :goto_2fb

    .line 186
    :cond_1ef
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Sim Absent] phone id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 187
    iput-object v5, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const/4 v2, -0x1

    iget-object v10, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    .line 189
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v0, p0

    .line 188
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/SemCarrierIdentifier;->updateSimIdentityInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2fb

    .line 160
    :cond_22c
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 161
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 162
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_24a

    move v2, v8

    goto :goto_24b

    :cond_24a
    move v2, v1

    .line 165
    :goto_24b
    invoke-static {v3}, Lcom/android/internal/telephony/SemCarrierIdentifier;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v9, :cond_259

    goto/16 :goto_2d9

    .line 168
    :cond_259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Sim Load] from:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", phone id:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SemCarrierIdentifier;->getPreferApn(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2a3

    .line 172
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29a

    goto :goto_2a0

    .line 173
    :cond_29a
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    :goto_2a0
    iput-object v5, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mSpn:Ljava/lang/String;

    goto :goto_2a8

    :cond_2a3
    const-string v1, "mIccRecords is null on SIM_LOAD_EVENT, could not get SPN"

    .line 175
    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->e(Ljava/lang/String;)V

    .line 177
    :goto_2a8
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 178
    invoke-interface {v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 179
    invoke-interface {v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 180
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mSpn:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    .line 182
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    .line 177
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/SemCarrierIdentifier;->updateSimIdentityInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2fb

    .line 166
    :cond_2d9
    :goto_2d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    goto :goto_2fb

    .line 157
    :cond_2f8
    invoke-direct {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier;->initSimIdentityInfo()V

    .line 232
    :cond_2fb
    :goto_2fb
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CarrierResolver;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

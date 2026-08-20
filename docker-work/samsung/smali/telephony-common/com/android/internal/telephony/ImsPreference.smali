.class public Lcom/android/internal/telephony/ImsPreference;
.super Landroid/os/Handler;
.source "ImsPreference.java"


# static fields
.field public static final blacklist CALLWAITING_PATH_CS_NW:I = 0x1

.field public static final blacklist CALLWAITING_PATH_CS_TB:I = 0x2

.field public static final blacklist CALLWAITING_PATH_PS_NW:I = 0x10

.field public static final blacklist CALLWAITING_PATH_PS_NW_CS_NW:I = 0x11

.field public static final blacklist CALLWAITING_PATH_PS_NW_CS_TB:I = 0x12

.field public static final blacklist CALLWAITING_PATH_PS_TB:I = 0x20

.field public static final blacklist CALLWAITING_PATH_PS_TB_CS_NW:I = 0x21

.field public static final blacklist CALLWAITING_PATH_PS_TB_CS_TB:I = 0x22

.field public static final blacklist EMERGENCY_DOMAIN_CS:I = 0x1

.field public static final blacklist EMERGENCY_DOMAIN_PS:I = 0x0

.field public static final blacklist EMERGENCY_DOMAIN_UNKNOWN:I = 0xff

.field public static final blacklist IMS_SUPPORT_NONE:I = 0x0

.field public static final blacklist IMS_SUPPORT_VOLTE:I = 0x1

.field public static final blacklist IMS_SUPPORT_VOLTE_VOWIFI:I = 0x3

.field public static final blacklist IMS_SUPPORT_VOWIFI:I = 0x2

.field public static final blacklist SMS_FORMAT_3GPP:I = 0x1

.field public static final blacklist SMS_FORMAT_3GPP2:I = 0x2

.field public static final blacklist SMS_FORMAT_UNKNOWN:I = 0x0

.field public static final blacklist SS_USSD_DOMAIN_CS:I = 0x1

.field public static final blacklist SS_USSD_DOMAIN_PS:I = 0x0

.field public static final blacklist SS_USSD_DOMAIN_PS_REGI:I = 0x3

.field public static final blacklist SS_USSD_DOMAIN_UNKNOWN:I = 0xff

.field public static final blacklist SS_USSD_DOMAIN_VOLTE_REGI:I = 0x2

.field public static final blacklist VOICE_DOMAIN_PREFERENCE_CS_ONLY:I = 0x0

.field public static final blacklist VOICE_DOMAIN_PREFERENCE_CS_PREF:I = 0x2

.field public static final blacklist VOICE_DOMAIN_PREFERENCE_NONE:I = -0x1

.field public static final blacklist VOICE_DOMAIN_PREFERENCE_PS_ONLY:I = 0x1

.field public static final blacklist VOICE_DOMAIN_PREFERENCE_PS_PREF:I = 0x3

.field public static final blacklist VOICE_DOMAIN_PREFERENCE_UNKNOWN:I = 0xff


# instance fields
.field private blacklist mCallWaitingPathPref:I

.field private blacklist mEmergencyDomainPref:I

.field private blacklist mEnableSms:Z

.field private blacklist mEnableSmsWriteUicc:Z

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mImsMnoName:Ljava/lang/String;

.field private final blacklist mImsMnoNameObserver:Landroid/database/ContentObserver;

.field private final blacklist mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mImsPrefLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mImsSimMobilityObserver:Landroid/database/ContentObserver;

.field private blacklist mImsSupportType:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSmsFormat:I

.field private blacklist mSsDomainPref:I

.field private blacklist mSupportSrvcc:Z

.field private blacklist mSupportVolteRoaming:Z

.field private blacklist mVolteEutranPref:I

.field private blacklist mVolteUtranPref:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/ImsPreference;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/HandlerThread;)V
    .registers 5

    .line 121
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, ""

    .line 95
    iput-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoName:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsPrefLog:Lcom/android/internal/telephony/LocalLog;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/ImsPreference$1;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/telephony/ImsPreference$1;-><init>(Lcom/android/internal/telephony/ImsPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoNameObserver:Landroid/database/ContentObserver;

    .line 110
    new-instance v1, Lcom/android/internal/telephony/ImsPreference$2;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/telephony/ImsPreference$2;-><init>(Lcom/android/internal/telephony/ImsPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSimMobilityObserver:Landroid/database/ContentObserver;

    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 124
    iput-object p2, p0, Lcom/android/internal/telephony/ImsPreference;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 p2, 0x1

    .line 127
    iput p2, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    const/4 v1, 0x0

    .line 128
    iput-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    .line 130
    iput v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteEutranPref:I

    .line 131
    iput v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteUtranPref:I

    .line 132
    iput p2, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    .line 133
    iput p2, p0, Lcom/android/internal/telephony/ImsPreference;->mEmergencyDomainPref:I

    .line 134
    iput v1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSupportType:I

    .line 135
    iput-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportSrvcc:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    .line 137
    iput p2, p0, Lcom/android/internal/telephony/ImsPreference;->mCallWaitingPathPref:I

    .line 140
    :try_start_45
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsPreference;->getImsMnoUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_54} :catch_55

    goto :goto_5c

    .line 142
    :catch_55
    iget-object p1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

    const-string p2, "ImsMnoName ContentObserver register fail"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 146
    :goto_5c
    :try_start_5c
    iget-object p1, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsPreference;->getImsSimMobilityUri()Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSimMobilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6f} :catch_70

    goto :goto_77

    .line 148
    :catch_70
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

    const-string p1, "ImsSimMobility ContentObserver register fail"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :goto_77
    return-void
.end method

.method private blacklist getImsMnoUri()Landroid/net/Uri;
    .registers 4

    const-string v0, "content://com.sec.ims.settings/mno"

    .line 353
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getImsSimMobilityUri()Landroid/net/Uri;
    .registers 4

    const-string v0, "content://com.sec.ims.settings/simmobility"

    .line 360
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPreference"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist makeImsPreference(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/ImsPreference;
    .registers 4

    .line 153
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/internal/telephony/ImsPreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 154
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 155
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 156
    new-instance v1, Lcom/android/internal/telephony/ImsPreference;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/ImsPreference;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/HandlerThread;)V

    return-object v1
.end method

.method private blacklist updateImsMnoName()V
    .registers 12

    const-string v0, "updateImsMnoName - "

    .line 301
    iget-object v1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoName:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    .line 305
    :try_start_7
    iget-object v4, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsPreference;->getImsMnoUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 306
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_38

    :cond_25
    const-string v4, "mnoname"

    .line 308
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_31

    .line 310
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    :cond_31
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_3d

    :cond_38
    const-string v4, "updateImsMnoName - No cursor or empty cursor"

    .line 314
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_45
    .catchall {:try_start_7 .. :try_end_3d} :catchall_43

    :goto_3d
    if-eqz v3, :cond_5b

    .line 320
    :goto_3f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5b

    :catchall_43
    move-exception p0

    goto :goto_96

    :catch_45
    move-exception v4

    .line 317
    :try_start_46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_46 .. :try_end_58} :catchall_43

    if-eqz v3, :cond_5b

    goto :goto_3f

    .line 324
    :cond_5b
    :goto_5b
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 325
    iput-object v2, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoName:Ljava/lang/String;

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsMnoName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    .line 329
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_95
    return-void

    :goto_96
    if-eqz v3, :cond_9b

    .line 320
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_9b
    throw p0
.end method

.method private blacklist updateSimMobilityState()V
    .registers 8

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsPreference;->getImsSimMobilityUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 337
    :try_start_18
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "simmobility"

    .line 338
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_2f

    :cond_29
    const-string v1, "updateSimMobilityState - No cursor or empty cursor"

    .line 340
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_71

    const/4 v1, -0x1

    :goto_2f
    if-eqz v0, :cond_34

    .line 342
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_34
    iget-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->updateSimMobility(ILjava/lang/Boolean;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM mobility state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimMobilityState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    :catchall_71
    move-exception p0

    if-eqz v0, :cond_7c

    .line 336
    :try_start_74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7c
    :goto_7c
    throw p0
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 3

    const-string v0, "dispose"

    .line 160
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    .line 163
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    const-string v0, "ImsMnoName ContentObserver unregister fail"

    .line 165
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    .line 169
    :goto_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSimMobilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_29} :catch_2a

    goto :goto_2f

    :catch_2a
    const-string v0, "ImsSimMobility ContentObserver unregister fail"

    .line 171
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    .line 174
    :goto_2f
    iget-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_39

    .line 175
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_39
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, "ImsPreference:"

    .line 257
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEmergencyDomainPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEmergencyDomainPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mImsSupportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSupportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportVolteRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportSrvcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportSrvcc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSmsFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEnableSms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEnableSmsWriteUicc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVolteEutranPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteEutranPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVolteUtranPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteUtranPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSsDomainPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallWaitingPathPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mCallWaitingPathPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 271
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, " ImsPreference Log:"

    .line 272
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 274
    iget-object p2, p0, Lcom/android/internal/telephony/ImsPreference;->mImsPrefLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p2, " ImsObserver Log:"

    .line 277
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 279
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public blacklist getCallWaitingPathPref()I
    .registers 1

    .line 234
    iget p0, p0, Lcom/android/internal/telephony/ImsPreference;->mCallWaitingPathPref:I

    return p0
.end method

.method public blacklist getEmergencyDomainPref()I
    .registers 1

    .line 238
    iget p0, p0, Lcom/android/internal/telephony/ImsPreference;->mEmergencyDomainPref:I

    return p0
.end method

.method public blacklist getImsMnoName()Ljava/lang/String;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSmsOverIpFormat()I
    .registers 1

    .line 226
    iget p0, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    return p0
.end method

.method public blacklist getSsDomainPref()I
    .registers 1

    .line 210
    iget p0, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 285
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_10

    .line 291
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsPreference;->updateSimMobilityState()V

    goto :goto_10

    .line 287
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsPreference;->updateImsMnoName()V

    :goto_10
    return-void
.end method

.method public blacklist imsPreferenceToString()Ljava/lang/String;
    .registers 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emergencyDomainPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEmergencyDomainPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imsSupportType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSupportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportVolteRoaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", smsFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enableSms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableSmsWriteUicc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", volteEutranPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteEutranPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volteUtranPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteUtranPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ssDomainPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callWaitingPathPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mCallWaitingPathPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportSrvcc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportSrvcc:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isSmsOverIpSupported()Z
    .registers 1

    .line 218
    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    return p0
.end method

.method public blacklist isSmsWriteUiccSupported()Z
    .registers 1

    .line 222
    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    return p0
.end method

.method public blacklist isSupportVolteRoaming()Z
    .registers 1

    .line 214
    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    return p0
.end method

.method public blacklist setCallWaitingPathPref(I)V
    .registers 2

    .line 230
    iput p1, p0, Lcom/android/internal/telephony/ImsPreference;->mCallWaitingPathPref:I

    return-void
.end method

.method public blacklist setImsPreference(Landroid/os/AsyncResult;)V
    .registers 5

    .line 183
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_61

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_61

    .line 184
    check-cast p1, [I

    .line 186
    array-length v0, p1

    const/16 v1, 0xd

    if-lt v0, v1, :cond_61

    const/4 v0, 0x0

    .line 187
    aget v1, p1, v0

    iput v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    const/4 v1, 0x1

    .line 188
    aget v2, p1, v1

    if-ne v2, v1, :cond_1b

    move v2, v1

    goto :goto_1c

    :cond_1b
    move v2, v0

    :goto_1c
    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    const/4 v2, 0x2

    .line 189
    aget v2, p1, v2

    if-ne v2, v1, :cond_25

    move v2, v1

    goto :goto_26

    :cond_25
    move v2, v0

    :goto_26
    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    const/4 v2, 0x3

    .line 190
    aget v2, p1, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteEutranPref:I

    const/4 v2, 0x4

    .line 191
    aget v2, p1, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteUtranPref:I

    const/4 v2, 0x5

    .line 192
    aget v2, p1, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    const/4 v2, 0x7

    .line 194
    aget v2, p1, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEmergencyDomainPref:I

    const/16 v2, 0x9

    .line 196
    aget v2, p1, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSupportType:I

    const/16 v2, 0xa

    .line 197
    aget v2, p1, v2

    if-ne v2, v1, :cond_4a

    move v2, v1

    goto :goto_4b

    :cond_4a
    move v2, v0

    :goto_4b
    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportSrvcc:Z

    const/16 v2, 0xb

    .line 198
    aget v2, p1, v2

    if-ne v2, v1, :cond_54

    move v0, v1

    :cond_54
    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    const/16 v0, 0xc

    .line 199
    aget p1, p1, v0

    iput p1, p0, Lcom/android/internal/telephony/ImsPreference;->mCallWaitingPathPref:I

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsPreference;->imsPreferenceToString()Ljava/lang/String;

    move-result-object p1

    goto :goto_63

    :cond_61
    const-string p1, "AsyncResult has wrong ImsPreference value"

    .line 205
    :goto_63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsPrefLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

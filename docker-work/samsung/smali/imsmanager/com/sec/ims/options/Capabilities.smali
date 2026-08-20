.class public Lcom/sec/ims/options/Capabilities;
.super Ljava/lang/Object;
.source "Capabilities.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static FEATURE_ALL:J = 0x0L

.field public static FEATURE_BURN_MSG:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_CALL_SERVICE:J = 0x0L

.field public static FEATURE_CANCEL_MESSAGE:J = 0x0L

.field public static FEATURE_CARD_MSG:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_CHATBOT_CHAT_SESSION:J = 0x0L

.field public static FEATURE_CHATBOT_COMMUNICATION:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_CHATBOT_EXTENDED_MSG:J = 0x0L

.field public static FEATURE_CHATBOT_ROLE:J = 0x0L

.field public static FEATURE_CHATBOT_STANDALONE_MSG:J = 0x0L

.field public static FEATURE_CHAT_CPM:I = 0x0

.field public static FEATURE_CHAT_SIMPLE_IM:I = 0x0

.field public static FEATURE_CLOUD_FILE:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_ENRICHED_CALL_COMPOSER:J = 0x0L

.field public static FEATURE_ENRICHED_POST_CALL:J = 0x0L

.field public static FEATURE_ENRICHED_SHARED_MAP:J = 0x0L

.field public static FEATURE_ENRICHED_SHARED_SKETCH:J = 0x0L

.field public static FEATURE_FT:I = 0x0

.field public static FEATURE_FT_HTTP:I = 0x0

.field public static FEATURE_FT_HTTP_EXTRA:I = 0x0

.field public static FEATURE_FT_SERVICE:I = 0x0

.field public static FEATURE_FT_STORE:I = 0x0

.field public static FEATURE_FT_THUMBNAIL:I = 0x0

.field public static FEATURE_FT_THUMBNAIL_V1:I = 0x0

.field public static FEATURE_FT_VIA_SMS:I = 0x0

.field public static FEATURE_GEOLOCATION_PULL:I = 0x0

.field public static FEATURE_GEOLOCATION_PULL_FT:I = 0x0

.field public static FEATURE_GEOLOCATION_PUSH:I = 0x0

.field public static FEATURE_GEO_VIA_SMS:I = 0x0

.field public static FEATURE_IM_SERVICE:J = 0x0L

.field public static FEATURE_INTEGRATED_MSG:I = 0x0

.field public static FEATURE_IPCALL:I = 0x0

.field public static FEATURE_IPCALL_VIDEO:I = 0x0

.field public static FEATURE_IPCALL_VIDEO_ONLY:I = 0x0

.field public static FEATURE_ISH:I = 0x0

.field public static FEATURE_LAST_SEEN_ACTIVE:J = 0x0L

.field public static FEATURE_MMTEL:I = 0x0

.field public static FEATURE_MMTEL_CALL_COMPOSER:J = 0x0L

.field public static FEATURE_MMTEL_VIDEO:I = 0x0

.field public static FEATURE_NON_RCS_USER:I = 0x0

.field public static FEATURE_NOT_UPDATED:I = 0x0

.field public static FEATURE_OFFLINE_RCS_USER:I = 0x0

.field public static FEATURE_PLUG_IN:J = 0x0L

.field public static FEATURE_PRESENCE_DISCOVERY:I = 0x0

.field public static FEATURE_PUBLIC_MSG:J = 0x0L

.field public static FEATURE_SF_GROUP_CHAT:I = 0x0

.field public static FEATURE_SOCIAL_PRESENCE:I = 0x0

.field public static FEATURE_STANDALONE_MSG:I = 0x0

.field public static FEATURE_STANDALONE_MSG_V1:I = 0x0

.field public static FEATURE_STICKER:I = 0x0

.field public static FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String; = null

.field public static FEATURE_TAG_CHAT:Ljava/lang/String; = null

.field public static final FEATURE_TAG_CHATBOT_CHAT_SESSION:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

.field public static final FEATURE_TAG_CHATBOT_COMMUNICATION:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_TAG_CHATBOT_ROLE:Ljava/lang/String; = "+g.gsma.rcs.isbot"

.field public static final FEATURE_TAG_CHATBOT_STANDALONE_MSG:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

.field public static final FEATURE_TAG_ENRICHED_CALL_COMPOSER:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

.field public static final FEATURE_TAG_ENRICHED_POST_CALL:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

.field public static final FEATURE_TAG_ENRICHED_SHARED_MAP:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

.field public static final FEATURE_TAG_ENRICHED_SHARED_SKETCH:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

.field public static final FEATURE_TAG_EXTENDED_BOT_MSG:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.xbotmessage\""

.field public static FEATURE_TAG_FT:Ljava/lang/String; = null

.field public static FEATURE_TAG_FT_HTTP:Ljava/lang/String; = null

.field public static FEATURE_TAG_FT_HTTP_EXTRA:Ljava/lang/String; = null

.field public static FEATURE_TAG_FT_STORE:Ljava/lang/String; = null

.field public static FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String; = null

.field public static final FEATURE_TAG_FT_VIA_SMS:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftsms\""

.field public static FEATURE_TAG_GEOLOCATION_PULL:Ljava/lang/String; = null

.field public static FEATURE_TAG_GEOLOCATION_PULL_FT:Ljava/lang/String; = null

.field public static FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String; = null

.field public static final FEATURE_TAG_GEO_VIA_SMS:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms\""

.field public static FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String; = null

.field public static FEATURE_TAG_IPCALL:Ljava/lang/String; = null

.field public static FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String; = null

.field public static FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String; = null

.field public static FEATURE_TAG_ISH:Ljava/lang/String; = null

.field public static FEATURE_TAG_LAST_SEEN_ACTIVE:Ljava/lang/String; = null

.field public static FEATURE_TAG_MMTEL:Ljava/lang/String; = null

.field public static FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String; = null

.field public static FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String; = null

.field public static FEATURE_TAG_NOT_UPDATED:Ljava/lang/String; = null

.field public static FEATURE_TAG_NULL:Ljava/lang/String; = null

.field public static final FEATURE_TAG_PLUG_IN:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.plugin\""

.field public static FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String; = null

.field public static FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String; = null

.field public static FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String; = null

.field public static FEATURE_TAG_SOCIAL_PRESENCE:Ljava/lang/String; = null

.field public static FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String; = null

.field public static FEATURE_TAG_STICKER:Ljava/lang/String; = null

.field public static FEATURE_TAG_VSH:Ljava/lang/String; = null

.field public static FEATURE_TAG_VSH_OUTSIDE_CALL:Ljava/lang/String; = null

.field public static FEATURE_VEMOTICON:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static FEATURE_VSH:I = 0x0

.field public static FEATURE_VSH_OUTSIDE_CALL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CapexInfo"

.field private static final SHIP_BUILD:Z

.field private static sFeatureTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTagFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailableFeatures:J

.field private mBotServiceId:Ljava/lang/String;

.field private mContactId:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mExtFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatures:J

.field private mId:J

.field private mIsAvailable:Z

.field private mIsExpired:Z

.field private mIsLegacyLatching:Z

.field private mLastSeen:J

.field private mNumber:Ljava/lang/String;

.field private mPAssertedIdSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mPidf:Ljava/lang/String;

.field private mSupportPresence:Z

.field private mTimestamp:Ljava/util/Date;

.field private mUri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 57
    nop

    .line 58
    const-string v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/ims/options/Capabilities;->SHIP_BUILD:Z

    .line 71
    const/high16 v0, 0x1000000

    sput v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    .line 72
    const/high16 v0, 0x2000000

    sput v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    .line 79
    const/4 v0, 0x1

    sput v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    .line 80
    const/4 v1, 0x2

    sput v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    .line 81
    const/4 v2, 0x4

    sput v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    .line 82
    const/16 v3, 0x8

    sput v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    .line 83
    const/16 v3, 0x10

    sput v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    .line 84
    const/16 v4, 0x20

    sput v4, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    .line 85
    const/16 v4, 0x40

    sput v4, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 86
    const/16 v5, 0x80

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    .line 87
    const/16 v5, 0x100

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    .line 88
    const/16 v5, 0x200

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    .line 89
    const/16 v5, 0x400

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    .line 90
    const/16 v5, 0x800

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    .line 91
    const/16 v5, 0x1000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    .line 92
    const/16 v5, 0x2000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    .line 93
    const/16 v5, 0x4000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    .line 94
    const v5, 0x8000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    .line 95
    const/high16 v5, 0x10000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    .line 96
    const/high16 v5, 0x20000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    .line 97
    const/high16 v5, 0x40000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    .line 98
    const/high16 v5, 0x80000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    .line 99
    const/high16 v5, 0x100000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    .line 100
    const/high16 v5, 0x200000

    sput v5, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 101
    const/high16 v6, 0x400000

    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    .line 102
    const/high16 v6, 0x800000

    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    .line 104
    const/high16 v6, 0x8000000

    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    .line 105
    const/high16 v6, 0x10000000

    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    .line 106
    const/high16 v6, 0x20000000

    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    .line 107
    const/high16 v6, 0x40000000    # 2.0f

    sput v6, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL_V1:I

    .line 114
    const-wide v6, 0x100000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_VEMOTICON:J

    .line 116
    const-wide v6, 0x200000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CARD_MSG:J

    .line 118
    const-wide v6, 0x400000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_BURN_MSG:J

    .line 120
    const-wide v6, 0x800000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CLOUD_FILE:J

    .line 122
    const-wide v6, 0x1000000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    .line 123
    const-wide v6, 0x2000000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    .line 124
    const-wide v6, 0x4000000000L

    sput-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    .line 125
    const-wide v8, 0x8000000000L

    sput-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    .line 127
    const-wide v8, 0x10000000000L

    sput-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_COMMUNICATION:J

    .line 129
    sput-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    .line 130
    const-wide v10, 0x20000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    .line 131
    const-wide v10, 0x40000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    .line 132
    const-wide v10, 0x80000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    .line 133
    const-wide v10, 0x100000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    .line 134
    const-wide v10, 0x200000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    .line 135
    const-wide v10, 0x400000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    .line 136
    const-wide v10, 0x800000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    .line 137
    const-wide/high16 v10, 0x1000000000000L

    sput-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    .line 139
    or-int/2addr v2, v5

    int-to-long v10, v2

    or-long/2addr v8, v10

    sput-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_IM_SERVICE:J

    .line 140
    or-int/lit8 v2, v3, 0x40

    sput v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    .line 141
    or-int/2addr v0, v1

    int-to-long v0, v0

    or-long/2addr v0, v6

    sput-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CALL_SERVICE:J

    .line 144
    const-wide v0, 0xfffffffffffffffL

    sput-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ALL:J

    .line 146
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    .line 148
    const-string v0, "+g.3gpp.cs-voice"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH:Ljava/lang/String;

    .line 150
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg,urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    .line 152
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    .line 154
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fullsfgroupchat\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

    .line 156
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT:Ljava/lang/String;

    .line 158
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftthumb\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    .line 160
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftstandfw\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_STORE:Ljava/lang/String;

    .line 162
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    .line 164
    const-string v0, "+g.3gpp.iari-ref=\"urn:urn-7:3gpp-application.ims.iari.gsma-vs\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH_OUTSIDE_CALL:Ljava/lang/String;

    .line 166
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.sp\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SOCIAL_PRESENCE:Ljava/lang/String;

    .line 168
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.dp\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String;

    .line 170
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    .line 172
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\";video"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    .line 174
    const-string v0, "+g.gsma.callcomposer"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String;

    .line 176
    const-string v0, "+g.gsma.rcs.ipcall"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL:Ljava/lang/String;

    .line 178
    const-string v0, "+g.gsma.rcs.ipcall;video"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String;

    .line 180
    const-string v0, "+g.gsma.rcs.ipvideocallonly"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String;

    .line 182
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL:Ljava/lang/String;

    .line 184
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL_FT:Ljava/lang/String;

    .line 186
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

    .line 188
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.joyn.intmsg\""

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

    .line 190
    const-string v0, "null"

    sput-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NULL:Ljava/lang/String;

    .line 192
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.sticker\""

    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STICKER:Ljava/lang/String;

    .line 195
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttpextra\""

    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP_EXTRA:Ljava/lang/String;

    .line 239
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.cancelmessage\""

    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String;

    .line 251
    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs .mnc000.mcc460.publicmsg\""

    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String;

    .line 255
    const-string v1, "not_updated"

    sput-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NOT_UPDATED:Ljava/lang/String;

    .line 258
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.lastseenactive\""

    sput-object v2, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_LAST_SEEN_ACTIVE:Ljava/lang/String;

    .line 261
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    .line 262
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    .line 263
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    .line 266
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_STORE:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH_OUTSIDE_CALL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SOCIAL_PRESENCE:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL_FT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NULL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NOT_UPDATED:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STICKER:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL_V1:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP_EXTRA:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftsms\""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms\""

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v6, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v7, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v7, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v8, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v9, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v9, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v10, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_LAST_SEEN_ACTIVE:Ljava/lang/String;

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v10, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v11, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v11, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String;

    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v11, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v12, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v12, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.xbotmessage\""

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v13, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v13, "+g.gsma.rcs.isbot"

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v14, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v14, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.plugin\""

    invoke-interface {v2, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    sget-wide v15, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v15, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String;

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v3, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    sget v15, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    int-to-long v0, v15

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_STORE:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH_OUTSIDE_CALL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SOCIAL_PRESENCE:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String;

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_IPCALL_VIDEO_ONLY:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PULL_FT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NULL:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_NOT_UPDATED:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STICKER:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP_EXTRA:Ljava/lang/String;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_LAST_SEEN_ACTIVE:Ljava/lang/String;

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String;

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "vsh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "im"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fullsf_groupchat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ft"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftthumb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftstandfw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fthttp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "standalone_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "standalone_msg_v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "vsh_outside_call"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mmtel_call_composer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ipcall_video_only"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "geopush"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "geopullft"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "intergrated_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "session_mode_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sticker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL_V1:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftthumb_v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fthttp_extra"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ftsms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "geosms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "callcomposer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sharedmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sharedsketch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "callunanswered"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastseenactive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chatbot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "cancelmessage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chatbot_standalone_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "extended_bot_msg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "isbot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "plugin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "publicmsg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    new-instance v0, Lcom/sec/ims/options/Capabilities$1;

    invoke-direct {v0}, Lcom/sec/ims/options/Capabilities$1;-><init>()V

    sput-object v0, Lcom/sec/ims/options/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    .line 40
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    .line 41
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    .line 43
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    .line 44
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 45
    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 46
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    .line 48
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    .line 49
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    .line 50
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    .line 52
    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    .line 53
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    .line 407
    const-string v0, "sip:foo@examcple.com"

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 408
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    .line 409
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    .line 410
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v1, v0

    iput-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 411
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 412
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    .line 413
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    .line 40
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    .line 41
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    .line 43
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    .line 44
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 45
    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    .line 48
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    .line 49
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    .line 50
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    .line 52
    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    .line 53
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    .line 1053
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    .line 1054
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    .line 1055
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    .line 1056
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 1057
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    .line 1058
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5b

    move v0, v1

    goto :goto_5c

    :cond_5b
    move v0, v3

    :goto_5c
    iput-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    .line 1059
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 1060
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 1062
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1063
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    .line 1064
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_82

    move v0, v1

    goto :goto_83

    :cond_82
    move v0, v3

    :goto_83
    iput-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    .line 1065
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8c

    move v3, v1

    :cond_8c
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    .line 1066
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    .line 1067
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_a0

    .line 1068
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    .line 1070
    :cond_a0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    .line 1071
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    .line 1072
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/options/Capabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/options/Capabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 14
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "contactId"    # Ljava/lang/String;
    .param p4, "id"    # J
    .param p6, "displayName"    # Ljava/lang/String;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    .line 40
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    .line 41
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    .line 43
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    .line 44
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 45
    iput-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 46
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    .line 48
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    .line 49
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    .line 50
    iput-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    .line 52
    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    .line 53
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    .line 426
    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 427
    iput-object p2, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    .line 428
    iput-object p3, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    .line 429
    iput-wide p4, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    .line 430
    iput-object p6, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    .line 431
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    .line 432
    return-void
.end method

.method public static dumpFeature(J)Ljava/lang/String;
    .registers 9
    .param p0, "features"    # J

    .line 779
    invoke-static {p0, p1}, Lcom/sec/ims/options/Capabilities;->getFeatureTag(J)[Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "list":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 782
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_28

    aget-object v4, v0, v3

    .line 783
    .local v4, "f":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .end local v4    # "f":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 785
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static dumpServices(J)Ljava/lang/String;
    .registers 10
    .param p0, "features"    # J

    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 792
    .local v2, "feature":J
    and-long v4, v2, p0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_36

    .line 793
    sget-object v4, Lcom/sec/ims/options/Capabilities;->sFeatures:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    .end local v2    # "feature":J
    :cond_36
    goto :goto_f

    .line 796
    :cond_37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFeatureTag(J)[Ljava/lang/String;
    .registers 12
    .param p0, "features"    # J

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v1, "longlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v2, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 745
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 746
    .local v4, "feature":J
    and-long v6, v4, p0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_48

    .line 747
    sget-object v6, Lcom/sec/ims/options/Capabilities;->sFeatureTags:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v4    # "feature":J
    :cond_48
    goto :goto_14

    .line 752
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFeatureTag: features = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapexInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public static getTagFeature(Ljava/lang/String;)J
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;

    .line 764
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 765
    sget-object v0, Lcom/sec/ims/options/Capabilities;->sTagFeatures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 767
    :cond_15
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private toStringLimit(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # Ljava/lang/String;

    .line 1085
    const/4 v0, 0x2

    .line 1086
    .local v0, "LIMIT_LENGTH":I
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_14

    .line 1087
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1089
    :cond_14
    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method public addExtFeature(Ljava/lang/String;)V
    .registers 3
    .param p1, "ext"    # Ljava/lang/String;

    .line 847
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    return-void
.end method

.method public addFeature(J)V
    .registers 5
    .param p1, "feature"    # J

    .line 654
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 656
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 657
    return-void
.end method

.method public clone()Lcom/sec/ims/options/Capabilities;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1081
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 980
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableFeatures()J
    .registers 3

    .line 711
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    return-wide v0
.end method

.method public getBotServiceId()Ljava/lang/String;
    .registers 2

    .line 973
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getContactId()Ljava/lang/String;
    .registers 2

    .line 477
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .line 547
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpired()Z
    .registers 2

    .line 906
    iget-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    return v0
.end method

.method public getExtFeature()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 857
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    return-object v0
.end method

.method public getExtFeatureAsJoinedString()Ljava/lang/String;
    .registers 3

    .line 867
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, ""

    :goto_15
    return-object v0
.end method

.method public getFeature()J
    .registers 3

    .line 701
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    return-wide v0
.end method

.method public getFeatureTag()[Ljava/lang/String;
    .registers 3

    .line 721
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    invoke-static {v0, v1}, Lcom/sec/ims/options/Capabilities;->getFeatureTag(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 487
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    return-wide v0
.end method

.method public getLastSeen()J
    .registers 3

    .line 726
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    return-wide v0
.end method

.method public getLegacyLatching()Z
    .registers 2

    .line 954
    iget-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .line 507
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPAssertedId()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 990
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneId()I
    .registers 2

    .line 527
    iget v0, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    return v0
.end method

.method public getPidf()Ljava/lang/String;
    .registers 2

    .line 644
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .registers 2

    .line 896
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getUri()Lcom/sec/ims/util/ImsUri;
    .registers 2

    .line 455
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public hasAnyFeature(J)Z
    .registers 7
    .param p1, "feature"    # J

    .line 826
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public hasFeature(I)Z
    .registers 6
    .param p1, "feature"    # I

    .line 806
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public hasFeature(J)Z
    .registers 5
    .param p1, "feature"    # J

    .line 816
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasNoRcsFeatures()Z
    .registers 5

    .line 835
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_26

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 836
    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_26

    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    not-int v2, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    not-int v2, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    .line 835
    :goto_27
    return v0
.end method

.method public hasPresenceSupport()Z
    .registers 2

    .line 624
    iget-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    return v0
.end method

.method public isAvailable()Z
    .registers 2

    .line 604
    iget-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    return v0
.end method

.method public isExpired(J)Z
    .registers 9
    .param p1, "expire"    # J

    .line 927
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 929
    .local v0, "current":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {p0, v1}, Lcom/sec/ims/options/Capabilities;->setExpired(Z)V

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExpired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", capInfoExpiry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec, elapsed time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 932
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 931
    const-string v2, "CapexInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-boolean v1, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    return v1
.end method

.method public isFeatureAvailable(I)Z
    .registers 4
    .param p1, "feature"    # I

    .line 577
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(J)Z

    move-result v0

    return v0
.end method

.method public isFeatureAvailable(J)Z
    .registers 9
    .param p1, "feature"    # J

    .line 587
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 589
    return v1

    .line 591
    :cond_11
    iget-wide v2, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    move v0, v1

    .line 592
    .local v0, "isFeatureAvailable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFeatureAvailable: feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapexInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return v0
.end method

.method public removeFeature(J)V
    .registers 7
    .param p1, "feature"    # J

    .line 666
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    not-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 668
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    not-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 669
    return-void
.end method

.method public resetFeatures()V
    .registers 4

    .line 687
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v1, v0

    iput-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 688
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    .line 690
    iput-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    .line 691
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    .line 692
    return-void
.end method

.method public setAvailableFeatures(J)V
    .registers 3
    .param p1, "features"    # J

    .line 567
    iput-wide p1, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 568
    return-void
.end method

.method public setAvailiable(Z)V
    .registers 2
    .param p1, "avail"    # Z

    .line 557
    iput-boolean p1, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    .line 558
    return-void
.end method

.method public setBotServiceId(Ljava/lang/String;)V
    .registers 2
    .param p1, "botServiceId"    # Ljava/lang/String;

    .line 964
    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    .line 965
    return-void
.end method

.method public setExpired(Z)V
    .registers 2
    .param p1, "isExpired"    # Z

    .line 916
    iput-boolean p1, p0, Lcom/sec/ims/options/Capabilities;->mIsExpired:Z

    .line 917
    return-void
.end method

.method public setExtFeature(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1005
    .local p1, "extFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1006
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1007
    return-void
.end method

.method public setFeatures(J)V
    .registers 3
    .param p1, "feature"    # J

    .line 678
    iput-wide p1, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 679
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "id"    # J

    .line 497
    iput-wide p1, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    .line 498
    return-void
.end method

.method public setLastSeen(J)V
    .registers 3
    .param p1, "lastSeen"    # J

    .line 730
    iput-wide p1, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    .line 731
    return-void
.end method

.method public setLegacyLatching(Z)V
    .registers 2
    .param p1, "isLatching"    # Z

    .line 944
    iput-boolean p1, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    .line 945
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "number"    # Ljava/lang/String;

    .line 517
    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public setPAssertedId(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1000
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1001
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPAssertedIdSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1002
    return-void
.end method

.method public setPhoneId(I)V
    .registers 2
    .param p1, "phoneId"    # I

    .line 537
    iput p1, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    .line 538
    return-void
.end method

.method public setPidf(Ljava/lang/String;)V
    .registers 2
    .param p1, "pidf"    # Ljava/lang/String;

    .line 634
    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    .line 635
    return-void
.end method

.method public setPresenceSupport(Z)V
    .registers 2
    .param p1, "support"    # Z

    .line 614
    iput-boolean p1, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    .line 615
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .registers 2
    .param p1, "time"    # Ljava/util/Date;

    .line 886
    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    .line 887
    return-void
.end method

.method public setUri(Lcom/sec/ims/util/ImsUri;)V
    .registers 2
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 465
    if-eqz p1, :cond_4

    .line 466
    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 468
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/sec/ims/options/Capabilities;->SHIP_BUILD:Z

    const-string v2, "xxxxx"

    if-eqz v1, :cond_1f

    move-object v3, v2

    goto :goto_21

    :cond_1f
    iget-object v3, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    :goto_21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mContactId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mNumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1101
    iget-object v3, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_3f

    invoke-direct {p0, v3}, Lcom/sec/ims/options/Capabilities;->toStringLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mIsAvailable="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mFeatures="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 1102
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", mAvailableFeatures="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 1103
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", mSupportPresence="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", mIsLegacyLatching="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", mPhoneId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", mBotServiceId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1107
    if-eqz v1, :cond_9c

    goto :goto_9e

    :cond_9c
    iget-object v2, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    :goto_9e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mAvailableFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    .line 1109
    invoke-static {v1, v2}, Lcom/sec/ims/options/Capabilities;->dumpServices(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    .line 1110
    invoke-static {v1, v2}, Lcom/sec/ims/options/Capabilities;->dumpServices(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastSeen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExtFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1100
    return-object v0
.end method

.method public updateCapabilities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;

    .line 443
    iput-object p1, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    .line 444
    iput-object p2, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    .line 445
    iput-object p3, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public updateTimestamp()V
    .registers 2

    .line 876
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    .line 877
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1012
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mContactId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mDisplayName:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1015
    iget-wide v2, p0, Lcom/sec/ims/options/Capabilities;->mId:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1016
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mUri:Lcom/sec/ims/util/ImsUri;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    move-object v0, v1

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_27

    goto :goto_28

    :cond_27
    move-object v0, v1

    :goto_28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1019
    iget-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mIsAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    iget-wide v2, p0, Lcom/sec/ims/options/Capabilities;->mFeatures:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1022
    iget-wide v2, p0, Lcom/sec/ims/options/Capabilities;->mAvailableFeatures:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1023
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mExtFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1024
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1025
    iget-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mSupportPresence:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    iget-boolean v0, p0, Lcom/sec/ims/options/Capabilities;->mIsLegacyLatching:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    iget v0, p0, Lcom/sec/ims/options/Capabilities;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    if-eqz v0, :cond_65

    .line 1029
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mPidf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_69

    .line 1032
    :cond_65
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    :goto_69
    iget-object v0, p0, Lcom/sec/ims/options/Capabilities;->mBotServiceId:Ljava/lang/String;

    if-eqz v0, :cond_6e

    move-object v1, v0

    :cond_6e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1035
    iget-wide v0, p0, Lcom/sec/ims/options/Capabilities;->mLastSeen:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1036
    return-void
.end method

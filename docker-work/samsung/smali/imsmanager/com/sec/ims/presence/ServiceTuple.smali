.class public Lcom/sec/ims/presence/ServiceTuple;
.super Ljava/lang/Object;
.source "ServiceTuple.java"


# static fields
.field public static final BASIC_STATUS_CLOSED:Ljava/lang/String; = "closed"

.field public static final BASIC_STATUS_OPEN:Ljava/lang/String; = "open"

.field public static final MEDIA_CAP_AUDIO:Ljava/lang/String; = "audio"

.field public static final MEDIA_CAP_FULL_DUPLEX:Ljava/lang/String; = "duplex"

.field public static final MEDIA_CAP_VIDEO:Ljava/lang/String; = "video"

.field private static sServiceDescriptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sServiceTuples:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public basicStatus:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public displayText:Ljava/lang/String;

.field public feature:J

.field public mediaCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serviceId:Ljava/lang/String;

.field public tupleId:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    .line 36
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "StandaloneMsg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session Mode Messaging"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FullStoreGrpChat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "File Transfer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FtThumbnail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FtStoreForward"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FileTransferHTTP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FileTransferHTTPExtra"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ImageShare"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "VideoShare"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "VideoShareOutsideCall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "SocialPresence"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "DiscoveryPresence"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "IPVoiceCall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "IPVideoCall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "RcsIPVoiceCall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "RcsIPVideoCall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "RcsIPVideoCallOnly"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "GeolocPull"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "GeolocPullFT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "GeolocPush"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Sticker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FileTransferSMS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "GeolocSMS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ChatbotChatSession"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ChatbotStandaloneMsg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ExtendedBotMsg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ChatbotRole"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PlugIn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CallComposer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PostCall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "MmtelCallComposer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CancelMessage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceTuples:Ljava/util/Map;

    .line 111
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG_V1:I

    int-to-long v3, v3

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.sm"

    const-string v6, "1.0"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v3, v3

    const-string v5, "org.openmobilealliance:StandaloneMsg"

    const-string v7, "2.0"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v3, v3

    const-string v5, "org.openmobilealliance:IM-session"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v3, v3

    const-string v5, "org.openmobilealliance:ChatSession"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v3, v3

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.fullsfgroupchat"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v3, v3

    const-string v5, "org.openmobilealliance:File-Transfer"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL_V1:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL_V1:I

    int-to-long v3, v3

    const-string v8, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.ftthumb"

    invoke-direct {v2, v3, v4, v8, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v3, v3

    const-string v8, "org.openmobilealliance:File-Transfer-thumb"

    invoke-direct {v2, v3, v4, v8, v7}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v3, v3

    const-string v5, "org.openmobilealliance:File-Transfer-HTTP"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v3, v3

    const-string v5, "org.openmobilealliance:File-Transfer-HTTP-EXTRA"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v3, v3

    const-string v5, "org.gsma.imageshare"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v3, v3

    const-string v5, "org.gsma.videoshare"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v3, v3

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcse.sp"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v3, v3

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcse.dp"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v9, v3

    const-string v3, "audio"

    const-string v4, "duplex"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v13

    const-string v11, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel"

    const-string v12, "1.0"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v9, v5

    const-string v5, "video"

    filled-new-array {v3, v5, v4}, [Ljava/lang/String;

    move-result-object v13

    const-string v11, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel"

    const-string v12, "1.0"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v9, v8

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v13

    const-string v11, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel.gsma.ipcall"

    const-string v12, "1.0"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v9, v8

    filled-new-array {v3, v5, v4}, [Ljava/lang/String;

    move-result-object v13

    const-string v11, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel.gsma.ipcall"

    const-string v12, "1.0"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v9, v8

    filled-new-array {v3, v5, v4}, [Ljava/lang/String;

    move-result-object v13

    const-string v11, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel.gsma.ipcall.ipvideocallonly"

    const-string v12, "1.0"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v3, v3

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.geopull"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v3, v3

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.geopullft"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v3, v3

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.geopush"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v3, v3

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.sticker"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v3, v3

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.ftsms"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v3, v3

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.geosms"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot.sa"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot.xbotmessage"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    const-string v5, "org.gsma.rcs.isbot"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.plugin"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    const-string v5, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.callcomposer"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    const-string v8, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.callunanswered"

    invoke-direct {v2, v3, v4, v8, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    const-string v5, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.cancelmessage"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "feature"    # J
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-wide p1, p0, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    .line 219
    iput-object p3, p0, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    .line 220
    iput-object p4, p0, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    .line 221
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/ServiceTuple;->description:Ljava/lang/String;

    .line 222
    const-string v0, "open"

    iput-object v0, p0, Lcom/sec/ims/presence/ServiceTuple;->basicStatus:Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/ServiceTuple;->mediaCapabilities:Ljava/util/List;

    .line 224
    iput-object v0, p0, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    .line 225
    iput-object v0, p0, Lcom/sec/ims/presence/ServiceTuple;->displayText:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public varargs constructor <init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .param p1, "feature"    # J
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "mediaCapabilities"    # [Ljava/lang/String;

    .line 229
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/ServiceTuple;->mediaCapabilities:Ljava/util/List;

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/ServiceTuple;->displayText:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public static getFeatures(Ljava/util/List;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;)J"
        }
    .end annotation

    .line 291
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/ServiceTuple;>;"
    const-wide/16 v0, 0x0

    .line 293
    .local v0, "features":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/presence/ServiceTuple;

    .line 294
    .local v3, "st":Lcom/sec/ims/presence/ServiceTuple;
    iget-wide v4, v3, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    or-long/2addr v0, v4

    .line 295
    .end local v3    # "st":Lcom/sec/ims/presence/ServiceTuple;
    goto :goto_6

    .line 297
    :cond_16
    return-wide v0
.end method

.method public static getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;
    .registers 4
    .param p0, "feature"    # J

    .line 235
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceTuples:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/ServiceTuple;

    return-object v0
.end method

.method public static varargs getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;
    .registers 11
    .param p0, "serviceId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "mediaCapabilities"    # [Ljava/lang/String;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/ServiceTuple;>;"
    sget-object v1, Lcom/sec/ims/presence/ServiceTuple;->sServiceTuples:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/presence/ServiceTuple;

    .line 244
    .local v2, "st":Lcom/sec/ims/presence/ServiceTuple;
    iget-object v3, v2, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    if-eqz p1, :cond_2d

    iget-object v3, v2, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    .line 245
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 246
    :cond_2d
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v2    # "st":Lcom/sec/ims/presence/ServiceTuple;
    :cond_30
    goto :goto_f

    .line 251
    :cond_31
    const/4 v1, 0x0

    if-eqz p2, :cond_5b

    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 254
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/presence/ServiceTuple;>;"
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 255
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/presence/ServiceTuple;

    .line 257
    .local v3, "sp":Lcom/sec/ims/presence/ServiceTuple;
    array-length v4, p2

    move v5, v1

    :goto_46
    if-ge v5, v4, :cond_5a

    aget-object v6, p2, v5

    .line 258
    .local v6, "cap":Ljava/lang/String;
    iget-object v7, v3, Lcom/sec/ims/presence/ServiceTuple;->mediaCapabilities:Ljava/util/List;

    if-eqz v7, :cond_57

    .line 259
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 260
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 257
    .end local v6    # "cap":Ljava/lang/String;
    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 264
    .end local v3    # "sp":Lcom/sec/ims/presence/ServiceTuple;
    :cond_5a
    goto :goto_38

    .line 267
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/presence/ServiceTuple;>;"
    :cond_5b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_68

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/presence/ServiceTuple;

    return-object v1

    .line 271
    :cond_68
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getServiceTupleList(J)Ljava/util/List;
    .registers 9
    .param p0, "features"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/ServiceTuple;>;"
    sget-object v1, Lcom/sec/ims/presence/ServiceTuple;->sServiceTuples:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 278
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/ims/presence/ServiceTuple;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    and-long/2addr v3, p0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_35

    .line 279
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/presence/ServiceTuple;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/ims/presence/ServiceTuple;>;"
    :cond_35
    goto :goto_f

    .line 284
    :cond_36
    sget-object v1, Lcom/sec/ims/presence/ServiceTuple;->sServiceTuples:Ljava/util/Map;

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 285
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 287
    :cond_57
    return-object v0
.end method

.method public static setDisplayText(JLjava/lang/String;)V
    .registers 4
    .param p0, "feature"    # J
    .param p2, "displayText"    # Ljava/lang/String;

    .line 358
    invoke-static {p0, p1}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v0

    iput-object p2, v0, Lcom/sec/ims/presence/ServiceTuple;->displayText:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public static setServiceDescription(JLjava/lang/String;)V
    .registers 6
    .param p0, "feature"    # J
    .param p2, "desc"    # Ljava/lang/String;

    .line 349
    sget-object v0, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-static {p0, p1}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/presence/ServiceTuple;->sServiceDescriptionMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/ims/presence/ServiceTuple;->description:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public static setServiceVersion(JLjava/lang/String;)V
    .registers 4
    .param p0, "feature"    # J
    .param p2, "version"    # Ljava/lang/String;

    .line 354
    invoke-static {p0, p1}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v0

    iput-object p2, v0, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    .line 355
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 311
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 312
    return v0

    .line 313
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 314
    return v1

    .line 315
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 316
    return v1

    .line 317
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/sec/ims/presence/ServiceTuple;

    .line 318
    .local v2, "other":Lcom/sec/ims/presence/ServiceTuple;
    iget-object v3, p0, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 319
    iget-object v3, v2, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 320
    return v1

    .line 321
    :cond_1f
    iget-object v4, v2, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 322
    return v1

    .line 323
    :cond_28
    iget-object v3, p0, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    if-nez v3, :cond_31

    .line 324
    iget-object v3, v2, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    if-eqz v3, :cond_3a

    .line 325
    return v1

    .line 326
    :cond_31
    iget-object v4, v2, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 327
    return v1

    .line 328
    :cond_3a
    iget-object v3, p0, Lcom/sec/ims/presence/ServiceTuple;->mediaCapabilities:Ljava/util/List;

    if-nez v3, :cond_43

    .line 329
    iget-object v3, v2, Lcom/sec/ims/presence/ServiceTuple;->mediaCapabilities:Ljava/util/List;

    if-eqz v3, :cond_4c

    .line 330
    return v1

    .line 331
    :cond_43
    iget-object v4, v2, Lcom/sec/ims/presence/ServiceTuple;->mediaCapabilities:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 332
    return v1

    .line 333
    :cond_4c
    iget-object v3, p0, Lcom/sec/ims/presence/ServiceTuple;->displayText:Ljava/lang/String;

    if-nez v3, :cond_55

    .line 334
    iget-object v3, v2, Lcom/sec/ims/presence/ServiceTuple;->displayText:Ljava/lang/String;

    if-eqz v3, :cond_5e

    .line 335
    return v1

    .line 336
    :cond_55
    iget-object v4, v2, Lcom/sec/ims/presence/ServiceTuple;->displayText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 337
    return v1

    .line 338
    :cond_5e
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 302
    const/16 v0, 0x1f

    .line 303
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 304
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    move v3, v4

    goto :goto_10

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v2, v3

    .line 305
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    if-nez v3, :cond_18

    goto :goto_1c

    :cond_18
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1c
    add-int/2addr v1, v4

    .line 306
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceTuple [feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tupleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/presence/ServiceTuple;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", basicStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/presence/ServiceTuple;->basicStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/presence/ServiceTuple;->mediaCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
